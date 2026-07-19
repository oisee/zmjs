CLASS zcl_mjs_tokenizer DEFINITION PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS class_constructor.
    CLASS-METHODS tokenize
      IMPORTING iv_src           TYPE string
      RETURNING VALUE(rt_tokens) TYPE zif_mjs=>tt_tokens.
  PRIVATE SECTION.
    " Escape characters and Unicode line terminators, built once
    CLASS-DATA gv_cr         TYPE c LENGTH 1.  " \r U+000D
    CLASS-DATA gv_backspace  TYPE c LENGTH 1.  " \b U+0008
    CLASS-DATA gv_vtab       TYPE c LENGTH 1.  " \v U+000B
    CLASS-DATA gv_formfeed   TYPE c LENGTH 1.  " \f U+000C
    CLASS-DATA gv_nul        TYPE c LENGTH 1.  " \0 U+0000
    CLASS-DATA gv_linterm_ls TYPE c LENGTH 1.  " U+2028 LINE SEPARATOR
    CLASS-DATA gv_linterm_ps TYPE c LENGTH 1.  " U+2029 PARAGRAPH SEPARATOR
    " Character sets for span scanning with CA/CN + sy-fdpos
    CLASS-DATA gv_ws_chars     TYPE string.  " whitespace
    CLASS-DATA gv_ident_chars  TYPE string.  " identifier continuation
    CLASS-DATA gv_num_chars    TYPE string.  " digits + decimal point
    CLASS-DATA gv_digit_chars  TYPE string.  " digits
    CLASS-DATA gv_rxterm_chars TYPE string.  " chars that steer a regex scan
ENDCLASS.


