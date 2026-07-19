CLASS zcl_mjs_obj DEFINITION PUBLIC.
  PUBLIC SECTION.
    TYPES:
      BEGIN OF ty_prop,
        key TYPE string,
        val TYPE zif_mjs=>ty_value,
      END OF ty_prop,
      tt_props TYPE HASHED TABLE OF ty_prop WITH UNIQUE KEY key.

    " Property values are stored by value (no boxing): JS property cells do not
    " alias each other, and object/array/function payloads inside ty_value are
    " themselves references, so sharing still works where it matters.
    DATA props TYPE tt_props.
    DATA proto TYPE REF TO zcl_mjs_obj.

    " Missing keys read as undefined (type 0 = initial) — use has() to
    " distinguish a missing key from a stored undefined.
    METHODS get
      IMPORTING iv_key        TYPE string
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value.
    METHODS set
      IMPORTING iv_key TYPE string
                is_val TYPE zif_mjs=>ty_value.
    METHODS has
      IMPORTING iv_key        TYPE string
      RETURNING VALUE(rv_yes) TYPE abap_bool.
    METHODS copy_from
      IMPORTING io_other TYPE REF TO zcl_mjs_obj.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_mjs_obj IMPLEMENTATION.
  METHOD get.
    READ TABLE props WITH TABLE KEY key = iv_key ASSIGNING FIELD-SYMBOL(<p>).
    IF sy-subrc = 0.
      rs_val = <p>-val.
    ENDIF.
  ENDMETHOD.

  METHOD set.
    READ TABLE props WITH TABLE KEY key = iv_key ASSIGNING FIELD-SYMBOL(<p>).
    IF sy-subrc = 0.
      <p>-val = is_val.
    ELSE.
      DATA ls TYPE ty_prop.
      ls-key = iv_key.
      ls-val = is_val.
      INSERT ls INTO TABLE props.
    ENDIF.
  ENDMETHOD.

  METHOD has.
    READ TABLE props WITH TABLE KEY key = iv_key TRANSPORTING NO FIELDS.
    rv_yes = boolc( sy-subrc = 0 ).
  ENDMETHOD.

  METHOD copy_from.
    LOOP AT io_other->props ASSIGNING FIELD-SYMBOL(<p>).
      set( iv_key = <p>-key is_val = <p>-val ).
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
