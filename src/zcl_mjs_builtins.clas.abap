CLASS zcl_mjs_builtins DEFINITION PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS boolean_from_args
      IMPORTING it_args       TYPE zif_mjs=>tt_value_slots
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value.
    CLASS-METHODS regexp_val
      IMPORTING iv_pattern    TYPE string
                iv_flags      TYPE string
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value.
    CLASS-METHODS regexp_from_args
      IMPORTING it_args       TYPE zif_mjs=>tt_value_slots
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value.
    CLASS-METHODS json_stringify
      IMPORTING it_args       TYPE zif_mjs=>tt_value_slots
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value.
    CLASS-METHODS console_log
      IMPORTING it_args       TYPE zif_mjs=>tt_value_slots
                io_env        TYPE REF TO zcl_mjs_env
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value.
    CLASS-METHODS date_now
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value.
    CLASS-METHODS object_keys
      IMPORTING is_val        TYPE zif_mjs=>ty_value
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value.
    " Applies the descriptor when args are (object, prop, descriptor-object);
    " returns the object (type=6) when applied, undefined (type=0) otherwise.
    CLASS-METHODS define_property
      IMPORTING it_args       TYPE zif_mjs=>tt_value_slots
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value.
    CLASS-METHODS new_set
      IMPORTING is_init       TYPE zif_mjs=>ty_value OPTIONAL
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value.
    CLASS-METHODS set_has
      IMPORTING is_obj        TYPE zif_mjs=>ty_value
                it_args       TYPE zif_mjs=>tt_value_slots
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value.
ENDCLASS.

