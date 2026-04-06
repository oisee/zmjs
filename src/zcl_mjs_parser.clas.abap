CLASS zcl_mjs_parser DEFINITION PUBLIC.
  PUBLIC SECTION.
    DATA tokens TYPE zif_mjs=>tt_tokens.
    DATA pos    TYPE i.

    METHODS constructor
      IMPORTING it_tokens TYPE zif_mjs=>tt_tokens.
    METHODS peek
      RETURNING VALUE(rs_tok) TYPE zif_mjs=>ty_token.
    METHODS next
      RETURNING VALUE(rs_tok) TYPE zif_mjs=>ty_token.
    METHODS expect
      IMPORTING iv_val TYPE string.
    METHODS parse_program
      RETURNING VALUE(rt_stmts) TYPE zif_mjs=>tt_nodes.
    METHODS parse_statement
      RETURNING VALUE(rr_node) TYPE REF TO data.
    METHODS parse_var
      RETURNING VALUE(rr_node) TYPE REF TO data.
    METHODS parse_if
      RETURNING VALUE(rr_node) TYPE REF TO data.
    METHODS parse_while
      RETURNING VALUE(rr_node) TYPE REF TO data.
    METHODS parse_for
      RETURNING VALUE(rr_node) TYPE REF TO data.
    METHODS parse_switch
      RETURNING VALUE(rr_node) TYPE REF TO data.
    METHODS parse_class
      RETURNING VALUE(rr_node) TYPE REF TO data.
    METHODS parse_func
      RETURNING VALUE(rr_node) TYPE REF TO data.
    METHODS parse_return
      RETURNING VALUE(rr_node) TYPE REF TO data.
    METHODS parse_block
      RETURNING VALUE(rt_stmts) TYPE zif_mjs=>tt_nodes.
    METHODS parse_body
      RETURNING VALUE(rt_stmts) TYPE zif_mjs=>tt_nodes.
    METHODS parse_expr
      RETURNING VALUE(rr_node) TYPE REF TO data.
    METHODS parse_assign
      RETURNING VALUE(rr_node) TYPE REF TO data.
    METHODS parse_or
      RETURNING VALUE(rr_node) TYPE REF TO data.
    METHODS parse_and
      RETURNING VALUE(rr_node) TYPE REF TO data.
    METHODS parse_equality
      RETURNING VALUE(rr_node) TYPE REF TO data.
    METHODS parse_comparison
      RETURNING VALUE(rr_node) TYPE REF TO data.
    METHODS parse_add_sub
      RETURNING VALUE(rr_node) TYPE REF TO data.
    METHODS parse_mul_div
      RETURNING VALUE(rr_node) TYPE REF TO data.
    METHODS parse_unary
      RETURNING VALUE(rr_node) TYPE REF TO data.
    METHODS parse_postfix
      RETURNING VALUE(rr_node) TYPE REF TO data.
    METHODS parse_primary
      RETURNING VALUE(rr_node) TYPE REF TO data.
    METHODS parse_array_literal
      RETURNING VALUE(rr_node) TYPE REF TO data.
    METHODS parse_object_literal
      RETURNING VALUE(rr_node) TYPE REF TO data.
    METHODS parse_try_catch
      RETURNING VALUE(rr_node) TYPE REF TO data.
    METHODS parse_throw
      RETURNING VALUE(rr_node) TYPE REF TO data.
  PRIVATE SECTION.
    METHODS apply_postfix
      IMPORTING ir_start      TYPE REF TO data
      RETURNING VALUE(rr_node) TYPE REF TO data.
ENDCLASS.

CLASS zcl_mjs_parser IMPLEMENTATION.
  METHOD constructor.
    tokens = it_tokens.
    pos = 0.
  ENDMETHOD.

  METHOD peek.
    IF pos >= lines( tokens ).
      rs_tok-kind = 5.
      rs_tok-val = ``.
    ELSE.
      READ TABLE tokens INDEX pos + 1 INTO rs_tok.
    ENDIF.
  ENDMETHOD.

  METHOD next.
    rs_tok = peek( ).
    pos = pos + 1.
  ENDMETHOD.

  METHOD expect.
