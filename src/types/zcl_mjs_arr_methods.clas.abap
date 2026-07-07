CLASS zcl_mjs_arr_methods DEFINITION PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS call_method
      IMPORTING
        is_obj    TYPE zif_mjs=>ty_value
        iv_method TYPE string
        it_args   TYPE zif_mjs=>tt_value_slots
        io_env    TYPE REF TO zcl_mjs_env
      RETURNING
        VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING
        zcx_mjs_runtime.
  PRIVATE SECTION.
    CLASS-METHODS build_cb_args
      IMPORTING
        is_elem        TYPE zif_mjs=>ty_value
        iv_idx         TYPE i
        is_arr         TYPE zif_mjs=>ty_value
      RETURNING
        VALUE(rt_args) TYPE zif_mjs=>tt_value_slots.
ENDCLASS.

CLASS zcl_mjs_arr_methods IMPLEMENTATION.

  METHOD build_cb_args.
    " Callback signature: (element, index, array)
    APPEND is_elem TO rt_args.
    APPEND zcl_mjs_val=>number_val( CONV f( iv_idx ) ) TO rt_args.
    APPEND is_arr TO rt_args.
  ENDMETHOD.

  METHOD call_method.
    DATA ls_cb TYPE zif_mjs=>ty_value.
    DATA lv_idx TYPE i.

    CASE iv_method.
      WHEN `push`.
        LOOP AT it_args INTO DATA(ls_push_arg).
          is_obj-arr->push( zcl_mjs_val=>box_value( ls_push_arg ) ).
        ENDLOOP.
        rs_val = zcl_mjs_val=>number_val( CONV f( is_obj-arr->length( ) ) ).

      WHEN `map`.
        IF lines( it_args ) > 0.
          READ TABLE it_args INDEX 1 INTO ls_cb.
          IF ls_cb-type = zif_mjs=>c_type_function AND ls_cb-fn IS BOUND.
            DATA lo_map_arr TYPE REF TO zcl_mjs_array.
            CREATE OBJECT lo_map_arr.
            lv_idx = 0.
            LOOP AT is_obj-arr->items INTO DATA(lr_map_item).
              DATA(ls_map_result) = zcl_mjs=>call_function(
                ir_fn   = ls_cb-fn
                it_args = build_cb_args( is_elem = zcl_mjs_val=>unbox_value( lr_map_item ) iv_idx = lv_idx is_arr = is_obj )
                io_env  = io_env ).
              lo_map_arr->push( zcl_mjs_val=>box_value( ls_map_result ) ).
              lv_idx = lv_idx + 1.
            ENDLOOP.
            rs_val-type = zif_mjs=>c_type_array.
            rs_val-arr = lo_map_arr.
          ENDIF.
        ELSE.
          rs_val = zcl_mjs_val=>array_val( VALUE #( ) ).
        ENDIF.

      WHEN `find`.
        rs_val = zcl_mjs_val=>undefined_val( ).
        IF lines( it_args ) > 0.
          READ TABLE it_args INDEX 1 INTO ls_cb.
          IF ls_cb-type = zif_mjs=>c_type_function AND ls_cb-fn IS BOUND.
            lv_idx = 0.
            LOOP AT is_obj-arr->items INTO DATA(lr_find_item).
              DATA(ls_find_elem) = zcl_mjs_val=>unbox_value( lr_find_item ).
              DATA(ls_find_result) = zcl_mjs=>call_function(
                ir_fn   = ls_cb-fn
                it_args = build_cb_args( is_elem = ls_find_elem iv_idx = lv_idx is_arr = is_obj )
                io_env  = io_env ).
              IF zcl_mjs_val=>is_true( ls_find_result ) = abap_true.
                rs_val = ls_find_elem.
                RETURN.
              ENDIF.
              lv_idx = lv_idx + 1.
            ENDLOOP.
          ENDIF.
        ENDIF.

      WHEN `filter`.
        IF lines( it_args ) > 0.
          READ TABLE it_args INDEX 1 INTO ls_cb.
          IF ls_cb-type = zif_mjs=>c_type_function AND ls_cb-fn IS BOUND.
            DATA lo_flt_arr TYPE REF TO zcl_mjs_array.
            CREATE OBJECT lo_flt_arr.
            lv_idx = 0.
            LOOP AT is_obj-arr->items INTO DATA(lr_flt_item).
              DATA(ls_flt_result) = zcl_mjs=>call_function(
                ir_fn   = ls_cb-fn
                it_args = build_cb_args( is_elem = zcl_mjs_val=>unbox_value( lr_flt_item ) iv_idx = lv_idx is_arr = is_obj )
                io_env  = io_env ).
              IF zcl_mjs_val=>is_true( ls_flt_result ) = abap_true.
                lo_flt_arr->push( lr_flt_item ).
              ENDIF.
              lv_idx = lv_idx + 1.
            ENDLOOP.
            rs_val-type = zif_mjs=>c_type_array.
            rs_val-arr = lo_flt_arr.
          ENDIF.
        ELSE.
          rs_val = zcl_mjs_val=>array_val( VALUE #( ) ).
        ENDIF.

      WHEN `splice`.
        DATA(lv_spl_len) = is_obj-arr->length( ).
        DATA lv_spl_start TYPE i VALUE 0.
        IF lines( it_args ) >= 1.
          lv_spl_start = zcl_mjs_val=>to_number( it_args[ 1 ] ).
          IF lv_spl_start < 0.
            lv_spl_start = lv_spl_start + lv_spl_len.
            IF lv_spl_start < 0.
              lv_spl_start = 0.
            ENDIF.
          ELSEIF lv_spl_start > lv_spl_len.
            lv_spl_start = lv_spl_len.
          ENDIF.
        ENDIF.
        DATA(lv_delete_count) = lv_spl_len - lv_spl_start.
        IF lines( it_args ) >= 2.
          lv_delete_count = zcl_mjs_val=>to_number( it_args[ 2 ] ).
          IF lv_delete_count < 0.
            lv_delete_count = 0.
          ENDIF.
          IF lv_delete_count > lv_spl_len - lv_spl_start.
            lv_delete_count = lv_spl_len - lv_spl_start.
          ENDIF.
        ENDIF.

        DATA lt_removed TYPE zif_mjs=>tt_nodes.
        DATA(lv_i) = 0.
        WHILE lv_i < lv_delete_count.
          APPEND is_obj-arr->items[ lv_spl_start + 1 ] TO lt_removed.
          DELETE is_obj-arr->items INDEX lv_spl_start + 1.
          lv_i = lv_i + 1.
        ENDWHILE.

        IF lines( it_args ) > 2.
          DATA(lv_ins_idx) = lv_spl_start + 1.
          LOOP AT it_args INTO DATA(ls_spl_a) FROM 3.
            INSERT zcl_mjs_val=>box_value( ls_spl_a ) INTO is_obj-arr->items INDEX lv_ins_idx.
            lv_ins_idx = lv_ins_idx + 1.
          ENDLOOP.
        ENDIF.
        rs_val = zcl_mjs_val=>array_val( lt_removed ).

      WHEN `sort`.
        " rudimentary lexicographical sort for tests (JS default)
        TYPES: BEGIN OF ty_sort,
                 val TYPE string,
                 ref TYPE REF TO data,
               END OF ty_sort.
        DATA lt_sort TYPE STANDARD TABLE OF ty_sort WITH DEFAULT KEY.
        LOOP AT is_obj-arr->items INTO DATA(lr_si).
          APPEND VALUE #( val = zcl_mjs_val=>to_string( zcl_mjs_val=>unbox_value( lr_si ) ) ref = lr_si ) TO lt_sort.
        ENDLOOP.
        SORT lt_sort BY val ASCENDING.
        CLEAR is_obj-arr->items.
        LOOP AT lt_sort INTO DATA(ls_sort).
          APPEND ls_sort-ref TO is_obj-arr->items.
        ENDLOOP.
        rs_val = is_obj.

      WHEN OTHERS.
        RAISE EXCEPTION TYPE zcx_mjs_runtime
          EXPORTING
            iv_error = |TypeError: { iv_method } is not a function|.
    ENDCASE.
  ENDMETHOD.

ENDCLASS.
