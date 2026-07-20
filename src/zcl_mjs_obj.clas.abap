CLASS zcl_mjs_obj DEFINITION PUBLIC.
  PUBLIC SECTION.
    " --- Atom registry -------------------------------------------------------
    " Interns identifier / property-name strings to small integer ids ("atoms").
    CLASS-METHODS atom
      IMPORTING iv_name      TYPE string
      RETURNING VALUE(rv_id) TYPE i.
    CLASS-METHODS atom_name
      IMPORTING iv_id          TYPE i
      RETURNING VALUE(rv_name) TYPE string.

    " --- Object storage: hidden classes ("shapes") + inline caches ----------
    " Instead of a per-object hashed table, each object stores a shape_id (a
    " shared descriptor mapping atom -> offset, in insertion order) and a flat
    " values array indexed by that offset. Objects built the same way share a
    " shape, so a compiled get_field/set_field can cache (shape_id, offset) and
    " read values[offset] directly on a hit - no hashing. Shapes only grow
    " (delete is not implemented), so an offset never moves.
    TYPES tt_values TYPE STANDARD TABLE OF zif_mjs=>ty_value WITH DEFAULT KEY.
    TYPES:
      BEGIN OF ty_entry,
        key TYPE i,                 " atom id
        val TYPE zif_mjs=>ty_value,
      END OF ty_entry,
      tt_entries TYPE STANDARD TABLE OF ty_entry WITH DEFAULT KEY.

    DATA shape_id TYPE i.           " 0 = empty; else index into gt_shapes
    DATA values   TYPE tt_values.   " parallel to the shape's atom list
    DATA proto    TYPE REF TO zcl_mjs_obj.

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
    " Offset of an atom in this object's shape (1-based), or 0 if absent.
    " Used by the VM inline cache to fill/refresh the cached offset.
    METHODS offset_of
      IMPORTING iv_atom       TYPE i
      RETURNING VALUE(rv_off) TYPE i.
    " Own properties in insertion order (for for-in / Object.keys / JSON / copy).
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

    " Shape registry (shared across all objects).
    TYPES:
      BEGIN OF ty_shape_map,
        atom TYPE i,
        off  TYPE i,
      END OF ty_shape_map,
      tt_shape_map TYPE HASHED TABLE OF ty_shape_map WITH UNIQUE KEY atom.
    TYPES:
      BEGIN OF ty_trans,
        atom   TYPE i,
        target TYPE i,
      END OF ty_trans,
      tt_trans TYPE HASHED TABLE OF ty_trans WITH UNIQUE KEY atom.
    TYPES:
      BEGIN OF ty_shape,
        atoms TYPE STANDARD TABLE OF i WITH DEFAULT KEY, " offset(1-based) -> atom
        map   TYPE tt_shape_map,                          " atom -> offset
        trans TYPE tt_trans,                              " atom -> resulting shape id
      END OF ty_shape.
    CLASS-DATA gt_shapes     TYPE STANDARD TABLE OF ty_shape.  " index = shape_id
    CLASS-DATA gt_root_trans TYPE tt_trans.                    " transitions from the empty shape

    " Return the shape id reached by adding iv_atom to shape iv_shape
    " (0 = empty). Reuses an existing transition when possible so objects built
    " the same way converge on the same shape.
    CLASS-METHODS transition
      IMPORTING iv_shape      TYPE i
                iv_atom       TYPE i
      RETURNING VALUE(rv_id)  TYPE i.
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

  METHOD transition.
    IF iv_shape = 0.
      READ TABLE gt_root_trans WITH TABLE KEY atom = iv_atom ASSIGNING FIELD-SYMBOL(<rt>).
      IF sy-subrc = 0.
        rv_id = <rt>-target.
        RETURN.
      ENDIF.
      DATA ls_sh0 TYPE ty_shape.
      APPEND iv_atom TO ls_sh0-atoms.
      INSERT VALUE #( atom = iv_atom off = 1 ) INTO TABLE ls_sh0-map.
      APPEND ls_sh0 TO gt_shapes.
      rv_id = lines( gt_shapes ).
      INSERT VALUE #( atom = iv_atom target = rv_id ) INTO TABLE gt_root_trans.
      RETURN.
    ENDIF.

    READ TABLE gt_shapes INDEX iv_shape ASSIGNING FIELD-SYMBOL(<src>).
    READ TABLE <src>-trans WITH TABLE KEY atom = iv_atom ASSIGNING FIELD-SYMBOL(<tr>).
    IF sy-subrc = 0.
      rv_id = <tr>-target.
      RETURN.
    ENDIF.
    DATA ls_new TYPE ty_shape.
    ls_new-atoms = <src>-atoms.
    ls_new-map   = <src>-map.
    APPEND iv_atom TO ls_new-atoms.
    INSERT VALUE #( atom = iv_atom off = lines( ls_new-atoms ) ) INTO TABLE ls_new-map.
    APPEND ls_new TO gt_shapes.
    rv_id = lines( gt_shapes ).
    " re-read the source (APPEND above may have reallocated the table)
    READ TABLE gt_shapes INDEX iv_shape ASSIGNING <src>.
    INSERT VALUE #( atom = iv_atom target = rv_id ) INTO TABLE <src>-trans.
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
    IF shape_id = 0.
      RETURN.
    ENDIF.
    READ TABLE gt_shapes INDEX shape_id ASSIGNING FIELD-SYMBOL(<sh>).
    READ TABLE <sh>-map WITH TABLE KEY atom = iv_atom ASSIGNING FIELD-SYMBOL(<m>).
    IF sy-subrc = 0.
      READ TABLE values INDEX <m>-off INTO rs_val.
    ENDIF.
  ENDMETHOD.

  METHOD set_a.
    IF shape_id <> 0.
      READ TABLE gt_shapes INDEX shape_id ASSIGNING FIELD-SYMBOL(<sh>).
      READ TABLE <sh>-map WITH TABLE KEY atom = iv_atom ASSIGNING FIELD-SYMBOL(<m>).
      IF sy-subrc = 0.
        " existing property: overwrite in place (shape unchanged)
        READ TABLE values INDEX <m>-off ASSIGNING FIELD-SYMBOL(<v>).
        <v> = is_val.
        RETURN.
      ENDIF.
    ENDIF.
    " new property: transition to a shape with the atom appended
    shape_id = transition( iv_shape = shape_id iv_atom = iv_atom ).
    APPEND is_val TO values.
  ENDMETHOD.

  METHOD has_a.
    IF shape_id = 0.
      RETURN.
    ENDIF.
    READ TABLE gt_shapes INDEX shape_id ASSIGNING FIELD-SYMBOL(<sh>).
    READ TABLE <sh>-map WITH TABLE KEY atom = iv_atom TRANSPORTING NO FIELDS.
    rv_yes = boolc( sy-subrc = 0 ).
  ENDMETHOD.

  METHOD offset_of.
    IF shape_id = 0.
      RETURN.
    ENDIF.
    READ TABLE gt_shapes INDEX shape_id ASSIGNING FIELD-SYMBOL(<sh>).
    READ TABLE <sh>-map WITH TABLE KEY atom = iv_atom ASSIGNING FIELD-SYMBOL(<m>).
    IF sy-subrc = 0.
      rv_off = <m>-off.
    ENDIF.
  ENDMETHOD.

  METHOD entries.
    IF shape_id = 0.
      RETURN.
    ENDIF.
    READ TABLE gt_shapes INDEX shape_id ASSIGNING FIELD-SYMBOL(<sh>).
    DATA lv_off TYPE i VALUE 1.
    LOOP AT <sh>-atoms INTO DATA(lv_atom).
      DATA ls_e TYPE ty_entry.
      ls_e-key = lv_atom.
      READ TABLE values INDEX lv_off INTO ls_e-val.
      APPEND ls_e TO rt_entries.
      lv_off = lv_off + 1.
    ENDLOOP.
  ENDMETHOD.

  METHOD copy_from.
    DATA(lt_e) = io_other->entries( ).
    LOOP AT lt_e INTO DATA(ls_e).
      set_a( iv_atom = ls_e-key is_val = ls_e-val ).
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
