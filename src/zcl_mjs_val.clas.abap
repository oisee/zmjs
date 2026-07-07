CLASS zcl_mjs_val DEFINITION PUBLIC FINAL.
  PUBLIC SECTION.
    CLASS-METHODS number_val
      IMPORTING iv_num        TYPE f
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value.
    CLASS-METHODS string_val
      IMPORTING iv_str        TYPE string
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value.
    CLASS-METHODS bool_val
      IMPORTING iv_bool       TYPE abap_bool
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value.
    CLASS-METHODS object_val
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value.
    CLASS-METHODS array_val
      IMPORTING it_elems      TYPE zif_mjs=>tt_nodes
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value.
    CLASS-METHODS undefined_val
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value.
    CLASS-METHODS box_value
      IMPORTING is_val        TYPE zif_mjs=>ty_value
      RETURNING VALUE(rr_ref) TYPE REF TO data.
    CLASS-METHODS unbox_value
      IMPORTING ir_ref        TYPE REF TO data
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value.

    CLASS-METHODS is_true
      IMPORTING is_val        TYPE zif_mjs=>ty_value
      RETURNING VALUE(rv_yes) TYPE abap_bool.
    CLASS-METHODS to_number
      IMPORTING is_val        TYPE zif_mjs=>ty_value
      RETURNING VALUE(rv_num) TYPE f.
    CLASS-METHODS to_string
      IMPORTING is_val        TYPE zif_mjs=>ty_value
      RETURNING VALUE(rv_str) TYPE string.
ENDCLASS.

CLASS zcl_mjs_val IMPLEMENTATION.

  METHOD number_val.
    rs_val-type = zif_mjs=>c_type_number.
    rs_val-num  = iv_num.
  ENDMETHOD.

  METHOD string_val.
    rs_val-type = zif_mjs=>c_type_string.
    rs_val-str  = iv_str.
  ENDMETHOD.

  METHOD bool_val.
    rs_val-type = zif_mjs=>c_type_bool.
    IF iv_bool = abap_true.
      rs_val-num = 1.
    ELSE.
      rs_val-num = 0.
    ENDIF.
  ENDMETHOD.

  METHOD object_val.
    rs_val-type = zif_mjs=>c_type_object.
    CREATE OBJECT rs_val-obj.
  ENDMETHOD.

  METHOD array_val.
    rs_val-type = zif_mjs=>c_type_array.
    CREATE OBJECT rs_val-arr.
    FIELD-SYMBOLS <ref> TYPE REF TO data.
    LOOP AT it_elems ASSIGNING <ref>.
      rs_val-arr->push( <ref> ).
    ENDLOOP.
  ENDMETHOD.

  METHOD undefined_val.
    rs_val-type = zif_mjs=>c_type_undefined.
  ENDMETHOD.

  METHOD box_value.
    CREATE DATA rr_ref TYPE zif_mjs=>ty_value.
    FIELD-SYMBOLS <val> TYPE zif_mjs=>ty_value.
    ASSIGN rr_ref->* TO <val>.
    <val> = is_val.
  ENDMETHOD.

  METHOD unbox_value.
    IF ir_ref IS NOT BOUND.
      rs_val-type = zif_mjs=>c_type_undefined.
      RETURN.
    ENDIF.
    FIELD-SYMBOLS <val> TYPE zif_mjs=>ty_value.
    ASSIGN ir_ref->* TO <val>.
    rs_val = <val>.
  ENDMETHOD.

  METHOD is_true.
    CASE is_val-type.
      WHEN zif_mjs=>c_type_undefined OR zif_mjs=>c_type_null.
        rv_yes = abap_false.
      WHEN zif_mjs=>c_type_number.
        rv_yes = boolc( is_val-num <> 0 ).
      WHEN zif_mjs=>c_type_string.
        rv_yes = boolc( is_val-str IS NOT INITIAL ).
      WHEN zif_mjs=>c_type_bool.
        rv_yes = boolc( is_val-num <> 0 ).
      WHEN OTHERS.
        rv_yes = abap_true.
    ENDCASE.
  ENDMETHOD.

  METHOD to_number.
    CASE is_val-type.
      WHEN zif_mjs=>c_type_number.
        rv_num = is_val-num.
      WHEN zif_mjs=>c_type_string.
        TRY.
            rv_num = is_val-str.
          CATCH cx_root.
            rv_num = 0.
        ENDTRY.
      WHEN zif_mjs=>c_type_bool.
        rv_num = is_val-num.
      WHEN OTHERS.
        rv_num = 0.
    ENDCASE.
  ENDMETHOD.

  METHOD to_string.
    CASE is_val-type.
      WHEN zif_mjs=>c_type_undefined.
        rv_str = `undefined`.
      WHEN zif_mjs=>c_type_number.
        IF is_val-str = `NaN` OR is_val-str = `Infinity` OR is_val-str = `-Infinity`.
          rv_str = is_val-str.
        ELSE.
          DATA lv_int TYPE i.
          DATA lv_fcheck TYPE f.
          lv_int = is_val-num.
          lv_fcheck = lv_int.
          IF lv_fcheck = is_val-num.
            rv_str = |{ lv_int }|.
          ELSE.
            rv_str = |{ is_val-num }|.
            CONDENSE rv_str.
          ENDIF.
        ENDIF.
      WHEN zif_mjs=>c_type_string.
        rv_str = is_val-str.
      WHEN zif_mjs=>c_type_bool.
        IF is_val-num <> 0.
          rv_str = `true`.
        ELSE.
          rv_str = `false`.
        ENDIF.
      WHEN zif_mjs=>c_type_function.
        FIELD-SYMBOLS <fn_ts> TYPE zif_mjs=>ty_function.
        ASSIGN is_val-fn->* TO <fn_ts>.
        IF sy-subrc = 0 AND <fn_ts>-name IS NOT INITIAL.
          rv_str = |function { <fn_ts>-name }() \{ [native code] \}|.
        ELSE.
          rv_str = `function() { [native code] }`.
        ENDIF.
      WHEN zif_mjs=>c_type_null.
        rv_str = `null`.
      WHEN zif_mjs=>c_type_object.
        rv_str = `[object Object]`.
      WHEN zif_mjs=>c_type_array.
        rv_str = |[array { is_val-arr->length( ) }]|.
      WHEN OTHERS.
        rv_str = `undefined`.
    ENDCASE.
  ENDMETHOD.

ENDCLASS.
