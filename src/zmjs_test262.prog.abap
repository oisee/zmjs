REPORT zmjs_test262.
START-OF-SELECTION.
  " Load ZMJS_TEST262.JS from SAP MIME repository (SMW0)
  DATA lv_js TYPE string.
  TRY.
      DATA lo_mime TYPE REF TO if_w3_mime_repository_api.
      cl_mime_repository_api=>get_api( RECEIVING ro_api = lo_mime ).
      DATA lt_content TYPE w3mime.
      DATA lv_len TYPE i.
      lo_mime->get(
        EXPORTING i_url     = '/SAP/PUBLIC/ZMJS/ZMJS_TEST262.JS'
        IMPORTING e_content = lt_content
                  e_length  = lv_len ).
      IF lv_len > 0.
        lv_js = cl_abap_codepage=>convert_from( source = lt_content ).
      ENDIF.
    CATCH cx_root.
  ENDTRY.
  IF lv_js IS INITIAL.
    WRITE: / 'ERROR: could not load ZMJS_TEST262.JS from MIME repository'.
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
