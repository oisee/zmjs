CLASS zcl_mjs DEFINITION PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS eval
      IMPORTING iv_source        TYPE string
      RETURNING VALUE(rv_output) TYPE string
      RAISING zcx_mjs_runtime.
    " Public so built-in methods (e.g. array map/filter) can invoke JS callbacks
    CLASS-METHODS call_function
      IMPORTING ir_fn         TYPE REF TO data
                it_args       TYPE zif_mjs=>tt_value_slots
                io_env        TYPE REF TO zcl_mjs_env
                " receiver; undefined = plain call, propagates the caller's this
                is_this       TYPE zif_mjs=>ty_value OPTIONAL
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING zcx_mjs_runtime.

  PRIVATE SECTION.
    CLASS-METHODS eval_node
      IMPORTING ir_node       TYPE REF TO data
                io_env        TYPE REF TO zcl_mjs_env
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING zcx_mjs_runtime.
    " Per-node-kind evaluators: ABAP hoists DATA to method scope, so under
    " the transpiler every local is allocated on each eval_node call.
    " Keeping fat branches in own methods keeps the hot dispatch allocation-free.
    CLASS-METHODS eval_node_binop
      IMPORTING ir_node       TYPE REF TO data
                io_env        TYPE REF TO zcl_mjs_env
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING zcx_mjs_runtime.
    CLASS-METHODS eval_node_incdec
      IMPORTING ir_node       TYPE REF TO data
                io_env        TYPE REF TO zcl_mjs_env
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING zcx_mjs_runtime.
    CLASS-METHODS eval_node_assign
      IMPORTING ir_node       TYPE REF TO data
                io_env        TYPE REF TO zcl_mjs_env
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING zcx_mjs_runtime.
    CLASS-METHODS eval_node_member_assign
      IMPORTING ir_node       TYPE REF TO data
                io_env        TYPE REF TO zcl_mjs_env
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING zcx_mjs_runtime.
    CLASS-METHODS eval_node_var
      IMPORTING ir_node       TYPE REF TO data
                io_env        TYPE REF TO zcl_mjs_env
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING zcx_mjs_runtime.
    CLASS-METHODS eval_node_for
      IMPORTING ir_node       TYPE REF TO data
                io_env        TYPE REF TO zcl_mjs_env
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING zcx_mjs_runtime.
    CLASS-METHODS eval_node_for_of
      IMPORTING ir_node       TYPE REF TO data
                io_env        TYPE REF TO zcl_mjs_env
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING zcx_mjs_runtime.
    " Bind a for-of / for-in loop variable, handling object destructuring patterns
    CLASS-METHODS bind_for_target
      IMPORTING ir_left  TYPE REF TO data
                is_item  TYPE zif_mjs=>ty_value
                io_env   TYPE REF TO zcl_mjs_env
      RAISING zcx_mjs_runtime.
    CLASS-METHODS eval_node_for_in
      IMPORTING ir_node       TYPE REF TO data
                io_env        TYPE REF TO zcl_mjs_env
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING zcx_mjs_runtime.
    CLASS-METHODS eval_node_call
      IMPORTING ir_node       TYPE REF TO data
                io_env        TYPE REF TO zcl_mjs_env
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING zcx_mjs_runtime.
    CLASS-METHODS eval_node_method_call
      IMPORTING ir_node       TYPE REF TO data
                io_env        TYPE REF TO zcl_mjs_env
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING zcx_mjs_runtime.
    CLASS-METHODS eval_node_func_decl
      IMPORTING ir_node       TYPE REF TO data
                io_env        TYPE REF TO zcl_mjs_env
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING zcx_mjs_runtime.
    CLASS-METHODS eval_node_try
      IMPORTING ir_node       TYPE REF TO data
                io_env        TYPE REF TO zcl_mjs_env
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING zcx_mjs_runtime.
    CLASS-METHODS eval_node_object
      IMPORTING ir_node       TYPE REF TO data
                io_env        TYPE REF TO zcl_mjs_env
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING zcx_mjs_runtime.
    CLASS-METHODS eval_node_array
      IMPORTING ir_node       TYPE REF TO data
                io_env        TYPE REF TO zcl_mjs_env
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING zcx_mjs_runtime.
    CLASS-METHODS eval_node_member_access
      IMPORTING ir_node       TYPE REF TO data
                io_env        TYPE REF TO zcl_mjs_env
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING zcx_mjs_runtime.
    CLASS-METHODS eval_node_typeof
      IMPORTING ir_node       TYPE REF TO data
                io_env        TYPE REF TO zcl_mjs_env
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING zcx_mjs_runtime.
    CLASS-METHODS eval_node_new
      IMPORTING ir_node       TYPE REF TO data
                io_env        TYPE REF TO zcl_mjs_env
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING zcx_mjs_runtime.
    CLASS-METHODS eval_node_class
      IMPORTING ir_node       TYPE REF TO data
                io_env        TYPE REF TO zcl_mjs_env
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING zcx_mjs_runtime.
    CLASS-METHODS eval_node_switch
      IMPORTING ir_node       TYPE REF TO data
                io_env        TYPE REF TO zcl_mjs_env
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING zcx_mjs_runtime.
    CLASS-METHODS raise_ref_error
      IMPORTING iv_name TYPE string.
    CLASS-METHODS raise_throw
      IMPORTING is_val TYPE zif_mjs=>ty_value.
    CLASS-METHODS eval_bin_op
      IMPORTING iv_op         TYPE string
                is_left       TYPE zif_mjs=>ty_value
                is_right      TYPE zif_mjs=>ty_value
                io_env        TYPE REF TO zcl_mjs_env
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING zcx_mjs_runtime.
    CLASS-METHODS to_primitive
      IMPORTING is_val        TYPE zif_mjs=>ty_value
                io_env        TYPE REF TO zcl_mjs_env
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING zcx_mjs_runtime.
    CLASS-METHODS eval_property_access
      IMPORTING is_obj        TYPE zif_mjs=>ty_value
                iv_prop       TYPE string
                " interned atom of iv_prop when known (>0) - skips string hashing
                iv_atom       TYPE i DEFAULT 0
                io_env        TYPE REF TO zcl_mjs_env OPTIONAL
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING zcx_mjs_runtime.
    CLASS-METHODS eval_method_call
      IMPORTING is_obj        TYPE zif_mjs=>ty_value
                iv_method     TYPE string
                " interned atom of iv_method when known (>0)
                iv_atom       TYPE i DEFAULT 0
                it_args       TYPE zif_mjs=>tt_value_slots
                io_env        TYPE REF TO zcl_mjs_env
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING zcx_mjs_runtime.
    " Classify a member-access / method-call node for static-builtin
    " interception (Object.keys, Object.defineProperty, Date.now, super.*).
    " Runs the string compares once; the result is cached on ty_node-builtin.
    CLASS-METHODS classify_builtin
      IMPORTING ir_object      TYPE REF TO data
                iv_property    TYPE string
      RETURNING VALUE(rv_kind) TYPE i.
    CLASS-METHODS compile_function
      IMPORTING ir_fn         TYPE REF TO data.
    CLASS-METHODS materialize_function
      IMPORTING ir_fn         TYPE REF TO data.
    " --- Bytecode VM (Phase 1) ---------------------------------------------
    " Attempt to compile the function body to bytecode (sets vm_ok on success);
    " called once, lazily, after compile_function. Unsupported constructs leave
    " vm_ok = false and the function stays on the AST evaluator.
    CLASS-METHODS vm_try_compile
      IMPORTING ir_fn TYPE REF TO data.
    " Emit bytecode for a statement / expression node. cv_ok is set to false on
    " the first unsupported construct, aborting the compile.
    CLASS-METHODS vm_emit_stmt
      IMPORTING ir_node   TYPE REF TO data
      CHANGING  ct_code   TYPE zif_mjs=>tt_instr
                ct_consts TYPE zif_mjs=>tt_value_slots
                cv_ok     TYPE abap_bool.
    CLASS-METHODS vm_emit_expr
      IMPORTING ir_node   TYPE REF TO data
      CHANGING  ct_code   TYPE zif_mjs=>tt_instr
                ct_consts TYPE zif_mjs=>tt_value_slots
                cv_ok     TYPE abap_bool.
    " Resolve a named function and invoke it (mirrors eval_node_call's named path).
    CLASS-METHODS vm_call_named
      IMPORTING iv_name       TYPE string
                it_args       TYPE zif_mjs=>tt_value_slots
                io_env        TYPE REF TO zcl_mjs_env
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING zcx_mjs_runtime.
    " Execute a compiled chunk on the stack machine.
    CLASS-METHODS run_chunk
      IMPORTING ir_fn         TYPE REF TO data
                io_env        TYPE REF TO zcl_mjs_env
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value
      RAISING zcx_mjs_runtime.
    " Loop-context stack for break/continue backpatching during a compile.
    " Safe as class state: a compile walks one function body and never recurses
    " into another compile (nested function bodies are not descended).
    TYPES: BEGIN OF ty_loop_ctx,
             breaks    TYPE STANDARD TABLE OF i WITH DEFAULT KEY,
             continues TYPE STANDARD TABLE OF i WITH DEFAULT KEY,
           END OF ty_loop_ctx.
    CLASS-DATA gt_vm_loops TYPE STANDARD TABLE OF ty_loop_ctx.
    CLASS-METHODS collect_slots
      IMPORTING ir_node       TYPE REF TO data
      CHANGING  ct_map        TYPE zif_mjs=>tt_slot_map
                cv_next       TYPE i.
    CLASS-METHODS annotate_slots
      IMPORTING ir_node       TYPE REF TO data
                ir_map        TYPE REF TO zif_mjs=>tt_slot_map.
    CLASS-METHODS array_from_slots
      IMPORTING it_vals       TYPE zif_mjs=>tt_value_slots
      RETURNING VALUE(rs_val) TYPE zif_mjs=>ty_value.
    CLASS-METHODS scan_for_ident
      IMPORTING ir_node       TYPE REF TO data
                iv_name       TYPE string
      RETURNING VALUE(rv_found) TYPE abap_bool.
ENDCLASS.


