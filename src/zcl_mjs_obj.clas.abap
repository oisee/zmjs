CLASS zcl_mjs_obj DEFINITION PUBLIC.
  PUBLIC SECTION.
    " --- Atom registry -------------------------------------------------------
    " Interns identifier / property-name strings to small integer ids ("atoms")
    " so property access uses integer-keyed hashing and integer comparison
    " instead of string work.
    CLASS-METHODS atom
      IMPORTING iv_name      TYPE string
      RETURNING VALUE(rv_id) TYPE i.
    CLASS-METHODS atom_name
      IMPORTING iv_id          TYPE i
      RETURNING VALUE(rv_name) TYPE string.

    " --- Object storage ------------------------------------------------------
    " Flat atom-keyed hashed table (one O(1) read per access). A shape/hidden-
    " class model was implemented and measured, but its extra indirection
    " regressed the AST-path property access that dominates real workloads
    " (only the VM inline-cache path benefited) - see PLAN.md Phase 2. The VM
    " get_field reads this table inline, so it still avoids the method-call
    " overhead without the shape penalty.
    TYPES:
      BEGIN OF ty_prop,
        key TYPE i,                 " interned atom id (see atom( ))
        val TYPE zif_mjs=>ty_value,
      END OF ty_prop,
      tt_props TYPE HASHED TABLE OF ty_prop WITH UNIQUE KEY key.
    " Entry list (insertion order) for for-in / Object.keys / JSON / copy.
    TYPES:
      BEGIN OF ty_entry,
        key TYPE i,
        val TYPE zif_mjs=>ty_value,
      END OF ty_entry,
      tt_entries TYPE STANDARD TABLE OF ty_entry WITH DEFAULT KEY.

    DATA props TYPE tt_props.
    DATA proto TYPE REF TO zcl_mjs_obj.

    " String-keyed API (interns the key) - computed / dynamic access.
    METHODS get
      IMPORTING iv_key        TYPE string
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value.
    METHODS set
      IMPORTING iv_key TYPE string
                is_val TYPE zif_mjs=>ty_value.
    METHODS has
      IMPORTING iv_key        TYPE string
      RETURNING VALUE(rv_yes) TYPE abap_bool.
    " Atom-keyed API (no string work) - parse-time-known names.
    METHODS get_a
      IMPORTING iv_atom       TYPE i
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value.
    METHODS set_a
      IMPORTING iv_atom TYPE i
                is_val  TYPE zif_mjs=>ty_value.
    METHODS has_a
      IMPORTING iv_atom       TYPE i
      RETURNING VALUE(rv_yes) TYPE abap_bool.
    " Own properties in insertion order.
    METHODS entries
      RETURNING VALUE(rt_entries) TYPE tt_entries.
    METHODS copy_from
      IMPORTING io_other TYPE REF TO zcl_mjs_obj.
  PRIVATE SECTION.
    TYPES:
      BEGIN OF ty_atom_entry,
        name TYPE string,
        id   TYPE i,
      END OF ty_atom_entry.
    CLASS-DATA gt_atom_map   TYPE HASHED TABLE OF ty_atom_entry WITH UNIQUE KEY name.
    CLASS-DATA gt_atom_names TYPE STANDARD TABLE OF string WITH DEFAULT KEY.
ENDCLASS.

CLASS zcl_mjs_obj IMPLEMENTATION.
  METHOD atom.
    READ TABLE gt_atom_map WITH TABLE KEY name = iv_name ASSIGNING FIELD-SYMBOL(<a>).
    IF sy-subrc = 0.
      rv_id = <a>-id.
      RETURN.
    ENDIF.
    APPEND iv_name TO gt_atom_names.
    rv_id = lines( gt_atom_names ).
    DATA ls_a TYPE ty_atom_entry.
    ls_a-name = iv_name.
    ls_a-id   = rv_id.
    INSERT ls_a INTO TABLE gt_atom_map.
  ENDMETHOD.

  METHOD atom_name.
    READ TABLE gt_atom_names INDEX iv_id INTO rv_name.
  ENDMETHOD.

  METHOD get.
    rs_val = get_a( atom( iv_key ) ).
  ENDMETHOD.

  METHOD set.
    set_a( iv_atom = atom( iv_key ) is_val = is_val ).
  ENDMETHOD.

  METHOD has.
    rv_yes = has_a( atom( iv_key ) ).
  ENDMETHOD.

  METHOD get_a.
    READ TABLE props WITH TABLE KEY key = iv_atom ASSIGNING FIELD-SYMBOL(<p>).
    IF sy-subrc = 0.
      rs_val = <p>-val.
    ENDIF.
  ENDMETHOD.

  METHOD set_a.
    READ TABLE props WITH TABLE KEY key = iv_atom ASSIGNING FIELD-SYMBOL(<p>).
    IF sy-subrc = 0.
      <p>-val = is_val.
    ELSE.
      DATA ls TYPE ty_prop.
      ls-key = iv_atom.
      ls-val = is_val.
      INSERT ls INTO TABLE props.
    ENDIF.
  ENDMETHOD.

  METHOD has_a.
    READ TABLE props WITH TABLE KEY key = iv_atom TRANSPORTING NO FIELDS.
    rv_yes = boolc( sy-subrc = 0 ).
  ENDMETHOD.

  METHOD entries.
    LOOP AT props ASSIGNING FIELD-SYMBOL(<p>).
      APPEND VALUE #( key = <p>-key val = <p>-val ) TO rt_entries.
    ENDLOOP.
  ENDMETHOD.

  METHOD copy_from.
    LOOP AT io_other->props ASSIGNING FIELD-SYMBOL(<p>).
      set_a( iv_atom = <p>-key is_val = <p>-val ).
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
