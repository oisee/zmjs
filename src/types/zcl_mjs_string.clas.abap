CLASS zcl_mjs_string DEFINITION PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS call_method
      IMPORTING
        is_obj    TYPE zif_mjs=>ty_value
        iv_method TYPE string
        it_args   TYPE zif_mjs=>tt_value_slots
      RETURNING
        VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING
        zcx_mjs_runtime.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_mjs_string IMPLEMENTATION.
  METHOD call_method.
    CASE iv_method.
      WHEN `toUpperCase`.
        rs_val = zcl_mjs_val=>string_val( to_upper( is_obj-str ) ).
      WHEN `toLowerCase`.
        rs_val = zcl_mjs_val=>string_val( to_lower( is_obj-str ) ).
      WHEN `startsWith`.
        IF lines( it_args ) > 0.
          DATA(ls_sw1) = VALUE zif_mjs=>ty_value( ).
          DATA(ls_sw2) = VALUE zif_mjs=>ty_value( ).
          READ TABLE it_args INDEX 1 INTO ls_sw1.
          DATA(lv_sw_search) = zcl_mjs_val=>to_string( ls_sw1 ).
          DATA(lv_sw_pos) = 0.
          IF lines( it_args ) >= 2.
            READ TABLE it_args INDEX 2 INTO ls_sw2.
            lv_sw_pos = zcl_mjs_val=>to_number( ls_sw2 ).
          ENDIF.
          IF lv_sw_pos < 0.
            lv_sw_pos = 0.
          ENDIF.
          IF lv_sw_pos > strlen( is_obj-str ).
            lv_sw_pos = strlen( is_obj-str ).
          ENDIF.
          IF lv_sw_search = ``.
            rs_val = zcl_mjs_val=>bool_val( abap_true ).
          ELSEIF lv_sw_pos + strlen( lv_sw_search ) > strlen( is_obj-str ).
            rs_val = zcl_mjs_val=>bool_val( abap_false ).
          ELSEIF substring( val = is_obj-str
                            off = lv_sw_pos
                            len = strlen( lv_sw_search ) ) = lv_sw_search.
            rs_val = zcl_mjs_val=>bool_val( abap_true ).
          ELSE.
            rs_val = zcl_mjs_val=>bool_val( abap_false ).
          ENDIF.
        ELSE.
          rs_val = zcl_mjs_val=>bool_val( abap_false ).
        ENDIF.
      WHEN `endsWith`.
        IF lines( it_args ) > 0.
          DATA(ls_ew1) = VALUE zif_mjs=>ty_value( ).
          DATA(ls_ew2) = VALUE zif_mjs=>ty_value( ).
          READ TABLE it_args INDEX 1 INTO ls_ew1.
          DATA(lv_ew_search) = zcl_mjs_val=>to_string( ls_ew1 ).
          DATA(lv_ew_len) = strlen( is_obj-str ).
          IF lines( it_args ) >= 2.
            READ TABLE it_args INDEX 2 INTO ls_ew2.
            lv_ew_len = zcl_mjs_val=>to_number( ls_ew2 ).
          ENDIF.
          IF lv_ew_len < 0.
            lv_ew_len = 0.
          ELSEIF lv_ew_len > strlen( is_obj-str ).
            lv_ew_len = strlen( is_obj-str ).
          ENDIF.
          IF lv_ew_search = ``.
            rs_val = zcl_mjs_val=>bool_val( abap_true ).
          ELSEIF lv_ew_len < strlen( lv_ew_search ).
            rs_val = zcl_mjs_val=>bool_val( abap_false ).
          ELSEIF substring( val = is_obj-str
                            off = lv_ew_len - strlen( lv_ew_search )
                            len = strlen( lv_ew_search ) ) = lv_ew_search.
            rs_val = zcl_mjs_val=>bool_val( abap_true ).
          ELSE.
            rs_val = zcl_mjs_val=>bool_val( abap_false ).
          ENDIF.
        ELSE.
          rs_val = zcl_mjs_val=>bool_val( abap_false ).
        ENDIF.
      WHEN `charAt`.
        IF lines( it_args ) > 0.
          DATA ls_cha TYPE zif_mjs=>ty_value.
          READ TABLE it_args INDEX 1 INTO ls_cha.
          DATA lv_cidx TYPE i.
          lv_cidx = zcl_mjs_val=>to_number( ls_cha ).
          IF lv_cidx >= 0 AND lv_cidx < strlen( is_obj-str ).
            DATA lv_cha_tmp TYPE string.
            lv_cha_tmp = substring( val = is_obj-str off = lv_cidx len = 1 ).
            rs_val = zcl_mjs_val=>string_val( lv_cha_tmp ).
          ELSE.
            rs_val = zcl_mjs_val=>string_val( `` ).
          ENDIF.
        ELSE.
          rs_val = zcl_mjs_val=>string_val( `` ).
        ENDIF.
      WHEN `indexOf`.
        IF lines( it_args ) > 0.
          DATA ls_ioa TYPE zif_mjs=>ty_value.
          READ TABLE it_args INDEX 1 INTO ls_ioa.
          DATA(lv_search) = zcl_mjs_val=>to_string( ls_ioa ).
          FIND lv_search IN is_obj-str MATCH OFFSET DATA(lv_offset).
          IF sy-subrc = 0.
            rs_val = zcl_mjs_val=>number_val( CONV f( lv_offset ) ).
          ELSE.
            rs_val = zcl_mjs_val=>number_val( -1 ).
          ENDIF.
        ELSE.
          rs_val = zcl_mjs_val=>number_val( -1 ).
        ENDIF.
      WHEN `lastIndexOf`.
        IF lines( it_args ) > 0.
          DATA ls_lioa1 TYPE zif_mjs=>ty_value.
          DATA ls_lioa2 TYPE zif_mjs=>ty_value.
          READ TABLE it_args INDEX 1 INTO ls_lioa1.
          DATA(lv_lio_search) = zcl_mjs_val=>to_string( ls_lioa1 ).
          DATA(lv_lio_off) = strlen( is_obj-str ).
          IF lines( it_args ) >= 2.
            READ TABLE it_args INDEX 2 INTO ls_lioa2.
            lv_lio_off = zcl_mjs_val=>to_number( ls_lioa2 ).
            IF lv_lio_off < 0.
              lv_lio_off = 0.
            ELSEIF lv_lio_off > strlen( is_obj-str ).
              lv_lio_off = strlen( is_obj-str ).
            ENDIF.
          ENDIF.
          FIND ALL OCCURRENCES OF lv_lio_search IN is_obj-str RESULTS DATA(lt_results).
          DATA(lv_lio_res) = -1.
          LOOP AT lt_results INTO DATA(ls_lio_res) WHERE offset <= lv_lio_off.
            lv_lio_res = ls_lio_res-offset.
          ENDLOOP.
          rs_val = zcl_mjs_val=>number_val( CONV f( lv_lio_res ) ).
        ELSE.
          rs_val = zcl_mjs_val=>number_val( -1 ).
        ENDIF.
      WHEN `substring`.
        IF lines( it_args ) >= 1.
          DATA ls_ss1 TYPE zif_mjs=>ty_value.
          DATA ls_ss2 TYPE zif_mjs=>ty_value.
          READ TABLE it_args INDEX 1 INTO ls_ss1.
          DATA lv_start TYPE i.
          DATA lv_end   TYPE i.
          lv_start = zcl_mjs_val=>to_number( ls_ss1 ).
          IF lines( it_args ) >= 2.
            READ TABLE it_args INDEX 2 INTO ls_ss2.
            lv_end = zcl_mjs_val=>to_number( ls_ss2 ).
          ELSE.
            lv_end = strlen( is_obj-str ).
          ENDIF.
          DATA lv_slen TYPE i.
          lv_slen = strlen( is_obj-str ).
          IF lv_start < 0.
            lv_start = 0.
          ENDIF.
          IF lv_start > lv_slen.
            lv_start = lv_slen.
          ENDIF.
          IF lv_end < 0.
            lv_end = 0.
          ENDIF.
          IF lv_end > lv_slen.
            lv_end = lv_slen.
          ENDIF.
          IF lv_start > lv_end.
            DATA lv_tmp TYPE i.
            lv_tmp = lv_start.
            lv_start = lv_end.
            lv_end = lv_tmp.
          ENDIF.
          DATA lv_sublen TYPE i.
          lv_sublen = lv_end - lv_start.
          IF lv_sublen > 0.
            DATA lv_sub_tmp TYPE string.
            lv_sub_tmp = substring( val = is_obj-str off = lv_start len = lv_sublen ).
            rs_val = zcl_mjs_val=>string_val( lv_sub_tmp ).
          ELSE.
            rs_val = zcl_mjs_val=>string_val( `` ).
          ENDIF.
        ENDIF.
      WHEN `substr`.
        IF lines( it_args ) >= 1.
          DATA ls_sub1 TYPE zif_mjs=>ty_value.
          DATA ls_sub2 TYPE zif_mjs=>ty_value.
          READ TABLE it_args INDEX 1 INTO ls_sub1.
          DATA lv_sub_start TYPE i.
          DATA lv_sub_len   TYPE i.
          DATA lv_sub_slen  TYPE i.
          lv_sub_slen = strlen( is_obj-str ).
          lv_sub_start = zcl_mjs_val=>to_number( ls_sub1 ).
          IF lv_sub_start < 0.
            lv_sub_start = lv_sub_slen + lv_sub_start.
            IF lv_sub_start < 0.
              lv_sub_start = 0.
            ENDIF.
          ELSEIF lv_sub_start > lv_sub_slen.
            lv_sub_start = lv_sub_slen.
          ENDIF.
          IF lines( it_args ) >= 2.
            READ TABLE it_args INDEX 2 INTO ls_sub2.
            lv_sub_len = zcl_mjs_val=>to_number( ls_sub2 ).
            IF lv_sub_len <= 0.
              rs_val = zcl_mjs_val=>string_val( `` ).
              RETURN.
            ENDIF.
            IF lv_sub_start + lv_sub_len > lv_sub_slen.
              lv_sub_len = lv_sub_slen - lv_sub_start.
            ENDIF.
          ELSE.
            lv_sub_len = lv_sub_slen - lv_sub_start.
          ENDIF.
          IF lv_sub_len > 0.
            DATA(lv_substr_res) = substring( val = is_obj-str
                                             off = lv_sub_start
                                             len = lv_sub_len ).
            rs_val = zcl_mjs_val=>string_val( lv_substr_res ).
          ELSE.
            rs_val = zcl_mjs_val=>string_val( `` ).
          ENDIF.
        ENDIF.
      WHEN `charCodeAt`.
        IF lines( it_args ) > 0.
          DATA ls_cca TYPE zif_mjs=>ty_value.
          READ TABLE it_args INDEX 1 INTO ls_cca.
          DATA lv_ccidx TYPE i.
          lv_ccidx = zcl_mjs_val=>to_number( ls_cca ).
          IF lv_ccidx >= 0 AND lv_ccidx < strlen( is_obj-str ).
            DATA lv_char TYPE c LENGTH 1.
            DATA lv_cc_tmp TYPE string.
            lv_cc_tmp = substring( val = is_obj-str off = lv_ccidx len = 1 ).
            lv_char = lv_cc_tmp.
            DATA lv_hex TYPE x LENGTH 2.
            lv_hex = cl_abap_conv_out_ce=>uccp( lv_char ).
            DATA lv_code TYPE i.
            lv_code = lv_hex.
            rs_val = zcl_mjs_val=>number_val( CONV f( lv_code ) ).
          ELSE.
            rs_val = zcl_mjs_val=>number_val( 0 ).
          ENDIF.
        ELSE.
          rs_val = zcl_mjs_val=>number_val( 0 ).
        ENDIF.
      WHEN `replace`.
        IF lines( it_args ) >= 2.
          DATA ls_rep1 TYPE zif_mjs=>ty_value.
          DATA ls_rep2 TYPE zif_mjs=>ty_value.
          READ TABLE it_args INDEX 1 INTO ls_rep1.
          READ TABLE it_args INDEX 2 INTO ls_rep2.
          DATA(lv_rep_to) = zcl_mjs_val=>to_string( ls_rep2 ).
          IF ls_rep1-type = zif_mjs=>c_type_regex.
            " RegExp first argument — use FIND loop to avoid REPLACE ALL IGNORING CASE runtime issues
            DATA lv_rxint   TYPE i.
            DATA lv_rxglob  TYPE abap_bool.
            DATA lv_rxicase TYPE abap_bool.
            DATA lv_rxrem   TYPE string.
            DATA lv_rxout   TYPE string.
            DATA lv_rxoff   TYPE i.
            DATA lv_rxmln   TYPE i.
            DATA lv_rxnxt   TYPE i.
            lv_rxint   = CONV i( ls_rep1-num ).
            " bitmask: 1=global, 2=ignoreCase — use explicit comparison (avoid integer division)
            IF lv_rxint = 1 OR lv_rxint = 3.
              lv_rxglob  = abap_true.
            ENDIF.
            IF lv_rxint = 2 OR lv_rxint = 3.
              lv_rxicase = abap_true.
            ENDIF.
            CLEAR lv_rxout.
            lv_rxrem = is_obj-str.
            DATA lv_rx_pos TYPE i VALUE 0.
            DATA lt_rx_res TYPE match_result_tab.
            IF strlen( ls_rep1-str ) = 0.
              " Empty regex matches empty string between everywhere
              DO.
                IF lv_rx_pos > strlen( lv_rxrem ).
                  EXIT.
                ENDIF.
                DATA ls_e_res TYPE match_result.
                ls_e_res-offset = lv_rx_pos.
                ls_e_res-length = 0.
                APPEND ls_e_res TO lt_rx_res.
                lv_rx_pos = lv_rx_pos + 1.
                IF lv_rxglob = abap_false OR lv_rx_pos > strlen( lv_rxrem ).
                  EXIT.
                ENDIF.
              ENDDO.
            ELSE.
              DO.
                IF lv_rx_pos > strlen( lv_rxrem ).
                  EXIT.
                ENDIF.
                DATA ls_rx_res TYPE match_result.
                IF lv_rxicase = abap_true.
                  FIND REGEX ls_rep1-str IN SECTION OFFSET lv_rx_pos OF lv_rxrem
                    MATCH OFFSET ls_rx_res-offset
                    MATCH LENGTH ls_rx_res-length
                    IGNORING CASE.
                ELSE.
                  FIND REGEX ls_rep1-str IN SECTION OFFSET lv_rx_pos OF lv_rxrem
                    MATCH OFFSET ls_rx_res-offset
                    MATCH LENGTH ls_rx_res-length.
                ENDIF.
                IF sy-subrc <> 0.
                  EXIT.
                ENDIF.
                IF lv_rx_pos > 0 AND ls_rx_res-offset = lv_rx_pos AND ls_rx_res-length = 0 AND substring( val = ls_rep1-str len = 1 ) = '^'.
                  lv_rx_pos = lv_rx_pos + 1.
                  CONTINUE.
                ENDIF.
                APPEND ls_rx_res TO lt_rx_res.
                IF lv_rxglob = abap_false.
                  EXIT.
                ENDIF.
                IF ls_rx_res-length = 0.
                  lv_rx_pos = ls_rx_res-offset + 1.
                  " Hack for open-abap: ^ matches start of section, which means we might get infinite exact zero-length hits if we keep searching from lv_rx_pos. But wait! We just incremented lv_rx_pos!
                ELSE.
                  lv_rx_pos = ls_rx_res-offset + ls_rx_res-length.
                ENDIF.
                IF lv_rx_pos > strlen( lv_rxrem ).
                  EXIT.
                ENDIF.
              ENDDO.
            ENDIF.
            DATA lv_rx_pos2 TYPE i.
            lv_rx_pos2 = 0.
            LOOP AT lt_rx_res ASSIGNING FIELD-SYMBOL(<ls_rx_r>).
              IF <ls_rx_r>-offset > lv_rx_pos2.
                lv_rxout = lv_rxout && substring( val = lv_rxrem off = lv_rx_pos2 len = <ls_rx_r>-offset - lv_rx_pos2 ).
              ENDIF.
              lv_rxout = lv_rxout && lv_rep_to.
              lv_rx_pos2 = <ls_rx_r>-offset + <ls_rx_r>-length.
            ENDLOOP.
            IF lv_rx_pos2 < strlen( lv_rxrem ).
              lv_rxout = lv_rxout && substring( val = lv_rxrem off = lv_rx_pos2 ).
            ENDIF.
            CLEAR lv_rxrem.
            lv_rxout = lv_rxout && lv_rxrem.
            rs_val = zcl_mjs_val=>string_val( lv_rxout ).
          ELSE.
            " String first argument
            DATA(lv_rep_from) = zcl_mjs_val=>to_string( ls_rep1 ).
            IF strlen( lv_rep_from ) = 0.
              rs_val = zcl_mjs_val=>string_val( lv_rep_to && is_obj-str ).
            ELSE.
              DATA lv_rep_off TYPE i.
              DATA lv_rep_mln TYPE i.
              FIND lv_rep_from IN is_obj-str
                RESPECTING CASE
                MATCH OFFSET lv_rep_off
                MATCH LENGTH lv_rep_mln.
              IF sy-subrc = 0.
                DATA lv_rep_res TYPE string.
                IF lv_rep_off > 0.
                  lv_rep_res = substring( val = is_obj-str len = lv_rep_off ).
                ENDIF.
                lv_rep_res = lv_rep_res && lv_rep_to.
                DATA(lv_rep_tail) = lv_rep_off + lv_rep_mln.
                IF lv_rep_tail < strlen( is_obj-str ).
                  lv_rep_res = lv_rep_res && substring( val = is_obj-str off = lv_rep_tail ).
                ENDIF.
                rs_val = zcl_mjs_val=>string_val( lv_rep_res ).
              ELSE.
                rs_val = zcl_mjs_val=>string_val( is_obj-str ).
              ENDIF.
            ENDIF.
          ENDIF.
        ELSE.
          rs_val = zcl_mjs_val=>string_val( is_obj-str ).
        ENDIF.
      WHEN `trim`.
        DATA lv_trim_tmp TYPE string.
        DATA lv_trim_ch  TYPE string.
        lv_trim_tmp = is_obj-str.
        WHILE strlen( lv_trim_tmp ) > 0.
          lv_trim_ch = substring( val = lv_trim_tmp off = 0 len = 1 ).
          IF lv_trim_ch = ` ` OR lv_trim_ch = cl_abap_char_utilities=>horizontal_tab
            OR lv_trim_ch = cl_abap_char_utilities=>newline OR lv_trim_ch = cl_abap_char_utilities=>cr_lf+0(1).
            lv_trim_tmp = substring( val = lv_trim_tmp off = 1 ).
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        WHILE strlen( lv_trim_tmp ) > 0.
          lv_trim_ch = substring( val = lv_trim_tmp off = strlen( lv_trim_tmp ) - 1 len = 1 ).
          IF lv_trim_ch = ` ` OR lv_trim_ch = cl_abap_char_utilities=>horizontal_tab
            OR lv_trim_ch = cl_abap_char_utilities=>newline OR lv_trim_ch = cl_abap_char_utilities=>cr_lf+0(1).
            lv_trim_tmp = substring( val = lv_trim_tmp len = strlen( lv_trim_tmp ) - 1 ).
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        rs_val = zcl_mjs_val=>string_val( lv_trim_tmp ).
      WHEN `trimEnd`.
        DATA lv_trim_e_tmp TYPE string.
        DATA lv_trim_e_ch  TYPE string.
        lv_trim_e_tmp = is_obj-str.
        WHILE strlen( lv_trim_e_tmp ) > 0.
          lv_trim_e_ch = substring( val = lv_trim_e_tmp off = strlen( lv_trim_e_tmp ) - 1 len = 1 ).
          IF lv_trim_e_ch = ` ` OR lv_trim_e_ch = cl_abap_char_utilities=>horizontal_tab
            OR lv_trim_e_ch = cl_abap_char_utilities=>newline OR lv_trim_e_ch = cl_abap_char_utilities=>cr_lf+0(1).
            lv_trim_e_tmp = substring( val = lv_trim_e_tmp len = strlen( lv_trim_e_tmp ) - 1 ).
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        rs_val = zcl_mjs_val=>string_val( lv_trim_e_tmp ).
      WHEN `split`.
        IF lines( it_args ) > 0.
          DATA(ls_spl_sep) = it_args[ 1 ].
          DATA(lv_spl_sep) = zcl_mjs_val=>to_string( ls_spl_sep ).
          DATA(lv_spl_limit) = 2147483647. " max i
          IF lines( it_args ) >= 2.
            lv_spl_limit = zcl_mjs_val=>to_number( it_args[ 2 ] ).
          ENDIF.

          DATA(lt_spl_items) = VALUE string_table( ).
          IF lv_spl_sep = ``.
            " split into characters
            DATA(lv_spl_i) = 0.
            WHILE lv_spl_i < strlen( is_obj-str ).
              APPEND substring( val = is_obj-str off = lv_spl_i len = 1 ) TO lt_spl_items.
              lv_spl_i = lv_spl_i + 1.
            ENDWHILE.
          ELSE.
            SPLIT is_obj-str AT lv_spl_sep INTO TABLE lt_spl_items.
          ENDIF.

          DATA lo_spl_arr TYPE REF TO zcl_mjs_array.
          CREATE OBJECT lo_spl_arr.
          DATA lv_spl_count TYPE i.
          lv_spl_count = 0.
          LOOP AT lt_spl_items INTO DATA(lv_spl_item) WHERE table_line IS NOT INITIAL OR table_line = ``.
            IF lv_spl_count >= lv_spl_limit.
              EXIT.
            ENDIF.
            lo_spl_arr->push( zcl_mjs_val=>box_value( zcl_mjs_val=>string_val( lv_spl_item ) ) ).
            lv_spl_count = lv_spl_count + 1.
          ENDLOOP.
          rs_val-type = zif_mjs=>c_type_array.
          rs_val-arr = lo_spl_arr.
        ELSE.
          " default: one-element array with full string
          DATA lo_spl_def TYPE REF TO zcl_mjs_array.
          CREATE OBJECT lo_spl_def.
          lo_spl_def->push( zcl_mjs_val=>box_value( is_obj ) ).
          rs_val-type = zif_mjs=>c_type_array.
          rs_val-arr = lo_spl_def.
        ENDIF.
      WHEN OTHERS.
        RAISE EXCEPTION TYPE zcx_mjs_runtime EXPORTING iv_error = |TypeError: { iv_method } is not a function|.
    ENDCASE.
  ENDMETHOD.
ENDCLASS.
