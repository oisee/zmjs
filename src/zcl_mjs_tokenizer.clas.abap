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
  ENDMETHOD.

  METHOD tokenize.
    DATA lv_i   TYPE i VALUE 0.
    DATA lv_len TYPE i.
    DATA lv_ch  TYPE c LENGTH 1.
    DATA lv_j   TYPE i.
    FIELD-SYMBOLS <tok> TYPE zif_mjs=>ty_token.
    DATA lv_ni  TYPE i.
    DATA lv_bt  TYPE c LENGTH 1.
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
    DATA lv_ndot TYPE c LENGTH 1.
    DATA lv_two TYPE string.
    DATA lv_three TYPE string.
    DATA lv_idlen TYPE i.
    DATA lv_ic TYPE c LENGTH 1.
    DATA lv_sc TYPE c LENGTH 1.

    lv_bt = |`|.
    lv_len = strlen( iv_src ).
    lv_hexdig = `0123456789abcdef`.

    WHILE lv_i < lv_len.
      lv_ch = iv_src+lv_i(1).

      " Skip whitespace, // and /* comments
      IF lv_ch = ` ` OR lv_ch = cl_abap_char_utilities=>horizontal_tab
         OR lv_ch = cl_abap_char_utilities=>newline
         OR lv_ch = cl_abap_char_utilities=>cr_lf(1).
        lv_i = lv_i + 1.
        CONTINUE.
      ENDIF.

      IF lv_i + 1 < lv_len.
        IF iv_src+lv_i(2) = `//`.
          lv_i = lv_i + 2.
          WHILE lv_i < lv_len.
            IF iv_src+lv_i(1) = cl_abap_char_utilities=>newline.
              EXIT.
            ENDIF.
            lv_i = lv_i + 1.
          ENDWHILE.
          CONTINUE.
        ELSEIF iv_src+lv_i(2) = `/*`.
          lv_j = lv_i + 2.
          WHILE lv_j + 1 < lv_len.
            IF iv_src+lv_j(2) = `*/`.
              lv_j = lv_j + 2.
              EXIT.
            ENDIF.
            lv_j = lv_j + 1.
          ENDWHILE.
          lv_i = lv_j.
          CONTINUE.
        ENDIF.
      ENDIF.

      " Number: decimal, hex (0x/0X), scientific (1e5)
      IF lv_ch >= `0` AND lv_ch <= `9`.
        " Hex literal: 0x... or 0X...
        IF lv_ch = `0` AND lv_i + 1 < lv_len.
          lv_ni = lv_i + 1.
          lv_nhc = iv_src+lv_ni(1).
          IF lv_nhc = `x` OR lv_nhc = `X`.
            lv_j = lv_i + 2.
            WHILE lv_j < lv_len.
              lv_d = iv_src+lv_j(1).
              IF ( lv_d >= `0` AND lv_d <= `9` )
                 OR ( lv_d >= `a` AND lv_d <= `f` )
                 OR ( lv_d >= `A` AND lv_d <= `F` ).
                lv_j = lv_j + 1.
              ELSE.
                EXIT.
              ENDIF.
            ENDWHILE.
            lv_hexdig = `0123456789abcdef`.
            lv_hexval = 0.
            DO lv_j - lv_i - 2 TIMES.
              lv_hk = lv_i + 1 + sy-index.
              lv_hc = iv_src+lv_hk(1).
              TRANSLATE lv_hc TO LOWER CASE.
              FIND FIRST OCCURRENCE OF lv_hc IN lv_hexdig MATCH OFFSET lv_hpos.
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
            lv_hexdig = `0123456789abcdef`.
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
              IF lv_d >= `0` AND lv_d <= `7`.
                lv_j = lv_j + 1.
              ELSE.
                EXIT.
              ENDIF.
            ENDWHILE.
            lv_hexdig = `0123456789abcdef`.
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
          ELSEIF lv_nhc >= `0` AND lv_nhc <= `7`.
            " Legacy octal literal: 0NNN (non-strict mode ECMAScript)
            " Scan all consecutive decimal digits first; if any 8/9 found → decimal
            lv_j = lv_i + 1.
            DATA lv_has_non_octal TYPE abap_bool VALUE abap_false.
            WHILE lv_j < lv_len.
              lv_d = iv_src+lv_j(1).
              IF lv_d >= `0` AND lv_d <= `9`.
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
          lv_d = iv_src+lv_j(1).
          IF ( lv_d >= `0` AND lv_d <= `9` ) OR lv_d = `.`.
            lv_j = lv_j + 1.
          ELSE.
            EXIT.
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
              lv_d = iv_src+lv_j(1).
              IF lv_d >= `0` AND lv_d <= `9`.
                lv_j = lv_j + 1.
              ELSE.
                EXIT.
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
      IF lv_ch = `'` OR lv_ch = `"` OR lv_ch = lv_bt.
        lv_quote = lv_ch.
        lv_j = lv_i + 1.
        lv_chunk_start = lv_j.
        CLEAR lv_sbuf.
        WHILE lv_j < lv_len.
          lv_sc = iv_src+lv_j(1).
          IF lv_sc = lv_quote.
            lv_chunk_len = lv_j - lv_chunk_start.
            IF lv_chunk_len > 0.
              lv_sbuf = lv_sbuf && iv_src+lv_chunk_start(lv_chunk_len).
            ENDIF.
            EXIT.
          ENDIF.
          IF lv_sc = `\` AND lv_j + 1 < lv_len.
            lv_chunk_len = lv_j - lv_chunk_start.
            IF lv_chunk_len > 0.
              lv_sbuf = lv_sbuf && iv_src+lv_chunk_start(lv_chunk_len).
            ENDIF.
            lv_j = lv_j + 1.
            lv_esc = iv_src+lv_j(1).
            CASE lv_esc.
              WHEN `n`.
                lv_sbuf = lv_sbuf && cl_abap_char_utilities=>newline.
              WHEN `t`.
                lv_sbuf = lv_sbuf && cl_abap_char_utilities=>horizontal_tab.
              WHEN `r`.  " CR = 0x0D
                lv_sbuf = lv_sbuf && gv_cr.
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
                  TRANSLATE lv_hc TO LOWER CASE.
                  FIND FIRST OCCURRENCE OF lv_hc IN lv_hexdig MATCH OFFSET lv_hpos.
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
                  TRANSLATE lv_hc TO LOWER CASE.
                  FIND FIRST OCCURRENCE OF lv_hc IN lv_hexdig MATCH OFFSET lv_hpos.
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
              WHEN cl_abap_char_utilities=>newline.   " \<LF> line continuation
                " skip – produce nothing
              WHEN cl_abap_char_utilities=>cr_lf(1).  " \<CR> line continuation
                " skip; also consume following <LF> if present (CRLF line ending)
                IF lv_j + 1 < lv_len.
                  lv_ni = lv_j + 1.
                  IF iv_src+lv_ni(1) = cl_abap_char_utilities=>newline.
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

      " Identifier / keyword
      IF lv_ch = `_` OR ( lv_ch >= `a` AND lv_ch <= `z` )
                      OR ( lv_ch >= `A` AND lv_ch <= `Z` ).
        lv_j = lv_i.
        WHILE lv_j < lv_len.
          lv_ic = iv_src+lv_j(1).
          IF lv_ic = `_` OR ( lv_ic >= `a` AND lv_ic <= `z` )
                         OR ( lv_ic >= `A` AND lv_ic <= `Z` )
                         OR ( lv_ic >= `0` AND lv_ic <= `9` ).
            lv_j = lv_j + 1.
          ELSE.
            EXIT.
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

      " Multi-char operators
      IF lv_i + 1 < lv_len.
        lv_two = iv_src+lv_i(2).
        IF lv_two = `?.` OR lv_two = `??`.
          APPEND INITIAL LINE TO rt_tokens ASSIGNING <tok>.
          <tok>-kind = 3.
          <tok>-val  = lv_two.
          lv_i = lv_i + 2.
          CONTINUE.
        ENDIF.
        IF lv_two = `==` OR lv_two = `!=` OR lv_two = `<=`
           OR lv_two = `>=` OR lv_two = `&&` OR lv_two = `||`
           OR lv_two = `=>` OR lv_two = `+=` OR lv_two = `-=`
           OR lv_two = `++` OR lv_two = `--`.
          IF lv_i + 2 < lv_len AND
             ( lv_two = `==` OR lv_two = `!=` ).
            lv_three = iv_src+lv_i(3).
            IF lv_three = `===` OR lv_three = `!==`.
              APPEND INITIAL LINE TO rt_tokens ASSIGNING <tok>.
              <tok>-kind = 3.
              <tok>-val  = lv_three.
              lv_i = lv_i + 3.
              CONTINUE.
            ENDIF.
          ENDIF.
          APPEND INITIAL LINE TO rt_tokens ASSIGNING <tok>.
          <tok>-kind = 3.
          <tok>-val  = lv_two.
          lv_i = lv_i + 2.
          CONTINUE.
        ENDIF.
      ENDIF.
      IF lv_ch = `.` AND lv_i + 2 < lv_len AND iv_src+lv_i(3) = `...`.
        APPEND INITIAL LINE TO rt_tokens ASSIGNING <tok>.
        <tok>-kind = 3.
        <tok>-val  = `...`.
        lv_i = lv_i + 3.
        CONTINUE.
      ENDIF.

      " Dot-prefixed number: .5, .0e1
      IF lv_ch = `.` AND lv_i + 1 < lv_len.
        lv_ni = lv_i + 1.
        lv_ndot = iv_src+lv_ni(1).
        IF lv_ndot >= `0` AND lv_ndot <= `9`.
          lv_j = lv_i.
          WHILE lv_j < lv_len.
            lv_d = iv_src+lv_j(1).
            IF ( lv_d >= `0` AND lv_d <= `9` ) OR lv_d = `.`.
              lv_j = lv_j + 1.
            ELSE.
              EXIT.
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
                lv_d = iv_src+lv_j(1).
                IF lv_d >= `0` AND lv_d <= `9`.
                  lv_j = lv_j + 1.
                ELSE.
                  EXIT.
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
      ENDIF.

      " Regex literal: /pattern/flags — when context indicates start of expression
      " (not after number, string, identifier, or closing bracket which would mean division)
      IF lv_ch = `/`.
        DATA lv_rxis  TYPE abap_bool VALUE abap_true.
        DATA ls_ptok  TYPE zif_mjs=>ty_token.
        DATA lv_nptok TYPE i.
        lv_nptok = lines( rt_tokens ).
        IF lv_nptok > 0.
          READ TABLE rt_tokens INDEX lv_nptok INTO ls_ptok.
          IF ls_ptok-kind = 0                      " number
             OR ls_ptok-kind = 1                   " string
             OR ( ls_ptok-kind = 2                 " identifier (but not expression-starting keywords)
                  AND ls_ptok-val <> `return`
                  AND ls_ptok-val <> `typeof`
                  AND ls_ptok-val <> `instanceof`
                  AND ls_ptok-val <> `in`
                  AND ls_ptok-val <> `of`
                  AND ls_ptok-val <> `throw`
                  AND ls_ptok-val <> `case`
                  AND ls_ptok-val <> `delete`
                  AND ls_ptok-val <> `new`
                  AND ls_ptok-val <> `void` )
             OR ls_ptok-val = `)` OR ls_ptok-val = `]` OR ls_ptok-val = `}`.
            lv_rxis = abap_false.
          ENDIF.
        ENDIF.
        IF lv_rxis = abap_true.
          DATA lv_rxpat  TYPE string.
          DATA lv_rxflg  TYPE string.
          DATA lv_rxch   TYPE c LENGTH 1.
          DATA lv_rxfc   TYPE c LENGTH 1.
          DATA lv_rxclass TYPE abap_bool VALUE abap_false.
          CLEAR lv_rxpat.
          CLEAR lv_rxflg.
          lv_j = lv_i + 1.
          WHILE lv_j < lv_len.
            lv_rxch = iv_src+lv_j(1).
            IF lv_rxch = `/` AND lv_rxclass = abap_false.
              EXIT.
            ENDIF.
            IF lv_rxch = `[` AND lv_rxclass = abap_false.
              lv_rxclass = abap_true.
            ELSEIF lv_rxch = `]` AND lv_rxclass = abap_true.
              lv_rxclass = abap_false.
            ENDIF.
            IF lv_rxch = `\` AND lv_j + 1 < lv_len.
              lv_rxpat = lv_rxpat && `\`.
              lv_j = lv_j + 1.
              lv_rxpat = lv_rxpat && iv_src+lv_j(1).
            ELSE.
              lv_rxpat = lv_rxpat && iv_src+lv_j(1).
            ENDIF.
            lv_j = lv_j + 1.
          ENDWHILE.
          IF lv_j < lv_len.
            lv_j = lv_j + 1.  " skip closing /
            WHILE lv_j < lv_len.
              lv_rxfc = iv_src+lv_j(1).
              IF lv_rxfc >= `a` AND lv_rxfc <= `z`.
                lv_rxflg = lv_rxflg && lv_rxfc.
                lv_j = lv_j + 1.
              ELSE.
                EXIT.
              ENDIF.
            ENDWHILE.
            APPEND INITIAL LINE TO rt_tokens ASSIGNING <tok>.
            <tok>-kind = 6.
            <tok>-val  = lv_rxpat && cl_abap_char_utilities=>newline && lv_rxflg.
            lv_i = lv_j.
            CONTINUE.
          ENDIF.
        ENDIF.
      ENDIF.

      " Single char op/punc
      IF lv_ch = `+` OR lv_ch = `-` OR lv_ch = `*` OR lv_ch = `/`
         OR lv_ch = `%` OR lv_ch = `=` OR lv_ch = `<` OR lv_ch = `>`
         OR lv_ch = `!` OR lv_ch = `(` OR lv_ch = `)` OR lv_ch = `,`
         OR lv_ch = `{` OR lv_ch = `}` OR lv_ch = `;` OR lv_ch = `:`
         OR lv_ch = `.` OR lv_ch = `[` OR lv_ch = `]`
         OR lv_ch = `?`.
        APPEND INITIAL LINE TO rt_tokens ASSIGNING <tok>.
        <tok>-kind = 3.
        <tok>-val  = lv_ch.
        lv_i = lv_i + 1.
        CONTINUE.
      ENDIF.

      lv_i = lv_i + 1.
    ENDWHILE.

    APPEND INITIAL LINE TO rt_tokens ASSIGNING <tok>.
    <tok>-kind = 5.
    <tok>-val  = ``.
  ENDMETHOD.

ENDCLASS.
