INTERFACE zif_mjs PUBLIC.

  " Value types (ty_value-type)
  CONSTANTS:
    c_type_undefined TYPE i VALUE 0,
    c_type_number    TYPE i VALUE 1,
    c_type_string    TYPE i VALUE 2,
    c_type_bool      TYPE i VALUE 3,
    c_type_function  TYPE i VALUE 4,
    c_type_null      TYPE i VALUE 5,
    c_type_object    TYPE i VALUE 6,
    c_type_array     TYPE i VALUE 7,
    c_type_regex     TYPE i VALUE 8,
    " getter wrapper: fn is invoked on property access (Object.defineProperty get)
    c_type_getter    TYPE i VALUE 10.

  " Static-builtin interception codes for member-access / method-call nodes.
  " Classified once on first eval (string compares) and cached on ty_node-builtin,
  " so the hot path pays a single integer compare instead of the compare gauntlet.
  " 0 = not yet classified (initial); c_builtin_none = classified, no interception.
  CONSTANTS:
    c_builtin_unresolved     TYPE i VALUE 0,
    c_builtin_none           TYPE i VALUE 1,
    c_builtin_date_now       TYPE i VALUE 2,
    c_builtin_object_keys    TYPE i VALUE 3,
    c_builtin_object_defprop TYPE i VALUE 4,
    c_builtin_super          TYPE i VALUE 5.

  TYPES:
    BEGIN OF ty_value,
      type TYPE i,
      num  TYPE f,
      str  TYPE string,
      obj  TYPE REF TO zcl_mjs_obj,
      arr  TYPE REF TO zcl_mjs_array,
      fn   TYPE REF TO data,
    END OF ty_value,
    tt_value_slots TYPE STANDARD TABLE OF ty_value WITH DEFAULT KEY.

  " Token: 0=number, 1=string, 2=ident, 3=op, 4=punc, 5=eof
  TYPES:
    BEGIN OF ty_token,
      kind TYPE i,
      val  TYPE string,
    END OF ty_token,
    tt_tokens TYPE STANDARD TABLE OF ty_token WITH DEFAULT KEY.

  " Node references table (for RETURNING parameters)
  TYPES tt_nodes TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY.

  " Switch case
  TYPES:
    BEGIN OF ty_switch_case,
      expr TYPE REF TO data,
      body TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY,
    END OF ty_switch_case,
    tt_switch_cases TYPE STANDARD TABLE OF ty_switch_case WITH DEFAULT KEY.

  " Class method
  TYPES:
    BEGIN OF ty_class_method,
      name        TYPE string,
      params      TYPE STANDARD TABLE OF string WITH DEFAULT KEY,
      body        TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY,
      is_ctor     TYPE abap_bool,
      body_lazy   TYPE abap_bool,
      body_pos    TYPE i,
      body_tokens TYPE REF TO tt_tokens,
    END OF ty_class_method,
    tt_class_methods TYPE STANDARD TABLE OF ty_class_method WITH DEFAULT KEY.

  " Slot map entry: name -> slot index (1-based, for READ TABLE ... INDEX)
  TYPES:
    BEGIN OF ty_slot_entry,
      name TYPE string,
      slot TYPE i,
    END OF ty_slot_entry,
    tt_slot_map TYPE HASHED TABLE OF ty_slot_entry WITH UNIQUE KEY name.

  " Per-param binding plan, precomputed once in compile_function so that
  " call_function binds each argument with plain field reads - no strlen /
  " substring rest check and no default_params index lookup per call.
  TYPES:
    BEGIN OF ty_param_bind,
      slot    TYPE i,           " target local slot (1-based)
      is_rest TYPE abap_bool,   " X = rest param: collect remaining args
      dflt    TYPE REF TO data, " default-value node, or unbound
    END OF ty_param_bind,
    tt_param_bind TYPE STANDARD TABLE OF ty_param_bind WITH DEFAULT KEY.

  " ---------------------------------------------------------------------------
  " Bytecode VM (Phase 1). A function body is compiled once to a flat instruction
  " list run by a stack machine (zcl_mjs=>run_chunk), replacing recursive AST
  " walking for the supported subset. Unsupported constructs leave vm_ok = false
  " and the function keeps running on the AST evaluator (eval_node).
  " ---------------------------------------------------------------------------
  CONSTANTS:
    c_op_push_const TYPE i VALUE 1,   " push consts[a]
    c_op_push_undef TYPE i VALUE 2,   " push undefined
    c_op_load_slot  TYPE i VALUE 3,   " push slots[a]
    c_op_store_slot TYPE i VALUE 4,   " slots[a] = pop (does not leave a value)
    c_op_load_this  TYPE i VALUE 5,   " push this
    c_op_resolve    TYPE i VALUE 6,   " push resolve(s)  (free/closure/global var)
    c_op_store_name TYPE i VALUE 7,   " set(s, pop)      (free/closure/global var)
    c_op_binop      TYPE i VALUE 8,   " b=pop,a=pop, push eval_bin_op(s,a,b)
    c_op_neg        TYPE i VALUE 9,   " push -to_number(pop)
    c_op_not        TYPE i VALUE 10,  " push !is_true(pop)
    c_op_jump       TYPE i VALUE 11,  " ip = a
    c_op_jump_false TYPE i VALUE 12,  " if not is_true(pop): ip = a
    c_op_jump_true  TYPE i VALUE 13,  " if is_true(pop): ip = a
    c_op_call       TYPE i VALUE 14,  " a=argc, s=callee name; call named function
    c_op_ret        TYPE i VALUE 15,  " return pop
    c_op_ret_undef  TYPE i VALUE 16,  " return undefined
    c_op_pop        TYPE i VALUE 17,  " discard top (expression statement)
    c_op_incdec     TYPE i VALUE 18,  " a=slot, b: 1=++/2=--, +10 if postfix
    c_op_get_field  TYPE i VALUE 19,  " a=atom s=name; obj=pop, push obj.name
    c_op_call_method TYPE i VALUE 20, " a=argc b=atom s=name; [recv arg..]=pop, push result
    c_op_set_field  TYPE i VALUE 21,  " a=atom s=writeback-ident; val=pop, obj=pop, obj.name=val
    c_op_dup        TYPE i VALUE 22,  " push a copy of the top of stack
    c_op_get_index  TYPE i VALUE 23,  " key=pop, obj=pop, push obj[key]
    c_op_set_index  TYPE i VALUE 24,  " val=pop, key=pop, obj=pop, obj[key]=val
    c_op_make_array TYPE i VALUE 25,  " a=count; pop count elems, push array
    c_op_make_object TYPE i VALUE 26. " a=count; pop count key/value pairs, push object

  TYPES:
    BEGIN OF ty_instr,
      op TYPE i,
      a  TYPE i,          " numeric operand: slot / jump target / const idx / argc / atom
      b  TYPE i,          " secondary operand (incdec variant; get/set_field IC shape)
      c  TYPE i,          " tertiary operand (get/set_field inline-cache offset)
      s  TYPE string,     " string operand: binop op, resolve/store/call name
    END OF ty_instr,
    tt_instr TYPE STANDARD TABLE OF ty_instr WITH DEFAULT KEY.

  " Node kinds
  CONSTANTS:
    c_node_number        TYPE i VALUE 0,
    c_node_string        TYPE i VALUE 1,
    c_node_ident         TYPE i VALUE 2,
    c_node_binop         TYPE i VALUE 3,
    c_node_unaryop       TYPE i VALUE 4,
    c_node_assign        TYPE i VALUE 5,
    c_node_var           TYPE i VALUE 6,
    c_node_if            TYPE i VALUE 7,
    c_node_while         TYPE i VALUE 8,
    c_node_block         TYPE i VALUE 9,
    c_node_call          TYPE i VALUE 10,
    c_node_func_decl     TYPE i VALUE 11,
    c_node_return        TYPE i VALUE 12,
    c_node_object        TYPE i VALUE 13,
    c_node_array         TYPE i VALUE 14,
    c_node_member_access TYPE i VALUE 15,
    c_node_member_assign TYPE i VALUE 16,
    c_node_method_call   TYPE i VALUE 17,
    c_node_for           TYPE i VALUE 18,
    c_node_switch        TYPE i VALUE 19,
    c_node_typeof        TYPE i VALUE 20,
    c_node_new           TYPE i VALUE 21,
    c_node_class         TYPE i VALUE 22,
    c_node_break         TYPE i VALUE 23,
    c_node_continue      TYPE i VALUE 24,
    c_node_bool          TYPE i VALUE 25,
    c_node_try           TYPE i VALUE 26,
    c_node_throw         TYPE i VALUE 27,
    c_node_regex         TYPE i VALUE 28,
    c_node_ternary       TYPE i VALUE 29,
    c_node_for_of        TYPE i VALUE 30,
    c_node_for_in        TYPE i VALUE 36,
    c_node_assign_add    TYPE i VALUE 31,
    c_node_inc           TYPE i VALUE 32,
    c_node_dec           TYPE i VALUE 33,
    c_node_post_inc      TYPE i VALUE 34,
    c_node_post_dec      TYPE i VALUE 35.

  " AST Node
  TYPES:
    BEGIN OF ty_node,
      kind          TYPE i,
      num           TYPE f,
      str           TYPE string,
      op            TYPE string,
      left          TYPE REF TO data,
      right         TYPE REF TO data,
      args          TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY,
      body          TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY,
      params        TYPE STANDARD TABLE OF string WITH DEFAULT KEY,
      default_params TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY,
      cond      TYPE REF TO data,
      els       TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY,
      init      TYPE REF TO data,
      update    TYPE REF TO data,
      object    TYPE REF TO data,
      property  TYPE string,
      prop_expr TYPE REF TO data,
      cases     TYPE tt_switch_cases,
      methods   TYPE tt_class_methods,
      " Deferred function/arrow body. body_pos is the zero-based token index
      " of its opening brace in body_tokens.
      body_lazy   TYPE abap_bool,
      body_pos    TYPE i,
      body_tokens TYPE REF TO tt_tokens,
      " Slot optimization: pre-assigned local variable index (1-based)
      slot      TYPE i,         " 0 = not assigned
      slot_ok   TYPE abap_bool, " X = use slot, ' ' = use name-based lookup
      " Static-builtin interception (member-access / method-call nodes only),
      " lazily classified and cached - see zif_mjs=>c_builtin_* (0 = unresolved)
      builtin   TYPE i,
      " Interned atom of a static property/method name (member-access,
      " method-call, member-assign nodes). Lazily filled on first eval and
      " cached; 0 = not yet interned (or a computed property, which never uses it).
      property_atom TYPE i,
    END OF ty_node.

  " Function (closure is REF TO object to break circular dep with zcl_mjs_env)
  TYPES:
    BEGIN OF ty_function,
      name            TYPE string,
      params          TYPE STANDARD TABLE OF string WITH DEFAULT KEY,
      default_params  TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY,
      body            TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY,
      body_lazy       TYPE abap_bool,
      body_pos        TYPE i,
      body_tokens     TYPE REF TO tt_tokens,
      closure         TYPE REF TO object,
      " Slot optimization: populated once on first call (lazy compile)
      compiled        TYPE abap_bool,          " X = slots already assigned
      max_slots       TYPE i,                  " number of slot entries needed
      slot_map        TYPE REF TO tt_slot_map, " shared ref — allocated once, reused across calls
      needs_arguments TYPE abap_bool,          " X = function references 'arguments' pseudo-array
      " Hoisted function declarations, collected once at compile time so
      " call_function does not rescan the whole body on every call
      hoisted         TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY,
      " Per-param binding plan (parallel to params), resolved at compile time
      " so call_function binds arguments without per-call string ops
      param_binds     TYPE tt_param_bind,
      " Bytecode VM (Phase 1). Filled once on first call (after compile_function).
      " vm_ok = X means the body compiled to vm_code and runs on run_chunk;
      " otherwise the function runs on the AST evaluator. vm_checked guards the
      " one-time compile attempt.
      vm_checked      TYPE abap_bool,
      vm_ok           TYPE abap_bool,
      vm_code         TYPE tt_instr,
      vm_consts       TYPE tt_value_slots,
      vm_max_stack    TYPE i,
    END OF ty_function.

ENDINTERFACE.