* todo: throw error if not match?
    next( ).
  ENDMETHOD.

  METHOD parse_program.
    WHILE peek( )-kind <> 5.
      DATA(lr_s) = parse_statement( ).
      IF lr_s IS BOUND.
        APPEND lr_s TO rt_stmts.
      ENDIF.
    ENDWHILE.
  ENDMETHOD.

  METHOD parse_statement.
    DATA(ls_t) = peek( ).

    CASE ls_t-val.
      WHEN `let` OR `var` OR `const`.
        rr_node = parse_var( ).
        RETURN.
      WHEN `if`.
        rr_node = parse_if( ).
        RETURN.
      WHEN `while`.
        rr_node = parse_while( ).
        RETURN.
      WHEN `for`.
        rr_node = parse_for( ).
        RETURN.
      WHEN `function`.
        rr_node = parse_func( ).
        RETURN.
      WHEN `return`.
        rr_node = parse_return( ).
        RETURN.
      WHEN `break`.
        next( ).
        IF peek( )-kind = 2.  " consume optional label identifier (e.g. break do_out;)
          next( ).
        ENDIF.
        IF peek( )-val = `;`.
          next( ).
        ENDIF.
        DATA lr_brk TYPE REF TO zif_mjs=>ty_node.
        CREATE DATA lr_brk.
        lr_brk->kind = zif_mjs=>c_node_break.
        rr_node = lr_brk.
        RETURN.
      WHEN `continue`.
        next( ).
        IF peek( )-kind = 2.  " consume optional label identifier (e.g. continue do_out;)
          next( ).
        ENDIF.
        IF peek( )-val = `;`.
          next( ).
        ENDIF.
        DATA lr_cont TYPE REF TO zif_mjs=>ty_node.
        CREATE DATA lr_cont.
        lr_cont->kind = zif_mjs=>c_node_continue.
        rr_node = lr_cont.
        RETURN.
      WHEN `switch`.
        rr_node = parse_switch( ).
        RETURN.
      WHEN `try`.
        rr_node = parse_try_catch( ).
        RETURN.
      WHEN `throw`.
        rr_node = parse_throw( ).
        RETURN.
      WHEN `class`.
        rr_node = parse_class( ).
        RETURN.
      WHEN `{`.
        DATA lt_blk TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY.
        lt_blk = parse_block( ).
        DATA lr_blk TYPE REF TO zif_mjs=>ty_node.
        CREATE DATA lr_blk.
        lr_blk->kind = zif_mjs=>c_node_block.
        lr_blk->body = lt_blk.
        rr_node = lr_blk.
        RETURN.
      WHEN `;`.
        next( ).
        RETURN.
    ENDCASE.

    " Handle labeled statement: <ident> ':' <statement>
    " Peek ahead: if current is identifier and next token is ':', skip both and parse body
    IF ls_t-kind = 2.
      DATA(lv_saved_lbl) = pos.
      next( ).
      IF peek( )-val = `:`.
        next( ).
        rr_node = parse_statement( ).
        RETURN.
      ENDIF.
      pos = lv_saved_lbl.
    ENDIF.

    rr_node = parse_expr( ).
    IF peek( )-val = `,`.
      DATA lt_seq TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY.
      APPEND rr_node TO lt_seq.
      WHILE peek( )-val = `,`.
        next( ).
        APPEND parse_expr( ) TO lt_seq.
      ENDWHILE.
      DATA lr_seq TYPE REF TO zif_mjs=>ty_node.
      CREATE DATA lr_seq.
      lr_seq->kind = zif_mjs=>c_node_block.
      lr_seq->body = lt_seq.
      rr_node = lr_seq.
    ENDIF.
    IF peek( )-val = `;`.
      next( ).
    ENDIF.
  ENDMETHOD.

  METHOD parse_var.
    next( ).
    DATA(lv_name) = next( )-val.
    DATA lr_init TYPE REF TO data.
    IF peek( )-val = `=`.
      next( ).
      lr_init = parse_expr( ).
    ENDIF.
    DATA lr_n TYPE REF TO zif_mjs=>ty_node.
    CREATE DATA lr_n.
    lr_n->kind = zif_mjs=>c_node_var.
    lr_n->str  = lv_name.
    lr_n->right = lr_init.
    " Handle comma-separated declarations: var a, b = 1, c;
    IF peek( )-val = `,`.
      DATA lt_vars TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY.
      APPEND lr_n TO lt_vars.
      WHILE peek( )-val = `,`.
        next( ).
        DATA(lv_nm2) = next( )-val.
        DATA lr_i2 TYPE REF TO data.
        IF peek( )-val = `=`.
          next( ).
          lr_i2 = parse_expr( ).
        ENDIF.
        DATA lr_n2 TYPE REF TO zif_mjs=>ty_node.
        CREATE DATA lr_n2.
        lr_n2->kind  = zif_mjs=>c_node_var.
        lr_n2->str   = lv_nm2.
        lr_n2->right = lr_i2.
        APPEND lr_n2 TO lt_vars.
        CLEAR lr_i2.
      ENDWHILE.
      IF peek( )-val = `;`.
        next( ).
      ENDIF.
      DATA lr_blk TYPE REF TO zif_mjs=>ty_node.
      CREATE DATA lr_blk.
      lr_blk->kind = zif_mjs=>c_node_block.
      lr_blk->body = lt_vars.
      rr_node = lr_blk.
      RETURN.
    ENDIF.
    IF peek( )-val = `;`.
      next( ).
    ENDIF.
    rr_node = lr_n.
  ENDMETHOD.

  METHOD parse_if.
    next( ).
    expect( `(` ).
    DATA(lr_cond) = parse_expr( ).
    expect( `)` ).
    DATA(lt_body) = parse_body( ).
    DATA lt_else TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY.
    IF peek( )-val = `else`.
      next( ).
      IF peek( )-val = `if`.
        DATA(lr_elif) = parse_if( ).
        APPEND lr_elif TO lt_else.
      ELSE.
        lt_else = parse_body( ).
      ENDIF.
    ENDIF.
    DATA lr_n TYPE REF TO zif_mjs=>ty_node.
    CREATE DATA lr_n.
    lr_n->kind = zif_mjs=>c_node_if.
    lr_n->cond = lr_cond.
    lr_n->body = lt_body.
    lr_n->els  = lt_else.
    rr_node = lr_n.
  ENDMETHOD.

  METHOD parse_while.
    next( ).
    expect( `(` ).
    DATA(lr_cond) = parse_expr( ).
    expect( `)` ).
    DATA(lt_body) = parse_body( ).
    DATA lr_n TYPE REF TO zif_mjs=>ty_node.
    CREATE DATA lr_n.
    lr_n->kind = zif_mjs=>c_node_while.
    lr_n->cond = lr_cond.
    lr_n->body = lt_body.
    rr_node = lr_n.
  ENDMETHOD.

  METHOD parse_for.
    next( ).
    expect( `(` ).
    DATA lr_init TYPE REF TO data.
    DATA(lv_pv) = peek( )-val.
    IF lv_pv = `let` OR lv_pv = `var` OR lv_pv = `const`.
      lr_init = parse_var( ).
    ELSEIF lv_pv <> `;`.
      lr_init = parse_expr( ).
      IF peek( )-val = `;`.
        next( ).
      ENDIF.
    ELSE.
      next( ).
    ENDIF.
    DATA lr_cond TYPE REF TO data.
    IF peek( )-val <> `;`.
      lr_cond = parse_expr( ).
    ENDIF.
    IF peek( )-val = `;`.
      next( ).
    ENDIF.
    DATA lr_update TYPE REF TO data.
    IF peek( )-val <> `)`.
      lr_update = parse_expr( ).
    ENDIF.
    expect( `)` ).
    DATA(lt_body) = parse_body( ).
    DATA lr_n TYPE REF TO zif_mjs=>ty_node.
    CREATE DATA lr_n.
    lr_n->kind   = zif_mjs=>c_node_for.
    lr_n->init   = lr_init.
    lr_n->cond   = lr_cond.
    lr_n->update = lr_update.
    lr_n->body   = lt_body.
    rr_node = lr_n.
  ENDMETHOD.

  METHOD parse_switch.
    next( ).
    expect( `(` ).
    DATA(lr_expr) = parse_expr( ).
    expect( `)` ).
    expect( `{` ).
    DATA lt_cases TYPE zif_mjs=>tt_switch_cases.
    WHILE peek( )-val <> `}` AND peek( )-kind <> 5.
      IF peek( )-val = `case`.
        next( ).
        DATA(lr_ce) = parse_expr( ).
        expect( `:` ).
        DATA lt_cb TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY.
        CLEAR lt_cb.
        WHILE peek( )-val <> `case` AND peek( )-val <> `default`
              AND peek( )-val <> `}` AND peek( )-kind <> 5.
          DATA(lr_cs) = parse_statement( ).
          IF lr_cs IS BOUND.
            APPEND lr_cs TO lt_cb.
          ENDIF.
        ENDWHILE.
        DATA ls_case TYPE zif_mjs=>ty_switch_case.
        ls_case-expr = lr_ce.
        ls_case-body = lt_cb.
        APPEND ls_case TO lt_cases.
      ELSEIF peek( )-val = `default`.
        next( ).
        expect( `:` ).
        DATA lt_db TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY.
        CLEAR lt_db.
        WHILE peek( )-val <> `case` AND peek( )-val <> `}`
              AND peek( )-kind <> 5.
          DATA(lr_ds) = parse_statement( ).
          IF lr_ds IS BOUND.
            APPEND lr_ds TO lt_db.
          ENDIF.
        ENDWHILE.
        DATA ls_def TYPE zif_mjs=>ty_switch_case.
        CLEAR ls_def.
        ls_def-body = lt_db.
        APPEND ls_def TO lt_cases.
      ELSE.
        next( ).
      ENDIF.
    ENDWHILE.
    expect( `}` ).
    DATA lr_n TYPE REF TO zif_mjs=>ty_node.
    CREATE DATA lr_n.
    lr_n->kind  = zif_mjs=>c_node_switch.
    lr_n->cond  = lr_expr.
    lr_n->cases = lt_cases.
    rr_node = lr_n.
  ENDMETHOD.

  METHOD parse_class.
    next( ).
    DATA lv_name TYPE string.
    IF peek( )-val <> `extends` AND peek( )-val <> `{`.
      lv_name = next( )-val.
    ENDIF.
    DATA lv_super TYPE string.
    DATA lr_super_expr TYPE REF TO data.
    IF peek( )-val = `extends`.
      next( ).
      lr_super_expr = parse_primary( ).
      IF lr_super_expr IS BOUND.
        FIELD-SYMBOLS <se_node> TYPE zif_mjs=>ty_node.
        ASSIGN lr_super_expr->* TO <se_node>.
        IF <se_node>-kind = zif_mjs=>c_node_ident.
          lv_super = <se_node>-str.
        ENDIF.
      ENDIF.
    ENDIF.
    expect( `{` ).
    DATA lt_methods TYPE zif_mjs=>tt_class_methods.
    WHILE peek( )-val <> `}` AND peek( )-kind <> 5.
      DATA(lv_mname) = next( )-val.
      IF lv_mname = `static`.
        lv_mname = next( )-val.
      ENDIF.
      expect( `(` ).
      DATA lt_params TYPE STANDARD TABLE OF string WITH DEFAULT KEY.
      CLEAR lt_params.
      WHILE peek( )-val <> `)` AND peek( )-kind <> 5.
        APPEND next( )-val TO lt_params.
        IF peek( )-val = `,`.
          next( ).
        ENDIF.
      ENDWHILE.
      expect( `)` ).
      DATA(lt_mbody) = parse_block( ).
      DATA ls_m TYPE zif_mjs=>ty_class_method.
      ls_m-name    = lv_mname.
      ls_m-params  = lt_params.
      ls_m-body    = lt_mbody.
      ls_m-is_ctor = boolc( lv_mname = `constructor` ).
      APPEND ls_m TO lt_methods.
    ENDWHILE.
    expect( `}` ).
    DATA lr_n TYPE REF TO zif_mjs=>ty_node.
    CREATE DATA lr_n.
    lr_n->kind    = zif_mjs=>c_node_class.
    lr_n->str     = lv_name.
    lr_n->op      = lv_super.
    lr_n->left    = lr_super_expr.
    lr_n->methods = lt_methods.
    rr_node = lr_n.
  ENDMETHOD.

  METHOD parse_func.
    next( ).
    DATA lv_name TYPE string.
    IF peek( )-val <> `(`.
      lv_name = next( )-val.
    ENDIF.
    expect( `(` ).
    DATA lt_params TYPE STANDARD TABLE OF string WITH DEFAULT KEY.
    WHILE peek( )-val <> `)` AND peek( )-kind <> 5.
      APPEND next( )-val TO lt_params.
      IF peek( )-val = `,`.
        next( ).
      ENDIF.
    ENDWHILE.
    expect( `)` ).
    DATA(lt_body) = parse_body( ).
    DATA lr_n TYPE REF TO zif_mjs=>ty_node.
    CREATE DATA lr_n.
    lr_n->kind   = zif_mjs=>c_node_func_decl.
    lr_n->str    = lv_name.
    lr_n->params = lt_params.
    lr_n->body   = lt_body.
    rr_node = lr_n.
  ENDMETHOD.

  METHOD parse_return.
    next( ).
    DATA lr_val TYPE REF TO data.
    IF peek( )-val <> `;` AND peek( )-val <> `}` AND peek( )-kind <> 5.
      lr_val = parse_expr( ).
    ENDIF.
    IF peek( )-val = `;`.
      next( ).
    ENDIF.
    DATA lr_n TYPE REF TO zif_mjs=>ty_node.
    CREATE DATA lr_n.
    lr_n->kind = zif_mjs=>c_node_return.
    lr_n->left = lr_val.
    rr_node = lr_n.
  ENDMETHOD.

  METHOD parse_block.
    expect( `{` ).
    WHILE peek( )-val <> `}` AND peek( )-kind <> 5.
      DATA(lr_s) = parse_statement( ).
      IF lr_s IS BOUND.
        APPEND lr_s TO rt_stmts.
      ENDIF.
    ENDWHILE.
    expect( `}` ).
  ENDMETHOD.

  METHOD parse_body.
    IF peek( )-val = `{`.
      rt_stmts = parse_block( ).
    ELSE.
      DATA(lr_s) = parse_statement( ).
      IF lr_s IS BOUND.
        APPEND lr_s TO rt_stmts.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD parse_expr.
    rr_node = parse_assign( ).
  ENDMETHOD.

  METHOD parse_assign.
    DATA(lr_left) = parse_or( ).
    IF peek( )-val = `=`.
      IF lr_left IS BOUND.
        FIELD-SYMBOLS <left_node> TYPE zif_mjs=>ty_node.
        ASSIGN lr_left->* TO <left_node>.
        IF <left_node>-kind = zif_mjs=>c_node_ident.
          next( ).
          DATA(lr_right) = parse_expr( ).
          DATA lr_n TYPE REF TO zif_mjs=>ty_node.
          CREATE DATA lr_n.
          lr_n->kind  = zif_mjs=>c_node_assign.
          lr_n->str   = <left_node>-str.
          lr_n->right = lr_right.
          rr_node = lr_n.
          RETURN.
        ENDIF.
        IF <left_node>-kind = zif_mjs=>c_node_member_access.
          next( ).
          DATA(lr_right2) = parse_expr( ).
          DATA lr_ma TYPE REF TO zif_mjs=>ty_node.
          CREATE DATA lr_ma.
          lr_ma->kind      = zif_mjs=>c_node_member_assign.
          lr_ma->object    = <left_node>-object.
          lr_ma->property  = <left_node>-property.
          lr_ma->prop_expr = <left_node>-prop_expr.
          lr_ma->right     = lr_right2.
          rr_node = lr_ma.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    " Arrow function: ident => ...
    IF lr_left IS BOUND.
      FIELD-SYMBOLS <arrow_left> TYPE zif_mjs=>ty_node.
      ASSIGN lr_left->* TO <arrow_left>.
      IF <arrow_left>-kind = zif_mjs=>c_node_ident AND peek( )-val = `=>`.
        next( ).
        DATA lt_arrow_body TYPE zif_mjs=>tt_nodes.
        IF peek( )-val = `{`.
          lt_arrow_body = parse_block( ).
        ELSE.
          DATA(lr_arrow_expr) = parse_assign( ).
          DATA lr_arrow_ret TYPE REF TO zif_mjs=>ty_node.
          CREATE DATA lr_arrow_ret.
          lr_arrow_ret->kind = zif_mjs=>c_node_return.
          lr_arrow_ret->left = lr_arrow_expr.
          APPEND lr_arrow_ret TO lt_arrow_body.
        ENDIF.
        DATA lr_arrow TYPE REF TO zif_mjs=>ty_node.
        CREATE DATA lr_arrow.
        lr_arrow->kind   = zif_mjs=>c_node_func_decl.
        lr_arrow->str    = ``.
        lr_arrow->params = VALUE #( ( <arrow_left>-str ) ).
        lr_arrow->body   = lt_arrow_body.
        rr_node = lr_arrow.
        RETURN.
      ENDIF.
    ENDIF.
    rr_node = lr_left.
  ENDMETHOD.

  METHOD parse_or.
    DATA(lr_left) = parse_and( ).
    WHILE peek( )-kind = 3 AND peek( )-val = `||`.
      DATA(lv_op) = next( )-val.
      DATA(lr_right) = parse_and( ).
      DATA lr_n TYPE REF TO zif_mjs=>ty_node.
      CREATE DATA lr_n.
      lr_n->kind  = zif_mjs=>c_node_binop.
      lr_n->op    = lv_op.
      lr_n->left  = lr_left.
      lr_n->right = lr_right.
      lr_left = lr_n.
    ENDWHILE.
    rr_node = lr_left.
  ENDMETHOD.

  METHOD parse_and.
    DATA(lr_left) = parse_equality( ).
    WHILE peek( )-kind = 3 AND peek( )-val = `&&`.
      DATA(lv_op) = next( )-val.
      DATA(lr_right) = parse_equality( ).
      DATA lr_n TYPE REF TO zif_mjs=>ty_node.
      CREATE DATA lr_n.
      lr_n->kind  = zif_mjs=>c_node_binop.
      lr_n->op    = lv_op.
      lr_n->left  = lr_left.
      lr_n->right = lr_right.
      lr_left = lr_n.
    ENDWHILE.
    rr_node = lr_left.
  ENDMETHOD.

  METHOD parse_equality.
    DATA(lr_left) = parse_comparison( ).
    WHILE peek( )-kind = 3 AND ( peek( )-val = `==` OR peek( )-val = `!=`
       OR peek( )-val = `===` OR peek( )-val = `!==` ).
      DATA(lv_op) = next( )-val.
      DATA(lr_right) = parse_comparison( ).
      DATA lr_n TYPE REF TO zif_mjs=>ty_node.
      CREATE DATA lr_n.
      lr_n->kind  = zif_mjs=>c_node_binop.
      lr_n->op    = lv_op.
      lr_n->left  = lr_left.
      lr_n->right = lr_right.
      lr_left = lr_n.
    ENDWHILE.
    rr_node = lr_left.
  ENDMETHOD.

  METHOD parse_comparison.
    DATA(lr_left) = parse_add_sub( ).
    WHILE peek( )-kind = 3 AND ( peek( )-val = `<` OR peek( )-val = `>`
       OR peek( )-val = `<=` OR peek( )-val = `>=` ).
      DATA(lv_op) = next( )-val.
      DATA(lr_right) = parse_add_sub( ).
      DATA lr_n TYPE REF TO zif_mjs=>ty_node.
      CREATE DATA lr_n.
      lr_n->kind  = zif_mjs=>c_node_binop.
      lr_n->op    = lv_op.
      lr_n->left  = lr_left.
      lr_n->right = lr_right.
      lr_left = lr_n.
    ENDWHILE.
    rr_node = lr_left.
  ENDMETHOD.

  METHOD parse_add_sub.
    DATA(lr_left) = parse_mul_div( ).
    WHILE peek( )-kind = 3 AND ( peek( )-val = `+` OR peek( )-val = `-` ).
      DATA(lv_op) = next( )-val.
      DATA(lr_right) = parse_mul_div( ).
      DATA lr_n TYPE REF TO zif_mjs=>ty_node.
      CREATE DATA lr_n.
      lr_n->kind  = zif_mjs=>c_node_binop.
      lr_n->op    = lv_op.
      lr_n->left  = lr_left.
      lr_n->right = lr_right.
      lr_left = lr_n.
    ENDWHILE.
    rr_node = lr_left.
  ENDMETHOD.

  METHOD parse_mul_div.
    DATA(lr_left) = parse_unary( ).
    WHILE peek( )-kind = 3 AND ( peek( )-val = `*` OR peek( )-val = `/` OR peek( )-val = `%` ).
      DATA(lv_op) = next( )-val.
      DATA(lr_right) = parse_unary( ).
      DATA lr_n TYPE REF TO zif_mjs=>ty_node.
      CREATE DATA lr_n.
      lr_n->kind  = zif_mjs=>c_node_binop.
      lr_n->op    = lv_op.
      lr_n->left  = lr_left.
      lr_n->right = lr_right.
      lr_left = lr_n.
    ENDWHILE.
    rr_node = lr_left.
  ENDMETHOD.

  METHOD parse_unary.
    IF peek( )-kind = 3 AND ( peek( )-val = `-` OR peek( )-val = `!` ).
      DATA(lv_op) = next( )-val.
      DATA(lr_operand) = parse_unary( ).
      DATA lr_n TYPE REF TO zif_mjs=>ty_node.
      CREATE DATA lr_n.
      lr_n->kind = zif_mjs=>c_node_unaryop.
      lr_n->op   = lv_op.
      lr_n->left = lr_operand.
      rr_node = lr_n.
      RETURN.
    ENDIF.
    IF peek( )-val = `typeof` AND peek( )-kind = 2.
      next( ).
      DATA(lr_op2) = parse_unary( ).
      DATA lr_to TYPE REF TO zif_mjs=>ty_node.
      CREATE DATA lr_to.
      lr_to->kind = zif_mjs=>c_node_typeof.
      lr_to->left = lr_op2.
      rr_node = lr_to.
      RETURN.
    ENDIF.
    IF peek( )-val = `void` AND peek( )-kind = 2.
      next( ).
      DATA(lr_void_ex) = parse_unary( ).
      DATA lr_void_n TYPE REF TO zif_mjs=>ty_node.
      CREATE DATA lr_void_n.
      lr_void_n->kind = zif_mjs=>c_node_unaryop.
      lr_void_n->op   = `void`.
      lr_void_n->left = lr_void_ex.
      rr_node = lr_void_n.
      RETURN.
    ENDIF.
    IF peek( )-val = `new` AND peek( )-kind = 2.
      next( ).
      DATA(lr_c_expr) = parse_primary( ).
      DATA(lv_c_name) = ``.
      FIELD-SYMBOLS <c_node> TYPE zif_mjs=>ty_node.
      ASSIGN lr_c_expr->* TO <c_node>.
      IF <c_node>-kind = zif_mjs=>c_node_ident.
        lv_c_name = <c_node>-str.
      ENDIF.
      IF peek( )-val = `(`.
        next( ).
        DATA lt_args TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY.
        WHILE peek( )-val <> `)` AND peek( )-kind <> 5.
          APPEND parse_expr( ) TO lt_args.
          IF peek( )-val = `,`.
            next( ).
          ENDIF.
        ENDWHILE.
        expect( `)` ).
        DATA lr_new TYPE REF TO zif_mjs=>ty_node.
        CREATE DATA lr_new.
        lr_new->kind = zif_mjs=>c_node_new.
        lr_new->str  = lv_c_name.
        lr_new->left = lr_c_expr.
        lr_new->args = lt_args.
        rr_node = apply_postfix( lr_new ).
        RETURN.
      ENDIF.
    ENDIF.
    rr_node = parse_postfix( ).
  ENDMETHOD.

  METHOD parse_postfix.
    rr_node = apply_postfix( parse_primary( ) ).
  ENDMETHOD.

  METHOD apply_postfix.
    DATA(lr_left) = ir_start.
    DATA lv_continue TYPE abap_bool.
    lv_continue = abap_true.
    WHILE lv_continue = abap_true.
      IF peek( )-val = `.`.
        next( ).
        DATA(lv_prop) = next( )-val.
        IF peek( )-val = `(`.
          next( ).
          DATA lt_margs TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY.
          CLEAR lt_margs.
          WHILE peek( )-val <> `)` AND peek( )-kind <> 5.
            APPEND parse_expr( ) TO lt_margs.
            IF peek( )-val = `,`.
              next( ).
            ENDIF.
          ENDWHILE.
          expect( `)` ).
          DATA lr_mc TYPE REF TO zif_mjs=>ty_node.
          CREATE DATA lr_mc.
          lr_mc->kind     = zif_mjs=>c_node_method_call.
          lr_mc->object   = lr_left.
          lr_mc->property = lv_prop.
          lr_mc->args     = lt_margs.
          lr_left = lr_mc.
        ELSE.
          DATA lr_ma TYPE REF TO zif_mjs=>ty_node.
          CREATE DATA lr_ma.
          lr_ma->kind     = zif_mjs=>c_node_member_access.
          lr_ma->object   = lr_left.
          lr_ma->property = lv_prop.
          lr_left = lr_ma.
        ENDIF.
      ELSEIF peek( )-val = `[`.
        next( ).
        DATA(lr_idx) = parse_expr( ).
        expect( `]` ).
        DATA lr_ba TYPE REF TO zif_mjs=>ty_node.
        CREATE DATA lr_ba.
        lr_ba->kind      = zif_mjs=>c_node_member_access.
        lr_ba->object    = lr_left.
        lr_ba->prop_expr = lr_idx.
        lr_left = lr_ba.
      ELSEIF peek( )-val = `?.`.
        next( ).
        IF peek( )-val = `[`.
          next( ).
          DATA(lr_oidx) = parse_expr( ).
          expect( `]` ).
          DATA lr_oba TYPE REF TO zif_mjs=>ty_node.
          CREATE DATA lr_oba.
          lr_oba->kind      = zif_mjs=>c_node_member_access.
          lr_oba->op        = `?.`.
          lr_oba->object    = lr_left.
          lr_oba->prop_expr = lr_oidx.
          lr_left = lr_oba.
        ELSE.
          DATA(lv_oprop) = next( )-val.
          IF peek( )-val = `(`.
            next( ).
            DATA lt_omargs TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY.
            CLEAR lt_omargs.
            WHILE peek( )-val <> `)` AND peek( )-kind <> 5.
              APPEND parse_expr( ) TO lt_omargs.
              IF peek( )-val = `,`.
                next( ).
              ENDIF.
            ENDWHILE.
            expect( `)` ).
            DATA lr_omc TYPE REF TO zif_mjs=>ty_node.
            CREATE DATA lr_omc.
            lr_omc->kind     = zif_mjs=>c_node_method_call.
            lr_omc->op       = `?.`.
            lr_omc->object   = lr_left.
            lr_omc->property = lv_oprop.
            lr_omc->args     = lt_omargs.
            lr_left = lr_omc.
          ELSE.
            DATA lr_oma TYPE REF TO zif_mjs=>ty_node.
            CREATE DATA lr_oma.
            lr_oma->kind     = zif_mjs=>c_node_member_access.
            lr_oma->op       = `?.`.
            lr_oma->object   = lr_left.
            lr_oma->property = lv_oprop.
            lr_left = lr_oma.
          ENDIF.
        ENDIF.
      ELSEIF peek( )-val = `(` AND lr_left IS BOUND.
        FIELD-SYMBOLS <ln> TYPE zif_mjs=>ty_node.
        ASSIGN lr_left->* TO <ln>.
        IF <ln>-kind = zif_mjs=>c_node_ident.
          next( ).
          DATA lt_fargs TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY.
          CLEAR lt_fargs.
          WHILE peek( )-val <> `)` AND peek( )-kind <> 5.
            APPEND parse_expr( ) TO lt_fargs.
            IF peek( )-val = `,`.
              next( ).
            ENDIF.
          ENDWHILE.
          expect( `)` ).
          DATA lr_call TYPE REF TO zif_mjs=>ty_node.
          CREATE DATA lr_call.
          lr_call->kind = zif_mjs=>c_node_call.
          lr_call->str  = <ln>-str.
          lr_call->args = lt_fargs.
          lr_left = lr_call.
        ELSE.
          " Expression call: callee is any expression (e.g. IIFE)
          next( ).
          DATA lt_efargs TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY.
          CLEAR lt_efargs.
          WHILE peek( )-val <> `)` AND peek( )-kind <> 5.
            APPEND parse_expr( ) TO lt_efargs.
            IF peek( )-val = `,`.
              next( ).
            ENDIF.
          ENDWHILE.
          expect( `)` ).
          DATA lr_ecall TYPE REF TO zif_mjs=>ty_node.
          CREATE DATA lr_ecall.
          lr_ecall->kind = zif_mjs=>c_node_call.
          lr_ecall->left = lr_left.
          lr_ecall->args = lt_efargs.
          lr_left = lr_ecall.
        ENDIF.
      ELSE.
        lv_continue = abap_false.
      ENDIF.
    ENDWHILE.
    rr_node = lr_left.
  ENDMETHOD.

  METHOD parse_primary.
    DATA ls_t TYPE zif_mjs=>ty_token.
    ls_t = peek( ).

    IF ls_t-kind = 0.
      next( ).
      DATA lr_num TYPE REF TO zif_mjs=>ty_node.
      CREATE DATA lr_num.
      lr_num->kind = zif_mjs=>c_node_number.
      DATA lv_f TYPE f.
      DATA lv_numstr TYPE string.
      lv_numstr = ls_t-val.
      TRANSLATE lv_numstr TO UPPER CASE.
      lv_f = lv_numstr.
      lr_num->num  = lv_f.
      rr_node = lr_num.
      RETURN.
    ENDIF.

    IF ls_t-kind = 1.
      next( ).
      DATA lr_str TYPE REF TO zif_mjs=>ty_node.
      CREATE DATA lr_str.
      lr_str->kind = zif_mjs=>c_node_string.
      lr_str->str  = ls_t-val.
      rr_node = lr_str.
      RETURN.
    ENDIF.

    IF ls_t-kind = 6.
      next( ).
      DATA lr_rx  TYPE REF TO zif_mjs=>ty_node.
      DATA lv_rxv TYPE string.
      DATA lv_rxs TYPE i.
      DATA lv_rxnl TYPE c LENGTH 1.
      CREATE DATA lr_rx.
      lr_rx->kind = zif_mjs=>c_node_regex.
      lv_rxv  = ls_t-val.
      lv_rxnl = cl_abap_char_utilities=>newline.
      FIND FIRST OCCURRENCE OF lv_rxnl IN lv_rxv MATCH OFFSET lv_rxs.
      IF sy-subrc = 0.
        IF lv_rxs > 0.
          lr_rx->str = lv_rxv(lv_rxs).
        ENDIF.
        lr_rx->op = substring( val = lv_rxv off = lv_rxs + 1 ).
      ELSE.
        lr_rx->str = lv_rxv.
      ENDIF.
      rr_node = lr_rx.
      RETURN.
    ENDIF.

    IF ls_t-val = `(`.
      " Try arrow function: (params) => ...
      DATA(lv_saved_pos) = pos.
      next( ).
      DATA lt_arrow_params TYPE string_table.
      DATA lv_is_arrow TYPE abap_bool VALUE abap_true.
      WHILE peek( )-val <> `)` AND peek( )-kind <> 5.
        IF peek( )-kind <> 2.
          lv_is_arrow = abap_false.
          EXIT.
        ENDIF.
        APPEND next( )-val TO lt_arrow_params.
        IF peek( )-val = `,`.
          next( ).
        ENDIF.
      ENDWHILE.
      IF lv_is_arrow = abap_true AND peek( )-val = `)`.
        next( ).
        IF peek( )-val = `=>`.
          next( ).
          DATA lt_ab TYPE zif_mjs=>tt_nodes.
          IF peek( )-val = `{`.
            lt_ab = parse_block( ).
          ELSE.
            DATA(lr_ae) = parse_assign( ).
            DATA lr_ar TYPE REF TO zif_mjs=>ty_node.
            CREATE DATA lr_ar.
            lr_ar->kind = zif_mjs=>c_node_return.
            lr_ar->left = lr_ae.
            APPEND lr_ar TO lt_ab.
          ENDIF.
          DATA lr_af TYPE REF TO zif_mjs=>ty_node.
          CREATE DATA lr_af.
          lr_af->kind   = zif_mjs=>c_node_func_decl.
          lr_af->str    = ``.
          lr_af->params = lt_arrow_params.
          lr_af->body   = lt_ab.
          rr_node = lr_af.
          RETURN.
        ENDIF.
      ENDIF.
      " Not arrow — restore and parse as grouping
      pos = lv_saved_pos.
      next( ).
      DATA(lr_expr) = parse_expr( ).
      IF peek( )-val = `,`.
        DATA lt_grp_seq TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY.
        APPEND lr_expr TO lt_grp_seq.
        WHILE peek( )-val = `,`.
          next( ).
          APPEND parse_expr( ) TO lt_grp_seq.
        ENDWHILE.
        DATA lr_grp_node TYPE REF TO zif_mjs=>ty_node.
        CREATE DATA lr_grp_node.
        lr_grp_node->kind = zif_mjs=>c_node_block.
        lr_grp_node->body = lt_grp_seq.
        rr_node = lr_grp_node.
      ELSE.
        rr_node = lr_expr.
      ENDIF.
      expect( `)` ).
      RETURN.
    ENDIF.

    IF ls_t-val = `[`.
      rr_node = parse_array_literal( ).
      RETURN.
    ENDIF.

    IF ls_t-val = `{`.
      rr_node = parse_object_literal( ).
      RETURN.
    ENDIF.

    IF ls_t-val = `true`.
      next( ).
      DATA lr_true TYPE REF TO zif_mjs=>ty_node.
      CREATE DATA lr_true.
      lr_true->kind = zif_mjs=>c_node_bool.
      lr_true->num  = 1.
      rr_node = lr_true.
      RETURN.
    ENDIF.

    IF ls_t-val = `false`.
      next( ).
      DATA lr_false TYPE REF TO zif_mjs=>ty_node.
      CREATE DATA lr_false.
      lr_false->kind = zif_mjs=>c_node_bool.
      lr_false->num  = 0.
      rr_node = lr_false.
      RETURN.
    ENDIF.

    IF ls_t-val = `function`.
      rr_node = parse_func( ).
      " Mark as function expression: name must not leak to enclosing scope
      FIELD-SYMBOLS <fn_expr_node> TYPE zif_mjs=>ty_node.
      ASSIGN rr_node->* TO <fn_expr_node>.
      IF sy-subrc = 0.
        <fn_expr_node>-op = `E`.
      ENDIF.
      RETURN.
    ENDIF.

    IF ls_t-val = `class`.
      rr_node = parse_class( ).
      RETURN.
    ENDIF.

    IF ls_t-kind = 2.
      next( ).
      DATA lv_name TYPE string.
      lv_name = ls_t-val.
      IF ( lv_name = `console` OR lv_name = `JSON` OR lv_name = `Math` ) AND peek( )-val = `.`.
        next( ).
        DATA(lv_sub) = next( )-val.
        DATA(lv_full) = |{ lv_name }.{ lv_sub }|.
        IF peek( )-val = `(`.
          next( ).
          DATA lt_args TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY.
          WHILE peek( )-val <> `)` AND peek( )-kind <> 5.
            APPEND parse_expr( ) TO lt_args.
            IF peek( )-val = `,`.
              next( ).
            ENDIF.
          ENDWHILE.
          expect( `)` ).
          DATA lr_cl TYPE REF TO zif_mjs=>ty_node.
          CREATE DATA lr_cl.
          lr_cl->kind = zif_mjs=>c_node_call.
          lr_cl->str  = lv_full.
          lr_cl->args = lt_args.
          rr_node = lr_cl.
          RETURN.
        ENDIF.
        DATA lr_cid TYPE REF TO zif_mjs=>ty_node.
        CREATE DATA lr_cid.
        lr_cid->kind = zif_mjs=>c_node_ident.
        lr_cid->str  = lv_full.
        rr_node = lr_cid.
        RETURN.
      ENDIF.
      DATA lr_id TYPE REF TO zif_mjs=>ty_node.
      CREATE DATA lr_id.
      lr_id->kind = zif_mjs=>c_node_ident.
      lr_id->str  = lv_name.
      rr_node = lr_id.
      RETURN.
    ENDIF.

    next( ).
  ENDMETHOD.

  METHOD parse_array_literal.
    expect( `[` ).
    DATA lt_elems TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY.
    WHILE peek( )-val <> `]` AND peek( )-kind <> 5.
      APPEND parse_expr( ) TO lt_elems.
      IF peek( )-val = `,`.
        next( ).
      ENDIF.
    ENDWHILE.
    expect( `]` ).
    DATA lr_n TYPE REF TO zif_mjs=>ty_node.
    CREATE DATA lr_n.
    lr_n->kind = zif_mjs=>c_node_array.
    lr_n->args = lt_elems.
    rr_node = lr_n.
  ENDMETHOD.

  METHOD parse_object_literal.
    expect( `{` ).
    DATA lt_pairs TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY.
    WHILE peek( )-val <> `}` AND peek( )-kind <> 5.
      DATA(lv_key) = next( )-val.
      DATA lr_k TYPE REF TO zif_mjs=>ty_node.
      CREATE DATA lr_k.
      lr_k->kind = zif_mjs=>c_node_string.
      lr_k->str  = lv_key.
      APPEND lr_k TO lt_pairs.
      IF peek( )-val = `:`.
        next( ).
        DATA(lr_val) = parse_expr( ).
        APPEND lr_val TO lt_pairs.
      ELSE.
        DATA lr_sh TYPE REF TO zif_mjs=>ty_node.
        CREATE DATA lr_sh.
        lr_sh->kind = zif_mjs=>c_node_ident.
        lr_sh->str  = lv_key.
        APPEND lr_sh TO lt_pairs.
      ENDIF.
      IF peek( )-val = `,`.
        next( ).
      ENDIF.
    ENDWHILE.
    expect( `}` ).
    DATA lr_n TYPE REF TO zif_mjs=>ty_node.
    CREATE DATA lr_n.
    lr_n->kind = zif_mjs=>c_node_object.
    lr_n->args = lt_pairs.
    rr_node = lr_n.
  ENDMETHOD.

  METHOD parse_try_catch.
    next( ).                          " consume 'try'
    DATA(lt_try_body) = parse_block( ).
    DATA lt_catch_body  TYPE zif_mjs=>tt_nodes.
    DATA lt_finally_body TYPE zif_mjs=>tt_nodes.
    DATA lv_catch_var   TYPE string.
    DATA lv_op          TYPE string.
    IF peek( )-val = `catch`.
      next( ).                        " consume 'catch'
      IF peek( )-val = `(`.
        next( ).                      " consume '('
        lv_catch_var = next( )-val.   " catch variable name
        expect( `)` ).
      ENDIF.
      lt_catch_body = parse_block( ).
      lv_op = `C`.                    " mark: has catch
    ENDIF.
    IF peek( )-val = `finally`.
      next( ).                        " consume 'finally'
      lt_finally_body = parse_block( ).
      lv_op = lv_op && `F`.          " mark: has finally
    ENDIF.
    DATA lr_n TYPE REF TO zif_mjs=>ty_node.
    CREATE DATA lr_n.
    lr_n->kind = zif_mjs=>c_node_try.
    lr_n->body = lt_try_body.
    lr_n->els  = lt_catch_body.
    lr_n->str  = lv_catch_var.
    lr_n->op   = lv_op.
    lr_n->args = lt_finally_body.    " repurpose args for finally body
    rr_node = lr_n.
  ENDMETHOD.

  METHOD parse_throw.
    next( ).                          " consume 'throw'
    DATA(lr_expr) = parse_expr( ).
    IF peek( )-val = `;`.
      next( ).
    ENDIF.
    DATA lr_n TYPE REF TO zif_mjs=>ty_node.
    CREATE DATA lr_n.
    lr_n->kind = zif_mjs=>c_node_throw.
    lr_n->left = lr_expr.
    rr_node = lr_n.
  ENDMETHOD.

ENDCLASS.