CLASS zcl_mjs IMPLEMENTATION.

  METHOD eval.
    DATA lr_tokens TYPE REF TO zif_mjs=>tt_tokens.
    CREATE DATA lr_tokens.
    lr_tokens->* = zcl_mjs_tokenizer=>tokenize( iv_source ).

    DATA lo_parser TYPE REF TO zcl_mjs_parser.
    CREATE OBJECT lo_parser
      EXPORTING ir_tokens = lr_tokens.

    DATA lt_stmts TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY.
    lt_stmts = lo_parser->parse_program( ).

    DATA lo_env TYPE REF TO zcl_mjs_env.
    CREATE OBJECT lo_env.
    lo_env->define( iv_name = `console` is_val = zcl_mjs_val=>number_val( 0 ) ).
    lo_env->define( iv_name = `Date`    is_val = zcl_mjs_val=>object_val( ) ).
    lo_env->define( iv_name = `undefined` is_val = zcl_mjs_val=>undefined_val( ) ).
    DATA ls_null TYPE zif_mjs=>ty_value.
    ls_null-type = zif_mjs=>c_type_null.
    lo_env->define( iv_name = `null` is_val = ls_null ).
    DATA ls_nan TYPE zif_mjs=>ty_value.
    ls_nan-type = zif_mjs=>c_type_number.
    ls_nan-str = `NaN`.
    lo_env->define( iv_name = `NaN` is_val = ls_nan ).
    DATA ls_inf TYPE zif_mjs=>ty_value.
    ls_inf-type = zif_mjs=>c_type_number.
    ls_inf-str = `Infinity`.
    lo_env->define( iv_name = `Infinity` is_val = ls_inf ).
    " Standard error constructors — defined as undefined placeholders so that
    " assert.throws(TypeError, fn) does not throw ReferenceError on the type arg.
    DATA(ls_obj_builtin) = zcl_mjs_val=>object_val( ).
    lo_env->define( iv_name = `Object`         is_val = ls_obj_builtin ).
    lo_env->define( iv_name = `Set`            is_val = zcl_mjs_val=>undefined_val( ) ).
    lo_env->define( iv_name = `RegExp`         is_val = zcl_mjs_val=>undefined_val( ) ).
    lo_env->define( iv_name = `Error`          is_val = zcl_mjs_val=>undefined_val( ) ).
    lo_env->define( iv_name = `ReferenceError` is_val = zcl_mjs_val=>undefined_val( ) ).
    lo_env->define( iv_name = `TypeError`      is_val = zcl_mjs_val=>undefined_val( ) ).
    lo_env->define( iv_name = `SyntaxError`    is_val = zcl_mjs_val=>undefined_val( ) ).
    lo_env->define( iv_name = `RangeError`     is_val = zcl_mjs_val=>undefined_val( ) ).
    lo_env->define( iv_name = `URIError`       is_val = zcl_mjs_val=>undefined_val( ) ).
    lo_env->define( iv_name = `EvalError`      is_val = zcl_mjs_val=>undefined_val( ) ).
    " 'this' at the global scope is the global object (sloppy-mode)
    lo_env->this_val   = zcl_mjs_val=>object_val( ).
    lo_env->this_bound = abap_true.
    lo_env->define( iv_name = `arguments` is_val = zcl_mjs_val=>undefined_val( ) ).
    " Other JS builtins / keywords that may appear as expressions in partially-parsed code
    lo_env->define( iv_name = `eval`      is_val = zcl_mjs_val=>undefined_val( ) ).
    lo_env->define( iv_name = `in`        is_val = zcl_mjs_val=>undefined_val( ) ).

    " Hoist function declarations at global scope (JS hoisting)
    FIELD-SYMBOLS <hst_g> TYPE zif_mjs=>ty_node.
    LOOP AT lt_stmts INTO DATA(lr_hoist_s).
      IF lr_hoist_s IS NOT BOUND.
        CONTINUE.
      ENDIF.
      ASSIGN lr_hoist_s->* TO <hst_g>.
      IF sy-subrc = 0 AND <hst_g>-kind = zif_mjs=>c_node_func_decl AND <hst_g>-str IS NOT INITIAL.
        eval_node( ir_node = lr_hoist_s io_env = lo_env ).
      ENDIF.
    ENDLOOP.

    LOOP AT lt_stmts INTO DATA(lr_stmt).
      eval_node( ir_node = lr_stmt io_env = lo_env ).
    ENDLOOP.

    rv_output = lo_env->get_output( ).
  ENDMETHOD.


  METHOD call_function.
    " ir_fn is REF TO zif_mjs=>ty_function - modifiable for lazy compile
    FIELD-SYMBOLS <fn> TYPE zif_mjs=>ty_function.

    ASSIGN ir_fn->* TO <fn>.

    IF <fn>-body_lazy = abap_true.
      materialize_function( ir_fn ).
    ENDIF.

    " Lazy compile: assign variable slots on first call
    IF <fn>-compiled = abap_false.
      compile_function( ir_fn ).
    ENDIF.

    DATA lo_parent TYPE REF TO zcl_mjs_env.
    IF <fn>-closure IS BOUND.
      lo_parent ?= <fn>-closure.
    ELSE.
      lo_parent = io_env.
    ENDIF.

    DATA lo_call_env TYPE REF TO zcl_mjs_env.
    CREATE OBJECT lo_call_env EXPORTING io_parent = lo_parent.
    lo_call_env->output = io_env->output.

    " Share slot_map reference (no copy - all calls use the same hash table)
    lo_call_env->slot_map = <fn>-slot_map.

    " slots grow on demand in set_slot (see zcl_mjs_env); the VM's slot writes
    " go through set_slot too, so lazy growth is safe on both paths.

    " Bind 'this': the receiver, or (sloppy-mode plain call) the caller's this.
    " Object/array payloads are references, so mutations through 'this' are
    " visible to the caller without any writeback.
    lo_call_env->this_bound = abap_true.
    IF is_this-type <> zif_mjs=>c_type_undefined.
      lo_call_env->this_val = is_this.
    ELSE.
      lo_call_env->this_val = io_env->get_this( ).
    ENDIF.

    " Bind params from the precomputed plan (compile_function): direct slot
    " index, rest flag, and default node - no per-param string ops or hashing.
    DATA lv_idx TYPE i VALUE 1.
    DATA lv_nargs TYPE i.
    lv_nargs = lines( it_args ).
    LOOP AT <fn>-param_binds INTO DATA(ls_pb).
      IF ls_pb-is_rest = abap_true.
        " Rest parameter: collect remaining args into an array
        DATA lt_rest TYPE zif_mjs=>tt_value_slots.
        CLEAR lt_rest.
        DATA lv_ri TYPE i.
        lv_ri = lv_idx.
        WHILE lv_ri <= lv_nargs.
          DATA ls_rest_arg TYPE zif_mjs=>ty_value.
          READ TABLE it_args INDEX lv_ri INTO ls_rest_arg.
          IF sy-subrc = 0.
            APPEND ls_rest_arg TO lt_rest.
          ENDIF.
          lv_ri = lv_ri + 1.
        ENDWHILE.
        lo_call_env->set_slot( iv_slot = ls_pb-slot is_val = array_from_slots( lt_rest ) ).
        EXIT.
      ENDIF.
      DATA ls_pval TYPE zif_mjs=>ty_value.
      CLEAR ls_pval.  " default: undefined
      READ TABLE it_args INDEX lv_idx INTO ls_pval.
      " If arg is missing or explicitly undefined, apply the default expression
      IF ls_pval-type = zif_mjs=>c_type_undefined AND ls_pb-dflt IS BOUND.
        ls_pval = eval_node( ir_node = ls_pb-dflt io_env = lo_call_env ).
      ENDIF.
      lo_call_env->set_slot( iv_slot = ls_pb-slot is_val = ls_pval ).
      lv_idx = lv_idx + 1.
    ENDLOOP.

    " Bind 'arguments' pseudo-array only when the function actually uses it
    IF <fn>-needs_arguments = abap_true.
      lo_call_env->define( iv_name = `arguments` is_val = array_from_slots( it_args ) ).
    ENDIF.

    " Hoist function declarations (JS hoisting: fn decls precede other statements)
    " — the declaration list is precomputed in compile_function
    LOOP AT <fn>-hoisted INTO DATA(lr_hoist).
      eval_node( ir_node = lr_hoist io_env = lo_call_env ).
    ENDLOOP.

    " Execute body: bytecode VM if the body compiled (Phase 1), else AST walk.
    " The compile attempt runs once, lazily, and falls back on any unsupported
    " construct (vm_ok stays false).
    IF <fn>-vm_checked = abap_false.
      vm_try_compile( ir_fn ).
    ENDIF.
    IF <fn>-vm_ok = abap_true.
      rs_val = run_chunk( ir_fn = ir_fn io_env = lo_call_env ).
    ELSE.
      LOOP AT <fn>-body INTO DATA(lr_stmt).
        rs_val = eval_node( ir_node = lr_stmt io_env = lo_call_env ).
        IF lo_call_env->returning = abap_true.
          rs_val = lo_call_env->ret_val.
          EXIT.
        ENDIF.
      ENDLOOP.
    ENDIF.

  ENDMETHOD.

  METHOD materialize_function.
    FIELD-SYMBOLS <fn> TYPE zif_mjs=>ty_function.
    ASSIGN ir_fn->* TO <fn>.
    IF sy-subrc <> 0 OR <fn>-body_lazy = abap_false.
      RETURN.
    ENDIF.

    IF <fn>-body_tokens IS NOT BOUND.
      <fn>-body_lazy = abap_false.
      RETURN.
    ENDIF.

    DATA lo_parser TYPE REF TO zcl_mjs_parser.
    CREATE OBJECT lo_parser
      EXPORTING ir_tokens = <fn>-body_tokens.
    lo_parser->pos = <fn>-body_pos.
    <fn>-body = lo_parser->parse_block( ).
    <fn>-body_lazy = abap_false.
    CLEAR <fn>-body_pos.
    CLEAR <fn>-body_tokens.
  ENDMETHOD.

  METHOD vm_try_compile.
    FIELD-SYMBOLS <fn> TYPE zif_mjs=>ty_function.
    ASSIGN ir_fn->* TO <fn>.
    <fn>-vm_checked = abap_true.
    <fn>-vm_ok      = abap_false.
    IF <fn>-body_lazy = abap_true.
      RETURN.
    ENDIF.
    CLEAR gt_vm_loops.
    DATA lt_code   TYPE zif_mjs=>tt_instr.
    DATA lt_consts TYPE zif_mjs=>tt_value_slots.
    DATA lv_ok     TYPE abap_bool VALUE abap_true.
    LOOP AT <fn>-body INTO DATA(lr_s).
      vm_emit_stmt( EXPORTING ir_node = lr_s
                    CHANGING  ct_code = lt_code ct_consts = lt_consts cv_ok = lv_ok ).
      IF lv_ok = abap_false.
        RETURN.  " unsupported construct -> stay on the AST evaluator
      ENDIF.
    ENDLOOP.
    APPEND VALUE #( op = zif_mjs=>c_op_ret_undef ) TO lt_code.
    <fn>-vm_code      = lt_code.
    <fn>-vm_consts    = lt_consts.
    " lines(code) is a rigorous upper bound on stack depth (<=1 net push/instr)
    <fn>-vm_max_stack = lines( lt_code ).
    <fn>-vm_ok        = abap_true.
  ENDMETHOD.

  METHOD vm_emit_expr.
    IF cv_ok = abap_false OR ir_node IS NOT BOUND.
      cv_ok = abap_false.
      RETURN.
    ENDIF.
    FIELD-SYMBOLS <n> TYPE zif_mjs=>ty_node.
    ASSIGN ir_node->* TO <n>.

    CASE <n>-kind.
      WHEN zif_mjs=>c_node_number.
        DATA ls_cn TYPE zif_mjs=>ty_value.
        ls_cn-type = zif_mjs=>c_type_number.
        ls_cn-num  = <n>-num.
        APPEND ls_cn TO ct_consts.
        APPEND VALUE #( op = zif_mjs=>c_op_push_const a = lines( ct_consts ) ) TO ct_code.

      WHEN zif_mjs=>c_node_string.
        DATA ls_cs TYPE zif_mjs=>ty_value.
        ls_cs-type = zif_mjs=>c_type_string.
        ls_cs-str  = <n>-str.
        APPEND ls_cs TO ct_consts.
        APPEND VALUE #( op = zif_mjs=>c_op_push_const a = lines( ct_consts ) ) TO ct_code.

      WHEN zif_mjs=>c_node_bool.
        DATA ls_cb TYPE zif_mjs=>ty_value.
        ls_cb-type = zif_mjs=>c_type_bool.
        ls_cb-num  = <n>-num.
        APPEND ls_cb TO ct_consts.
        APPEND VALUE #( op = zif_mjs=>c_op_push_const a = lines( ct_consts ) ) TO ct_code.

      WHEN zif_mjs=>c_node_ident.
        IF <n>-slot_ok = abap_true.
          APPEND VALUE #( op = zif_mjs=>c_op_load_slot a = <n>-slot ) TO ct_code.
        ELSEIF <n>-str = `this`.
          APPEND VALUE #( op = zif_mjs=>c_op_load_this ) TO ct_code.
        ELSE.
          APPEND VALUE #( op = zif_mjs=>c_op_resolve s = <n>-str ) TO ct_code.
        ENDIF.

      WHEN zif_mjs=>c_node_binop.
        IF <n>-op = `&&` OR <n>-op = `||`.
          " short-circuit: eval left; dup; jump past right if decided; else pop+eval right
          vm_emit_expr( EXPORTING ir_node = <n>-left CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
          IF cv_ok = abap_false.
            RETURN.
          ENDIF.
          APPEND VALUE #( op = zif_mjs=>c_op_dup ) TO ct_code.
          IF <n>-op = `&&`.
            APPEND VALUE #( op = zif_mjs=>c_op_jump_false ) TO ct_code.
          ELSE.
            APPEND VALUE #( op = zif_mjs=>c_op_jump_true ) TO ct_code.
          ENDIF.
          DATA lv_scj TYPE i.
          lv_scj = lines( ct_code ).
          APPEND VALUE #( op = zif_mjs=>c_op_pop ) TO ct_code.
          vm_emit_expr( EXPORTING ir_node = <n>-right CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
          IF cv_ok = abap_false.
            RETURN.
          ENDIF.
          READ TABLE ct_code INDEX lv_scj ASSIGNING FIELD-SYMBOL(<scj>).
          <scj>-a = lines( ct_code ) + 1.
        ELSE.
          vm_emit_expr( EXPORTING ir_node = <n>-left  CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
          vm_emit_expr( EXPORTING ir_node = <n>-right CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
          IF cv_ok = abap_false.
            RETURN.
          ENDIF.
          APPEND VALUE #( op = zif_mjs=>c_op_binop s = <n>-op ) TO ct_code.
        ENDIF.

      WHEN zif_mjs=>c_node_ternary.
        vm_emit_expr( EXPORTING ir_node = <n>-cond CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
        IF cv_ok = abap_false.
          RETURN.
        ENDIF.
        APPEND VALUE #( op = zif_mjs=>c_op_jump_false ) TO ct_code.
        DATA lv_tj1 TYPE i.
        lv_tj1 = lines( ct_code ).
        vm_emit_expr( EXPORTING ir_node = <n>-left CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
        IF cv_ok = abap_false.
          RETURN.
        ENDIF.
        APPEND VALUE #( op = zif_mjs=>c_op_jump ) TO ct_code.
        DATA lv_tj2 TYPE i.
        lv_tj2 = lines( ct_code ).
        READ TABLE ct_code INDEX lv_tj1 ASSIGNING FIELD-SYMBOL(<tj1>).
        <tj1>-a = lines( ct_code ) + 1.
        vm_emit_expr( EXPORTING ir_node = <n>-right CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
        IF cv_ok = abap_false.
          RETURN.
        ENDIF.
        READ TABLE ct_code INDEX lv_tj2 ASSIGNING FIELD-SYMBOL(<tj2>).
        <tj2>-a = lines( ct_code ) + 1.

      WHEN zif_mjs=>c_node_unaryop.
        CASE <n>-op.
          WHEN `-`.
            vm_emit_expr( EXPORTING ir_node = <n>-left CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
            APPEND VALUE #( op = zif_mjs=>c_op_neg ) TO ct_code.
          WHEN `!`.
            vm_emit_expr( EXPORTING ir_node = <n>-left CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
            APPEND VALUE #( op = zif_mjs=>c_op_not ) TO ct_code.
          WHEN OTHERS.
            cv_ok = abap_false.
        ENDCASE.

      WHEN zif_mjs=>c_node_call.
        " only plain named calls: no expression callee, spread, builtins or ?.
        IF <n>-left IS BOUND OR <n>-str IS INITIAL OR <n>-op = `?.`
            OR <n>-str = `Boolean` OR <n>-str = `RegExp`
            OR <n>-str = `JSON.stringify` OR <n>-str = `console.log` OR <n>-str = `super`.
          cv_ok = abap_false.
          RETURN.
        ENDIF.
        DATA lv_argc TYPE i VALUE 0.
        LOOP AT <n>-args INTO DATA(lr_arg).
          FIELD-SYMBOLS <argn> TYPE zif_mjs=>ty_node.
          ASSIGN lr_arg->* TO <argn>.
          IF sy-subrc = 0 AND <argn>-op = `SPREAD`.
            cv_ok = abap_false.
            RETURN.
          ENDIF.
          vm_emit_expr( EXPORTING ir_node = lr_arg CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
          IF cv_ok = abap_false.
            RETURN.
          ENDIF.
          lv_argc = lv_argc + 1.
        ENDLOOP.
        APPEND VALUE #( op = zif_mjs=>c_op_call a = lv_argc s = <n>-str ) TO ct_code.

      WHEN zif_mjs=>c_node_member_access.
        " non-optional, non-builtin property read: obj.name or obj[expr]
        IF <n>-op = `?.`.
          cv_ok = abap_false.
          RETURN.
        ENDIF.
        IF classify_builtin( ir_object = <n>-object iv_property = <n>-property ) <> zif_mjs=>c_builtin_none.
          cv_ok = abap_false.
          RETURN.
        ENDIF.
        vm_emit_expr( EXPORTING ir_node = <n>-object CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
        IF cv_ok = abap_false.
          RETURN.
        ENDIF.
        IF <n>-prop_expr IS BOUND.
          " computed obj[expr]: push the key, then index
          vm_emit_expr( EXPORTING ir_node = <n>-prop_expr CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
          IF cv_ok = abap_false.
            RETURN.
          ENDIF.
          APPEND VALUE #( op = zif_mjs=>c_op_get_index ) TO ct_code.
        ELSE.
          APPEND VALUE #( op = zif_mjs=>c_op_get_field a = zcl_mjs_obj=>atom( <n>-property ) s = <n>-property ) TO ct_code.
        ENDIF.

      WHEN zif_mjs=>c_node_method_call.
        " static, non-optional, non-builtin method call: recv.name( args )
        IF <n>-op = `?.` OR <n>-object IS NOT BOUND.
          cv_ok = abap_false.
          RETURN.
        ENDIF.
        IF classify_builtin( ir_object = <n>-object iv_property = <n>-property ) <> zif_mjs=>c_builtin_none.
          cv_ok = abap_false.
          RETURN.
        ENDIF.
        vm_emit_expr( EXPORTING ir_node = <n>-object CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
        IF cv_ok = abap_false.
          RETURN.
        ENDIF.
        DATA lv_margc TYPE i VALUE 0.
        LOOP AT <n>-args INTO DATA(lr_marg).
          FIELD-SYMBOLS <margn> TYPE zif_mjs=>ty_node.
          ASSIGN lr_marg->* TO <margn>.
          IF sy-subrc = 0 AND <margn>-op = `SPREAD`.
            cv_ok = abap_false.
            RETURN.
          ENDIF.
          vm_emit_expr( EXPORTING ir_node = lr_marg CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
          IF cv_ok = abap_false.
            RETURN.
          ENDIF.
          lv_margc = lv_margc + 1.
        ENDLOOP.
        APPEND VALUE #( op = zif_mjs=>c_op_call_method a = lv_margc
                        b = zcl_mjs_obj=>atom( <n>-property ) s = <n>-property ) TO ct_code.

      WHEN zif_mjs=>c_node_inc OR zif_mjs=>c_node_dec
        OR zif_mjs=>c_node_post_inc OR zif_mjs=>c_node_post_dec.
        " only simple slot-based identifier inc/dec (matches eval_node_incdec)
        IF <n>-left IS NOT BOUND.
          cv_ok = abap_false.
          RETURN.
        ENDIF.
        FIELD-SYMBOLS <incl> TYPE zif_mjs=>ty_node.
        ASSIGN <n>-left->* TO <incl>.
        IF sy-subrc <> 0 OR <incl>-kind <> zif_mjs=>c_node_ident OR <incl>-slot_ok = abap_false.
          cv_ok = abap_false.
          RETURN.
        ENDIF.
        DATA lv_var TYPE i.
        IF <n>-kind = zif_mjs=>c_node_inc.
          lv_var = 1.
        ELSEIF <n>-kind = zif_mjs=>c_node_dec.
          lv_var = 2.
        ELSEIF <n>-kind = zif_mjs=>c_node_post_inc.
          lv_var = 11.
        ELSE.
          lv_var = 12.
        ENDIF.
        APPEND VALUE #( op = zif_mjs=>c_op_incdec a = <incl>-slot b = lv_var ) TO ct_code.

      WHEN zif_mjs=>c_node_array.
        " array literal without spread: push each element, then make_array
        DATA lv_acount TYPE i VALUE 0.
        LOOP AT <n>-args INTO DATA(lr_ael).
          FIELD-SYMBOLS <aeln> TYPE zif_mjs=>ty_node.
          ASSIGN lr_ael->* TO <aeln>.
          IF sy-subrc = 0 AND <aeln>-op = `SPREAD`.
            cv_ok = abap_false.
            RETURN.
          ENDIF.
          vm_emit_expr( EXPORTING ir_node = lr_ael CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
          IF cv_ok = abap_false.
            RETURN.
          ENDIF.
          lv_acount = lv_acount + 1.
        ENDLOOP.
        APPEND VALUE #( op = zif_mjs=>c_op_make_array a = lv_acount ) TO ct_code.

      WHEN OTHERS.
        cv_ok = abap_false.
    ENDCASE.
  ENDMETHOD.

  METHOD vm_emit_stmt.
    IF cv_ok = abap_false OR ir_node IS NOT BOUND.
      cv_ok = abap_false.
      RETURN.
    ENDIF.
    FIELD-SYMBOLS <n> TYPE zif_mjs=>ty_node.
    ASSIGN ir_node->* TO <n>.

    CASE <n>-kind.
      WHEN zif_mjs=>c_node_return.
        IF <n>-left IS BOUND.
          vm_emit_expr( EXPORTING ir_node = <n>-left CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
          IF cv_ok = abap_false.
            RETURN.
          ENDIF.
          APPEND VALUE #( op = zif_mjs=>c_op_ret ) TO ct_code.
        ELSE.
          APPEND VALUE #( op = zif_mjs=>c_op_ret_undef ) TO ct_code.
        ENDIF.

      WHEN zif_mjs=>c_node_if.
        vm_emit_expr( EXPORTING ir_node = <n>-cond CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
        IF cv_ok = abap_false.
          RETURN.
        ENDIF.
        APPEND VALUE #( op = zif_mjs=>c_op_jump_false ) TO ct_code.
        DATA lv_jf TYPE i.
        lv_jf = lines( ct_code ).
        LOOP AT <n>-body INTO DATA(lr_tb).
          vm_emit_stmt( EXPORTING ir_node = lr_tb CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
          IF cv_ok = abap_false.
            RETURN.
          ENDIF.
        ENDLOOP.
        IF lines( <n>-els ) > 0.
          APPEND VALUE #( op = zif_mjs=>c_op_jump ) TO ct_code.
          DATA lv_je TYPE i.
          lv_je = lines( ct_code ).
          READ TABLE ct_code INDEX lv_jf ASSIGNING FIELD-SYMBOL(<jf>).
          <jf>-a = lines( ct_code ) + 1.
          LOOP AT <n>-els INTO DATA(lr_eb).
            vm_emit_stmt( EXPORTING ir_node = lr_eb CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
            IF cv_ok = abap_false.
              RETURN.
            ENDIF.
          ENDLOOP.
          READ TABLE ct_code INDEX lv_je ASSIGNING FIELD-SYMBOL(<je>).
          <je>-a = lines( ct_code ) + 1.
        ELSE.
          READ TABLE ct_code INDEX lv_jf ASSIGNING FIELD-SYMBOL(<jf2>).
          <jf2>-a = lines( ct_code ) + 1.
        ENDIF.

      WHEN zif_mjs=>c_node_block.
        LOOP AT <n>-body INTO DATA(lr_bb).
          vm_emit_stmt( EXPORTING ir_node = lr_bb CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
          IF cv_ok = abap_false.
            RETURN.
          ENDIF.
        ENDLOOP.

      WHEN zif_mjs=>c_node_var.
        " local variable declaration (always slot-allocated in a compiled fn)
        IF <n>-slot_ok = abap_false.
          cv_ok = abap_false.
          RETURN.
        ENDIF.
        IF <n>-right IS BOUND.
          vm_emit_expr( EXPORTING ir_node = <n>-right CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
          IF cv_ok = abap_false.
            RETURN.
          ENDIF.
        ELSE.
          APPEND VALUE #( op = zif_mjs=>c_op_push_undef ) TO ct_code.
        ENDIF.
        APPEND VALUE #( op = zif_mjs=>c_op_store_slot a = <n>-slot ) TO ct_code.

      WHEN zif_mjs=>c_node_assign OR zif_mjs=>c_node_assign_add.
        " statement-form assignment: value computed on stack, then stored
        IF <n>-kind = zif_mjs=>c_node_assign_add.
          IF <n>-slot_ok = abap_true.
            APPEND VALUE #( op = zif_mjs=>c_op_load_slot a = <n>-slot ) TO ct_code.
          ELSE.
            APPEND VALUE #( op = zif_mjs=>c_op_resolve s = <n>-str ) TO ct_code.
          ENDIF.
          vm_emit_expr( EXPORTING ir_node = <n>-right CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
          IF cv_ok = abap_false.
            RETURN.
          ENDIF.
          APPEND VALUE #( op = zif_mjs=>c_op_binop s = `+` ) TO ct_code.
        ELSE.
          vm_emit_expr( EXPORTING ir_node = <n>-right CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
          IF cv_ok = abap_false.
            RETURN.
          ENDIF.
        ENDIF.
        IF <n>-slot_ok = abap_true.
          APPEND VALUE #( op = zif_mjs=>c_op_store_slot a = <n>-slot ) TO ct_code.
        ELSE.
          APPEND VALUE #( op = zif_mjs=>c_op_store_name s = <n>-str ) TO ct_code.
        ENDIF.

      WHEN zif_mjs=>c_node_while.
        APPEND INITIAL LINE TO gt_vm_loops.
        DATA lv_wtop TYPE i.
        lv_wtop = lines( ct_code ) + 1.
        vm_emit_expr( EXPORTING ir_node = <n>-cond CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
        IF cv_ok = abap_false.
          RETURN.
        ENDIF.
        APPEND VALUE #( op = zif_mjs=>c_op_jump_false ) TO ct_code.
        DATA lv_wjf TYPE i.
        lv_wjf = lines( ct_code ).
        LOOP AT <n>-body INTO DATA(lr_wb).
          vm_emit_stmt( EXPORTING ir_node = lr_wb CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
          IF cv_ok = abap_false.
            RETURN.
          ENDIF.
        ENDLOOP.
        APPEND VALUE #( op = zif_mjs=>c_op_jump a = lv_wtop ) TO ct_code.
        DATA lv_wend TYPE i.
        lv_wend = lines( ct_code ) + 1.
        READ TABLE ct_code INDEX lv_wjf ASSIGNING FIELD-SYMBOL(<wjf>).
        <wjf>-a = lv_wend.
        READ TABLE gt_vm_loops INDEX lines( gt_vm_loops ) ASSIGNING FIELD-SYMBOL(<wctx>).
        LOOP AT <wctx>-breaks INTO DATA(lv_wbrk).
          READ TABLE ct_code INDEX lv_wbrk ASSIGNING FIELD-SYMBOL(<wbp>).
          <wbp>-a = lv_wend.
        ENDLOOP.
        LOOP AT <wctx>-continues INTO DATA(lv_wcont).
          READ TABLE ct_code INDEX lv_wcont ASSIGNING FIELD-SYMBOL(<wcp>).
          <wcp>-a = lv_wtop.  " while: continue re-tests the condition
        ENDLOOP.
        DELETE gt_vm_loops INDEX lines( gt_vm_loops ).

      WHEN zif_mjs=>c_node_for.
        IF <n>-init IS BOUND.
          vm_emit_stmt( EXPORTING ir_node = <n>-init CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
          IF cv_ok = abap_false.
            RETURN.
          ENDIF.
        ENDIF.
        " a for without a condition needs break/return to terminate; not compiled
        IF <n>-cond IS NOT BOUND.
          cv_ok = abap_false.
          RETURN.
        ENDIF.
        APPEND INITIAL LINE TO gt_vm_loops.
        DATA lv_ftop TYPE i.
        lv_ftop = lines( ct_code ) + 1.
        vm_emit_expr( EXPORTING ir_node = <n>-cond CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
        IF cv_ok = abap_false.
          RETURN.
        ENDIF.
        APPEND VALUE #( op = zif_mjs=>c_op_jump_false ) TO ct_code.
        DATA lv_fjf TYPE i.
        lv_fjf = lines( ct_code ).
        LOOP AT <n>-body INTO DATA(lr_fb).
          vm_emit_stmt( EXPORTING ir_node = lr_fb CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
          IF cv_ok = abap_false.
            RETURN.
          ENDIF.
        ENDLOOP.
        DATA lv_fupd TYPE i.
        lv_fupd = lines( ct_code ) + 1.  " continue target: the update step
        IF <n>-update IS BOUND.
          vm_emit_stmt( EXPORTING ir_node = <n>-update CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
          IF cv_ok = abap_false.
            RETURN.
          ENDIF.
        ENDIF.
        APPEND VALUE #( op = zif_mjs=>c_op_jump a = lv_ftop ) TO ct_code.
        DATA lv_fend TYPE i.
        lv_fend = lines( ct_code ) + 1.
        READ TABLE ct_code INDEX lv_fjf ASSIGNING FIELD-SYMBOL(<fjf>).
        <fjf>-a = lv_fend.
        READ TABLE gt_vm_loops INDEX lines( gt_vm_loops ) ASSIGNING FIELD-SYMBOL(<fctx>).
        LOOP AT <fctx>-breaks INTO DATA(lv_fbrk).
          READ TABLE ct_code INDEX lv_fbrk ASSIGNING FIELD-SYMBOL(<fbp>).
          <fbp>-a = lv_fend.
        ENDLOOP.
        LOOP AT <fctx>-continues INTO DATA(lv_fcont).
          READ TABLE ct_code INDEX lv_fcont ASSIGNING FIELD-SYMBOL(<fcp>).
          <fcp>-a = lv_fupd.
        ENDLOOP.
        DELETE gt_vm_loops INDEX lines( gt_vm_loops ).

      WHEN zif_mjs=>c_node_member_assign.
        " static property write obj.name = value (computed -> fall back)
        IF <n>-prop_expr IS BOUND.
          cv_ok = abap_false.
          RETURN.
        ENDIF.
        " writeback ident, used only for function-typed targets (matches
        " eval_node_member_assign, which writes the mutated fn value back)
        DATA lv_wb TYPE string.
        CLEAR lv_wb.
        IF <n>-object IS BOUND.
          FIELD-SYMBOLS <maon> TYPE zif_mjs=>ty_node.
          ASSIGN <n>-object->* TO <maon>.
          IF sy-subrc = 0 AND <maon>-kind = zif_mjs=>c_node_ident.
            lv_wb = <maon>-str.
          ENDIF.
        ENDIF.
        vm_emit_expr( EXPORTING ir_node = <n>-object CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
        IF cv_ok = abap_false.
          RETURN.
        ENDIF.
        vm_emit_expr( EXPORTING ir_node = <n>-right CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
        IF cv_ok = abap_false.
          RETURN.
        ENDIF.
        APPEND VALUE #( op = zif_mjs=>c_op_set_field a = zcl_mjs_obj=>atom( <n>-property ) s = lv_wb ) TO ct_code.

      WHEN zif_mjs=>c_node_break.
        " unlabeled break to the innermost loop (labeled -> fall back)
        IF <n>-str IS NOT INITIAL OR lines( gt_vm_loops ) = 0.
          cv_ok = abap_false.
          RETURN.
        ENDIF.
        APPEND VALUE #( op = zif_mjs=>c_op_jump ) TO ct_code.
        READ TABLE gt_vm_loops INDEX lines( gt_vm_loops ) ASSIGNING FIELD-SYMBOL(<bctx>).
        APPEND lines( ct_code ) TO <bctx>-breaks.

      WHEN zif_mjs=>c_node_continue.
        IF <n>-str IS NOT INITIAL OR lines( gt_vm_loops ) = 0.
          cv_ok = abap_false.
          RETURN.
        ENDIF.
        APPEND VALUE #( op = zif_mjs=>c_op_jump ) TO ct_code.
        READ TABLE gt_vm_loops INDEX lines( gt_vm_loops ) ASSIGNING FIELD-SYMBOL(<cctx>).
        APPEND lines( ct_code ) TO <cctx>-continues.

      WHEN zif_mjs=>c_node_call OR zif_mjs=>c_node_method_call
        OR zif_mjs=>c_node_member_access
        OR zif_mjs=>c_node_inc OR zif_mjs=>c_node_dec
        OR zif_mjs=>c_node_post_inc OR zif_mjs=>c_node_post_dec.
        " expression statement: evaluate for side effects, discard the value
        vm_emit_expr( EXPORTING ir_node = ir_node CHANGING ct_code = ct_code ct_consts = ct_consts cv_ok = cv_ok ).
        IF cv_ok = abap_false.
          RETURN.
        ENDIF.
        APPEND VALUE #( op = zif_mjs=>c_op_pop ) TO ct_code.

      WHEN OTHERS.
        cv_ok = abap_false.
    ENDCASE.
  ENDMETHOD.

  METHOD vm_call_named.
    DATA(ls_fn) = io_env->get( iv_name ).
    IF ls_fn-type = zif_mjs=>c_type_function AND ls_fn-fn IS BOUND.
      FIELD-SYMBOLS <fni> TYPE zif_mjs=>ty_function.
      ASSIGN ls_fn-fn->* TO <fni>.
      IF sy-subrc = 0 AND <fni>-name = `defineProperty`.
        DATA(ls_dp) = zcl_mjs_builtins=>define_property( it_args ).
        IF ls_dp-type = zif_mjs=>c_type_object.
          rs_val = ls_dp.
          RETURN.
        ENDIF.
      ENDIF.
      rs_val = call_function( ir_fn = ls_fn-fn it_args = it_args io_env = io_env ).
    ENDIF.
  ENDMETHOD.

  METHOD run_chunk.
    FIELD-SYMBOLS <fn> TYPE zif_mjs=>ty_function.
    ASSIGN ir_fn->* TO <fn>.

    DATA lt_stack TYPE zif_mjs=>tt_value_slots.
    DATA ls_u TYPE zif_mjs=>ty_value.
    DO <fn>-vm_max_stack TIMES.
      APPEND ls_u TO lt_stack.
    ENDDO.
    DATA lv_sp TYPE i VALUE 0.
    DATA lv_ip TYPE i VALUE 1.
    DATA lv_n  TYPE i.
    lv_n = lines( <fn>-vm_code ).
    FIELD-SYMBOLS <c>  TYPE zif_mjs=>ty_instr.
    FIELD-SYMBOLS <sv> TYPE zif_mjs=>ty_value.
    FIELD-SYMBOLS <a>  TYPE zif_mjs=>ty_value.
    FIELD-SYMBOLS <b>  TYPE zif_mjs=>ty_value.

    WHILE lv_ip <= lv_n.
      ASSIGN <fn>-vm_code[ lv_ip ] TO <c>.
      CASE <c>-op.
        WHEN zif_mjs=>c_op_push_const.
          lv_sp = lv_sp + 1.
          READ TABLE lt_stack INDEX lv_sp ASSIGNING <sv>.
          READ TABLE <fn>-vm_consts INDEX <c>-a INTO <sv>.

        WHEN zif_mjs=>c_op_push_undef.
          lv_sp = lv_sp + 1.
          READ TABLE lt_stack INDEX lv_sp ASSIGNING <sv>.
          CLEAR <sv>.

        WHEN zif_mjs=>c_op_load_slot.
          lv_sp = lv_sp + 1.
          READ TABLE lt_stack INDEX lv_sp ASSIGNING <sv>.
          CLEAR <sv>.  " unwritten local reads as undefined (slots grow lazily)
          READ TABLE io_env->slots INDEX <c>-a INTO <sv>.

        WHEN zif_mjs=>c_op_load_this.
          lv_sp = lv_sp + 1.
          READ TABLE lt_stack INDEX lv_sp ASSIGNING <sv>.
          CLEAR <sv>.
          DATA lo_te TYPE REF TO zcl_mjs_env.
          lo_te = io_env.
          WHILE lo_te IS BOUND.
            IF lo_te->this_bound = abap_true.
              <sv> = lo_te->this_val.
              EXIT.
            ENDIF.
            lo_te = lo_te->parent.
          ENDWHILE.

        WHEN zif_mjs=>c_op_resolve.
          lv_sp = lv_sp + 1.
          READ TABLE lt_stack INDEX lv_sp ASSIGNING <sv>.
          DATA lv_rf TYPE abap_bool.
          io_env->resolve( EXPORTING iv_name = <c>-s IMPORTING ev_found = lv_rf es_val = <sv> ).
          IF lv_rf = abap_false.
            raise_ref_error( <c>-s ).
          ENDIF.

        WHEN zif_mjs=>c_op_binop.
          READ TABLE lt_stack INDEX lv_sp ASSIGNING <b>.
          lv_sp = lv_sp - 1.
          READ TABLE lt_stack INDEX lv_sp ASSIGNING <a>.
          " Phase 3: inline the number fast path (mirrors eval_bin_op) so hot
          " arithmetic avoids the method call and two by-value operand copies.
          IF <a>-type = zif_mjs=>c_type_number AND <b>-type = zif_mjs=>c_type_number.
            DATA lv_ba TYPE f.
            DATA lv_bb TYPE f.
            lv_ba = <a>-num.
            lv_bb = <b>-num.
            DATA ls_bres TYPE zif_mjs=>ty_value.
            CLEAR ls_bres.
            DATA lv_bdone TYPE abap_bool VALUE abap_true.
            CASE <c>-s.
              WHEN `+`.
                ls_bres-type = zif_mjs=>c_type_number.
                ls_bres-num  = lv_ba + lv_bb.
              WHEN `-`.
                ls_bres-type = zif_mjs=>c_type_number.
                ls_bres-num  = lv_ba - lv_bb.
              WHEN `*`.
                ls_bres-type = zif_mjs=>c_type_number.
                ls_bres-num  = lv_ba * lv_bb.
              WHEN `/`.
                ls_bres-type = zif_mjs=>c_type_number.
                IF lv_bb <> 0.
                  ls_bres-num = lv_ba / lv_bb.
                ELSEIF lv_ba = 0.
                  ls_bres-str = `NaN`.
                ELSEIF lv_ba > 0.
                  ls_bres-str = `Infinity`.
                ELSE.
                  ls_bres-str = `-Infinity`.
                ENDIF.
              WHEN `%`.
                ls_bres-type = zif_mjs=>c_type_number.
                IF lv_bb <> 0.
                  DATA lv_bia TYPE i.
                  DATA lv_bib TYPE i.
                  lv_bia = lv_ba.
                  lv_bib = lv_bb.
                  ls_bres-num = CONV f( lv_bia MOD lv_bib ).
                ELSE.
                  ls_bres-str = `NaN`.
                ENDIF.
              WHEN `<`.
                ls_bres-type = zif_mjs=>c_type_bool.
                IF lv_ba < lv_bb.
                  ls_bres-num = 1.
                ENDIF.
              WHEN `>`.
                ls_bres-type = zif_mjs=>c_type_bool.
                IF lv_ba > lv_bb.
                  ls_bres-num = 1.
                ENDIF.
              WHEN `<=`.
                ls_bres-type = zif_mjs=>c_type_bool.
                IF lv_ba <= lv_bb.
                  ls_bres-num = 1.
                ENDIF.
              WHEN `>=`.
                ls_bres-type = zif_mjs=>c_type_bool.
                IF lv_ba >= lv_bb.
                  ls_bres-num = 1.
                ENDIF.
              WHEN OTHERS.
                lv_bdone = abap_false.
            ENDCASE.
            IF lv_bdone = abap_true.
              <a> = ls_bres.
            ELSE.
              <a> = eval_bin_op( iv_op = <c>-s is_left = <a> is_right = <b> io_env = io_env ).
            ENDIF.
          ELSE.
            <a> = eval_bin_op( iv_op = <c>-s is_left = <a> is_right = <b> io_env = io_env ).
          ENDIF.

        WHEN zif_mjs=>c_op_neg.
          READ TABLE lt_stack INDEX lv_sp ASSIGNING <a>.
          DATA ls_neg TYPE zif_mjs=>ty_value.
          CLEAR ls_neg.
          ls_neg-type = zif_mjs=>c_type_number.
          ls_neg-num  = 0 - zcl_mjs_val=>to_number( <a> ).
          <a> = ls_neg.

        WHEN zif_mjs=>c_op_not.
          READ TABLE lt_stack INDEX lv_sp ASSIGNING <a>.
          DATA ls_not TYPE zif_mjs=>ty_value.
          CLEAR ls_not.
          ls_not-type = zif_mjs=>c_type_bool.
          IF zcl_mjs_val=>is_true( <a> ) = abap_false.
            ls_not-num = 1.
          ENDIF.
          <a> = ls_not.

        WHEN zif_mjs=>c_op_jump.
          lv_ip = <c>-a.
          CONTINUE.

        WHEN zif_mjs=>c_op_jump_false.
          READ TABLE lt_stack INDEX lv_sp ASSIGNING <a>.
          lv_sp = lv_sp - 1.
          IF zcl_mjs_val=>is_true( <a> ) = abap_false.
            lv_ip = <c>-a.
            CONTINUE.
          ENDIF.

        WHEN zif_mjs=>c_op_jump_true.
          READ TABLE lt_stack INDEX lv_sp ASSIGNING <a>.
          lv_sp = lv_sp - 1.
          IF zcl_mjs_val=>is_true( <a> ) = abap_true.
            lv_ip = <c>-a.
            CONTINUE.
          ENDIF.

        WHEN zif_mjs=>c_op_call.
          DATA lt_cargs TYPE zif_mjs=>tt_value_slots.
          CLEAR lt_cargs.
          DATA lv_cbase TYPE i.
          lv_cbase = lv_sp - <c>-a.
          DATA lv_ck TYPE i.
          lv_ck = 1.
          WHILE lv_ck <= <c>-a.
            READ TABLE lt_stack INDEX lv_cbase + lv_ck INTO DATA(ls_carg).
            APPEND ls_carg TO lt_cargs.
            lv_ck = lv_ck + 1.
          ENDWHILE.
          lv_sp = lv_cbase.
          DATA(ls_cr) = vm_call_named( iv_name = <c>-s it_args = lt_cargs io_env = io_env ).
          lv_sp = lv_sp + 1.
          READ TABLE lt_stack INDEX lv_sp ASSIGNING <sv>.
          <sv> = ls_cr.

        WHEN zif_mjs=>c_op_get_field.
          READ TABLE lt_stack INDEX lv_sp ASSIGNING <a>.
          IF <a>-type = zif_mjs=>c_type_object AND <a>-obj IS BOUND.
            " Inlined object property read: one atom-keyed hashed read, skipping
            " the eval_property_access + get_a method calls. Getters and
            " non-object receivers use the general path.
            DATA(ls_gfo) = <a>.
            READ TABLE ls_gfo-obj->props WITH TABLE KEY key = <c>-a ASSIGNING FIELD-SYMBOL(<gpp>).
            IF sy-subrc <> 0.
              CLEAR <a>.
            ELSEIF <gpp>-val-type = zif_mjs=>c_type_getter.
              <a> = call_function( ir_fn = <gpp>-val-fn it_args = VALUE #( ) io_env = io_env is_this = ls_gfo ).
            ELSE.
              <a> = <gpp>-val.
            ENDIF.
          ELSE.
            <a> = eval_property_access( is_obj = <a> iv_prop = <c>-s iv_atom = <c>-a io_env = io_env ).
          ENDIF.

        WHEN zif_mjs=>c_op_get_index.
          READ TABLE lt_stack INDEX lv_sp ASSIGNING <b>.   " key
          lv_sp = lv_sp - 1.
          READ TABLE lt_stack INDEX lv_sp ASSIGNING <a>.   " object
          DATA(ls_ixo) = <a>.
          <a> = eval_property_access( is_obj = ls_ixo iv_prop = zcl_mjs_val=>to_string( <b> ) io_env = io_env ).

        WHEN zif_mjs=>c_op_call_method.
          DATA lt_margs TYPE zif_mjs=>tt_value_slots.
          CLEAR lt_margs.
          DATA lv_mbase TYPE i.
          lv_mbase = lv_sp - <c>-a.       " receiver at mbase, args at mbase+1..sp
          DATA lv_mk TYPE i.
          lv_mk = 1.
          WHILE lv_mk <= <c>-a.
            READ TABLE lt_stack INDEX lv_mbase + lv_mk INTO DATA(ls_marg).
            APPEND ls_marg TO lt_margs.
            lv_mk = lv_mk + 1.
          ENDWHILE.
          READ TABLE lt_stack INDEX lv_mbase INTO DATA(ls_recv).
          lv_sp = lv_mbase - 1.
          DATA(ls_mres) = eval_method_call( is_obj = ls_recv iv_method = <c>-s
                                            iv_atom = <c>-b it_args = lt_margs io_env = io_env ).
          lv_sp = lv_sp + 1.
          READ TABLE lt_stack INDEX lv_sp ASSIGNING <sv>.
          <sv> = ls_mres.

        WHEN zif_mjs=>c_op_set_field.
          " matches eval_node_member_assign: object -> set_a; function -> create
          " backing object if needed, set_a, and (for an ident target) write back
          READ TABLE lt_stack INDEX lv_sp ASSIGNING <b>.       " value
          DATA lv_soi TYPE i.
          lv_soi = lv_sp - 1.
          READ TABLE lt_stack INDEX lv_soi ASSIGNING <a>.      " object
          lv_sp = lv_sp - 2.
          IF <a>-type = zif_mjs=>c_type_object.
            <a>-obj->set_a( iv_atom = <c>-a is_val = <b> ).
          ELSEIF <a>-type = zif_mjs=>c_type_function.
            IF <a>-obj IS INITIAL.
              CREATE OBJECT <a>-obj.
            ENDIF.
            <a>-obj->set_a( iv_atom = <c>-a is_val = <b> ).
            IF <c>-s IS NOT INITIAL.
              io_env->set( iv_name = <c>-s is_val = <a> ).
            ENDIF.
          ENDIF.

        WHEN zif_mjs=>c_op_store_slot.
          READ TABLE lt_stack INDEX lv_sp ASSIGNING <a>.
          lv_sp = lv_sp - 1.
          " via set_slot: grows the slot table on demand (slots are lazy)
          io_env->set_slot( iv_slot = <c>-a is_val = <a> ).

        WHEN zif_mjs=>c_op_store_name.
          READ TABLE lt_stack INDEX lv_sp ASSIGNING <a>.
          lv_sp = lv_sp - 1.
          io_env->set( iv_name = <c>-s is_val = <a> ).

        WHEN zif_mjs=>c_op_incdec.
          " matches eval_node_incdec: new = old +/- 1 via eval_bin_op,
          " store back, push old (postfix) or new (prefix)
          DATA ls_old TYPE zif_mjs=>ty_value.
          CLEAR ls_old.
          READ TABLE io_env->slots INDEX <c>-a INTO ls_old.  " unwritten -> undefined
          DATA ls_one TYPE zif_mjs=>ty_value.
          CLEAR ls_one.
          ls_one-type = zif_mjs=>c_type_number.
          ls_one-num  = 1.
          DATA lv_incop TYPE string.
          IF <c>-b = 1 OR <c>-b = 11.
            lv_incop = `+`.
          ELSE.
            lv_incop = `-`.
          ENDIF.
          DATA(ls_newv) = eval_bin_op( iv_op = lv_incop is_left = ls_old is_right = ls_one io_env = io_env ).
          io_env->set_slot( iv_slot = <c>-a is_val = ls_newv ).
          lv_sp = lv_sp + 1.
          READ TABLE lt_stack INDEX lv_sp ASSIGNING FIELD-SYMBOL(<ir>).
          IF <c>-b >= 10.
            <ir> = ls_old.
          ELSE.
            <ir> = ls_newv.
          ENDIF.

        WHEN zif_mjs=>c_op_ret.
          READ TABLE lt_stack INDEX lv_sp INTO rs_val.
          RETURN.

        WHEN zif_mjs=>c_op_ret_undef.
          CLEAR rs_val.
          RETURN.

        WHEN zif_mjs=>c_op_make_array.
          DATA lt_arefs TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY.
          CLEAR lt_arefs.
          DATA lv_abase TYPE i.
          lv_abase = lv_sp - <c>-a.
          DATA lv_ak TYPE i.
          lv_ak = 1.
          WHILE lv_ak <= <c>-a.
            READ TABLE lt_stack INDEX lv_abase + lv_ak INTO DATA(ls_aelem).
            APPEND zcl_mjs_val=>box_value( ls_aelem ) TO lt_arefs.
            lv_ak = lv_ak + 1.
          ENDWHILE.
          lv_sp = lv_abase + 1.
          READ TABLE lt_stack INDEX lv_sp ASSIGNING <sv>.
          <sv> = zcl_mjs_val=>array_val( lt_arefs ).

        WHEN zif_mjs=>c_op_pop.
          lv_sp = lv_sp - 1.

        WHEN zif_mjs=>c_op_dup.
          READ TABLE lt_stack INDEX lv_sp ASSIGNING <a>.
          lv_sp = lv_sp + 1.
          READ TABLE lt_stack INDEX lv_sp ASSIGNING <sv>.
          <sv> = <a>.
      ENDCASE.
      lv_ip = lv_ip + 1.
    ENDWHILE.
    CLEAR rs_val.
  ENDMETHOD.

  METHOD compile_function.
    FIELD-SYMBOLS <fn> TYPE zif_mjs=>ty_function.
    ASSIGN ir_fn->* TO <fn>.

    " Assign slot indices to all params and local var declarations
    DATA lt_map TYPE zif_mjs=>tt_slot_map.
    DATA lv_next TYPE i VALUE 1.  " 1-based (READ TABLE ... INDEX)

    " Params first
    CLEAR <fn>-param_binds.
    LOOP AT <fn>-params INTO DATA(lv_param).
      DATA lv_param_ord TYPE i.
      lv_param_ord = sy-tabix.
      DATA lv_pname TYPE string.
      DATA lv_is_rest TYPE abap_bool.
      IF strlen( lv_param ) > 3 AND lv_param(3) = `...`.
        lv_pname   = lv_param+3.
        lv_is_rest = abap_true.
      ELSE.
        lv_pname   = lv_param.
        lv_is_rest = abap_false.
      ENDIF.
      READ TABLE lt_map WITH TABLE KEY name = lv_pname TRANSPORTING NO FIELDS.
      IF sy-subrc <> 0.
        DATA ls_se TYPE zif_mjs=>ty_slot_entry.
        ls_se-name = lv_pname.
        ls_se-slot = lv_next.
        INSERT ls_se INTO TABLE lt_map.
        lv_next = lv_next + 1.
      ENDIF.
      " Precompute the per-call binding plan: slot (duplicate param names in
      " sloppy mode share a slot, so the last argument wins), rest flag, and
      " default-value node (unbound when the param has no default).
      READ TABLE lt_map WITH TABLE KEY name = lv_pname ASSIGNING FIELD-SYMBOL(<pse>).
      DATA ls_pbind TYPE zif_mjs=>ty_param_bind.
      CLEAR ls_pbind.
      ls_pbind-slot    = <pse>-slot.
      ls_pbind-is_rest = lv_is_rest.
      READ TABLE <fn>-default_params INDEX lv_param_ord INTO ls_pbind-dflt.
      APPEND ls_pbind TO <fn>-param_binds.
    ENDLOOP.

    " Walk body to collect var/let/const/function declarations
    LOOP AT <fn>-body INTO DATA(lr_s).
      CALL METHOD collect_slots
        EXPORTING ir_node = lr_s
        CHANGING  ct_map  = lt_map
                  cv_next = lv_next.
    ENDLOOP.

    " Store compiled slot info on function (shared across calls)
    <fn>-max_slots = lv_next - 1.
    CREATE DATA <fn>-slot_map LIKE lt_map.
    <fn>-slot_map->* = lt_map.
    <fn>-compiled = abap_true.

    " Annotate AST nodes with slot indices (fast-path ident/var/assign)
    LOOP AT <fn>-body INTO lr_s.
      annotate_slots( ir_node = lr_s ir_map = <fn>-slot_map ).
    ENDLOOP.

    " Check if function references 'arguments' (not shadowed by a param)
    READ TABLE <fn>-params WITH KEY table_line = `arguments` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      LOOP AT <fn>-body INTO lr_s.
        IF scan_for_ident( ir_node = lr_s iv_name = `arguments` ) = abap_true.
          <fn>-needs_arguments = abap_true.
          EXIT.
        ENDIF.
      ENDLOOP.
    ENDIF.

    " Collect hoisted function declarations once (used by every call)
    CLEAR <fn>-hoisted.
    FIELD-SYMBOLS <hst_n> TYPE zif_mjs=>ty_node.
    LOOP AT <fn>-body INTO lr_s.
      IF lr_s IS NOT BOUND.
        CONTINUE.
      ENDIF.
      ASSIGN lr_s->* TO <hst_n>.
      IF sy-subrc = 0 AND <hst_n>-kind = zif_mjs=>c_node_func_decl AND <hst_n>-str IS NOT INITIAL.
        APPEND lr_s TO <fn>-hoisted.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD collect_slots.
    IF ir_node IS NOT BOUND.
      RETURN.
    ENDIF.
    FIELD-SYMBOLS <n> TYPE zif_mjs=>ty_node.
    ASSIGN ir_node->* TO <n>.

    CASE <n>-kind.
      WHEN zif_mjs=>c_node_var.
        " var/let/const declaration
        READ TABLE ct_map WITH TABLE KEY name = <n>-str TRANSPORTING NO FIELDS.
        IF sy-subrc <> 0.
          DATA ls_se TYPE zif_mjs=>ty_slot_entry.
          ls_se-name = <n>-str.
          ls_se-slot = cv_next.
          INSERT ls_se INTO TABLE ct_map.
          cv_next = cv_next + 1.
        ENDIF.
        " Recurse into initializer (may contain nested vars via comma-expr)
        CALL METHOD collect_slots
          EXPORTING ir_node = <n>-right
          CHANGING  ct_map  = ct_map
                    cv_next = cv_next.

      WHEN zif_mjs=>c_node_func_decl.
        " Named function declaration: the name itself is a local
        " Function expressions (op='E') must NOT add their name to the enclosing scope
        IF <n>-str IS NOT INITIAL AND <n>-op <> 'E'.
          READ TABLE ct_map WITH TABLE KEY name = <n>-str TRANSPORTING NO FIELDS.
          IF sy-subrc <> 0.
            DATA ls_se2 TYPE zif_mjs=>ty_slot_entry.
            ls_se2-name = <n>-str.
            ls_se2-slot = cv_next.
            INSERT ls_se2 INTO TABLE ct_map.
            cv_next = cv_next + 1.
          ENDIF.
        ENDIF.
        " Do NOT descend into function body (separate scope)

      WHEN OTHERS.
        " Recurse into all child nodes (but not nested function bodies)
        CALL METHOD collect_slots
          EXPORTING ir_node = <n>-left
          CHANGING  ct_map  = ct_map
                    cv_next = cv_next.
        CALL METHOD collect_slots
          EXPORTING ir_node = <n>-right
          CHANGING  ct_map  = ct_map
                    cv_next = cv_next.
        CALL METHOD collect_slots
          EXPORTING ir_node = <n>-cond
          CHANGING  ct_map  = ct_map
                    cv_next = cv_next.
        CALL METHOD collect_slots
          EXPORTING ir_node = <n>-init
          CHANGING  ct_map  = ct_map
                    cv_next = cv_next.
        CALL METHOD collect_slots
          EXPORTING ir_node = <n>-update
          CHANGING  ct_map  = ct_map
                    cv_next = cv_next.
        LOOP AT <n>-body INTO DATA(lr_b).
          CALL METHOD collect_slots
            EXPORTING ir_node = lr_b
            CHANGING  ct_map  = ct_map
                      cv_next = cv_next.
        ENDLOOP.
        LOOP AT <n>-els INTO DATA(lr_e).
          CALL METHOD collect_slots
            EXPORTING ir_node = lr_e
            CHANGING  ct_map  = ct_map
                      cv_next = cv_next.
        ENDLOOP.
        LOOP AT <n>-args INTO DATA(lr_a).
          CALL METHOD collect_slots
            EXPORTING ir_node = lr_a
            CHANGING  ct_map  = ct_map
                      cv_next = cv_next.
        ENDLOOP.
        LOOP AT <n>-cases INTO DATA(ls_sc).
          LOOP AT ls_sc-body INTO DATA(lr_cb).
            CALL METHOD collect_slots
              EXPORTING ir_node = lr_cb
              CHANGING  ct_map  = ct_map
                        cv_next = cv_next.
          ENDLOOP.
        ENDLOOP.
    ENDCASE.
  ENDMETHOD.

  METHOD annotate_slots.
    IF ir_node IS NOT BOUND.
      RETURN.
    ENDIF.
    FIELD-SYMBOLS <n> TYPE zif_mjs=>ty_node.
    ASSIGN ir_node->* TO <n>.

    CASE <n>-kind.
      WHEN zif_mjs=>c_node_ident.
        READ TABLE ir_map->* WITH TABLE KEY name = <n>-str ASSIGNING FIELD-SYMBOL(<sm>).
        IF sy-subrc = 0.
          <n>-slot    = <sm>-slot.
          <n>-slot_ok = abap_true.
        ENDIF.

      WHEN zif_mjs=>c_node_var.
        READ TABLE ir_map->* WITH TABLE KEY name = <n>-str ASSIGNING FIELD-SYMBOL(<sm2>).
        IF sy-subrc = 0.
          <n>-slot    = <sm2>-slot.
          <n>-slot_ok = abap_true.
        ENDIF.
        annotate_slots( ir_node = <n>-right ir_map = ir_map ).

      WHEN zif_mjs=>c_node_assign OR zif_mjs=>c_node_assign_add.
        READ TABLE ir_map->* WITH TABLE KEY name = <n>-str ASSIGNING FIELD-SYMBOL(<sm3>).
        IF sy-subrc = 0.
          <n>-slot    = <sm3>-slot.
          <n>-slot_ok = abap_true.
        ENDIF.
        annotate_slots( ir_node = <n>-right ir_map = ir_map ).

      WHEN zif_mjs=>c_node_func_decl.
        " Function name gets a slot annotation; do NOT descend into body
        IF <n>-str IS NOT INITIAL.
          READ TABLE ir_map->* WITH TABLE KEY name = <n>-str ASSIGNING FIELD-SYMBOL(<sm4>).
          IF sy-subrc = 0.
            <n>-slot    = <sm4>-slot.
            <n>-slot_ok = abap_true.
          ENDIF.
        ENDIF.

      WHEN OTHERS.
        annotate_slots( ir_node = <n>-left   ir_map = ir_map ).
        annotate_slots( ir_node = <n>-right  ir_map = ir_map ).
        annotate_slots( ir_node = <n>-cond   ir_map = ir_map ).
        annotate_slots( ir_node = <n>-init   ir_map = ir_map ).
        annotate_slots( ir_node = <n>-update ir_map = ir_map ).
        LOOP AT <n>-body INTO DATA(lr_b).
          annotate_slots( ir_node = lr_b ir_map = ir_map ).
        ENDLOOP.
        LOOP AT <n>-els INTO DATA(lr_e).
          annotate_slots( ir_node = lr_e ir_map = ir_map ).
        ENDLOOP.
        LOOP AT <n>-args INTO DATA(lr_a).
          annotate_slots( ir_node = lr_a ir_map = ir_map ).
        ENDLOOP.
        LOOP AT <n>-cases INTO DATA(ls_sc).
          LOOP AT ls_sc-body INTO DATA(lr_cb).
            annotate_slots( ir_node = lr_cb ir_map = ir_map ).
          ENDLOOP.
        ENDLOOP.
    ENDCASE.
  ENDMETHOD.

  METHOD eval_node.
    IF ir_node IS NOT BOUND.
      CLEAR rs_val.
      RETURN.
    ENDIF.
    IF io_env->returning = abap_true OR io_env->breaking = abap_true.
      CLEAR rs_val.
      RETURN.
    ENDIF.

    FIELD-SYMBOLS <n> TYPE zif_mjs=>ty_node.
    ASSIGN ir_node->* TO <n>.
    DATA lr_stmt TYPE REF TO data.

    CASE <n>-kind.

      WHEN zif_mjs=>c_node_number.
        rs_val-type = zif_mjs=>c_type_number.
        rs_val-num  = <n>-num.

      WHEN zif_mjs=>c_node_string.
        rs_val-type = zif_mjs=>c_type_string.
        rs_val-str  = <n>-str.

      WHEN zif_mjs=>c_node_bool.
        rs_val-type = zif_mjs=>c_type_bool.
        rs_val-num  = <n>-num.

      WHEN zif_mjs=>c_node_regex.
        " str = pattern, op = flags string (stored by parser)
        rs_val = zcl_mjs_builtins=>regexp_val( iv_pattern = <n>-str iv_flags = <n>-op ).

      WHEN zif_mjs=>c_node_ident.
        " Fast path: direct slot read (no method call overhead)
        IF <n>-slot_ok = abap_true AND io_env->slot_map IS BOUND.
          READ TABLE io_env->slots INDEX <n>-slot INTO rs_val.
        ELSEIF <n>-str = `this`.
          " Inline get_this() to avoid a method call on this hot path (~800K/run).
          " Walks to the nearest env that binds 'this'; rs_val stays undefined
          " (initial) if none does, matching get_this().
          DATA lo_this_env TYPE REF TO zcl_mjs_env.
          lo_this_env = io_env.
          WHILE lo_this_env IS BOUND.
            IF lo_this_env->this_bound = abap_true.
              rs_val = lo_this_env->this_val.
              EXIT.
            ENDIF.
            lo_this_env = lo_this_env->parent.
          ENDWHILE.
        ELSE.
          DATA lv_ident_found TYPE abap_bool.
          io_env->resolve(
            EXPORTING iv_name  = <n>-str
            IMPORTING ev_found = lv_ident_found
                      es_val   = rs_val ).
          IF lv_ident_found = abap_false.
            raise_ref_error( <n>-str ).
          ENDIF.
        ENDIF.

      WHEN zif_mjs=>c_node_binop.
        rs_val = eval_node_binop( ir_node = ir_node io_env = io_env ).

      WHEN zif_mjs=>c_node_unaryop.
        CASE <n>-op.
          WHEN `-`.
            rs_val-type = zif_mjs=>c_type_number.
            rs_val-num = 0 - zcl_mjs_val=>to_number( eval_node( ir_node = <n>-left io_env = io_env ) ).
          WHEN `!`.
            rs_val-type = zif_mjs=>c_type_bool.
            IF zcl_mjs_val=>is_true( eval_node( ir_node = <n>-left io_env = io_env ) ) = abap_false.
              rs_val-num = 1.
            ENDIF.
          WHEN OTHERS.
            " void: evaluate operand for side effects, result stays undefined
            eval_node( ir_node = <n>-left io_env = io_env ).
        ENDCASE.

      WHEN zif_mjs=>c_node_inc OR zif_mjs=>c_node_dec
        OR zif_mjs=>c_node_post_inc OR zif_mjs=>c_node_post_dec.
        rs_val = eval_node_incdec( ir_node = ir_node io_env = io_env ).

      WHEN zif_mjs=>c_node_assign OR zif_mjs=>c_node_assign_add.
        rs_val = eval_node_assign( ir_node = ir_node io_env = io_env ).

      WHEN zif_mjs=>c_node_member_assign.
        rs_val = eval_node_member_assign( ir_node = ir_node io_env = io_env ).

      WHEN zif_mjs=>c_node_var.
        rs_val = eval_node_var( ir_node = ir_node io_env = io_env ).

      WHEN zif_mjs=>c_node_if.
        IF zcl_mjs_val=>is_true( eval_node( ir_node = <n>-cond io_env = io_env ) ) = abap_true.
          LOOP AT <n>-body INTO lr_stmt.
            eval_node( ir_node = lr_stmt io_env = io_env ).
            IF io_env->returning = abap_true OR io_env->breaking = abap_true.
              EXIT.
            ENDIF.
          ENDLOOP.
        ELSEIF lines( <n>-els ) > 0.
          LOOP AT <n>-els INTO lr_stmt.
            eval_node( ir_node = lr_stmt io_env = io_env ).
            IF io_env->returning = abap_true OR io_env->breaking = abap_true.
              EXIT.
            ENDIF.
          ENDLOOP.
        ENDIF.

      WHEN zif_mjs=>c_node_ternary.
        IF zcl_mjs_val=>is_true( eval_node( ir_node = <n>-cond io_env = io_env ) ) = abap_true.
          rs_val = eval_node( ir_node = <n>-left io_env = io_env ).
        ELSE.
          rs_val = eval_node( ir_node = <n>-right io_env = io_env ).
        ENDIF.

      WHEN zif_mjs=>c_node_while.
        DO.
          IF zcl_mjs_val=>is_true( eval_node( ir_node = <n>-cond io_env = io_env ) ) = abap_false
             OR io_env->returning = abap_true OR io_env->breaking = abap_true.
            EXIT.
          ENDIF.
          LOOP AT <n>-body INTO lr_stmt.
            eval_node( ir_node = lr_stmt io_env = io_env ).
            IF io_env->returning = abap_true OR io_env->breaking = abap_true
               OR io_env->continuing = abap_true.
              EXIT.
            ENDIF.
          ENDLOOP.
          IF io_env->continuing = abap_true.
            io_env->continuing = abap_false.
            CONTINUE.
          ENDIF.
        ENDDO.
        IF io_env->breaking = abap_true.
          io_env->breaking = abap_false.
        ENDIF.

      WHEN zif_mjs=>c_node_for.
        rs_val = eval_node_for( ir_node = ir_node io_env = io_env ).

      WHEN zif_mjs=>c_node_for_of.
        rs_val = eval_node_for_of( ir_node = ir_node io_env = io_env ).

      WHEN zif_mjs=>c_node_for_in.
        rs_val = eval_node_for_in( ir_node = ir_node io_env = io_env ).

      WHEN zif_mjs=>c_node_block.
        LOOP AT <n>-body INTO lr_stmt.
          rs_val = eval_node( ir_node = lr_stmt io_env = io_env ).
          IF io_env->returning = abap_true OR io_env->breaking = abap_true.
            EXIT.
          ENDIF.
        ENDLOOP.

      WHEN zif_mjs=>c_node_call.
        rs_val = eval_node_call( ir_node = ir_node io_env = io_env ).

      WHEN zif_mjs=>c_node_method_call.
        rs_val = eval_node_method_call( ir_node = ir_node io_env = io_env ).

      WHEN zif_mjs=>c_node_func_decl.
        rs_val = eval_node_func_decl( ir_node = ir_node io_env = io_env ).

      WHEN zif_mjs=>c_node_return.
        rs_val = eval_node( ir_node = <n>-left io_env = io_env ).
        io_env->returning = abap_true.
        io_env->ret_val   = rs_val.

      WHEN zif_mjs=>c_node_break.
        io_env->breaking = abap_true.
        rs_val = zcl_mjs_val=>undefined_val( ).

      WHEN zif_mjs=>c_node_continue.
        io_env->continuing = abap_true.
        rs_val = zcl_mjs_val=>undefined_val( ).

      WHEN zif_mjs=>c_node_throw.
        raise_throw( eval_node( ir_node = <n>-left io_env = io_env ) ).

      WHEN zif_mjs=>c_node_try.
        rs_val = eval_node_try( ir_node = ir_node io_env = io_env ).

      WHEN zif_mjs=>c_node_object.
        rs_val = eval_node_object( ir_node = ir_node io_env = io_env ).

      WHEN zif_mjs=>c_node_array.
        rs_val = eval_node_array( ir_node = ir_node io_env = io_env ).

      WHEN zif_mjs=>c_node_member_access.
        rs_val = eval_node_member_access( ir_node = ir_node io_env = io_env ).

      WHEN zif_mjs=>c_node_typeof.
        rs_val = eval_node_typeof( ir_node = ir_node io_env = io_env ).

      WHEN zif_mjs=>c_node_new.
        rs_val = eval_node_new( ir_node = ir_node io_env = io_env ).

      WHEN zif_mjs=>c_node_class.
        rs_val = eval_node_class( ir_node = ir_node io_env = io_env ).

      WHEN zif_mjs=>c_node_switch.
        rs_val = eval_node_switch( ir_node = ir_node io_env = io_env ).

      WHEN OTHERS.
        rs_val = zcl_mjs_val=>undefined_val( ).
    ENDCASE.
  ENDMETHOD.


  METHOD eval_node_binop.
    FIELD-SYMBOLS <n> TYPE zif_mjs=>ty_node.
    ASSIGN ir_node->* TO <n>.
    " Short-circuit operators: evaluate left only, return early if decided
    IF <n>-op = `&&`.
      DATA(ls_blsc) = eval_node( ir_node = <n>-left io_env = io_env ).
      IF zcl_mjs_val=>is_true( ls_blsc ) = abap_false.
        rs_val = ls_blsc.
      ELSE.
        rs_val = eval_node( ir_node = <n>-right io_env = io_env ).
      ENDIF.
      RETURN.
    ELSEIF <n>-op = `||`.
      DATA(ls_blor) = eval_node( ir_node = <n>-left io_env = io_env ).
      IF zcl_mjs_val=>is_true( ls_blor ) = abap_true.
        rs_val = ls_blor.
      ELSE.
        rs_val = eval_node( ir_node = <n>-right io_env = io_env ).
      ENDIF.
      RETURN.
    ELSEIF <n>-op = `??`.
      DATA(ls_blnc) = eval_node( ir_node = <n>-left io_env = io_env ).
      IF ls_blnc-type <> zif_mjs=>c_type_undefined AND ls_blnc-type <> zif_mjs=>c_type_null.
        rs_val = ls_blnc.
      ELSE.
        rs_val = eval_node( ir_node = <n>-right io_env = io_env ).
      ENDIF.
      RETURN.
    ENDIF.
    DATA(ls_bl) = eval_node( ir_node = <n>-left io_env = io_env ).
    DATA(ls_br) = eval_node( ir_node = <n>-right io_env = io_env ).
    rs_val = eval_bin_op( iv_op = <n>-op is_left = ls_bl is_right = ls_br io_env = io_env ).
  ENDMETHOD.

  METHOD eval_node_incdec.
    FIELD-SYMBOLS <n> TYPE zif_mjs=>ty_node.
    ASSIGN ir_node->* TO <n>.
    FIELD-SYMBOLS <ln_inc> TYPE zif_mjs=>ty_node.
    ASSIGN <n>-left->* TO <ln_inc>.
    " Only simple identifier increment supported for now
    IF sy-subrc = 0 AND <ln_inc>-kind = zif_mjs=>c_node_ident.
      DATA ls_v_inc TYPE zif_mjs=>ty_value.
      IF <ln_inc>-slot_ok = abap_true AND io_env->slot_map IS BOUND.
        READ TABLE io_env->slots INDEX <ln_inc>-slot INTO ls_v_inc.
      ELSE.
        ls_v_inc = io_env->get( <ln_inc>-str ).
      ENDIF.

      DATA ls_v_one TYPE zif_mjs=>ty_value.
      ls_v_one-type = zif_mjs=>c_type_number.
      ls_v_one-num  = 1.

      DATA lv_op_inc TYPE string.
      IF <n>-kind = zif_mjs=>c_node_inc OR <n>-kind = zif_mjs=>c_node_post_inc.
        lv_op_inc = `+`.
      ELSE.
        lv_op_inc = `-`.
      ENDIF.

      DATA(ls_v_new) = eval_bin_op( iv_op = lv_op_inc is_left = ls_v_inc is_right = ls_v_one io_env = io_env ).

      IF <ln_inc>-slot_ok = abap_true AND io_env->slot_map IS BOUND.
        io_env->set_slot( iv_slot = <ln_inc>-slot is_val = ls_v_new ).
      ELSE.
        io_env->set( iv_name = <ln_inc>-str is_val = ls_v_new ).
      ENDIF.

      IF <n>-kind = zif_mjs=>c_node_inc OR <n>-kind = zif_mjs=>c_node_dec.
        rs_val = ls_v_new.
      ELSE.
        rs_val = ls_v_inc.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD eval_node_assign.
    FIELD-SYMBOLS <n> TYPE zif_mjs=>ty_node.
    ASSIGN ir_node->* TO <n>.
    DATA(ls_aval) = eval_node( ir_node = <n>-right io_env = io_env ).
    DATA(ls_curr) = VALUE zif_mjs=>ty_value( ).
    IF <n>-kind = zif_mjs=>c_node_assign_add.
      IF <n>-slot_ok = abap_true AND io_env->slot_map IS BOUND.
        READ TABLE io_env->slots INDEX <n>-slot INTO ls_curr.
      ELSE.
        ls_curr = io_env->get( <n>-str ).
      ENDIF.
      ls_aval = eval_bin_op( iv_op = `+` is_left = ls_curr is_right = ls_aval io_env = io_env ).
    ENDIF.

    IF <n>-slot_ok = abap_true AND io_env->slot_map IS BOUND.
      io_env->set_slot( iv_slot = <n>-slot is_val = ls_aval ).
    ELSE.
      io_env->set( iv_name = <n>-str is_val = ls_aval ).
    ENDIF.
    rs_val = ls_aval.
  ENDMETHOD.

  METHOD eval_node_member_assign.
    FIELD-SYMBOLS <n> TYPE zif_mjs=>ty_node.
    ASSIGN ir_node->* TO <n>.
    DATA(ls_maobj) = eval_node( ir_node = <n>-object io_env = io_env ).
    DATA(ls_maval) = eval_node( ir_node = <n>-right io_env = io_env ).
    DATA lv_ma_atom TYPE i.
    IF <n>-prop_expr IS BOUND.
      " computed target obj[expr] = ... - intern the dynamic key
      lv_ma_atom = zcl_mjs_obj=>atom( zcl_mjs_val=>to_string( eval_node( ir_node = <n>-prop_expr io_env = io_env ) ) ).
    ELSE.
      " static target obj.name = ... - intern once, cache on the node
      IF <n>-property_atom = 0.
        <n>-property_atom = zcl_mjs_obj=>atom( <n>-property ).
      ENDIF.
      lv_ma_atom = <n>-property_atom.
    ENDIF.
    IF ls_maobj-type = zif_mjs=>c_type_object.
      ls_maobj-obj->set_a( iv_atom = lv_ma_atom is_val = ls_maval ).
    ELSEIF ls_maobj-type = zif_mjs=>c_type_function.
      IF ls_maobj-obj IS INITIAL.
        CREATE OBJECT ls_maobj-obj.
      ENDIF.
      ls_maobj-obj->set_a( iv_atom = lv_ma_atom is_val = ls_maval ).
      FIELD-SYMBOLS <maon> TYPE zif_mjs=>ty_node.
      ASSIGN <n>-object->* TO <maon>.
      IF sy-subrc = 0 AND <maon>-kind = zif_mjs=>c_node_ident.
        io_env->set( iv_name = <maon>-str is_val = ls_maobj ).
      ENDIF.
    ENDIF.
    rs_val = ls_maval.
  ENDMETHOD.

  METHOD eval_node_var.
    FIELD-SYMBOLS <n> TYPE zif_mjs=>ty_node.
    ASSIGN ir_node->* TO <n>.
    DATA ls_vval TYPE zif_mjs=>ty_value.
    IF <n>-right IS BOUND.
      ls_vval = eval_node( ir_node = <n>-right io_env = io_env ).
    ENDIF.
    IF <n>-slot_ok = abap_true AND io_env->slot_map IS BOUND.
      io_env->set_slot( iv_slot = <n>-slot is_val = ls_vval ).
    ELSE.
      io_env->define( iv_name = <n>-str is_val = ls_vval ).
    ENDIF.
    rs_val = ls_vval.
  ENDMETHOD.

  METHOD eval_node_for.
    FIELD-SYMBOLS <n> TYPE zif_mjs=>ty_node.
    ASSIGN ir_node->* TO <n>.
    DATA lo_for_env TYPE REF TO zcl_mjs_env.
    CREATE OBJECT lo_for_env
      EXPORTING io_parent = io_env.
    lo_for_env->output = io_env->output.
    IF <n>-init IS BOUND.
      eval_node( ir_node = <n>-init io_env = lo_for_env ).
    ENDIF.
    DO.
      IF lo_for_env->returning = abap_true OR lo_for_env->breaking = abap_true.
        EXIT.
      ENDIF.
      IF <n>-cond IS BOUND.
        DATA(ls_fcond) = eval_node( ir_node = <n>-cond io_env = lo_for_env ).
        IF zcl_mjs_val=>is_true( ls_fcond ) = abap_false.
          EXIT.
        ENDIF.
      ENDIF.
      LOOP AT <n>-body INTO DATA(lr_fb).
        eval_node( ir_node = lr_fb io_env = lo_for_env ).
        IF lo_for_env->returning = abap_true OR lo_for_env->breaking = abap_true
           OR lo_for_env->continuing = abap_true.
          EXIT.
        ENDIF.
      ENDLOOP.
      IF lo_for_env->continuing = abap_true.
        lo_for_env->continuing = abap_false.
      ENDIF.
      IF lo_for_env->returning = abap_true OR lo_for_env->breaking = abap_true.
        EXIT.
      ENDIF.
      IF <n>-update IS BOUND.
        eval_node( ir_node = <n>-update io_env = lo_for_env ).
      ENDIF.
    ENDDO.
    IF lo_for_env->returning = abap_true.
      io_env->returning = abap_true.
      io_env->ret_val   = lo_for_env->ret_val.
    ENDIF.
  ENDMETHOD.

  METHOD eval_node_for_of.
    FIELD-SYMBOLS <n> TYPE zif_mjs=>ty_node.
    ASSIGN ir_node->* TO <n>.
    DATA(ls_iter) = eval_node( ir_node = <n>-right io_env = io_env ).
    FIELD-SYMBOLS <nf_of> TYPE zif_mjs=>ty_node.
    ASSIGN <n>-left->* TO <nf_of>.
    DATA lv_of_name TYPE string.
    DATA lv_of_decl TYPE abap_bool.
    DATA lv_of_pattern TYPE abap_bool.
    IF <nf_of>-kind = zif_mjs=>c_node_var. " it was let/const/var x
      lv_of_name = <nf_of>-str.
      lv_of_decl = abap_true.
    ELSEIF <nf_of>-kind = zif_mjs=>c_node_ident. " it was x
      lv_of_name = <nf_of>-str.
      lv_of_decl = abap_false.
    ELSEIF <nf_of>-kind = zif_mjs=>c_node_object AND <nf_of>-op = `D`. " it was let/const {a, b}
      lv_of_pattern = abap_true.
      lv_of_decl = abap_true.
    ENDIF.

    DATA lv_iter_return TYPE abap_bool VALUE abap_false.
    DATA lo_iter_env TYPE REF TO zcl_mjs_env.

    IF ls_iter-type = zif_mjs=>c_type_array AND ls_iter-arr IS BOUND.
      LOOP AT ls_iter-arr->items INTO DATA(lr_item).
        DATA(ls_item_val) = zcl_mjs_val=>unbox_value( lr_item ).
        CREATE OBJECT lo_iter_env EXPORTING io_parent = io_env.
        lo_iter_env->output = io_env->output.

        IF lv_of_pattern = abap_true.
          bind_for_target( ir_left = <n>-left is_item = ls_item_val io_env = lo_iter_env ).
        ELSEIF lv_of_decl = abap_true.
          lo_iter_env->set( iv_name = lv_of_name is_val = ls_item_val ).
        ELSE.
          io_env->set( iv_name = lv_of_name is_val = ls_item_val ).
        ENDIF.

        LOOP AT <n>-body INTO DATA(lr_ofb).
          eval_node( ir_node = lr_ofb io_env = lo_iter_env ).
          IF lo_iter_env->returning = abap_true OR lo_iter_env->breaking = abap_true OR lo_iter_env->continuing = abap_true.
            EXIT.
          ENDIF.
        ENDLOOP.

        IF lo_iter_env->continuing = abap_true.
          lo_iter_env->continuing = abap_false.
        ENDIF.
        IF lo_iter_env->returning = abap_true OR lo_iter_env->breaking = abap_true.
          lv_iter_return = lo_iter_env->returning.
          EXIT.
        ENDIF.
      ENDLOOP.

    ELSEIF ls_iter-type = zif_mjs=>c_type_object AND ls_iter-obj IS BOUND AND ls_iter-obj->has( `[[SetData]]` ).
      " Mock for Map/Set iteration
      DATA(ls_iter_data_val) = ls_iter-obj->get( `[[SetData]]` ).
      IF ls_iter_data_val-type = zif_mjs=>c_type_array AND ls_iter_data_val-arr IS BOUND.
        LOOP AT ls_iter_data_val-arr->items INTO DATA(lr_mi_item).
          DATA(ls_mi_item_val) = zcl_mjs_val=>unbox_value( lr_mi_item ).
          CREATE OBJECT lo_iter_env EXPORTING io_parent = io_env.
          lo_iter_env->output = io_env->output.
          IF lv_of_pattern = abap_true.
            bind_for_target( ir_left = <n>-left is_item = ls_mi_item_val io_env = lo_iter_env ).
          ELSEIF lv_of_decl = abap_true.
            lo_iter_env->set( iv_name = lv_of_name is_val = ls_mi_item_val ).
          ELSE.
            io_env->set( iv_name = lv_of_name is_val = ls_mi_item_val ).
          ENDIF.
          LOOP AT <n>-body INTO DATA(lr_mi_ofb).
            eval_node( ir_node = lr_mi_ofb io_env = lo_iter_env ).
            IF lo_iter_env->returning = abap_true OR lo_iter_env->breaking = abap_true OR lo_iter_env->continuing = abap_true.
              EXIT.
            ENDIF.
          ENDLOOP.
          IF lo_iter_env->continuing = abap_true.
            lo_iter_env->continuing = abap_false.
          ENDIF.
          IF lo_iter_env->returning = abap_true OR lo_iter_env->breaking = abap_true.
            lv_iter_return = lo_iter_env->returning.
            EXIT.
          ENDIF.
        ENDLOOP.
      ENDIF.

    ELSEIF ls_iter-type = zif_mjs=>c_type_string.
      DATA(lv_slen) = strlen( ls_iter-str ).
      DATA lv_si TYPE i VALUE 0.
      WHILE lv_si < lv_slen.
        DATA(lv_sch) = ls_iter-str+lv_si(1).
        lv_si = lv_si + 1.
        DATA(ls_sch_val) = zcl_mjs_val=>string_val( lv_sch ).

        CREATE OBJECT lo_iter_env EXPORTING io_parent = io_env.
        lo_iter_env->output = io_env->output.

        IF lv_of_pattern = abap_true.
          bind_for_target( ir_left = <n>-left is_item = ls_sch_val io_env = lo_iter_env ).
        ELSEIF lv_of_decl = abap_true.
          lo_iter_env->set( iv_name = lv_of_name is_val = ls_sch_val ).
        ELSE.
          io_env->set( iv_name = lv_of_name is_val = ls_sch_val ).
        ENDIF.

        LOOP AT <n>-body INTO DATA(lr_ofbs).
          eval_node( ir_node = lr_ofbs io_env = lo_iter_env ).
          IF lo_iter_env->returning = abap_true OR lo_iter_env->breaking = abap_true OR lo_iter_env->continuing = abap_true.
            EXIT.
          ENDIF.
        ENDLOOP.

        IF lo_iter_env->continuing = abap_true.
          lo_iter_env->continuing = abap_false.
        ENDIF.
        IF lo_iter_env->returning = abap_true OR lo_iter_env->breaking = abap_true.
          lv_iter_return = lo_iter_env->returning.
          EXIT.
        ENDIF.
      ENDWHILE.
    ELSE.
      RAISE EXCEPTION TYPE zcx_mjs_runtime EXPORTING iv_error = |TypeError: is not iterable|.
    ENDIF.

    IF lv_iter_return = abap_true.
      io_env->returning = abap_true.
      io_env->ret_val = lo_iter_env->ret_val.
    ENDIF.
  ENDMETHOD.

  METHOD bind_for_target.
    " Destructure the current iteration item into the loop scope.
    " The pattern node reuses c_node_object with op = 'D'; args are stored as
    " (source-key string node, target ident node) pairs.
    FIELD-SYMBOLS <pat> TYPE zif_mjs=>ty_node.
    ASSIGN ir_left->* TO <pat>.
    DATA lv_bi TYPE i VALUE 1.
    WHILE lv_bi <= lines( <pat>-args ).
      READ TABLE <pat>-args INDEX lv_bi INTO DATA(lr_bsrc).
      FIELD-SYMBOLS <bsrc> TYPE zif_mjs=>ty_node.
      ASSIGN lr_bsrc->* TO <bsrc>.
      READ TABLE <pat>-args INDEX lv_bi + 1 INTO DATA(lr_btgt).
      FIELD-SYMBOLS <btgt> TYPE zif_mjs=>ty_node.
      ASSIGN lr_btgt->* TO <btgt>.
      DATA(ls_bval) = eval_property_access( is_obj = is_item iv_prop = <bsrc>-str io_env = io_env ).
      io_env->define( iv_name = <btgt>-str is_val = ls_bval ).
      lv_bi = lv_bi + 2.
    ENDWHILE.
  ENDMETHOD.

  METHOD eval_node_for_in.
    FIELD-SYMBOLS <n> TYPE zif_mjs=>ty_node.
    ASSIGN ir_node->* TO <n>.
    DATA(ls_iter_in) = eval_node( ir_node = <n>-right io_env = io_env ).
    FIELD-SYMBOLS <nf_in> TYPE zif_mjs=>ty_node.
    ASSIGN <n>-left->* TO <nf_in>.
    DATA lv_in_name TYPE string.
    DATA lv_in_decl TYPE abap_bool.
    IF <nf_in>-kind = zif_mjs=>c_node_var.
      lv_in_name = <nf_in>-str.
      lv_in_decl = abap_true.
    ELSEIF <nf_in>-kind = zif_mjs=>c_node_ident.
      lv_in_name = <nf_in>-str.
      lv_in_decl = abap_false.
    ENDIF.

    DATA lv_in_return TYPE abap_bool VALUE abap_false.
    DATA lo_in_env TYPE REF TO zcl_mjs_env.

    IF ls_iter_in-type = zif_mjs=>c_type_object AND ls_iter_in-obj IS BOUND.
      DATA(lt_forin_entries) = ls_iter_in-obj->entries( ).
      LOOP AT lt_forin_entries INTO DATA(ls_prop).
        DATA(ls_key_val) = zcl_mjs_val=>string_val( zcl_mjs_obj=>atom_name( ls_prop-key ) ).
        CREATE OBJECT lo_in_env EXPORTING io_parent = io_env.
        lo_in_env->output = io_env->output.

        IF lv_in_decl = abap_true.
          lo_in_env->set( iv_name = lv_in_name is_val = ls_key_val ).
        ELSE.
          io_env->set( iv_name = lv_in_name is_val = ls_key_val ).
        ENDIF.

        LOOP AT <n>-body INTO DATA(lr_inb).
          eval_node( ir_node = lr_inb io_env = lo_in_env ).
          IF lo_in_env->returning = abap_true OR lo_in_env->breaking = abap_true OR lo_in_env->continuing = abap_true.
            EXIT.
          ENDIF.
        ENDLOOP.

        IF lo_in_env->continuing = abap_true.
          lo_in_env->continuing = abap_false.
        ENDIF.

        IF lo_in_env->returning = abap_true OR lo_in_env->breaking = abap_true.
          lv_in_return = lo_in_env->returning.
          EXIT.
        ENDIF.
      ENDLOOP.
    ENDIF.

    IF lv_in_return = abap_true.
      io_env->returning = abap_true.
      io_env->ret_val = lo_in_env->ret_val.
    ENDIF.
  ENDMETHOD.

  METHOD eval_node_call.
    FIELD-SYMBOLS <n> TYPE zif_mjs=>ty_node.
    ASSIGN ir_node->* TO <n>.
    DATA lt_call_args TYPE zif_mjs=>tt_value_slots.
    LOOP AT <n>-args INTO DATA(lr_ca_item).
      DATA(ls_ca_val) = eval_node( ir_node = lr_ca_item io_env = io_env ).
      FIELD-SYMBOLS <ca_node> TYPE zif_mjs=>ty_node.
      ASSIGN lr_ca_item->* TO <ca_node>.
      IF sy-subrc = 0 AND <ca_node>-op = `SPREAD` AND ls_ca_val-type = zif_mjs=>c_type_array AND ls_ca_val-arr IS BOUND.
        LOOP AT ls_ca_val-arr->items INTO DATA(lr_spread_ca).
          APPEND zcl_mjs_val=>unbox_value( lr_spread_ca ) TO lt_call_args.
        ENDLOOP.
      ELSE.
        APPEND ls_ca_val TO lt_call_args.
      ENDIF.
    ENDLOOP.

    IF <n>-str = `Boolean`.
      rs_val = zcl_mjs_builtins=>boolean_from_args( lt_call_args ).
      RETURN.
    ENDIF.
    IF <n>-str = `RegExp`.
      rs_val = zcl_mjs_builtins=>regexp_from_args( lt_call_args ).
      RETURN.
    ENDIF.
    IF <n>-str = `JSON.stringify`.
      rs_val = zcl_mjs_builtins=>json_stringify( lt_call_args ).
      RETURN.
    ENDIF.
    IF <n>-str = `console.log`.
      rs_val = zcl_mjs_builtins=>console_log( it_args = lt_call_args io_env = io_env ).
      RETURN.
    ENDIF.
    IF <n>-str = `super`.
      DATA(ls_super_ctor_fn) = io_env->get( `__super_ctor__` ).
      IF ls_super_ctor_fn-type = zif_mjs=>c_type_function AND ls_super_ctor_fn-fn IS BOUND.
        " super ctor mutates the shared object reference — no writeback needed
        call_function( ir_fn = ls_super_ctor_fn-fn it_args = lt_call_args
                       io_env = io_env is_this = io_env->get_this( ) ).
      ENDIF.
      RETURN.
    ENDIF.
    " Expression call: callee is a sub-expression (e.g. IIFE, returned function)
    IF <n>-left IS BOUND.
      DATA ls_efn TYPE zif_mjs=>ty_value.
      ls_efn = eval_node( ir_node = <n>-left io_env = io_env ).
      IF <n>-op = `?.` AND ( ls_efn-type = zif_mjs=>c_type_undefined OR ls_efn-type = zif_mjs=>c_type_null ).
        rs_val = zcl_mjs_val=>undefined_val( ).
        RETURN.
      ENDIF.
      IF ls_efn-type = zif_mjs=>c_type_function AND ls_efn-fn IS BOUND.
        " Handle first-class calls from expressions (e.g. __defProp())
        FIELD-SYMBOLS <efn_intercept> TYPE zif_mjs=>ty_function.
        ASSIGN ls_efn-fn->* TO <efn_intercept>.
        IF sy-subrc = 0 AND <efn_intercept>-name = `defineProperty`.
          DATA(ls_ef_dp_res) = zcl_mjs_builtins=>define_property( lt_call_args ).
          IF ls_ef_dp_res-type = zif_mjs=>c_type_object.
            rs_val = ls_ef_dp_res.
            RETURN.
          ENDIF.
        ENDIF.

        rs_val = call_function( ir_fn = ls_efn-fn it_args = lt_call_args io_env = io_env ).
      ELSEIF <n>-op = `?.`.
        rs_val = zcl_mjs_val=>undefined_val( ).
      ELSE.
        rs_val = zcl_mjs_val=>undefined_val( ).
      ENDIF.
      RETURN.
    ENDIF.
    DATA(ls_fn) = io_env->get( <n>-str ).
    IF ls_fn-type = zif_mjs=>c_type_function AND ls_fn-fn IS BOUND.
      " Intercept Object.defineProperty called as a first-class function
      FIELD-SYMBOLS <fn_intercept> TYPE zif_mjs=>ty_function.
      ASSIGN ls_fn-fn->* TO <fn_intercept>.
      IF sy-subrc = 0 AND <fn_intercept>-name = `defineProperty`.
        DATA(ls_f_dp_res) = zcl_mjs_builtins=>define_property( lt_call_args ).
        IF ls_f_dp_res-type = zif_mjs=>c_type_object.
          rs_val = ls_f_dp_res.
          RETURN.
        ENDIF.
      ENDIF.

      rs_val = call_function( ir_fn = ls_fn-fn it_args = lt_call_args io_env = io_env ).
    ENDIF.
  ENDMETHOD.

  METHOD classify_builtin.
    " Runs once per node; the caller caches the result on ty_node-builtin.
    rv_kind = zif_mjs=>c_builtin_none.
    IF ir_object IS NOT BOUND.
      RETURN.
    ENDIF.
    FIELD-SYMBOLS <oi> TYPE zif_mjs=>ty_node.
    ASSIGN ir_object->* TO <oi>.
    IF sy-subrc <> 0 OR <oi>-kind <> zif_mjs=>c_node_ident.
      RETURN.
    ENDIF.
    CASE <oi>-str.
      WHEN `Object`.
        IF iv_property = `keys`.
          rv_kind = zif_mjs=>c_builtin_object_keys.
        ELSEIF iv_property = `defineProperty`.
          rv_kind = zif_mjs=>c_builtin_object_defprop.
        ENDIF.
      WHEN `Date`.
        IF iv_property = `now`.
          rv_kind = zif_mjs=>c_builtin_date_now.
        ENDIF.
      WHEN `super`.
        rv_kind = zif_mjs=>c_builtin_super.
    ENDCASE.
  ENDMETHOD.

  METHOD eval_node_method_call.
    FIELD-SYMBOLS <n> TYPE zif_mjs=>ty_node.
    ASSIGN ir_node->* TO <n>.

    " Classify static-builtin interception once and cache it on the node, so
    " every subsequent call pays a single integer compare instead of the
    " Date/Object/super string-compare gauntlet.
    IF <n>-builtin = zif_mjs=>c_builtin_unresolved.
      <n>-builtin = classify_builtin( ir_object = <n>-object iv_property = <n>-property ).
    ENDIF.

    DATA ls_mcobj TYPE zif_mjs=>ty_value.

    CASE <n>-builtin.
      WHEN zif_mjs=>c_builtin_date_now.
        rs_val = zcl_mjs_builtins=>date_now( ).
        RETURN.

      WHEN zif_mjs=>c_builtin_object_keys.
        DATA ls_ok_in TYPE zif_mjs=>ty_value.
        IF lines( <n>-args ) > 0.
          ls_ok_in = eval_node( ir_node = <n>-args[ 1 ] io_env = io_env ).
        ENDIF.
        rs_val = zcl_mjs_builtins=>object_keys( ls_ok_in ).
        RETURN.

      WHEN zif_mjs=>c_builtin_object_defprop.
        rs_val = zcl_mjs_val=>undefined_val( ).
        IF lines( <n>-args ) >= 3.
          DATA lt_dp_args TYPE zif_mjs=>tt_value_slots.
          APPEND eval_node( ir_node = <n>-args[ 1 ] io_env = io_env ) TO lt_dp_args.
          APPEND eval_node( ir_node = <n>-args[ 2 ] io_env = io_env ) TO lt_dp_args.
          APPEND eval_node( ir_node = <n>-args[ 3 ] io_env = io_env ) TO lt_dp_args.
          DATA(ls_dp_res) = zcl_mjs_builtins=>define_property( lt_dp_args ).
          IF ls_dp_res-type = zif_mjs=>c_type_object.
            rs_val = ls_dp_res.
          ENDIF.
        ENDIF.
        RETURN.

      WHEN zif_mjs=>c_builtin_super.
        ls_mcobj = io_env->get( `__super_proto__` ).
        IF ls_mcobj-type = zif_mjs=>c_type_object AND ls_mcobj-obj IS BOUND.
          DATA(ls_smval) = eval_property_access( is_obj = ls_mcobj iv_prop = <n>-property io_env = io_env ).
          IF ls_smval-type = zif_mjs=>c_type_function AND ls_smval-fn IS BOUND.
            DATA lt_s_args TYPE zif_mjs=>tt_value_slots.
            LOOP AT <n>-args INTO DATA(lr_sa).
              DATA(ls_sa_v) = eval_node( ir_node = lr_sa io_env = io_env ).
              FIELD-SYMBOLS <sa_n> TYPE zif_mjs=>ty_node.
              ASSIGN lr_sa->* TO <sa_n>.
              IF sy-subrc = 0 AND <sa_n>-op = `SPREAD` AND ls_sa_v-type = zif_mjs=>c_type_array AND ls_sa_v-arr IS BOUND.
                LOOP AT ls_sa_v-arr->items INTO DATA(lr_spread_sa).
                  APPEND zcl_mjs_val=>unbox_value( lr_spread_sa ) TO lt_s_args.
                ENDLOOP.
              ELSE.
                APPEND ls_sa_v TO lt_s_args.
              ENDIF.
            ENDLOOP.
            rs_val = call_function( ir_fn = ls_smval-fn it_args = lt_s_args io_env = io_env
                                    is_this = io_env->get_this( ) ).
            RETURN.
          ENDIF.
        ENDIF.
        " super method not resolvable to a function: fall through with
        " ls_mcobj = the super prototype (matches the pre-refactor behavior)

      WHEN OTHERS.
        ls_mcobj = eval_node( ir_node = <n>-object io_env = io_env ).
    ENDCASE.

    IF <n>-op = `?.` AND ( ls_mcobj-type = zif_mjs=>c_type_undefined OR ls_mcobj-type = zif_mjs=>c_type_null ).
      rs_val = zcl_mjs_val=>undefined_val( ).
      RETURN.
    ENDIF.
    DATA lv_method TYPE string.
    lv_method = <n>-property.
    " intern the method name once, cache it on the node
    IF <n>-property_atom = 0.
      <n>-property_atom = zcl_mjs_obj=>atom( <n>-property ).
    ENDIF.

    DATA lt_mc_args TYPE zif_mjs=>tt_value_slots.
    LOOP AT <n>-args INTO DATA(lr_ma2).
      DATA(ls_mc_arg) = eval_node( ir_node = lr_ma2 io_env = io_env ).
      FIELD-SYMBOLS <mc_arg_node> TYPE zif_mjs=>ty_node.
      ASSIGN lr_ma2->* TO <mc_arg_node>.
      IF sy-subrc = 0 AND <mc_arg_node>-op = `SPREAD` AND ls_mc_arg-type = zif_mjs=>c_type_array AND ls_mc_arg-arr IS BOUND.
        LOOP AT ls_mc_arg-arr->items INTO DATA(lr_spread_mc).
          APPEND zcl_mjs_val=>unbox_value( lr_spread_mc ) TO lt_mc_args.
        ENDLOOP.
      ELSE.
        APPEND ls_mc_arg TO lt_mc_args.
      ENDIF.
    ENDLOOP.

    rs_val = eval_method_call(
      is_obj    = ls_mcobj
      iv_method = lv_method
      iv_atom   = <n>-property_atom
      it_args   = lt_mc_args
      io_env    = io_env ).
    RETURN.
  ENDMETHOD.

  METHOD eval_node_func_decl.
    FIELD-SYMBOLS <n> TYPE zif_mjs=>ty_node.
    ASSIGN ir_node->* TO <n>.
    DATA lr_fn_data TYPE REF TO data.
    CREATE DATA lr_fn_data TYPE zif_mjs=>ty_function.
    FIELD-SYMBOLS <fn_data> TYPE zif_mjs=>ty_function.
    ASSIGN lr_fn_data->* TO <fn_data>.
    <fn_data>-name           = <n>-str.
    <fn_data>-params         = <n>-params.
    <fn_data>-default_params = <n>-default_params.
    <fn_data>-body           = <n>-body.
    <fn_data>-body_lazy      = <n>-body_lazy.
    <fn_data>-body_pos       = <n>-body_pos.
    <fn_data>-body_tokens    = <n>-body_tokens.
    <fn_data>-closure = io_env.
    DATA ls_fnval TYPE zif_mjs=>ty_value.
    ls_fnval-type = zif_mjs=>c_type_function.
    ls_fnval-fn   = lr_fn_data.
    " Function expressions (op='E') must NOT register their name in the enclosing scope
    IF <n>-str IS NOT INITIAL AND <n>-op <> 'E'.
      IF <n>-slot_ok = abap_true AND io_env->slot_map IS BOUND.
        io_env->set_slot( iv_slot = <n>-slot is_val = ls_fnval ).
      ELSE.
        io_env->define( iv_name = <n>-str is_val = ls_fnval ).
      ENDIF.
    ENDIF.
    rs_val = ls_fnval.
  ENDMETHOD.

  METHOD eval_node_try.
    FIELD-SYMBOLS <n> TYPE zif_mjs=>ty_node.
    ASSIGN ir_node->* TO <n>.
    DATA lx_rethrow TYPE REF TO zcx_mjs_throw.
    TRY.
        LOOP AT <n>-body INTO DATA(lr_try_stmt).
          rs_val = eval_node( ir_node = lr_try_stmt io_env = io_env ).
          IF io_env->returning = abap_true OR io_env->breaking = abap_true.
            EXIT.
          ENDIF.
        ENDLOOP.
      CATCH zcx_mjs_throw INTO DATA(lx_caught).
        IF <n>-op CS `C`.
          DATA lo_catch_env TYPE REF TO zcl_mjs_env.
          CREATE OBJECT lo_catch_env EXPORTING io_parent = io_env.
          IF <n>-str IS NOT INITIAL.
            lo_catch_env->define( iv_name = <n>-str is_val = lx_caught->val ).
          ENDIF.
          LOOP AT <n>-els INTO DATA(lr_catch_stmt).
            rs_val = eval_node( ir_node = lr_catch_stmt io_env = lo_catch_env ).
            IF lo_catch_env->returning = abap_true OR lo_catch_env->breaking = abap_true.
              EXIT.
            ENDIF.
          ENDLOOP.
          IF lo_catch_env->returning = abap_true.
            io_env->returning = abap_true.
            io_env->ret_val   = lo_catch_env->ret_val.
          ENDIF.
        " propagate var-declared names from catch scope to outer scope
          LOOP AT lo_catch_env->vars ASSIGNING FIELD-SYMBOL(<cv>).
            IF <cv>-name <> <n>-str.
              io_env->define( iv_name = <cv>-name is_val = <cv>-val ).
            ENDIF.
          ENDLOOP.
        ELSE.
          lx_rethrow = lx_caught.
        ENDIF.
    ENDTRY.
    " execute finally block (always)
    IF <n>-op CS `F`.
      LOOP AT <n>-args INTO DATA(lr_fin_stmt).
        rs_val = eval_node( ir_node = lr_fin_stmt io_env = io_env ).
        IF io_env->returning = abap_true OR io_env->breaking = abap_true.
          EXIT.
        ENDIF.
      ENDLOOP.
    ENDIF.
    " rethrow if try-finally without catch
    IF lx_rethrow IS BOUND.
      RAISE EXCEPTION lx_rethrow.
    ENDIF.
  ENDMETHOD.

  METHOD eval_node_object.
    FIELD-SYMBOLS <n> TYPE zif_mjs=>ty_node.
    ASSIGN ir_node->* TO <n>.
    IF <n>-op = `D`. " Destructuring assignment pattern
      DATA(ls_rhs) = eval_node( ir_node = <n>-right io_env = io_env ).
      DATA lv_di TYPE i VALUE 1.
      WHILE lv_di <= lines( <n>-args ).
        DATA lr_dsource TYPE REF TO data.
        READ TABLE <n>-args INDEX lv_di INTO lr_dsource.
        FIELD-SYMBOLS <dsource> TYPE zif_mjs=>ty_node.
        ASSIGN lr_dsource->* TO <dsource>.
        DATA(lv_ds_key) = <dsource>-str.
        DATA lr_dtarget TYPE REF TO data.
        READ TABLE <n>-args INDEX lv_di + 1 INTO lr_dtarget.
        FIELD-SYMBOLS <dtarget> TYPE zif_mjs=>ty_node.
        ASSIGN lr_dtarget->* TO <dtarget>.
        DATA(ls_dval) = eval_property_access( is_obj = ls_rhs iv_prop = lv_ds_key io_env = io_env ).
        io_env->define( iv_name = <dtarget>-str is_val = ls_dval ).
        lv_di = lv_di + 2.
      ENDWHILE.
      rs_val = ls_rhs.
      RETURN.
    ENDIF.
    DATA ls_obj TYPE zif_mjs=>ty_value.
    ls_obj = zcl_mjs_val=>object_val( ).
    DATA(ls_obj_bt) = io_env->get( `Object` ).
    IF ls_obj_bt-type = zif_mjs=>c_type_object AND ls_obj_bt-obj IS BOUND.
      ls_obj-obj->proto = ls_obj_bt-obj.
    ENDIF.
    DATA lv_oi TYPE i VALUE 1.
    WHILE lv_oi <= lines( <n>-args ).
      DATA lr_okey TYPE REF TO data.
      READ TABLE <n>-args INDEX lv_oi INTO lr_okey.
      FIELD-SYMBOLS <okey> TYPE zif_mjs=>ty_node.
      ASSIGN lr_okey->* TO <okey>.
      DATA(lv_okey_str) = <okey>-str.
      DATA lr_oval TYPE REF TO data.
      READ TABLE <n>-args INDEX lv_oi + 1 INTO lr_oval.
      DATA(ls_oval) = eval_node( ir_node = lr_oval io_env = io_env ).
      ls_obj-obj->set( iv_key = lv_okey_str is_val = ls_oval ).
      lv_oi = lv_oi + 2.
    ENDWHILE.
    rs_val = ls_obj.
  ENDMETHOD.

  METHOD eval_node_array.
    FIELD-SYMBOLS <n> TYPE zif_mjs=>ty_node.
    ASSIGN ir_node->* TO <n>.
    DATA lt_arr_refs TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY.
    CLEAR lt_arr_refs.
    LOOP AT <n>-args INTO DATA(lr_ae).
      DATA(lr_ae_val) = eval_node( ir_node = lr_ae io_env = io_env ).
      FIELD-SYMBOLS <ae_node> TYPE zif_mjs=>ty_node.
      ASSIGN lr_ae->* TO <ae_node>.
      IF sy-subrc = 0 AND <ae_node>-op = `SPREAD` AND lr_ae_val-type = zif_mjs=>c_type_array AND lr_ae_val-arr IS BOUND.
        LOOP AT lr_ae_val-arr->items INTO DATA(lr_spread_item).
          APPEND lr_spread_item TO lt_arr_refs.
        ENDLOOP.
      ELSE.
        APPEND zcl_mjs_val=>box_value( lr_ae_val ) TO lt_arr_refs.
      ENDIF.
    ENDLOOP.
    rs_val = zcl_mjs_val=>array_val( lt_arr_refs ).
  ENDMETHOD.

  METHOD eval_node_member_access.
    FIELD-SYMBOLS <n> TYPE zif_mjs=>ty_node.
    ASSIGN ir_node->* TO <n>.

    " Classify static-builtin interception once and cache it on the node.
    IF <n>-builtin = zif_mjs=>c_builtin_unresolved.
      <n>-builtin = classify_builtin( ir_object = <n>-object iv_property = <n>-property ).
    ENDIF.

    " Object.keys / Object.defineProperty referenced as first-class values
    " (e.g. var f = Object.defineProperty).
    IF <n>-builtin = zif_mjs=>c_builtin_object_keys
        OR <n>-builtin = zif_mjs=>c_builtin_object_defprop.
      DATA lr_obj_mafn TYPE REF TO data.
      CREATE DATA lr_obj_mafn TYPE zif_mjs=>ty_function.
      FIELD-SYMBOLS <obj_mafn> TYPE zif_mjs=>ty_function.
      ASSIGN lr_obj_mafn->* TO <obj_mafn>.
      <obj_mafn>-name = <n>-property.
      <obj_mafn>-compiled = abap_true. " Built-in, no compilation needed
      DATA ls_obj_mafnval TYPE zif_mjs=>ty_value.
      ls_obj_mafnval-type = zif_mjs=>c_type_function.
      ls_obj_mafnval-fn   = lr_obj_mafn.
      rs_val = ls_obj_mafnval.
      RETURN.
    ENDIF.
    DATA(ls_paobj) = eval_node( ir_node = <n>-object io_env = io_env ).
    IF <n>-op = `?.` AND ( ls_paobj-type = zif_mjs=>c_type_undefined OR ls_paobj-type = zif_mjs=>c_type_null ).
      rs_val = zcl_mjs_val=>undefined_val( ).
    ELSEIF <n>-prop_expr IS BOUND.
      " computed access obj[expr] - key is dynamic, use the string API
      DATA lv_paprop TYPE string.
      lv_paprop = zcl_mjs_val=>to_string( eval_node( ir_node = <n>-prop_expr io_env = io_env ) ).
      rs_val = eval_property_access( is_obj = ls_paobj iv_prop = lv_paprop io_env = io_env ).
    ELSE.
      " static access obj.name - intern the atom once, cache it on the node
      IF <n>-property_atom = 0.
        <n>-property_atom = zcl_mjs_obj=>atom( <n>-property ).
      ENDIF.
      rs_val = eval_property_access( is_obj = ls_paobj iv_prop = <n>-property
                                     iv_atom = <n>-property_atom io_env = io_env ).
    ENDIF.
  ENDMETHOD.

  METHOD eval_node_typeof.
    FIELD-SYMBOLS <n> TYPE zif_mjs=>ty_node.
    ASSIGN ir_node->* TO <n>.
    DATA ls_toval TYPE zif_mjs=>ty_value.
    ls_toval = zcl_mjs_val=>undefined_val( ).
    " Per spec: typeof on an unresolvable simple identifier returns "undefined".
    " All other expressions evaluate normally (exceptions propagate).
    FIELD-SYMBOLS <to_n> TYPE zif_mjs=>ty_node.
    IF <n>-left IS BOUND.
      ASSIGN <n>-left->* TO <to_n>.
      IF sy-subrc = 0 AND <to_n>-kind = zif_mjs=>c_node_ident
          AND <to_n>-slot_ok = abap_false
          AND <to_n>-str <> `this`
          AND io_env->has( <to_n>-str ) = abap_false.
        rs_val = zcl_mjs_val=>string_val( `undefined` ).
        RETURN.
      ENDIF.
    ENDIF.
    ls_toval = eval_node( ir_node = <n>-left io_env = io_env ).
    CASE ls_toval-type.
      WHEN zif_mjs=>c_type_undefined.
        rs_val = zcl_mjs_val=>string_val( `undefined` ).
      WHEN zif_mjs=>c_type_number.
        rs_val = zcl_mjs_val=>string_val( `number` ).
      WHEN zif_mjs=>c_type_string.
        rs_val = zcl_mjs_val=>string_val( `string` ).
      WHEN zif_mjs=>c_type_bool.
        rs_val = zcl_mjs_val=>string_val( `boolean` ).
      WHEN zif_mjs=>c_type_function.
        rs_val = zcl_mjs_val=>string_val( `function` ).
      WHEN zif_mjs=>c_type_object.
        IF ls_toval-obj->has( `__is_class__` ) = abap_true.
          rs_val = zcl_mjs_val=>string_val( `function` ).
        ELSE.
          rs_val = zcl_mjs_val=>string_val( `object` ).
        ENDIF.
      WHEN OTHERS.
        rs_val = zcl_mjs_val=>string_val( `object` ).
    ENDCASE.
  ENDMETHOD.

  METHOD eval_node_new.
    FIELD-SYMBOLS <n> TYPE zif_mjs=>ty_node.
    ASSIGN ir_node->* TO <n>.
    DATA lv_cls_name TYPE string.
    DATA ls_cls      TYPE zif_mjs=>ty_value.
    IF <n>-str IS NOT INITIAL.
      lv_cls_name = <n>-str.
    ENDIF.
    IF <n>-left IS BOUND.
      DATA(ls_cls_expr) = eval_node( ir_node = <n>-left io_env = io_env ).
      IF ls_cls_expr-type = zif_mjs=>c_type_object AND ls_cls_expr-obj IS BOUND.
        ls_cls = ls_cls_expr.
      ELSEIF ls_cls_expr-type = zif_mjs=>c_type_function AND ls_cls_expr-fn IS BOUND.
        ls_cls = ls_cls_expr.
      ENDIF.
    ENDIF.

    IF ls_cls-type IS INITIAL AND lv_cls_name IS NOT INITIAL.
      IF lv_cls_name = `RegExp`.
        DATA lt_regex_args TYPE zif_mjs=>tt_value_slots.
        LOOP AT <n>-args INTO DATA(lr_ra).
          APPEND eval_node( ir_node = lr_ra io_env = io_env ) TO lt_regex_args.
        ENDLOOP.
        rs_val = zcl_mjs_builtins=>regexp_from_args( lt_regex_args ).
        RETURN.
      ELSEIF lv_cls_name = `Set`.
        DATA ls_set_init TYPE zif_mjs=>ty_value.
        IF lines( <n>-args ) >= 1.
          ls_set_init = eval_node( ir_node = <n>-args[ 1 ] io_env = io_env ).
        ENDIF.
        rs_val = zcl_mjs_builtins=>new_set( ls_set_init ).
        RETURN.
      ENDIF.
      ls_cls = io_env->get( lv_cls_name ).
    ENDIF.

    IF ls_cls-type = zif_mjs=>c_type_object AND ls_cls-obj IS BOUND.
      DATA ls_instance TYPE zif_mjs=>ty_value.
      ls_instance = zcl_mjs_val=>object_val( ).
      ls_instance-obj->proto = ls_cls-obj.
      DATA lt_new_args TYPE zif_mjs=>tt_value_slots.
      LOOP AT <n>-args INTO DATA(lr_na).
        APPEND eval_node( ir_node = lr_na io_env = io_env ) TO lt_new_args.
      ENDLOOP.
      DATA(ls_ctor_val) = ls_cls-obj->get( `constructor` ).
      IF ls_ctor_val-type = zif_mjs=>c_type_function AND ls_ctor_val-fn IS BOUND.
        call_function( ir_fn = ls_ctor_val-fn it_args = lt_new_args io_env = io_env
                       is_this = ls_instance ).
      ENDIF.
      " IMPORTANT: don't overwrite this.prop with class methods if we already set them in ctor
      DATA(lt_cls_entries) = ls_cls-obj->entries( ).
      LOOP AT lt_cls_entries ASSIGNING FIELD-SYMBOL(<cp>).
        IF <cp>-key <> zcl_mjs_obj=>atom( `constructor` ).
          IF ls_instance-obj->has_a( <cp>-key ) = abap_false.
            ls_instance-obj->set_a( iv_atom = <cp>-key is_val = <cp>-val ).
          ENDIF.
        ENDIF.
      ENDLOOP.
      rs_val = ls_instance.
    ELSEIF ls_cls-type = zif_mjs=>c_type_function AND ls_cls-fn IS BOUND.
      DATA ls_p_inst TYPE zif_mjs=>ty_value.
      ls_p_inst = zcl_mjs_val=>object_val( ).
      ls_p_inst-obj->proto = ls_cls-obj.
      DATA lt_p_args TYPE zif_mjs=>tt_value_slots.
      LOOP AT <n>-args INTO DATA(lr_pa).
        APPEND eval_node( ir_node = lr_pa io_env = io_env ) TO lt_p_args.
      ENDLOOP.
      DATA(ls_p_ret) = call_function( ir_fn = ls_cls-fn it_args = lt_p_args io_env = io_env
                                      is_this = ls_p_inst ).
      IF ls_p_ret-type = zif_mjs=>c_type_object AND ls_p_ret-obj IS BOUND.
        rs_val = ls_p_ret.
      ELSE.
        rs_val = ls_p_inst.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD eval_node_class.
    FIELD-SYMBOLS <n> TYPE zif_mjs=>ty_node.
    ASSIGN ir_node->* TO <n>.
    DATA ls_clsobj TYPE zif_mjs=>ty_value.
    ls_clsobj = zcl_mjs_val=>object_val( ).
    DATA ls_super_cls_val TYPE zif_mjs=>ty_value.
    IF <n>-op IS NOT INITIAL.
      DATA(ls_super_cls) = io_env->get( <n>-op ).
      IF ls_super_cls-type = zif_mjs=>c_type_object AND ls_super_cls-obj IS BOUND.
        ls_clsobj-obj->proto = ls_super_cls-obj.
        DATA(lt_sc_entries) = ls_super_cls-obj->entries( ).
        LOOP AT lt_sc_entries ASSIGNING FIELD-SYMBOL(<sp>).
          ls_clsobj-obj->set_a( iv_atom = <sp>-key is_val = <sp>-val ).
        ENDLOOP.
        ls_super_cls_val = ls_super_cls.
      ENDIF.
    ELSEIF <n>-left IS BOUND.
      DATA(ls_super_expr) = eval_node( ir_node = <n>-left io_env = io_env ).
      IF ls_super_expr-type = zif_mjs=>c_type_object AND ls_super_expr-obj IS BOUND.
        ls_clsobj-obj->proto = ls_super_expr-obj.
        DATA(lt_se_entries) = ls_super_expr-obj->entries( ).
        LOOP AT lt_se_entries ASSIGNING FIELD-SYMBOL(<sep>).
          ls_clsobj-obj->set_a( iv_atom = <sep>-key is_val = <sep>-val ).
        ENDLOOP.
        ls_super_cls_val = ls_super_expr.
      ENDIF.
    ENDIF.
    " Build a class-level env; if extends, expose parent constructor as __super_ctor__
    DATA lo_cls_env TYPE REF TO zcl_mjs_env.
    CREATE OBJECT lo_cls_env EXPORTING io_parent = io_env.
    IF ls_super_cls_val-type = zif_mjs=>c_type_object AND ls_super_cls_val-obj IS BOUND.
      DATA(ls_sc_val) = ls_super_cls_val-obj->get( `constructor` ).
      IF ls_sc_val-type = zif_mjs=>c_type_function.
        lo_cls_env->define( iv_name = `__super_ctor__` is_val = ls_sc_val ).
      ENDIF.
      lo_cls_env->define( iv_name = `__super_proto__` is_val = ls_super_cls_val ).
    ENDIF.
    ls_clsobj-obj->set( iv_key = `__is_class__` is_val = zcl_mjs_val=>bool_val( abap_true ) ).
    LOOP AT <n>-methods INTO DATA(ls_cm).
      DATA lr_mfn TYPE REF TO data.
      CREATE DATA lr_mfn TYPE zif_mjs=>ty_function.
      FIELD-SYMBOLS <mfn> TYPE zif_mjs=>ty_function.
      ASSIGN lr_mfn->* TO <mfn>.
      <mfn>-name    = ls_cm-name.
      <mfn>-params  = ls_cm-params.
      <mfn>-body    = ls_cm-body.
      <mfn>-body_lazy = ls_cm-body_lazy.
      <mfn>-body_pos = ls_cm-body_pos.
      <mfn>-body_tokens = ls_cm-body_tokens.
      <mfn>-closure = lo_cls_env.
      DATA ls_mfnval TYPE zif_mjs=>ty_value.
      ls_mfnval-type = zif_mjs=>c_type_function.
      ls_mfnval-fn   = lr_mfn.
      ls_clsobj-obj->set( iv_key = ls_cm-name is_val = ls_mfnval ).
    ENDLOOP.
    IF <n>-str IS NOT INITIAL.
      io_env->define( iv_name = <n>-str is_val = ls_clsobj ).
    ENDIF.
    rs_val = ls_clsobj.
  ENDMETHOD.

  METHOD eval_node_switch.
    FIELD-SYMBOLS <n> TYPE zif_mjs=>ty_node.
    ASSIGN ir_node->* TO <n>.
    DATA(ls_swval) = eval_node( ir_node = <n>-cond io_env = io_env ).
    DATA lv_matched TYPE abap_bool VALUE abap_false.
    LOOP AT <n>-cases INTO DATA(ls_sc).
      IF lv_matched = abap_false AND ls_sc-expr IS BOUND.
        DATA(ls_caseval) = eval_node( ir_node = ls_sc-expr io_env = io_env ).
        IF zcl_mjs_val=>to_number( ls_swval ) = zcl_mjs_val=>to_number( ls_caseval )
           AND ls_swval-type = ls_caseval-type.
          lv_matched = abap_true.
        ENDIF.
      ENDIF.
      IF lv_matched = abap_false AND ls_sc-expr IS NOT BOUND.
        lv_matched = abap_true.
      ENDIF.
      IF lv_matched = abap_true.
        LOOP AT ls_sc-body INTO DATA(lr_sb).
          eval_node( ir_node = lr_sb io_env = io_env ).
          IF io_env->breaking = abap_true OR io_env->returning = abap_true.
            EXIT.
          ENDIF.
        ENDLOOP.
        IF io_env->breaking = abap_true.
          io_env->breaking = abap_false.
          EXIT.
        ENDIF.
        IF io_env->returning = abap_true.
          EXIT.
        ENDIF.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD raise_ref_error.
    DATA lx TYPE REF TO zcx_mjs_throw.
    DATA ls_msg TYPE zif_mjs=>ty_value.
    ls_msg = zcl_mjs_val=>string_val( |ReferenceError: { iv_name } is not defined| ).
    CREATE OBJECT lx EXPORTING is_val = ls_msg.
    RAISE EXCEPTION lx.
  ENDMETHOD.

  METHOD raise_throw.
    DATA lx TYPE REF TO zcx_mjs_throw.
    CREATE OBJECT lx EXPORTING is_val = is_val.
    RAISE EXCEPTION lx.
  ENDMETHOD.


  METHOD eval_property_access.
    CASE is_obj-type.
      WHEN zif_mjs=>c_type_object.
        " missing keys read back as undefined (type 0 = initial rs_val)
        IF iv_atom > 0.
          rs_val = is_obj-obj->get_a( iv_atom ).
        ELSE.
          rs_val = is_obj-obj->get( iv_prop ).
        ENDIF.
        IF rs_val-type = zif_mjs=>c_type_getter AND io_env IS BOUND.
          rs_val = call_function( ir_fn = rs_val-fn it_args = VALUE #( ) io_env = io_env is_this = is_obj ).
        ENDIF.
      WHEN zif_mjs=>c_type_array.
        IF iv_prop = `length`.
          rs_val = zcl_mjs_val=>number_val( CONV f( is_obj-arr->length( ) ) ).
        ELSE.
          DATA is_not_numeric_prop TYPE abap_bool VALUE abap_false.
          DATA lv_aidx TYPE i.
          IF iv_prop CO `0123456789 ` AND iv_prop IS NOT INITIAL.
            lv_aidx = iv_prop.
            is_not_numeric_prop = abap_false.
          ELSE.
            is_not_numeric_prop = abap_true.
          ENDIF.

          IF is_not_numeric_prop = abap_false.
            DATA lr_aelem TYPE REF TO data.
            lr_aelem = is_obj-arr->get_item( lv_aidx ).
            IF lr_aelem IS BOUND.
              rs_val = zcl_mjs_val=>unbox_value( lr_aelem ).
            ELSE.
              rs_val = zcl_mjs_val=>undefined_val( ).
            ENDIF.
          ELSE.
            rs_val = zcl_mjs_val=>undefined_val( ).
          ENDIF.
        ENDIF.
      WHEN zif_mjs=>c_type_string.
        IF iv_prop = `length`.
          rs_val = zcl_mjs_val=>number_val( CONV f( strlen( is_obj-str ) ) ).
        ELSE.
          rs_val = zcl_mjs_val=>undefined_val( ).
        ENDIF.
      WHEN zif_mjs=>c_type_function.
        IF iv_prop = `length` AND is_obj-fn IS BOUND.
          FIELD-SYMBOLS <fn_l> TYPE zif_mjs=>ty_function.
          ASSIGN is_obj-fn->* TO <fn_l>.
          DATA lv_fn_length TYPE i VALUE 0.
          LOOP AT <fn_l>-params INTO DATA(lv_lp).
            IF strlen( lv_lp ) > 3 AND lv_lp(3) = `...`.
              EXIT.  " rest parameter — not counted
            ENDIF.
            DATA lr_dflt_chk TYPE REF TO data.
            READ TABLE <fn_l>-default_params INDEX sy-tabix INTO lr_dflt_chk.
            IF sy-subrc = 0 AND lr_dflt_chk IS BOUND.
              EXIT.  " first param with default — stop counting
            ENDIF.
            lv_fn_length = lv_fn_length + 1.
          ENDLOOP.
          rs_val = zcl_mjs_val=>number_val( CONV f( lv_fn_length ) ).
        ELSEIF is_obj-obj IS BOUND.
          rs_val = is_obj-obj->get( iv_prop ).
        ELSE.
          rs_val = zcl_mjs_val=>undefined_val( ).
        ENDIF.
      WHEN OTHERS.
        rs_val = zcl_mjs_val=>undefined_val( ).
    ENDCASE.
  ENDMETHOD.

  METHOD eval_method_call.
    " check if method is defined on the object it was called on, or its prototype
    DATA(ls_mval) = eval_property_access( is_obj = is_obj iv_prop = iv_method
                                          iv_atom = iv_atom io_env = io_env ).

    IF ls_mval-type = zif_mjs=>c_type_function AND ls_mval-fn IS BOUND.
      " receiver mutations flow through the shared object reference — no writeback
      rs_val = call_function( ir_fn = ls_mval-fn it_args = it_args io_env = io_env
                              is_this = is_obj ).
      RETURN.
    ENDIF.

    CASE is_obj-type.
      WHEN zif_mjs=>c_type_object.
        IF iv_method = `has` AND is_obj-obj->has( `[[SetData]]` ).
          " Set mock behavior for 'has()'
          rs_val = zcl_mjs_builtins=>set_has( is_obj = is_obj it_args = it_args ).
          RETURN.
        ENDIF.

      WHEN zif_mjs=>c_type_array.
        " mutating methods (push etc.) change arr->items through the shared
        " array reference — no writeback to the receiver variable needed
        rs_val = zcl_mjs_arr_methods=>call_method(
          is_obj    = is_obj
          iv_method = iv_method
          it_args   = it_args
          io_env    = io_env ).
        RETURN.
      WHEN zif_mjs=>c_type_string.
        rs_val = zcl_mjs_string=>call_method( is_obj = is_obj iv_method = iv_method it_args = it_args ).
      WHEN zif_mjs=>c_type_function.
        IF is_obj-obj IS BOUND.
          DATA(ls_fn4_mval) = is_obj-obj->get( iv_method ).
          IF ls_fn4_mval-type = zif_mjs=>c_type_function AND ls_fn4_mval-fn IS BOUND.
            rs_val = call_function( ir_fn = ls_fn4_mval-fn it_args = it_args io_env = io_env
                                    is_this = is_obj ).
            RETURN.
          ENDIF.
        ENDIF.
        CASE iv_method.
          WHEN `toString` OR `valueOf`.
            rs_val = zcl_mjs_val=>string_val( zcl_mjs_val=>to_string( is_obj ) ).
          WHEN OTHERS.
            rs_val = zcl_mjs_val=>undefined_val( ).
        ENDCASE.
      WHEN OTHERS.
        " Calling a method on undefined/null/number/bool — return undefined
        " to avoid crashing the interpreter (JS try/catch cannot catch zcx_mjs_runtime)
        rs_val = zcl_mjs_val=>undefined_val( ).
    ENDCASE.
  ENDMETHOD.

  METHOD to_primitive.
    " ToPrimitive: try valueOf(); if it does not yield a primitive, fall back to toString().
    " A function's default valueOf yields its source string ("function ..."), which must
    " also fall back to toString() so user overrides are honored.
    rs_val = is_val.
    IF is_val-type <> zif_mjs=>c_type_function AND is_val-type <> zif_mjs=>c_type_object.
      RETURN.
    ENDIF.
    DATA(ls_v) = eval_method_call(
      is_obj    = is_val
      iv_method = `valueOf`
      it_args   = VALUE #( )
      io_env    = io_env ).
    IF ls_v-type = zif_mjs=>c_type_undefined OR ls_v-type = zif_mjs=>c_type_function
        OR ls_v-type = zif_mjs=>c_type_object OR ls_v-type = zif_mjs=>c_type_null
        OR ( is_val-type = zif_mjs=>c_type_function AND ls_v-type = zif_mjs=>c_type_string AND ls_v-str CP `function *` ).
      rs_val = eval_method_call(
        is_obj    = is_val
        iv_method = `toString`
        it_args   = VALUE #( )
        io_env    = io_env ).
    ELSE.
      rs_val = ls_v.
    ENDIF.
  ENDMETHOD.

  METHOD eval_bin_op.
    " Fast path: both operands are plain numbers — skip all ToPrimitive coercion
    IF is_left-type = zif_mjs=>c_type_number AND is_right-type = zif_mjs=>c_type_number.
      DATA lv_fp_a TYPE f.
      DATA lv_fp_b TYPE f.
      lv_fp_a = is_left-num.
      lv_fp_b = is_right-num.
      CASE iv_op.
        WHEN `+`.
          rs_val-type = zif_mjs=>c_type_number.
          rs_val-num = lv_fp_a + lv_fp_b.
          RETURN.
        WHEN `-`.
          rs_val-type = zif_mjs=>c_type_number.
          rs_val-num = lv_fp_a - lv_fp_b.
          RETURN.
        WHEN `*`.
          rs_val-type = zif_mjs=>c_type_number.
          rs_val-num = lv_fp_a * lv_fp_b.
          RETURN.
        WHEN `/`.
          rs_val-type = zif_mjs=>c_type_number.
          IF lv_fp_b <> 0.
            rs_val-num = lv_fp_a / lv_fp_b.
          ELSEIF lv_fp_a = 0.
            rs_val-str = `NaN`.
          ELSEIF lv_fp_a > 0.
            rs_val-str = `Infinity`.
          ELSE.
            rs_val-str = `-Infinity`.
          ENDIF.
          RETURN.
        WHEN `%`.
          rs_val-type = zif_mjs=>c_type_number.
          IF lv_fp_b <> 0.
            DATA lv_fp_ia TYPE i.
            DATA lv_fp_ib TYPE i.
            lv_fp_ia = lv_fp_a.
            lv_fp_ib = lv_fp_b.
            rs_val-num = CONV f( lv_fp_ia MOD lv_fp_ib ).
          ELSE.
            rs_val-str = `NaN`.
          ENDIF.
          RETURN.
        WHEN `<`.
          rs_val-type = zif_mjs=>c_type_bool.
          IF lv_fp_a < lv_fp_b.
            rs_val-num = 1.
          ENDIF.
          RETURN.
        WHEN `>`.
          rs_val-type = zif_mjs=>c_type_bool.
          IF lv_fp_a > lv_fp_b.
            rs_val-num = 1.
          ENDIF.
          RETURN.
        WHEN `<=`.
          rs_val-type = zif_mjs=>c_type_bool.
          IF lv_fp_a <= lv_fp_b.
            rs_val-num = 1.
          ENDIF.
          RETURN.
        WHEN `>=`.
          rs_val-type = zif_mjs=>c_type_bool.
          IF lv_fp_a >= lv_fp_b.
            rs_val-num = 1.
          ENDIF.
          RETURN.
      ENDCASE.
    ENDIF.

    IF iv_op = `+`.
      DATA(ls_lval) = to_primitive( is_val = is_left io_env = io_env ).
      DATA(ls_rval) = to_primitive( is_val = is_right io_env = io_env ).

      IF ls_lval-type = zif_mjs=>c_type_string OR ls_rval-type = zif_mjs=>c_type_string.
        rs_val-type = zif_mjs=>c_type_string.
        rs_val-str  = zcl_mjs_val=>to_string( ls_lval ) && zcl_mjs_val=>to_string( ls_rval ).
        RETURN.
      ENDIF.
      rs_val-type = zif_mjs=>c_type_number.
      rs_val-num = zcl_mjs_val=>to_number( ls_lval ) + zcl_mjs_val=>to_number( ls_rval ).
      RETURN.
    ENDIF.

    CASE iv_op.
      WHEN `===`.
        rs_val-type = zif_mjs=>c_type_bool.
        IF is_left-type <> is_right-type.
          RETURN.
        ENDIF.
        IF is_left-type = zif_mjs=>c_type_string.
          IF is_left-str = is_right-str.
            rs_val-num = 1.
          ENDIF.
        ELSE.
          IF zcl_mjs_val=>to_number( is_left ) = zcl_mjs_val=>to_number( is_right ).
            rs_val-num = 1.
          ENDIF.
        ENDIF.
        RETURN.
      WHEN `!==`.
        rs_val-type = zif_mjs=>c_type_bool.
        IF is_left-type <> is_right-type.
          rs_val-num = 1.
          RETURN.
        ENDIF.
        IF is_left-type = zif_mjs=>c_type_string.
          IF is_left-str <> is_right-str.
            rs_val-num = 1.
          ENDIF.
        ELSE.
          IF zcl_mjs_val=>to_number( is_left ) <> zcl_mjs_val=>to_number( is_right ).
            rs_val-num = 1.
          ENDIF.
        ENDIF.
        RETURN.
      WHEN `==`.
        rs_val-type = zif_mjs=>c_type_bool.
        IF is_left-type = is_right-type.
          IF is_left-type = zif_mjs=>c_type_string.
            IF is_left-str = is_right-str.
              rs_val-num = 1.
            ENDIF.
          ELSE.
            IF zcl_mjs_val=>to_number( is_left ) = zcl_mjs_val=>to_number( is_right ).
              rs_val-num = 1.
            ENDIF.
          ENDIF.
          RETURN.
        ENDIF.
        " null == undefined (and vice versa)
        IF ( is_left-type = zif_mjs=>c_type_undefined OR is_left-type = zif_mjs=>c_type_null ) AND ( is_right-type = zif_mjs=>c_type_undefined OR is_right-type = zif_mjs=>c_type_null ).
          rs_val-num = 1.
          RETURN.
        ENDIF.
        " number/string coercion
        IF is_left-type = zif_mjs=>c_type_number AND is_right-type = zif_mjs=>c_type_string.
          IF is_left-num = zcl_mjs_val=>to_number( is_right ).
            rs_val-num = 1.
          ENDIF.
          RETURN.
        ENDIF.
        IF is_left-type = zif_mjs=>c_type_string AND is_right-type = zif_mjs=>c_type_number.
          IF zcl_mjs_val=>to_number( is_left ) = is_right-num.
            rs_val-num = 1.
          ENDIF.
          RETURN.
        ENDIF.
        " bool coercion — convert bool side to number and retry
        IF is_left-type = zif_mjs=>c_type_bool.
          rs_val = eval_bin_op( iv_op = `==` is_left = zcl_mjs_val=>number_val( zcl_mjs_val=>to_number( is_left ) ) is_right = is_right io_env = io_env ).
          RETURN.
        ENDIF.
        IF is_right-type = zif_mjs=>c_type_bool.
          rs_val = eval_bin_op( iv_op = `==` is_left = is_left is_right = zcl_mjs_val=>number_val( zcl_mjs_val=>to_number( is_right ) ) io_env = io_env ).
          RETURN.
        ENDIF.
        RETURN.
      WHEN `!=`.
        rs_val = eval_bin_op( iv_op = `==` is_left = is_left is_right = is_right io_env = io_env ).
        IF rs_val-num = 1.
          rs_val-num = 0.
        ELSE.
          rs_val-num = 1.
        ENDIF.
        RETURN.
      WHEN `instanceof`.
        rs_val-type = zif_mjs=>c_type_bool.
        IF is_right-type <> zif_mjs=>c_type_function AND is_right-type <> zif_mjs=>c_type_object.
          RAISE EXCEPTION TYPE zcx_mjs_runtime EXPORTING iv_error = |TypeError: Right-hand side of 'instanceof' is not an object|.
        ENDIF.
        IF is_left-type = zif_mjs=>c_type_object AND is_left-obj IS BOUND.
          DATA(lo_curr) = is_left-obj.
          WHILE lo_curr IS BOUND.
            IF lo_curr = is_right-obj.
              rs_val-num = 1.
              RETURN.
            ENDIF.
            lo_curr = lo_curr->proto.
          ENDWHILE.
        ENDIF.
        RETURN.
    ENDCASE.
    DATA lv_a TYPE f.
    DATA lv_b TYPE f.

    DATA(ls_la) = to_primitive( is_val = is_left io_env = io_env ).
    DATA(ls_ra) = to_primitive( is_val = is_right io_env = io_env ).

    lv_a = zcl_mjs_val=>to_number( ls_la ).
    lv_b = zcl_mjs_val=>to_number( ls_ra ).
    CASE iv_op.
      WHEN `+`.
        " addition is already handled with special logic above, but for other operators
        " we need to use the converted values
        rs_val-type = zif_mjs=>c_type_number.
        rs_val-num = lv_a + lv_b.
      WHEN `-`.
        rs_val-type = zif_mjs=>c_type_number.
        rs_val-num = lv_a - lv_b.
      WHEN `*`.
        rs_val-type = zif_mjs=>c_type_number.
        rs_val-num = lv_a * lv_b.
      WHEN `/`.
        rs_val-type = zif_mjs=>c_type_number.
        IF lv_b <> 0.
          rs_val-num = lv_a / lv_b.
        ELSEIF lv_a = 0.
          rs_val-str = `NaN`.
        ELSEIF lv_a > 0.
          rs_val-str = `Infinity`.
        ELSE.
          rs_val-str = `-Infinity`.
        ENDIF.
      WHEN `%`.
        rs_val-type = zif_mjs=>c_type_number.
        IF lv_b <> 0.
          DATA lv_ia TYPE i.
          DATA lv_ib TYPE i.
          lv_ia = lv_a.
          lv_ib = lv_b.
          rs_val-num = CONV f( lv_ia MOD lv_ib ).
        ELSE.
          rs_val-str = `NaN`.
        ENDIF.
      WHEN `<`.
        rs_val-type = zif_mjs=>c_type_bool.
        IF lv_a < lv_b.
          rs_val-num = 1.
        ENDIF.
      WHEN `>`.
        rs_val-type = zif_mjs=>c_type_bool.
        IF lv_a > lv_b.
          rs_val-num = 1.
        ENDIF.
      WHEN `<=`.
        rs_val-type = zif_mjs=>c_type_bool.
        IF lv_a <= lv_b.
          rs_val-num = 1.
        ENDIF.
      WHEN `>=`.
        rs_val-type = zif_mjs=>c_type_bool.
        IF lv_a >= lv_b.
          rs_val-num = 1.
        ENDIF.
      WHEN `&&`.
        rs_val-type = zif_mjs=>c_type_bool.
        IF zcl_mjs_val=>is_true( is_left ) = abap_true AND zcl_mjs_val=>is_true( is_right ) = abap_true.
          rs_val-num = 1.
        ENDIF.
      WHEN `||`.
        rs_val-type = zif_mjs=>c_type_bool.
        IF zcl_mjs_val=>is_true( is_left ) = abap_true OR zcl_mjs_val=>is_true( is_right ) = abap_true.
          rs_val-num = 1.
        ENDIF.
      WHEN OTHERS.
        CLEAR rs_val.
    ENDCASE.
  ENDMETHOD.

  METHOD array_from_slots.
    " Build a JS array value from a table of ty_value (no box/unbox round-trip)
    DATA lo_arr TYPE REF TO zcl_mjs_array.
    CREATE OBJECT lo_arr.
    LOOP AT it_vals INTO DATA(ls_v).
      lo_arr->push( zcl_mjs_val=>box_value( ls_v ) ).
    ENDLOOP.
    rs_val-type = zif_mjs=>c_type_array.
    rs_val-arr  = lo_arr.
  ENDMETHOD.

  METHOD scan_for_ident.
    " Recursively search for c_node_ident with str=iv_name.
    " Does NOT descend into nested function bodies (separate scope).
    IF ir_node IS NOT BOUND.
      RETURN.
    ENDIF.
    FIELD-SYMBOLS <n> TYPE zif_mjs=>ty_node.
    ASSIGN ir_node->* TO <n>.

    CASE <n>-kind.
      WHEN zif_mjs=>c_node_ident.
        rv_found = boolc( <n>-str = iv_name ).

      WHEN zif_mjs=>c_node_func_decl.
        " Do NOT descend into nested function body (separate 'arguments' scope)

      WHEN OTHERS.
        IF scan_for_ident( ir_node = <n>-left      iv_name = iv_name ) = abap_true.
          rv_found = abap_true.
          RETURN.
        ENDIF.
        IF scan_for_ident( ir_node = <n>-right     iv_name = iv_name ) = abap_true.
          rv_found = abap_true.
          RETURN.
        ENDIF.
        IF scan_for_ident( ir_node = <n>-cond      iv_name = iv_name ) = abap_true.
          rv_found = abap_true.
          RETURN.
        ENDIF.
        IF scan_for_ident( ir_node = <n>-init      iv_name = iv_name ) = abap_true.
          rv_found = abap_true.
          RETURN.
        ENDIF.
        IF scan_for_ident( ir_node = <n>-update    iv_name = iv_name ) = abap_true.
          rv_found = abap_true.
          RETURN.
        ENDIF.
        IF scan_for_ident( ir_node = <n>-object    iv_name = iv_name ) = abap_true.
          rv_found = abap_true.
          RETURN.
        ENDIF.
        IF scan_for_ident( ir_node = <n>-prop_expr iv_name = iv_name ) = abap_true.
          rv_found = abap_true.
          RETURN.
        ENDIF.
        LOOP AT <n>-body INTO DATA(lr_b).
          IF scan_for_ident( ir_node = lr_b iv_name = iv_name ) = abap_true.
            rv_found = abap_true.
            RETURN.
          ENDIF.
        ENDLOOP.
        LOOP AT <n>-els INTO DATA(lr_e).
          IF scan_for_ident( ir_node = lr_e iv_name = iv_name ) = abap_true.
            rv_found = abap_true.
            RETURN.
          ENDIF.
        ENDLOOP.
        LOOP AT <n>-args INTO DATA(lr_a).
          IF scan_for_ident( ir_node = lr_a iv_name = iv_name ) = abap_true.
            rv_found = abap_true.
            RETURN.
          ENDIF.
        ENDLOOP.
        LOOP AT <n>-cases INTO DATA(ls_sc).
          IF ls_sc-expr IS BOUND.
            IF scan_for_ident( ir_node = ls_sc-expr iv_name = iv_name ) = abap_true.
              rv_found = abap_true.
              RETURN.
            ENDIF.
          ENDIF.
          LOOP AT ls_sc-body INTO DATA(lr_cb).
            IF scan_for_ident( ir_node = lr_cb iv_name = iv_name ) = abap_true.
              rv_found = abap_true.
              RETURN.
            ENDIF.
          ENDLOOP.
        ENDLOOP.
    ENDCASE.
  ENDMETHOD.

ENDCLASS.