CLASS zcl_mjs_tokenizer IMPLEMENTATION.

  METHOD class_constructor.
    gv_cr = cl_abap_char_utilities=>cr_lf(1).
    TRY.
        gv_backspace  = cl_abap_conv_in_ce=>uccpi( 8 ).
        gv_vtab       = cl_abap_conv_in_ce=>uccpi( 11 ).
        gv_formfeed   = cl_abap_conv_in_ce=>uccpi( 12 ).
        gv_nul        = cl_abap_conv_in_ce=>uccpi( 0 ).
        gv_linterm_ls = cl_abap_conv_in_ce=>uccpi( 8232 ).
        gv_linterm_ps = cl_abap_conv_in_ce=>uccpi( 8233 ).
      CATCH cx_sy_conversion_codepage.
    ENDTRY.
    " leading literal space + tab + LF + CR
    gv_ws_chars = | { cl_abap_char_utilities=>horizontal_tab }{ cl_abap_char_utilities=>newline }{ gv_cr }|.
    gv_ident_chars  = `_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789`.
    gv_num_chars    = `0123456789.`.
    gv_digit_chars  = `0123456789`.
    gv_rxterm_chars = `/[]\`.
  ENDMETHOD.

  METHOD tokenize.
    DATA lv_i   TYPE i VALUE 0.
    DATA lv_len TYPE i.
    DATA lv_ch  TYPE c LENGTH 1.
    DATA lv_j   TYPE i.
    FIELD-SYMBOLS <tok>  TYPE zif_mjs=>ty_token.
    FIELD-SYMBOLS <ptok> TYPE zif_mjs=>ty_token.
    DATA lv_ni  TYPE i.
    DATA lv_nc  TYPE c LENGTH 1.
    DATA lv_n2  TYPE c LENGTH 1.
    DATA lv_d    TYPE c LENGTH 1.
    DATA lv_numlen TYPE i.
    DATA lv_echar  TYPE c LENGTH 1.
    DATA lv_esign  TYPE c LENGTH 1.
    DATA lv_nhc TYPE c LENGTH 1.
    DATA lv_hc     TYPE c LENGTH 1.
    DATA lv_hexdig TYPE string.
    DATA lv_hexval TYPE i.
    DATA lv_hpos   TYPE i.
    DATA lv_hk     TYPE i.
    DATA lv_quote TYPE c LENGTH 1.
    DATA lv_sbuf TYPE string.
    DATA lv_chunk_start TYPE i.
    DATA lv_chunk_len   TYPE i.
    DATA lv_esc TYPE c LENGTH 1.
    DATA lv_esc_cp   TYPE i.
    DATA lv_xh       TYPE i.
    DATA lv_idlen TYPE i.
    DATA lv_sc TYPE c LENGTH 1.
    DATA lv_window TYPE string.
    DATA lv_wlen   TYPE i.
    DATA lv_term   TYPE string.
    DATA lv_has_non_octal TYPE abap_bool.
    DATA lv_rxis    TYPE abap_bool.
    DATA lv_nptok   TYPE i.
    DATA lv_rxpat   TYPE string.
    DATA lv_rxflg   TYPE string.
    DATA lv_rxch    TYPE c LENGTH 1.
    DATA lv_rxfc    TYPE c LENGTH 1.
    DATA lv_rxclass TYPE abap_bool.

    " Hot characters as locals: class-static attribute access per character is
    " slow, and in the transpiled runtime every literal comparison allocates
    DATA lv_sp    TYPE c LENGTH 1 VALUE ' '.
    DATA lv_tab   TYPE c LENGTH 1.
    DATA lv_lf    TYPE c LENGTH 1.
    DATA lv_cr    TYPE c LENGTH 1.
    DATA lv_c0    TYPE c LENGTH 1 VALUE '0'.
    DATA lv_c9    TYPE c LENGTH 1 VALUE '9'.
    DATA lv_ca    TYPE c LENGTH 1 VALUE 'a'.
    DATA lv_cz    TYPE c LENGTH 1 VALUE 'z'.
    DATA lv_cua   TYPE c LENGTH 1 VALUE 'A'.
    DATA lv_cuz   TYPE c LENGTH 1 VALUE 'Z'.
    DATA lv_cus   TYPE c LENGTH 1 VALUE '_'.
    DATA lv_sq    TYPE c LENGTH 1 VALUE ''''.
    DATA lv_dq    TYPE c LENGTH 1 VALUE '"'.
    DATA lv_bt    TYPE c LENGTH 1 VALUE '`'.
    DATA lv_bsl   TYPE c LENGTH 1 VALUE '\'.
    DATA lv_dot   TYPE c LENGTH 1 VALUE '.'.
    DATA lv_slash TYPE c LENGTH 1 VALUE '/'.
    DATA lv_star  TYPE c LENGTH 1 VALUE '*'.
    DATA lv_ceq   TYPE c LENGTH 1 VALUE '='.

    lv_tab = cl_abap_char_utilities=>horizontal_tab.
    lv_lf  = cl_abap_char_utilities=>newline.
    lv_cr  = gv_cr.
    lv_len = strlen( iv_src ).
    " Case-complete hex digits: offsets 16-21 (A-F) map back via -6
    lv_hexdig = `0123456789abcdefABCDEF`.

    WHILE lv_i < lv_len.
      lv_ch = iv_src+lv_i(1).

      " Whitespace: consume the whole run via span scan
      IF lv_ch = lv_sp OR lv_ch = lv_tab OR lv_ch = lv_lf OR lv_ch = lv_cr.
        lv_i = lv_i + 1.
        WHILE lv_i < lv_len.
          lv_wlen = lv_len - lv_i.
          IF lv_wlen > 64.
            lv_wlen = 64.
          ENDIF.
          lv_window = iv_src+lv_i(lv_wlen).
          IF lv_window CN gv_ws_chars.
            lv_i = lv_i + sy-fdpos.
            EXIT.
          ELSE.
            lv_i = lv_i + lv_wlen.
          ENDIF.
        ENDWHILE.
        CONTINUE.
      ENDIF.

      " Identifier / keyword
      IF lv_ch = lv_cus OR ( lv_ch >= lv_ca AND lv_ch <= lv_cz )
                        OR ( lv_ch >= lv_cua AND lv_ch <= lv_cuz ).
        lv_j = lv_i + 1.
        WHILE lv_j < lv_len.
          lv_wlen = lv_len - lv_j.
          IF lv_wlen > 64.
            lv_wlen = 64.
          ENDIF.
          lv_window = iv_src+lv_j(lv_wlen).
          IF lv_window CN gv_ident_chars.
            lv_j = lv_j + sy-fdpos.
            EXIT.
          ELSE.
            lv_j = lv_j + lv_wlen.
          ENDIF.
        ENDWHILE.
        lv_idlen = lv_j - lv_i.
        APPEND INITIAL LINE TO rt_tokens ASSIGNING <tok>.
        <tok>-kind = 2.
        <tok>-val  = iv_src+lv_i(lv_idlen).
        IF <tok>-val = `instanceof`.
          <tok>-kind = 3.
        ENDIF.
        lv_i = lv_j.
        CONTINUE.
      ENDIF.

      " Number: decimal, hex (0x/0X), scientific (1e5)
      IF lv_ch >= lv_c0 AND lv_ch <= lv_c9.
        " Hex literal: 0x... or 0X...
        IF lv_ch = lv_c0 AND lv_i + 1 < lv_len.
          lv_ni = lv_i + 1.
          lv_nhc = iv_src+lv_ni(1).
          IF lv_nhc = `x` OR lv_nhc = `X`.
            lv_j = lv_i + 2.
            WHILE lv_j < lv_len.
              lv_d = iv_src+lv_j(1).
              IF ( lv_d >= lv_c0 AND lv_d <= lv_c9 )
                 OR ( lv_d >= `a` AND lv_d <= `f` )
                 OR ( lv_d >= `A` AND lv_d <= `F` ).
                lv_j = lv_j + 1.
              ELSE.
                EXIT.
              ENDIF.
            ENDWHILE.
            lv_hexval = 0.
            DO lv_j - lv_i - 2 TIMES.
              lv_hk = lv_i + 1 + sy-index.
              lv_hc = iv_src+lv_hk(1).
              FIND FIRST OCCURRENCE OF lv_hc IN lv_hexdig MATCH OFFSET lv_hpos.
              IF lv_hpos > 15.
                lv_hpos = lv_hpos - 6.
              ENDIF.
              lv_hexval = lv_hexval * 16 + lv_hpos.
            ENDDO.
            APPEND INITIAL LINE TO rt_tokens ASSIGNING <tok>.
            <tok>-kind = 0.
            <tok>-val  = |{ lv_hexval }|.
            lv_i = lv_j.
            CONTINUE.
          ELSEIF lv_nhc = `b` OR lv_nhc = `B`.
            " Binary literal: 0b... or 0B...
            lv_j = lv_i + 2.
            WHILE lv_j < lv_len.
              lv_d = iv_src+lv_j(1).
              IF lv_d = `0` OR lv_d = `1`.
                lv_j = lv_j + 1.
              ELSE.
                EXIT.
              ENDIF.
            ENDWHILE.
            lv_hexval = 0.
            DO lv_j - lv_i - 2 TIMES.
              lv_hk = lv_i + 1 + sy-index.
              lv_hc = iv_src+lv_hk(1).
              FIND FIRST OCCURRENCE OF lv_hc IN lv_hexdig MATCH OFFSET lv_hpos.
              lv_hexval = lv_hexval * 2 + lv_hpos.
            ENDDO.
            APPEND INITIAL LINE TO rt_tokens ASSIGNING <tok>.
            <tok>-kind = 0.
            <tok>-val  = |{ lv_hexval }|.
            lv_i = lv_j.
            CONTINUE.
          ELSEIF lv_nhc = `o` OR lv_nhc = `O`.
            " Octal literal: 0o... or 0O...
            lv_j = lv_i + 2.
            WHILE lv_j < lv_len.
              lv_d = iv_src+lv_j(1).
              IF lv_d >= lv_c0 AND lv_d <= `7`.
                lv_j = lv_j + 1.
              ELSE.
                EXIT.
              ENDIF.
            ENDWHILE.
            lv_hexval = 0.
            DO lv_j - lv_i - 2 TIMES.
              lv_hk = lv_i + 1 + sy-index.
              lv_hc = iv_src+lv_hk(1).
              FIND FIRST OCCURRENCE OF lv_hc IN lv_hexdig MATCH OFFSET lv_hpos.
              lv_hexval = lv_hexval * 8 + lv_hpos.
            ENDDO.
            APPEND INITIAL LINE TO rt_tokens ASSIGNING <tok>.
            <tok>-kind = 0.
            <tok>-val  = |{ lv_hexval }|.
            lv_i = lv_j.
            CONTINUE.
          ELSEIF lv_nhc >= lv_c0 AND lv_nhc <= `7`.
            " Legacy octal literal: 0NNN (non-strict mode ECMAScript)
            " Scan all consecutive decimal digits first; if any 8/9 found → decimal
            lv_j = lv_i + 1.
            lv_has_non_octal = abap_false.
            WHILE lv_j < lv_len.
              lv_d = iv_src+lv_j(1).
              IF lv_d >= lv_c0 AND lv_d <= lv_c9.
                IF lv_d = `8` OR lv_d = `9`.
                  lv_has_non_octal = abap_true.
                ENDIF.
                lv_j = lv_j + 1.
              ELSE.
                EXIT.
              ENDIF.
            ENDWHILE.
            IF lv_has_non_octal = abap_false.
              " Pure legacy octal: interpret as base-8
              lv_hexval = 0.
              DO lv_j - lv_i - 1 TIMES.
                lv_hk = lv_i + sy-index.
                lv_hc = iv_src+lv_hk(1).
                FIND FIRST OCCURRENCE OF lv_hc IN lv_hexdig MATCH OFFSET lv_hpos.
                lv_hexval = lv_hexval * 8 + lv_hpos.
              ENDDO.
              APPEND INITIAL LINE TO rt_tokens ASSIGNING <tok>.
              <tok>-kind = 0.
              <tok>-val  = |{ lv_hexval }|.
              lv_i = lv_j.
              CONTINUE.
            ENDIF.
            " else fall through to decimal parsing
          ENDIF.
        ENDIF.
        " Decimal + optional scientific exponent
        lv_j = lv_i.
        WHILE lv_j < lv_len.
          lv_wlen = lv_len - lv_j.
          IF lv_wlen > 64.
            lv_wlen = 64.
          ENDIF.
          lv_window = iv_src+lv_j(lv_wlen).
          IF lv_window CN gv_num_chars.
            lv_j = lv_j + sy-fdpos.
            EXIT.
          ELSE.
            lv_j = lv_j + lv_wlen.
          ENDIF.
        ENDWHILE.
        IF lv_j < lv_len.
          lv_echar = iv_src+lv_j(1).
          IF lv_echar = `e` OR lv_echar = `E`.
            lv_j = lv_j + 1.
            IF lv_j < lv_len.
              lv_esign = iv_src+lv_j(1).
              IF lv_esign = `+` OR lv_esign = `-`.
                lv_j = lv_j + 1.
              ENDIF.
            ENDIF.
            WHILE lv_j < lv_len.
              lv_wlen = lv_len - lv_j.
              IF lv_wlen > 64.
                lv_wlen = 64.
              ENDIF.
              lv_window = iv_src+lv_j(lv_wlen).
              IF lv_window CN gv_digit_chars.
                lv_j = lv_j + sy-fdpos.
                EXIT.
              ELSE.
                lv_j = lv_j + lv_wlen.
              ENDIF.
            ENDWHILE.
          ENDIF.
        ENDIF.
        lv_numlen = lv_j - lv_i.
        APPEND INITIAL LINE TO rt_tokens ASSIGNING <tok>.
        <tok>-kind = 0.
        <tok>-val  = iv_src+lv_i(lv_numlen).
        lv_i = lv_j.
        CONTINUE.
      ENDIF.

      " String (single-quote, double-quote, or backtick template literal)
      IF lv_ch = lv_sq OR lv_ch = lv_dq OR lv_ch = lv_bt.
        lv_quote = lv_ch.
        lv_term = lv_quote && lv_bsl.
        lv_j = lv_i + 1.
        lv_chunk_start = lv_j.
        CLEAR lv_sbuf.
        WHILE lv_j < lv_len.
          " Jump to the next quote or backslash
          lv_wlen = lv_len - lv_j.
          IF lv_wlen > 256.
            lv_wlen = 256.
          ENDIF.
          lv_window = iv_src+lv_j(lv_wlen).
          IF lv_window CA lv_term.
            lv_j = lv_j + sy-fdpos.
          ELSE.
            lv_j = lv_j + lv_wlen.
            CONTINUE.
          ENDIF.
          lv_sc = iv_src+lv_j(1).
          IF lv_sc = lv_quote.
            lv_chunk_len = lv_j - lv_chunk_start.
            IF lv_chunk_len > 0.
              lv_sbuf = lv_sbuf && iv_src+lv_chunk_start(lv_chunk_len).
            ENDIF.
            EXIT.
          ENDIF.
          " Backslash escape
          IF lv_j + 1 < lv_len.
            lv_chunk_len = lv_j - lv_chunk_start.
            IF lv_chunk_len > 0.
              lv_sbuf = lv_sbuf && iv_src+lv_chunk_start(lv_chunk_len).
            ENDIF.
            lv_j = lv_j + 1.
            lv_esc = iv_src+lv_j(1).
            CASE lv_esc.
              WHEN `n`.
                lv_sbuf = lv_sbuf && lv_lf.
              WHEN `t`.
                lv_sbuf = lv_sbuf && lv_tab.
              WHEN `r`.  " CR = 0x0D
                lv_sbuf = lv_sbuf && lv_cr.
              WHEN `b`.  " backspace = 0x08
                lv_sbuf = lv_sbuf && gv_backspace.
              WHEN `f`.  " form feed = 0x0C
                lv_sbuf = lv_sbuf && gv_formfeed.
              WHEN `v`.  " vertical tab = 0x0B
                lv_sbuf = lv_sbuf && gv_vtab.
              WHEN `0`.  " null = 0x00
                lv_sbuf = lv_sbuf && gv_nul.
              WHEN `x`.  " \xNN - 2 hex digits (0x00-0xFF)
                lv_esc_cp = 0.
                lv_xh = lv_j + 1.
                DO 2 TIMES.
                  lv_hc = iv_src+lv_xh(1).
                  FIND FIRST OCCURRENCE OF lv_hc IN lv_hexdig MATCH OFFSET lv_hpos.
                  IF lv_hpos > 15.
                    lv_hpos = lv_hpos - 6.
                  ENDIF.
                  lv_esc_cp = lv_esc_cp * 16 + lv_hpos.
                  lv_xh = lv_xh + 1.
                ENDDO.
                lv_j = lv_j + 2.
                IF lv_esc_cp = 32.
                  " uccpi returns fixed-length char, && would trim a trailing blank
                  lv_sbuf = lv_sbuf && ` `.
                ELSE.
                  TRY.
                      lv_sbuf = lv_sbuf && cl_abap_conv_in_ce=>uccpi( lv_esc_cp ).
                    CATCH cx_sy_conversion_codepage.
                  ENDTRY.
                ENDIF.
              WHEN `u`.  " \uNNNN - 4 hex digits, BMP (U+0000-U+FFFF)
                lv_esc_cp = 0.
                lv_xh = lv_j + 1.
                DO 4 TIMES.
                  lv_hc = iv_src+lv_xh(1).
                  FIND FIRST OCCURRENCE OF lv_hc IN lv_hexdig MATCH OFFSET lv_hpos.
                  IF lv_hpos > 15.
                    lv_hpos = lv_hpos - 6.
                  ENDIF.
                  lv_esc_cp = lv_esc_cp * 16 + lv_hpos.
                  lv_xh = lv_xh + 1.
                ENDDO.
                lv_j = lv_j + 4.
                IF lv_esc_cp = 32.
                  " uccpi returns fixed-length char, && would trim a trailing blank
                  lv_sbuf = lv_sbuf && ` `.
                ELSE.
                  TRY.
                      lv_sbuf = lv_sbuf && cl_abap_conv_in_ce=>uccpi( lv_esc_cp ).
                    CATCH cx_sy_conversion_codepage.
                  ENDTRY.
                ENDIF.
              WHEN `\`.
                lv_sbuf = lv_sbuf && `\`.
              WHEN `'`.
                lv_sbuf = lv_sbuf && `'`.
              WHEN `"`.
                lv_sbuf = lv_sbuf && `"`.
              WHEN lv_lf.                             " \<LF> line continuation
                " skip – produce nothing
              WHEN lv_cr.                             " \<CR> line continuation
                " skip; also consume following <LF> if present (CRLF line ending)
                IF lv_j + 1 < lv_len.
                  lv_ni = lv_j + 1.
                  IF iv_src+lv_ni(1) = lv_lf.
                    lv_j = lv_ni.
                  ENDIF.
                ENDIF.
              WHEN gv_linterm_ls.                     " \<U+2028> line continuation
                " skip – produce nothing
              WHEN gv_linterm_ps.                     " \<U+2029> line continuation
                " skip – produce nothing
              WHEN OTHERS.
                lv_sbuf = lv_sbuf && lv_esc.
            ENDCASE.
            lv_chunk_start = lv_j + 1.
          ENDIF.
          lv_j = lv_j + 1.
        ENDWHILE.
        " Unterminated strings still retain the final unchanged source span.
        IF lv_j >= lv_len.
          lv_chunk_len = lv_j - lv_chunk_start.
          IF lv_chunk_len > 0.
            lv_sbuf = lv_sbuf && iv_src+lv_chunk_start(lv_chunk_len).
          ENDIF.
        ENDIF.
        APPEND INITIAL LINE TO rt_tokens ASSIGNING <tok>.
        <tok>-kind = 1.
        <tok>-val  = lv_sbuf.
        lv_i = lv_j + 1.
        CONTINUE.
      ENDIF.

      " Operators and punctuation: dispatch on the first character, then peek
      " single characters - no 2/3-char substring comparisons
      CASE lv_ch.
        WHEN '(' OR ')' OR '{' OR '}' OR '[' OR ']' OR ';' OR ',' OR ':' OR '*' OR '%'.
          APPEND INITIAL LINE TO rt_tokens ASSIGNING <tok>.
          <tok>-kind = 3.
          <tok>-val  = lv_ch.
          lv_i = lv_i + 1.

        WHEN '='.
          CLEAR lv_nc.
          lv_ni = lv_i + 1.
          IF lv_ni < lv_len.
            lv_nc = iv_src+lv_ni(1).
          ENDIF.
          APPEND INITIAL LINE TO rt_tokens ASSIGNING <tok>.
          <tok>-kind = 3.
          IF lv_nc = lv_ceq.
            CLEAR lv_n2.
            lv_ni = lv_i + 2.
            IF lv_ni < lv_len.
              lv_n2 = iv_src+lv_ni(1).
            ENDIF.
            IF lv_n2 = lv_ceq.
              <tok>-val = `===`.
              lv_i = lv_i + 3.
            ELSE.
              <tok>-val = `==`.
              lv_i = lv_i + 2.
            ENDIF.
          ELSEIF lv_nc = `>`.
            <tok>-val = `=>`.
            lv_i = lv_i + 2.
          ELSE.
            <tok>-val = `=`.
            lv_i = lv_i + 1.
          ENDIF.

        WHEN '!'.
          CLEAR lv_nc.
          lv_ni = lv_i + 1.
          IF lv_ni < lv_len.
            lv_nc = iv_src+lv_ni(1).
          ENDIF.
          APPEND INITIAL LINE TO rt_tokens ASSIGNING <tok>.
          <tok>-kind = 3.
          IF lv_nc = lv_ceq.
            CLEAR lv_n2.
            lv_ni = lv_i + 2.
            IF lv_ni < lv_len.
              lv_n2 = iv_src+lv_ni(1).
            ENDIF.
            IF lv_n2 = lv_ceq.
              <tok>-val = `!==`.
              lv_i = lv_i + 3.
            ELSE.
              <tok>-val = `!=`.
              lv_i = lv_i + 2.
            ENDIF.
          ELSE.
            <tok>-val = `!`.
            lv_i = lv_i + 1.
          ENDIF.

        WHEN '<' OR '>'.
          CLEAR lv_nc.
          lv_ni = lv_i + 1.
          IF lv_ni < lv_len.
            lv_nc = iv_src+lv_ni(1).
          ENDIF.
          APPEND INITIAL LINE TO rt_tokens ASSIGNING <tok>.
          <tok>-kind = 3.
          IF lv_nc = lv_ceq.
            <tok>-val = lv_ch && lv_nc.
            lv_i = lv_i + 2.
          ELSE.
            <tok>-val = lv_ch.
            lv_i = lv_i + 1.
          ENDIF.

        WHEN '+' OR '-'.
          CLEAR lv_nc.
          lv_ni = lv_i + 1.
          IF lv_ni < lv_len.
            lv_nc = iv_src+lv_ni(1).
          ENDIF.
          APPEND INITIAL LINE TO rt_tokens ASSIGNING <tok>.
          <tok>-kind = 3.
          IF lv_nc = lv_ch OR lv_nc = lv_ceq.
            <tok>-val = lv_ch && lv_nc.
            lv_i = lv_i + 2.
          ELSE.
            <tok>-val = lv_ch.
            lv_i = lv_i + 1.
          ENDIF.

        WHEN '?'.
          CLEAR lv_nc.
          lv_ni = lv_i + 1.
          IF lv_ni < lv_len.
            lv_nc = iv_src+lv_ni(1).
          ENDIF.
          APPEND INITIAL LINE TO rt_tokens ASSIGNING <tok>.
          <tok>-kind = 3.
          IF lv_nc = lv_dot OR lv_nc = `?`.
            <tok>-val = lv_ch && lv_nc.
            lv_i = lv_i + 2.
          ELSE.
            <tok>-val = `?`.
            lv_i = lv_i + 1.
          ENDIF.

        WHEN '&'.
          CLEAR lv_nc.
          lv_ni = lv_i + 1.
          IF lv_ni < lv_len.
            lv_nc = iv_src+lv_ni(1).
          ENDIF.
          IF lv_nc = `&`.
            APPEND INITIAL LINE TO rt_tokens ASSIGNING <tok>.
            <tok>-kind = 3.
            <tok>-val  = `&&`.
            lv_i = lv_i + 2.
          ELSE.
            " single & not supported: skip (pre-existing behavior)
            lv_i = lv_i + 1.
          ENDIF.

        WHEN '|'.
          CLEAR lv_nc.
          lv_ni = lv_i + 1.
          IF lv_ni < lv_len.
            lv_nc = iv_src+lv_ni(1).
          ENDIF.
          IF lv_nc = `|`.
            APPEND INITIAL LINE TO rt_tokens ASSIGNING <tok>.
            <tok>-kind = 3.
            <tok>-val  = `||`.
            lv_i = lv_i + 2.
          ELSE.
            " single | not supported: skip (pre-existing behavior)
            lv_i = lv_i + 1.
          ENDIF.

        WHEN '.'.
          CLEAR lv_nc.
          lv_ni = lv_i + 1.
          IF lv_ni < lv_len.
            lv_nc = iv_src+lv_ni(1).
          ENDIF.
          IF lv_nc = lv_dot.
            CLEAR lv_n2.
            lv_ni = lv_i + 2.
            IF lv_ni < lv_len.
              lv_n2 = iv_src+lv_ni(1).
            ENDIF.
            APPEND INITIAL LINE TO rt_tokens ASSIGNING <tok>.
            <tok>-kind = 3.
            IF lv_n2 = lv_dot.
              <tok>-val = `...`.
              lv_i = lv_i + 3.
            ELSE.
              <tok>-val = `.`.
              lv_i = lv_i + 1.
            ENDIF.
          ELSEIF lv_nc >= lv_c0 AND lv_nc <= lv_c9.
            " Dot-prefixed number: .5, .0e1
            lv_j = lv_i.
            WHILE lv_j < lv_len.
              lv_wlen = lv_len - lv_j.
              IF lv_wlen > 64.
                lv_wlen = 64.
              ENDIF.
              lv_window = iv_src+lv_j(lv_wlen).
              IF lv_window CN gv_num_chars.
                lv_j = lv_j + sy-fdpos.
                EXIT.
              ELSE.
                lv_j = lv_j + lv_wlen.
              ENDIF.
            ENDWHILE.
            IF lv_j < lv_len.
              lv_echar = iv_src+lv_j(1).
              IF lv_echar = `e` OR lv_echar = `E`.
                lv_j = lv_j + 1.
                IF lv_j < lv_len.
                  lv_esign = iv_src+lv_j(1).
                  IF lv_esign = `+` OR lv_esign = `-`.
                    lv_j = lv_j + 1.
                  ENDIF.
                ENDIF.
                WHILE lv_j < lv_len.
                  lv_wlen = lv_len - lv_j.
                  IF lv_wlen > 64.
                    lv_wlen = 64.
                  ENDIF.
                  lv_window = iv_src+lv_j(lv_wlen).
                  IF lv_window CN gv_digit_chars.
                    lv_j = lv_j + sy-fdpos.
                    EXIT.
                  ELSE.
                    lv_j = lv_j + lv_wlen.
                  ENDIF.
                ENDWHILE.
              ENDIF.
            ENDIF.
            lv_numlen = lv_j - lv_i.
            APPEND INITIAL LINE TO rt_tokens ASSIGNING <tok>.
            <tok>-kind = 0.
            <tok>-val  = iv_src+lv_i(lv_numlen).
            lv_i = lv_j.
          ELSE.
            APPEND INITIAL LINE TO rt_tokens ASSIGNING <tok>.
            <tok>-kind = 3.
            <tok>-val  = `.`.
            lv_i = lv_i + 1.
          ENDIF.

        WHEN '/'.
          " Comment?
          lv_ni = lv_i + 1.
          IF lv_ni < lv_len.
            lv_nc = iv_src+lv_ni(1).
            IF lv_nc = lv_slash.
              " Line comment: skip to end of line
              lv_i = lv_i + 2.
              WHILE lv_i < lv_len.
                lv_wlen = lv_len - lv_i.
                IF lv_wlen > 256.
                  lv_wlen = 256.
                ENDIF.
                lv_window = iv_src+lv_i(lv_wlen).
                IF lv_window CA lv_lf.
                  lv_i = lv_i + sy-fdpos.
                  EXIT.
                ELSE.
                  lv_i = lv_i + lv_wlen.
                ENDIF.
              ENDWHILE.
              CONTINUE.
            ELSEIF lv_nc = lv_star.
              " Block comment: skip to */
              lv_j = lv_i + 2.
              WHILE lv_j < lv_len.
                lv_wlen = lv_len - lv_j.
                IF lv_wlen > 256.
                  lv_wlen = 256.
                ENDIF.
                lv_window = iv_src+lv_j(lv_wlen).
                IF lv_window CA lv_star.
                  lv_j = lv_j + sy-fdpos.
                  lv_ni = lv_j + 1.
                  IF lv_ni < lv_len AND iv_src+lv_ni(1) = lv_slash.
                    lv_j = lv_ni + 1.
                    EXIT.
                  ENDIF.
                  lv_j = lv_j + 1.
                ELSE.
                  lv_j = lv_j + lv_wlen.
                ENDIF.
              ENDWHILE.
              lv_i = lv_j.
              CONTINUE.
            ENDIF.
          ENDIF.
          " Regex literal: /pattern/flags — when context indicates start of expression
          " (not after number, string, identifier, or closing bracket which would mean division)
          lv_rxis = abap_true.
          lv_nptok = lines( rt_tokens ).
          IF lv_nptok > 0.
            READ TABLE rt_tokens INDEX lv_nptok ASSIGNING <ptok>.
            IF <ptok>-kind = 0                      " number
               OR <ptok>-kind = 1                   " string
               OR ( <ptok>-kind = 2                 " identifier (but not expression-starting keywords)
                    AND <ptok>-val <> `return`
                    AND <ptok>-val <> `typeof`
                    AND <ptok>-val <> `instanceof`
                    AND <ptok>-val <> `in`
                    AND <ptok>-val <> `of`
                    AND <ptok>-val <> `throw`
                    AND <ptok>-val <> `case`
                    AND <ptok>-val <> `delete`
                    AND <ptok>-val <> `new`
                    AND <ptok>-val <> `void` )
               OR <ptok>-val = `)` OR <ptok>-val = `]` OR <ptok>-val = `}`.
              lv_rxis = abap_false.
            ENDIF.
          ENDIF.
          IF lv_rxis = abap_true.
            lv_rxclass = abap_false.
            lv_j = lv_i + 1.
            WHILE lv_j < lv_len.
              " Jump to the next /, [, ] or backslash
              lv_wlen = lv_len - lv_j.
              IF lv_wlen > 256.
                lv_wlen = 256.
              ENDIF.
              lv_window = iv_src+lv_j(lv_wlen).
              IF lv_window CA gv_rxterm_chars.
                lv_j = lv_j + sy-fdpos.
              ELSE.
                lv_j = lv_j + lv_wlen.
                CONTINUE.
              ENDIF.
              lv_rxch = iv_src+lv_j(1).
              IF lv_rxch = lv_slash AND lv_rxclass = abap_false.
                EXIT.
              ENDIF.
              IF lv_rxch = lv_bsl AND lv_j + 1 < lv_len.
                lv_j = lv_j + 2.
              ELSE.
                IF lv_rxch = `[` AND lv_rxclass = abap_false.
                  lv_rxclass = abap_true.
                ELSEIF lv_rxch = `]` AND lv_rxclass = abap_true.
                  lv_rxclass = abap_false.
                ENDIF.
                lv_j = lv_j + 1.
              ENDIF.
            ENDWHILE.
            IF lv_j < lv_len.
              " Pattern is the unmodified source span between the slashes
              lv_ni = lv_i + 1.
              lv_numlen = lv_j - lv_ni.
              CLEAR lv_rxpat.
              IF lv_numlen > 0.
                lv_rxpat = iv_src+lv_ni(lv_numlen).
              ENDIF.
              CLEAR lv_rxflg.
              lv_j = lv_j + 1.  " skip closing /
              WHILE lv_j < lv_len.
                lv_rxfc = iv_src+lv_j(1).
                IF lv_rxfc >= lv_ca AND lv_rxfc <= lv_cz.
                  lv_rxflg = lv_rxflg && lv_rxfc.
                  lv_j = lv_j + 1.
                ELSE.
                  EXIT.
                ENDIF.
              ENDWHILE.
              APPEND INITIAL LINE TO rt_tokens ASSIGNING <tok>.
              <tok>-kind = 6.
              <tok>-val  = lv_rxpat && lv_lf && lv_rxflg.
              lv_i = lv_j.
              CONTINUE.
            ENDIF.
          ENDIF.
          " Division or lone slash
          APPEND INITIAL LINE TO rt_tokens ASSIGNING <tok>.
          <tok>-kind = 3.
          <tok>-val  = `/`.
          lv_i = lv_i + 1.

        WHEN OTHERS.
          lv_i = lv_i + 1.
      ENDCASE.
    ENDWHILE.

    APPEND INITIAL LINE TO rt_tokens ASSIGNING <tok>.
    <tok>-kind = 5.
    <tok>-val  = ``.
  ENDMETHOD.

ENDCLASS.