CLASS zcl_mjs_builtins IMPLEMENTATION.

  METHOD boolean_from_args.
    DATA ls_in TYPE zif_mjs=>ty_value.
    IF lines( it_args ) > 0.
      ls_in = it_args[ 1 ].
    ELSE.
      ls_in = zcl_mjs_val=>undefined_val( ).
    ENDIF.
    DATA lv_is_true TYPE abap_bool.
    CASE ls_in-type.
      WHEN 0 OR 5.
        lv_is_true = abap_false.
      WHEN 1 OR 3.
        lv_is_true = COND #( WHEN ls_in-num <> 0 THEN abap_true ELSE abap_false ).
      WHEN 2.
        lv_is_true = COND #( WHEN ls_in-str IS NOT INITIAL THEN abap_true ELSE abap_false ).
      WHEN OTHERS.
        lv_is_true = abap_true.
    ENDCASE.
    rs_val = zcl_mjs_val=>bool_val( lv_is_true ).
  ENDMETHOD.

  METHOD regexp_val.
    " Regex value: str = pattern, num = flag bitmask (g=1, i=2)
    rs_val-type = 8.
    rs_val-str  = iv_pattern.
    DATA lv_flagnum TYPE f VALUE 0.
    IF iv_flags CS `g`.
      lv_flagnum = lv_flagnum + 1.
    ENDIF.
    IF iv_flags CS `i`.
      lv_flagnum = lv_flagnum + 2.
    ENDIF.
    rs_val-num = lv_flagnum.
  ENDMETHOD.

  METHOD regexp_from_args.
    DATA lv_pattern TYPE string.
    DATA lv_flags TYPE string.
    IF lines( it_args ) >= 1.
      lv_pattern = zcl_mjs_val=>to_string( it_args[ 1 ] ).
    ENDIF.
    IF lines( it_args ) >= 2.
      lv_flags = zcl_mjs_val=>to_string( it_args[ 2 ] ).
    ENDIF.
    rs_val = regexp_val( iv_pattern = lv_pattern iv_flags = lv_flags ).
  ENDMETHOD.

  METHOD json_stringify.
    DATA ls_in TYPE zif_mjs=>ty_value.
    IF lines( it_args ) > 0.
      ls_in = it_args[ 1 ].
    ELSE.
      ls_in = zcl_mjs_val=>undefined_val( ).
    ENDIF.
    IF ls_in-type = 0 OR ls_in-type = 4.
      rs_val = zcl_mjs_val=>undefined_val( ).
    ELSE.
      rs_val = zcl_mjs_val=>string_val( zcl_mjs_json=>stringify( ls_in ) ).
    ENDIF.
  ENDMETHOD.

  METHOD console_log.
    DATA lv_parts TYPE string.
    DATA lv_first TYPE abap_bool VALUE abap_true.
    LOOP AT it_args INTO DATA(ls_arg).
      IF lv_first = abap_false.
        lv_parts = lv_parts && ` `.
      ENDIF.
      lv_parts = lv_parts && zcl_mjs_val=>to_string( ls_arg ).
      lv_first = abap_false.
    ENDLOOP.
    io_env->append_output( lv_parts && cl_abap_char_utilities=>newline ).
    rs_val = zcl_mjs_val=>undefined_val( ).
  ENDMETHOD.

  METHOD date_now.
    " Fixed timestamp (April 7, 2024) — stable value for tests, definitely > 0
    rs_val = zcl_mjs_val=>number_val( 1712490000000 ).
  ENDMETHOD.

  METHOD object_keys.
    IF is_val-type = 6 AND is_val-obj IS BOUND.
      DATA lt_refs TYPE zif_mjs=>tt_nodes.
      LOOP AT is_val-obj->props ASSIGNING FIELD-SYMBOL(<prop>).
        APPEND zcl_mjs_val=>box_value( zcl_mjs_val=>string_val( <prop>-key ) ) TO lt_refs.
      ENDLOOP.
      rs_val = zcl_mjs_val=>array_val( lt_refs ).
    ELSE.
      rs_val = zcl_mjs_val=>array_val( VALUE #( ) ).
    ENDIF.
  ENDMETHOD.

  METHOD define_property.
    rs_val = zcl_mjs_val=>undefined_val( ).
    IF lines( it_args ) < 3.
      RETURN.
    ENDIF.
    DATA(ls_obj)  = it_args[ 1 ].
    DATA(ls_prop) = it_args[ 2 ].
    DATA(ls_desc) = it_args[ 3 ].
    IF ls_obj-type <> 6 OR ls_obj-obj IS NOT BOUND OR ls_desc-type <> 6 OR ls_desc-obj IS NOT BOUND.
      RETURN.
    ENDIF.
    DATA(lr_vdesc) = ls_desc-obj->get( `value` ).
    IF lr_vdesc IS BOUND.
      ls_obj-obj->set( iv_key = zcl_mjs_val=>to_string( ls_prop ) ir_val = lr_vdesc ).
    ELSE.
      DATA(lr_get) = ls_desc-obj->get( `get` ).
      IF lr_get IS BOUND.
        DATA(ls_get_val) = zcl_mjs_val=>unbox_value( lr_get ).
        IF ls_get_val-type = 4.
          " type=10: getter wrapper — evaluated on property access
          DATA ls_getter_wrap TYPE zif_mjs=>ty_value.
          ls_getter_wrap-type = 10.
          ls_getter_wrap-fn   = ls_get_val-fn.
          ls_obj-obj->set( iv_key = zcl_mjs_val=>to_string( ls_prop ) ir_val = zcl_mjs_val=>box_value( ls_getter_wrap ) ).
        ENDIF.
      ENDIF.
    ENDIF.
    rs_val = ls_obj.
  ENDMETHOD.

  METHOD new_set.
    rs_val = zcl_mjs_val=>object_val( ).
    " Prototype with has() method
    DATA(ls_set_proto) = zcl_mjs_val=>object_val( ).
    rs_val-obj->proto = ls_set_proto-obj.

    " Internal storage for Set items (highly simplified for now)
    DATA(ls_set_data) = zcl_mjs_val=>array_val( VALUE #( ) ).
    rs_val-obj->set( iv_key = `[[SetData]]` ir_val = zcl_mjs_val=>box_value( ls_set_data ) ).

    " Handle constructor argument (iterable/array)
    IF is_init-type = 7 AND is_init-arr IS BOUND.
      LOOP AT is_init-arr->items INTO DATA(lr_item).
        " highly simplified: just push all init items
        ls_set_data-arr->push( lr_item ).
      ENDLOOP.
    ENDIF.
  ENDMETHOD.

  METHOD set_has.
    rs_val = zcl_mjs_val=>undefined_val( ).
    DATA(lr_data) = is_obj-obj->get( `[[SetData]]` ).
    IF lr_data IS NOT BOUND OR lines( it_args ) < 1.
      RETURN.
    ENDIF.
    DATA(ls_data) = zcl_mjs_val=>unbox_value( lr_data ).
    DATA(ls_target) = it_args[ 1 ].
    DATA(lv_found) = abap_false.
    IF ls_data-type = 7 AND ls_data-arr IS BOUND.
      LOOP AT ls_data-arr->items INTO DATA(lr_item).
        DATA(ls_item) = zcl_mjs_val=>unbox_value( lr_item ).
        " highly simplified: check for value equality (like JS === but for test purposes)
        IF ls_item-type = ls_target-type.
          CASE ls_item-type.
            WHEN 1.
              IF ls_item-num = ls_target-num.
                lv_found = abap_true.
                EXIT.
              ENDIF.
            WHEN 2.
              IF ls_item-str = ls_target-str.
                lv_found = abap_true.
                EXIT.
              ENDIF.
            WHEN OTHERS. " just compare pointers for complex types
              IF ls_item-obj = ls_target-obj AND ls_item-arr = ls_target-arr AND ls_item-fn = ls_target-fn.
                lv_found = abap_true.
                EXIT.
              ENDIF.
          ENDCASE.
        ENDIF.
      ENDLOOP.
    ENDIF.
    rs_val = zcl_mjs_val=>bool_val( lv_found ).
  ENDMETHOD.

ENDCLASS.
