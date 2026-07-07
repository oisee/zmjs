CLASS zcl_mjs_json DEFINITION PUBLIC FINAL.
  PUBLIC SECTION.
    CLASS-METHODS stringify
      IMPORTING is_val         TYPE zif_mjs=>ty_value
      RETURNING VALUE(rv_json) TYPE string.
ENDCLASS.

CLASS zcl_mjs_json IMPLEMENTATION.

  METHOD stringify.
    CASE is_val-type.
      WHEN zif_mjs=>c_type_undefined. " omit marker (caller handles)
        rv_json = ``.
        RETURN.
      WHEN zif_mjs=>c_type_null.
        rv_json = `null`.
      WHEN zif_mjs=>c_type_number.
        IF is_val-str = `NaN` OR is_val-str = `Infinity` OR is_val-str = `-Infinity`.
          rv_json = `null`.
        ELSE.
          rv_json = zcl_mjs_val=>to_string( is_val ).
        ENDIF.
      WHEN zif_mjs=>c_type_bool.
        rv_json = COND #( WHEN is_val-num <> 0 THEN `true` ELSE `false` ).
      WHEN zif_mjs=>c_type_string. " quote and escape
        DATA lv_src  TYPE string.
        DATA lv_out  TYPE string.
        DATA lv_len  TYPE i.
        DATA lv_idx  TYPE i.
        DATA lv_ch   TYPE string.
        DATA lv_cp   TYPE i.
        DATA lv_hex2 TYPE x LENGTH 2.
        lv_src = is_val-str.
        lv_len = strlen( lv_src ).
        lv_out = `"`.
        lv_idx = 0.
        WHILE lv_idx < lv_len.
          lv_ch = substring( val = lv_src off = lv_idx len = 1 ).
          lv_hex2 = cl_abap_conv_out_ce=>uccp( lv_ch ).
          lv_cp = lv_hex2.
          IF lv_ch = `"`.
            lv_out = lv_out && `\"`.
          ELSEIF lv_ch = `\`.
            lv_out = lv_out && `\\`.
          ELSEIF lv_cp = 10.   " newline
            lv_out = lv_out && `\n`.
          ELSEIF lv_cp = 13.   " carriage return
            lv_out = lv_out && `\r`.
          ELSEIF lv_cp = 9.    " tab
            lv_out = lv_out && `\t`.
          ELSEIF lv_cp < 32.   " other control chars
            DATA lv_hex4_x TYPE x LENGTH 2.
            DATA lv_hex4   TYPE string.
            lv_hex4_x = lv_cp.
            lv_hex4 = lv_hex4_x.
            TRANSLATE lv_hex4 TO LOWER CASE.
            lv_out = lv_out && `\u` && lv_hex4.
          ELSE.
            lv_out = lv_out && lv_ch.
          ENDIF.
          lv_idx = lv_idx + 1.
        ENDWHILE.
        rv_json = lv_out && `"`.
      WHEN zif_mjs=>c_type_object.
        IF is_val-obj IS NOT BOUND.
          rv_json = `{}`.
          RETURN.
        ENDIF.
        DATA lv_obj_out  TYPE string.
        DATA lv_obj_first TYPE abap_bool VALUE abap_true.
        lv_obj_out = `{`.
        LOOP AT is_val-obj->props ASSIGNING FIELD-SYMBOL(<prop>).
          DATA(ls_pval) = zcl_mjs_val=>unbox_value( <prop>-val ).
          " skip undefined and function values
          IF ls_pval-type = zif_mjs=>c_type_undefined OR ls_pval-type = zif_mjs=>c_type_function.
            CONTINUE.
          ENDIF.
          IF lv_obj_first = abap_false.
            lv_obj_out = lv_obj_out && `,`.
          ENDIF.
          lv_obj_out = lv_obj_out && `"` && <prop>-key && `":` && stringify( ls_pval ).
          lv_obj_first = abap_false.
        ENDLOOP.
        rv_json = lv_obj_out && `}`.
      WHEN zif_mjs=>c_type_array.
        IF is_val-arr IS NOT BOUND.
          rv_json = `[]`.
          RETURN.
        ENDIF.
        DATA lv_arr_out   TYPE string.
        DATA lv_arr_first TYPE abap_bool VALUE abap_true.
        DATA lv_arr_len   TYPE i.
        DATA lv_arr_idx   TYPE i.
        lv_arr_out = `[`.
        lv_arr_len = is_val-arr->length( ).
        lv_arr_idx = 0.
        WHILE lv_arr_idx < lv_arr_len.
          DATA(lr_elem) = is_val-arr->get_item( lv_arr_idx ).
          DATA lv_elem_json TYPE string.
          IF lr_elem IS BOUND.
            DATA(ls_elem) = zcl_mjs_val=>unbox_value( lr_elem ).
            IF ls_elem-type = zif_mjs=>c_type_undefined OR ls_elem-type = zif_mjs=>c_type_function.
              lv_elem_json = `null`.  " undefined/function in array → null
            ELSE.
              lv_elem_json = stringify( ls_elem ).
            ENDIF.
          ELSE.
            lv_elem_json = `null`.
          ENDIF.
          IF lv_arr_first = abap_false.
            lv_arr_out = lv_arr_out && `,`.
          ENDIF.
          lv_arr_out = lv_arr_out && lv_elem_json.
          lv_arr_first = abap_false.
          lv_arr_idx = lv_arr_idx + 1.
        ENDWHILE.
        rv_json = lv_arr_out && `]`.
      WHEN OTHERS.
        rv_json = `null`.
    ENDCASE.
  ENDMETHOD.

ENDCLASS.
