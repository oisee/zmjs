REPORT zmjs_test262.
START-OF-SELECTION.
  DATA(lo_file) = zcl_llm_00_file_smw0=>new(
    iv_      = 'ZMJS_TEST262.JS'
    io_codec = zcl_llm_00_codec_mock=>new( )
  ).
  DATA(lv_js) = lo_file->get_string( ).
  IF lv_js IS INITIAL.
    WRITE: / 'ERROR: could not load ZMJS_TEST262.JS from SMW0'.
    RETURN.
  ENDIF.
  DATA lv_t1 TYPE i.
  DATA lv_t2 TYPE i.
  GET RUN TIME FIELD lv_t1.
  DATA(lv_result) = zcl_mjs=>eval( lv_js ).
  GET RUN TIME FIELD lv_t2.
  DATA(lv_ms) = ( lv_t2 - lv_t1 ) / 1000.
  DATA lt_lines TYPE STANDARD TABLE OF string.
  SPLIT lv_result AT cl_abap_char_utilities=>newline INTO TABLE lt_lines.
  LOOP AT lt_lines INTO DATA(lv_line).
    WRITE: / lv_line.
  ENDLOOP.
  WRITE: / |Time: { lv_ms }ms|.
