CLASS ltcl_test DEFINITION FOR TESTING
  DURATION MEDIUM
  RISK LEVEL HARMLESS.
  PRIVATE SECTION.

    METHODS test_2plus2 FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_string FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_if_else FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_function FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_factorial FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_closure FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_object FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_array FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_class FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_for_loop FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_while_continue FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_switch FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_typeof FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_string_methods FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_or_chain FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_space_handling FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_string_method_call FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_anonymous_class FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_obj_shorthand FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_template_literal FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_optional_chain FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_optional_chain_arr FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_optional_chain_fn FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_substring_one_arg FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_plus_equals FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_extends FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_class_expression FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_class_expr_extends FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_string_replace FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_replace_regex FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_trim FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_trim_end FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_class_expr_super FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_super_method_call FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_function_tostring FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_function_props FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_function_plus_one FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_func_tostring_ovr FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_json_stringify_prim FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_json_stringify_obj FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_json_stringify_arr FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_json_stringify_nested FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_json_stringify_escape FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_json_stringify_special FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_unicode_escape FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_func_hoist FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_binary_literal FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_octal_literal FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_legacy_octal_literal FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_comment FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_iife FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_named_func_expr_scope FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_reference_error FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_static_method_computed FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_object_keys FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_object_define_property FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_defprop_bundle FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_defprop_assign FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_arrow_function FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_comma_expr FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_void FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_plain_call_this FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_negative_literal FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_regex_in_class1 FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_regex_in_class2 FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_regex_in_class3 FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_ternary FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_dflt_params FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_function_length FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_string_line_cont FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_for_const_of FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_for_of_undef_or_arr FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_for_of_map FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_substr FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_lexer_loop FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_instanceof FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_destructuring FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_inc_dec FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_for_loop_inc FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_to_upper_case FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_to_lower_case FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_string_starts_with FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_string_ends_with FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_string_last_index_of FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_string_split FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_for_in FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_defprop_getter FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_splice FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_sort FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_build_splits FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_spread FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_array_find FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_regexp FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_new_regexp FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_new_set FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_set_has FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_namespace_class FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_class_typeof FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_array_filter FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_date_now FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_array_map FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_rest_map FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_replace_regex_anchor FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_replace_empty_regex FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_replace_empty_regex_g FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_replace_empty_regex_look FOR TESTING RAISING zcx_mjs_runtime.

    METHODS test262 FOR TESTING RAISING zcx_mjs_runtime.

    METHODS trim
      IMPORTING iv TYPE string
      RETURNING VALUE(rv) TYPE string.
ENDCLASS.

CLASS ltcl_test IMPLEMENTATION.

  METHOD trim.
    rv = iv.
    REPLACE ALL OCCURRENCES OF cl_abap_char_utilities=>newline IN rv WITH ` `.
    CONDENSE rv.
  ENDMETHOD.

  METHOD test_2plus2.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( |console.log(2+2)| ) )
      exp = |4| ).
  ENDMETHOD.

  METHOD test_string.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( |console.log("hello")| ) )
      exp = |hello| ).
  ENDMETHOD.

  METHOD test_if_else.
    DATA(lv_js) =
      `if (1 > 0) { console.log("yes"); } else { console.log("no"); }`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |yes| ).
  ENDMETHOD.

  METHOD test_function.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `function add(a, b) { return a + b; }` && lv_nl &&
      `console.log(add(3, 4));`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |7| ).
  ENDMETHOD.

  METHOD test_factorial.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `function f(n) { if (n <= 1) return 1; return n * f(n-1); }` && lv_nl &&
      `console.log(f(10));`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |3628800| ).
  ENDMETHOD.

  METHOD test_closure.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `function make() { let x = 10; function get() { return x; } return get; }` && lv_nl &&
      `let f = make(); console.log(f());`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |10| ).
  ENDMETHOD.

  METHOD test_object.
    DATA(lv_js) =
      `let o = {x: 1, y: 2}; console.log(o.x + o.y);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |3| ).
  ENDMETHOD.

  METHOD test_array.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `let a = [10, 20, 30];` && lv_nl &&
      `a.push(40);` && lv_nl &&
      `console.log(a.length);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |4| ).
  ENDMETHOD.

  METHOD test_class.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `class Counter {` && lv_nl &&
      `  constructor(n) { this.n = n; }` && lv_nl &&
      `  inc() { this.n = this.n + 1; }` && lv_nl &&
      `  get() { return this.n; }` && lv_nl &&
      `}` && lv_nl &&
      `let c = new Counter(0); c.inc(); c.inc(); c.inc();` && lv_nl &&
      `console.log(c.get());`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |3| ).
  ENDMETHOD.

  METHOD test_for_loop.
    DATA(lv_js) =
      `let s = 0; for (let i = 1; i <= 10; i = i + 1) { s = s + i; } console.log(s);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |55| ).
  ENDMETHOD.

  METHOD test_while_continue.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `let i = 0; let out = "";` && lv_nl &&
      `while (i < 5) { i = i + 1; if (i === 3) continue; out = out + i; }` && lv_nl &&
      `console.log(out);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |1245| ).
  ENDMETHOD.

  METHOD test_switch.
    DATA(lv_js) =
      `let r = ""; switch(2) { case 1: r = "one"; break; case 2: r = "two"; break; } console.log(r);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |two| ).
  ENDMETHOD.

  METHOD test_typeof.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `console.log(typeof 42);` && lv_nl &&
      `console.log(typeof "hi");` && lv_nl &&
      `console.log(typeof true);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |number string boolean| ).
  ENDMETHOD.

  METHOD test_string_methods.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `console.log("hello".charAt(1));` && lv_nl &&
      `console.log("hello".indexOf("ll"));` && lv_nl &&
      `console.log("hello".substring(1, 3));` && lv_nl &&
      `console.log("A".charCodeAt(0));`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |e 2 el 65| ).
  ENDMETHOD.

  METHOD test_or_chain.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `let ch = "D";` && lv_nl &&
      `if (ch === "=" || ch === "+" || ch === "-" || ch === "*" || ch === "/") {` && lv_nl &&
      `  console.log("op");` && lv_nl &&
      `} else {` && lv_nl &&
      `  console.log("not");` && lv_nl &&
      `}`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |not| ).
  ENDMETHOD.

  METHOD test_space_handling.
    DATA(lv_js) =
      `let s = "A B"; console.log(s.charAt(1)); console.log(s.charAt(1) === " ");`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |true| ).
  ENDMETHOD.

  METHOD test_string_method_call.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `const str = "hello";` && lv_nl &&
      `str.something();`.
    TRY.
        zcl_mjs=>eval( lv_js ).
        cl_abap_unit_assert=>fail( |Expected error for calling non-existent method| ).
      CATCH zcx_mjs_runtime.
        " Success: Exception caught
      CATCH cx_root INTO DATA(lx).
        cl_abap_unit_assert=>fail( |Expected zcx_mjs_runtime, but got { cl_abap_classdescr=>get_class_name( lx ) }| ).
    ENDTRY.
  ENDMETHOD.

  METHOD test_anonymous_class.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `var FileFile = class {` && lv_nl &&
      `  constructor(filename) {` && lv_nl &&
      `    this.filename = filename;` && lv_nl &&
      `  }` && lv_nl &&
      `  getFilename() {` && lv_nl &&
      `    return this.filename;` && lv_nl &&
      `  }` && lv_nl &&
      `};` && lv_nl &&
      `new FileFile("foo.txt");` && lv_nl &&
      `console.log("Done");`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |Done| ).
  ENDMETHOD.

  METHOD test_template_literal.
    DATA(lv_bt) = |`|.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `let ahead = ` && lv_bt && `"` && lv_bt && `;` && lv_nl &&
      `if (ahead === ` && lv_bt && `"` && lv_bt && `) {` && lv_nl &&
      `  console.log("yes");` && lv_nl &&
      `} else {` && lv_nl &&
      `  console.log("no");` && lv_nl &&
      `}`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |yes| ).
  ENDMETHOD.

  METHOD test_extends.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `class Animal {` && lv_nl &&
      `  constructor(name) { this.name = name; }` && lv_nl &&
      `  speak() { return this.name + " makes a noise."; }` && lv_nl &&
      `}` && lv_nl &&
      `class Dog extends Animal {` && lv_nl &&
      `  speak() { return this.name + " barks."; }` && lv_nl &&
      `}` && lv_nl &&
      `let d = new Dog("Rex");` && lv_nl &&
      `console.log(d.speak());`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |Rex barks.| ).
  ENDMETHOD.

  METHOD test_class_expr_extends.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `var AbstractFile = class {` && lv_nl &&
      `  constructor(filename) { this.filename = filename; }` && lv_nl &&
      `  getFilename() { return this.filename; }` && lv_nl &&
      `};` && lv_nl &&
      `var MemoryFile = class extends AbstractFile {` && lv_nl &&
      `  constructor(filename, raw) {` && lv_nl &&
      `    this.raw = raw;` && lv_nl &&
      `  }` && lv_nl &&
      `  getRaw() { return this.raw; }` && lv_nl &&
      `};` && lv_nl &&
      `var f = new MemoryFile("test.abap", "WRITE");` && lv_nl &&
      `console.log(f.getRaw().substring(0, 3));`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |WRI| ).
  ENDMETHOD.

  METHOD test_class_expression.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `var Foo = class {` && lv_nl &&
      `  getValue() { return 42; }` && lv_nl &&
      `};` && lv_nl &&
      `var f = new Foo();` && lv_nl &&
      `console.log(f.getValue());`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |42| ).
  ENDMETHOD.

  METHOD test_substring_one_arg.
    DATA(lv_js) =
      `console.log("hello world".substring(6));`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |world| ).
  ENDMETHOD.

  METHOD test_plus_equals.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `let x = 10;` && lv_nl &&
      `x += 5;` && lv_nl &&
      `console.log(x);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |15| ).
  ENDMETHOD.

  METHOD test_string_replace.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `console.log("hello world".replace("world", "JS"));` && lv_nl &&
      `console.log("aabbcc".replace("b", "X"));` && lv_nl &&
      `console.log("hello".replace("xyz", "abc"));`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |hello JS aaXbcc hello| ).
  ENDMETHOD.

  METHOD test_class_expr_super.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `var Base = class {` && lv_nl &&
      `  constructor(v) { this.v = v; }` && lv_nl &&
      `  get() { return this.v; }` && lv_nl &&
      `};` && lv_nl &&
      `var Child = class extends Base {` && lv_nl &&
      `  constructor(v) { super(v); }` && lv_nl &&
      `};` && lv_nl &&
      `console.log(new Child("hello").get());`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |hello| ).
  ENDMETHOD.

  METHOD test_super_method_call.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `class Base {` && lv_nl &&
      `  greet() { return "Hello"; }` && lv_nl &&
      `}` && lv_nl &&
      `class Child extends Base {` && lv_nl &&
      `  greet() { return super.greet() + " World"; }` && lv_nl &&
      `}` && lv_nl &&
      `console.log(new Child().greet());`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |Hello World| ).
  ENDMETHOD.

  METHOD test_trim.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `console.log("  hello  ".trim());` && lv_nl &&
      `console.log("  hello".trim());` && lv_nl &&
      `console.log("hello  ".trim());` && lv_nl &&
      `console.log("hello".trim());` && lv_nl &&
      `console.log("   ".trim());` && lv_nl &&
      `console.log("\t hello \t".trim());` && lv_nl &&
      `console.log("\n hello \n".trim());` && lv_nl &&
      `console.log("\r hello \r".trim());` && lv_nl &&
      `console.log("\t\n\r hello \r\n\t".trim());`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |hello hello hello hello hello hello hello hello| ).
  ENDMETHOD.

  METHOD test_trim_end.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `console.log("  hello  ".trimEnd());` && lv_nl &&
      `console.log("  hello".trimEnd());` && lv_nl &&
      `console.log("hello  ".trimEnd());`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |hello hello hello| ).
  ENDMETHOD.

  METHOD test_replace_regex.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `console.log("hello world".replace(/world/, "JS"));` && lv_nl &&
      `console.log("aabbcc".replace(/b/g, "X"));` && lv_nl &&
      `console.log("Hello World".replace(/hello/i, "hi"));` && lv_nl &&
      `console.log("Hello hello HELLO".replace(/hello/gi, "hi"));`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |hello JS aaXXcc hi World hi hi hi| ).
  ENDMETHOD.

  METHOD test_optional_chain_arr.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `const arr = ["hello"];` && lv_nl &&
      `const x = arr[1]?.toUpperCase();` && lv_nl &&
      `console.log(x);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |undefined| ).
  ENDMETHOD.

  METHOD test_optional_chain.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `let o = {a: {b: 42}};` && lv_nl &&
      `console.log(o?.a?.b);` && lv_nl &&
      `console.log(o?.x?.y);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |42 undefined| ).
  ENDMETHOD.

  METHOD test_optional_chain_fn.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `const o = {` && lv_nl &&
      `  method: function() {` && lv_nl &&
      `    return function() { return 42; };` && lv_nl &&
      `  }` && lv_nl &&
      `};` && lv_nl &&
      `const fn = o.method();` && lv_nl &&
      `console.log("fn?.(): " + fn?.());`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |fn?.(): 42| ).
  ENDMETHOD.

  METHOD test_obj_shorthand.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `function foo() {` && lv_nl &&
      `    let bar = 2` && lv_nl &&
      `    return {bar};` && lv_nl &&
      `}` && lv_nl &&
      `console.log(foo().bar);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |2| ).
  ENDMETHOD.

  METHOD test_static_method_computed.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `var C = class {` && lv_nl &&
      `  static m() {` && lv_nl &&
      `    var obj = {fn: function() { return 42; }};` && lv_nl &&
      `    var k = "fn";` && lv_nl &&
      `    var ret = [];` && lv_nl &&
      `    ret.push(obj[k]());` && lv_nl &&
      `    return ret;` && lv_nl &&
      `  }` && lv_nl &&
      `};` && lv_nl &&
      `console.log("should print");` && lv_nl &&
      `console.log(C.m()[0]);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |should print 42| ).
  ENDMETHOD.

  METHOD test_object_keys.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `let o = {a: 1, b: 2};` && lv_nl &&
      `let keys = Object.keys(o);` && lv_nl &&
      `console.log(keys.length);` && lv_nl &&
      `console.log(keys[0]);` && lv_nl &&
      `console.log(keys[1]);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |2 a b| ).
  ENDMETHOD.

  METHOD test_object_define_property.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `let o = {};` && lv_nl &&
      `Object.defineProperty(o, "p", {value: 42});` && lv_nl &&
      `console.log(o.p);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |42| ).
  ENDMETHOD.

  METHOD test_defprop_getter.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `let obj = {};` && lv_nl &&
      `Object.defineProperty(obj, 'a', {` && lv_nl &&
      `    get: () => { return x; }` && lv_nl &&
      `});` && lv_nl &&
      `let x = 1;` && lv_nl &&
      `console.log(obj.a);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |1| ).
  ENDMETHOD.

  METHOD test_defprop_bundle.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `var target = {};` && lv_nl &&
      `var all = { At: () => "Value" };` && lv_nl &&
      `var __defProp = Object.defineProperty;` && lv_nl &&
      `try {` && lv_nl &&
      `  console.log("DefProp type: " + typeof __defProp);` && lv_nl &&
      `  __defProp(target, "At", { get: all["At"], enumerable: true });` && lv_nl &&
      `  console.log("Target.At type: " + typeof target.At);` && lv_nl &&
      `} catch (e) {` && lv_nl &&
      `  console.log("Error: " + e);` && lv_nl &&
      `}`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |DefProp type: function Target.At type: string| ).
  ENDMETHOD.

  METHOD test_defprop_assign.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `var __defProp = Object.defineProperty;` && lv_nl &&
      `console.log(typeof __defProp);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |function| ).
  ENDMETHOD.

  METHOD test_to_upper_case.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( |console.log("hello".toUpperCase())| ) )
      exp = |HELLO| ).
  ENDMETHOD.

  METHOD test_to_lower_case.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( |console.log("HELLO".toLowerCase())| ) )
      exp = |hello| ).
  ENDMETHOD.

  METHOD test_string_starts_with.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `console.log("hello world".startsWith("hello"));` && lv_nl &&
      `console.log("hello world".startsWith("world"));` && lv_nl &&
      `console.log("hello world".startsWith("world", 6));` && lv_nl &&
      `console.log("hello world".startsWith("hello", 1));` && lv_nl &&
      `console.log("".startsWith(""));` && lv_nl &&
      `console.log("abc".startsWith(""));`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |true false true false true true| ).
  ENDMETHOD.

  METHOD test_string_ends_with.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `console.log("hello world".endsWith("world"));` && lv_nl &&
      `console.log("hello world".endsWith("hello"));` && lv_nl &&
      `console.log("hello world".endsWith("hello", 5));` && lv_nl &&
      `console.log("hello world".endsWith("world", 10));` && lv_nl &&
      `console.log("".endsWith(""));` && lv_nl &&
      `console.log("abc".endsWith(""));`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |true false true false true true| ).
  ENDMETHOD.

  METHOD test_string_last_index_of.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `console.log("hello world".lastIndexOf("l"));` && lv_nl &&
      `console.log("hello world".lastIndexOf("l", 8));` && lv_nl &&
      `console.log("hello world".lastIndexOf("l", 2));` && lv_nl &&
      `console.log("hello world".lastIndexOf("world"));` && lv_nl &&
      `console.log("hello world".lastIndexOf("world", 5));` && lv_nl &&
      `console.log("hello world".lastIndexOf("notfound"));`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |9 3 2 6 -1 -1| ).
  ENDMETHOD.

  METHOD test_string_split.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `const res1 = "a,b,c".split(",");` && lv_nl &&
      `console.log(res1.length + " " + res1[0] + " " + res1[2]);` && lv_nl &&
      `const res2 = "hello".split("");` && lv_nl &&
      `console.log(res2.length + " " + res2[0] + " " + res2[4]);` && lv_nl &&
      `const res3 = "a,b,c".split(",", 2);` && lv_nl &&
      `console.log(res3.length + " " + res3[1]);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |3 a c 5 h o 2 b| ).
  ENDMETHOD.

  METHOD test_for_in.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `let keys = [];` && lv_nl &&
      `let obj = {a: 1, b: 2};` && lv_nl &&
      `for (const k in obj) { keys.push(k); }` && lv_nl &&
      `console.log(keys.length);` && lv_nl &&
      `keys.sort();` && lv_nl &&
      `console.log(keys[0]);` && lv_nl &&
      `console.log(keys[1]);` && lv_nl.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |2 a b| ).
  ENDMETHOD.

  METHOD test_splice.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `let res = "";` && lv_nl &&
      `let arr = [10, 20, 30, 40];` && lv_nl &&
      `let removed = arr.splice(1, 2, 99);` && lv_nl &&
      `res = removed.length + " " + removed[0] + " " + arr.length + " " + arr[1];` && lv_nl &&
      `console.log(res);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = `2 20 3 99` ).
  ENDMETHOD.

  METHOD test_sort.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `let arr = [30, 10, 20];` && lv_nl &&
      `arr.sort();` && lv_nl &&
      `console.log(arr[0] + " " + arr[1] + " " + arr[2]);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = `10 20 30` ).
  ENDMETHOD.

  METHOD test_build_splits.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `function buildSplits(tokens) {` && lv_nl &&
      `  const res = [];` && lv_nl &&
      `  const before = [];` && lv_nl &&
      `  let prevRow = tokens[0].row;` && lv_nl &&
      `  for (let i = 0; i < tokens.length; i++) {` && lv_nl &&
      `    if (tokens[i].row !== prevRow) {` && lv_nl &&
      `      res.push({ first: [...before], second: [...tokens].splice(i) });` && lv_nl &&
      `    }` && lv_nl &&
      `    prevRow = tokens[i].row;` && lv_nl &&
      `    before.push(tokens[i]);` && lv_nl &&
      `  }` && lv_nl &&
      `  return res;` && lv_nl &&
      `}` && lv_nl &&
      `const splits = buildSplits([{row: 1}, {row: 2}]);` && lv_nl &&
      `for (const split of splits) {` && lv_nl &&
      `  console.log("first: " + split.first.length + ", second: " + split.second.length);` && lv_nl &&
      `}`.
    TRY.
      cl_abap_unit_assert=>assert_equals(
        act = trim( zcl_mjs=>eval( lv_js ) )
        exp = `first: 1, second: 1` ).
    CATCH zcx_mjs_throw INTO DATA(lx).
      cl_abap_unit_assert=>fail( lx->val-str ).
    ENDTRY.
  ENDMETHOD.

  METHOD test_spread.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `const dest = [];` && lv_nl &&
      `const arr = [1, 2, 3];` && lv_nl &&
      `dest.push(...arr);` && lv_nl &&
      `console.log("length expected 3, got: " + dest.length);` && lv_nl &&
      `console.log("first element expected 1, got: " + dest[0]);`.

    DATA(lv_r) = zcl_mjs=>eval( lv_js ).

    cl_abap_unit_assert=>assert_true(
      act = boolc( lv_r CS |length expected 3, got: 3| )
      msg = |Spread test: length mismatch: { lv_r }| ).
    cl_abap_unit_assert=>assert_true(
      act = boolc( lv_r CS |first element expected 1, got: 1| )
      msg = |Spread test: first element mismatch: { lv_r }| ).
  ENDMETHOD.

  METHOD test_regexp.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `const rx = /abc/i;` && lv_nl &&
      `console.log("pattern: " + rx.source);` && lv_nl &&
      `console.log("global: " + rx.global);` && lv_nl &&
      `console.log("ignoreCase: " + rx.ignoreCase);` && lv_nl &&
      `const res = "ABC".replace(rx, "X");` && lv_nl &&
      `console.log("result: " + res);`.

    DATA(lv_r) = zcl_mjs=>eval( lv_js ).

    " Note: currently RegExp is a primitive-like type 8, and doesn't fully support properties
    " This test will likely show 'undefined' for .source, .global, .ignoreCase until implemented.
    " However, .replace() uses type 8 internally.
    cl_abap_unit_assert=>assert_true(
      act = boolc( lv_r CS |result: X| )
      msg = |RegExp replace result mismatch: { lv_r }| ).
  ENDMETHOD.

  METHOD test_new_regexp.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `const rx = new RegExp("abc", "i");` && lv_nl &&
      `const res = "ABC".replace(rx, "X");` && lv_nl &&
      `console.log("result: " + res);`.

    DATA(lv_r) = zcl_mjs=>eval( lv_js ).

    cl_abap_unit_assert=>assert_true(
      act = boolc( lv_r CS |result: X| )
      msg = |new RegExp constructor result mismatch: { lv_r }| ).
  ENDMETHOD.

  METHOD test_new_set.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `const s = new Set();` && lv_nl &&
      `console.log("result: " + typeof s);`.

    DATA(lv_r) = zcl_mjs=>eval( lv_js ).

    cl_abap_unit_assert=>assert_true(
      act = boolc( lv_r CS |result: object| )
      msg = |new Set() constructor result mismatch: { lv_r }| ).
  ENDMETHOD.

  METHOD test_set_has.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `const s = new Set([1, 2, "abc"]);` && lv_nl &&
      `console.log("has 1: " + s.has(1));` && lv_nl &&
      `console.log("has 2: " + s.has(2));` && lv_nl &&
      `console.log("has abc: " + s.has("abc"));` && lv_nl &&
      `console.log("has 4: " + s.has(4));`.

    DATA(lv_r) = zcl_mjs=>eval( lv_js ).

    cl_abap_unit_assert=>assert_true(
      act = boolc( lv_r CS |has 1: true| )
      msg = |Set.has(1) mismatch: { lv_r }| ).
    cl_abap_unit_assert=>assert_true(
      act = boolc( lv_r CS |has 2: true| )
      msg = |Set.has(2) mismatch: { lv_r }| ).
    cl_abap_unit_assert=>assert_true(
      act = boolc( lv_r CS |has abc: true| )
      msg = |Set.has("abc") mismatch: { lv_r }| ).
    cl_abap_unit_assert=>assert_true(
      act = boolc( lv_r CS |has 4: false| )
      msg = |Set.has(4) mismatch: { lv_r }| ).
  ENDMETHOD.

  METHOD test_namespace_class.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `const Namespace = {};` && lv_nl &&
      `Namespace.Move = class Move {};` && lv_nl &&
      `const move = new Namespace.Move();` && lv_nl &&
      `console.log(move instanceof Namespace.Move);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |true| ).
  ENDMETHOD.

  METHOD test_class_typeof.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `class MyClass {}` && lv_nl &&
      `console.log(typeof MyClass);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |function| ).
  ENDMETHOD.

  METHOD test_array_filter.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `const arr = [1, 2, 3, 4, 5];` && lv_nl &&
      `const filtered = arr.filter(x => x > 2);` && lv_nl &&
      `console.log(filtered.length);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |3| ).
  ENDMETHOD.

  METHOD test_date_now.
    DATA(lv_js) = `console.log(Date.now() > 0);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |true| ).
  ENDMETHOD.

  METHOD test_array_map.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `const arr = [1, 2, 3];` && lv_nl &&
      `const mapped = arr.map(x => x * 2);` && lv_nl &&
      `console.log(mapped[0] + " " + mapped.length);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |2 3| ).
  ENDMETHOD.

  METHOD test_rest_map.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `function double(...rest) {` && lv_nl &&
      `  return rest.map(x => x * 2);` && lv_nl &&
      `}` && lv_nl &&
      `const res = double(1, 2, 3);` && lv_nl &&
      `console.log(res[0] + " " + res.length);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |2 3| ).
  ENDMETHOD.

  METHOD test_replace_regex_anchor.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( `console.log("abc".replace(/^/g, "x"));` ) )
      exp = |xabc| ).
  ENDMETHOD.

  METHOD test_replace_empty_regex.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `var str = "abc";` && lv_nl &&
      `var res = str.replace(new RegExp(""), "-");` && lv_nl &&
      `console.log(res);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |-abc| ).
  ENDMETHOD.

  METHOD test_replace_empty_regex_g.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( `console.log("abc".replace(/(?:)/g, "-"));` ) )
      exp = |-a-b-c-| ).
  ENDMETHOD.

  METHOD test_replace_empty_regex_look.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( `console.log("abc".replace(/(?=)/g, "-"));` ) )
      exp = |-a-b-c-| ).
  ENDMETHOD.

  METHOD test262.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `let pass = 0;` && lv_nl &&
      `let fail = 0;` && lv_nl &&
      `function assert(cond, msg) {` && lv_nl &&
      `  if (cond) { pass = pass + 1; } else { fail = fail + 1; console.log("FAIL: " + msg); }` && lv_nl &&
      `}` && lv_nl &&
      `assert(0 === 0, "zero");` && lv_nl &&
      `assert(1 === 1, "one");` && lv_nl &&
      `assert(0.5 === 0.5, "float");` && lv_nl &&
      `assert(typeof 42 === "number", "typeof number");` && lv_nl &&
      `assert(typeof "hi" === "string", "typeof string");` && lv_nl &&
      `assert(typeof true === "boolean", "typeof bool");` && lv_nl &&
      `assert(typeof undefined === "undefined", "typeof undef");` && lv_nl &&
      `assert(6 * 7 === 42, "mul");` && lv_nl &&
      `assert(10 % 3 === 1, "mod");` && lv_nl &&
      `assert(2 + 3 === 5, "add");` && lv_nl &&
      `assert(10 - 3 === 7, "sub");` && lv_nl &&
      `assert("a" + "b" === "ab", "str concat");` && lv_nl &&
      `assert(1 < 2, "lt");` && lv_nl &&
      `assert(2 > 1, "gt");` && lv_nl &&
      `assert(1 <= 1, "lte");` && lv_nl &&
      `assert(2 >= 2, "gte");` && lv_nl &&
      `assert(1 === 1, "strict eq");` && lv_nl &&
      `assert(1 !== 2, "strict neq");` && lv_nl &&
      `assert(true && true, "and tt");` && lv_nl &&
      `assert(!(true && false), "and tf");` && lv_nl &&
      `assert(true || false, "or tf");` && lv_nl &&
      `assert(!(false || false), "or ff");` && lv_nl &&
      `let x = 0;` && lv_nl &&
      `if (true) { x = 1; } else { x = 2; }` && lv_nl &&
      `assert(x === 1, "if true");` && lv_nl &&
      `if (false) { x = 1; } else { x = 2; }` && lv_nl &&
      `assert(x === 2, "if false");` && lv_nl &&
      `let sum = 0; let i = 0;` && lv_nl &&
      `while (i < 5) { sum = sum + i; i = i + 1; }` && lv_nl &&
      `assert(sum === 10, "while");` && lv_nl &&
      `sum = 0;` && lv_nl &&
      `for (let j = 0; j < 5; j = j + 1) { sum = sum + j; }` && lv_nl &&
      `assert(sum === 10, "for");` && lv_nl &&
      `sum = 0;` && lv_nl &&
      `for (let j = 0; j < 100; j = j + 1) { if (j === 5) break; sum = sum + j; }` && lv_nl &&
      `assert(sum === 10, "break");` && lv_nl &&
      `sum = 0;` && lv_nl &&
      `for (let j = 0; j < 5; j = j + 1) { if (j === 2) continue; sum = sum + j; }` && lv_nl &&
      `assert(sum === 8, "continue");` && lv_nl &&
      `function double(n) { return n * 2; }` && lv_nl &&
      `assert(double(21) === 42, "return");` && lv_nl &&
      `let sw = "";` && lv_nl &&
      `switch(2) { case 1: sw = "one"; break; case 2: sw = "two"; break; }` && lv_nl &&
      `assert(sw === "two", "switch");` && lv_nl &&
      `function factorial(n) { if (n <= 1) return 1; return n * factorial(n - 1); }` && lv_nl &&
      `assert(factorial(10) === 3628800, "factorial");` && lv_nl &&
      `function counter() { let n = 0; function inc() { n = n + 1; return n; } return inc; }` && lv_nl &&
      `let c = counter();` && lv_nl &&
      `assert(c() === 1, "closure 1");` && lv_nl &&
      `assert(c() === 2, "closure 2");` && lv_nl &&
      `let arr = [10, 20, 30];` && lv_nl &&
      `assert(arr.length === 3, "arr len");` && lv_nl &&
      `assert(arr[1] === 20, "arr idx");` && lv_nl &&
      `arr.push(40);` && lv_nl &&
      `assert(arr.length === 4, "arr push");` && lv_nl &&
      `let obj = {x: 1, y: 2};` && lv_nl &&
      `assert(obj.x === 1, "obj prop");` && lv_nl &&
      `obj.z = 3;` && lv_nl &&
      `assert(obj.z === 3, "obj assign");` && lv_nl &&
      `assert("hello".length === 5, "str len");` && lv_nl &&
      `assert("hello".charAt(1) === "e", "charAt");` && lv_nl &&
      `assert("hello".indexOf("ll") === 2, "indexOf");` && lv_nl &&
      `assert("hello".substring(1, 3) === "el", "substring");` && lv_nl &&
      `assert("A".charCodeAt(0) === 65, "charCodeAt");` && lv_nl &&
      `class Point { constructor(x, y) { this.x = x; this.y = y; } sum() { return this.x + this.y; } }` && lv_nl &&
      `let p = new Point(3, 4);` && lv_nl &&
      `assert(p.sum() === 7, "class method");` && lv_nl &&
      `console.log("PASS=" + pass + " FAIL=" + fail);`.

    cl_abap_unit_assert=>assert_char_cp(
      act = zcl_mjs=>eval( lv_js )
      exp = `*PASS=44 FAIL=0*` ).
  ENDMETHOD.

  METHOD test_function_tostring.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `function greet() { return "hi"; }` && lv_nl &&
      `var s = greet.toString();` && lv_nl &&
      `var same = (greet + 1 === s + 1);` && lv_nl &&
      `console.log(same);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = `true` ).
  ENDMETHOD.

  METHOD test_function_props.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `function f() {}` && lv_nl &&
      `f.myProp = 42;` && lv_nl &&
      `console.log(f.myProp);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = `42` ).
  ENDMETHOD.

  METHOD test_function_plus_one.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `function f() { return 0; }` && lv_nl &&
      `f.valueOf = function() { return 1; };` && lv_nl &&
      `console.log(f + 1);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = `2` ).
  ENDMETHOD.

  METHOD test_func_tostring_ovr.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `function f3(){ return 0; }` && lv_nl &&
      `f3.toString = function() {return 1;};` && lv_nl &&
      `console.log(1 + f3);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = `2` ).
  ENDMETHOD.

  METHOD test_json_stringify_prim.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `console.log(JSON.stringify(42));` && lv_nl &&
      `console.log(JSON.stringify("hello"));` && lv_nl &&
      `console.log(JSON.stringify(true));` && lv_nl &&
      `console.log(JSON.stringify(false));` && lv_nl &&
      `console.log(JSON.stringify(null));`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |42 "hello" true false null| ).
  ENDMETHOD.

  METHOD test_json_stringify_obj.
    DATA(lv_js) =
      `console.log(JSON.stringify({a: 1, b: "x"}));`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |\{"a":1,"b":"x"\}| ).
  ENDMETHOD.

  METHOD test_json_stringify_arr.
    DATA(lv_js) =
      `console.log(JSON.stringify([1, "two", true, null]));`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |[1,"two",true,null]| ).
  ENDMETHOD.

  METHOD test_json_stringify_nested.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `let o = {x: {y: 2}, arr: [1, 2, 3]};` && lv_nl &&
      `console.log(JSON.stringify(o));`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |\{"x":\{"y":2\},"arr":[1,2,3]\}| ).
  ENDMETHOD.

  METHOD test_json_stringify_escape.
    DATA(lv_js) =
      `console.log(JSON.stringify("say \"hi\""));`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |"say \\"hi\\""| ).
  ENDMETHOD.

  METHOD test_unicode_escape.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `console.log("\u0041");` && lv_nl &&
      `console.log("\u00e9" === "\u00E9");` && lv_nl &&
      `console.log("\u2029".charCodeAt(0));`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |A true 8233| ).
  ENDMETHOD.

  METHOD test_json_stringify_special.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `console.log(JSON.stringify(undefined));` && lv_nl &&
      `console.log(JSON.stringify(NaN));` && lv_nl &&
      `console.log(JSON.stringify(Infinity));` && lv_nl &&
      `let o = {a: 1, b: undefined, c: 2};` && lv_nl &&
      `console.log(JSON.stringify(o));`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |undefined null null \{"a":1,"c":2\}| ).
  ENDMETHOD.

  METHOD test_func_hoist.
    " Inner function declaration hoisted: callable before its declaration site
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `function outer() {` && lv_nl &&
      `  var result = inner();` && lv_nl &&
      `  function inner() { return 42; }` && lv_nl &&
      `  return result;` && lv_nl &&
      `}` && lv_nl &&
      `console.log(outer());`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |42| ).
  ENDMETHOD.

  METHOD test_binary_literal.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `console.log(0b0);`   && lv_nl &&
      `console.log(0b1);`   && lv_nl &&
      `console.log(0b10);`  && lv_nl &&
      `console.log(0B1010);` && lv_nl &&
      `console.log(0b11111111);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |0 1 2 10 255| ).
  ENDMETHOD.

  METHOD test_octal_literal.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `console.log(0o0);`  && lv_nl &&
      `console.log(0o7);`  && lv_nl &&
      `console.log(0o10);` && lv_nl &&
      `console.log(0O17);` && lv_nl &&
      `console.log(0o377);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |0 7 8 15 255| ).
  ENDMETHOD.

  METHOD test_legacy_octal_literal.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `console.log(00);`   && lv_nl &&
      `console.log(07);`   && lv_nl &&
      `console.log(070);`  && lv_nl &&
      `console.log(077);`  && lv_nl &&
      `console.log(0377);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |0 7 56 63 255| ).
  ENDMETHOD.

  METHOD test_comment.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `function run(version) {` && lv_nl &&
      `  if (version === "v702" /* v702 */) {` && lv_nl &&
      `    return "old";` && lv_nl &&
      `  }` && lv_nl &&
      `  return "new";` && lv_nl &&
      `}` && lv_nl &&
      `console.log(run("v750"));`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |new| ).
  ENDMETHOD.

  METHOD test_iife.
    " Named function expressions called immediately (IIFE) should return the call result
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `var x = (function(arg){ return arg; })(42);` && lv_nl &&
      `console.log(x);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |42| ).
  ENDMETHOD.

  METHOD test_named_func_expr_scope.
    " ECMAScript S13_A2: the name of a named function expression must NOT
    " be visible in the enclosing scope — only inside the function body.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `var x = (function __func(arg){ return arg; })(1);` && lv_nl &&
      `console.log(x);` && lv_nl &&
      `console.log(typeof __func);`.
    DATA(lv_r) = zcl_mjs=>eval( lv_js ).
    cl_abap_unit_assert=>assert_true(
      act = boolc( lv_r CS |1| )
      msg = |Named func expr: expected x=1, got: { lv_r }| ).
    cl_abap_unit_assert=>assert_true(
      act = boolc( lv_r CS |undefined| )
      msg = |Named func expr: __func must be undefined outside, got: { lv_r }| ).
  ENDMETHOD.

  METHOD test_reference_error.
    " Accessing an undeclared variable must throw ReferenceError (zcx_mjs_throw),
    " not silently return undefined.
    TRY.
        zcl_mjs=>eval( |e1| ).
        cl_abap_unit_assert=>fail( |Expected zcx_mjs_throw for undeclared variable| ).
      CATCH zcx_mjs_throw INTO DATA(lx).
        " Success: ReferenceError was thrown
        cl_abap_unit_assert=>assert_true(
          act = boolc( lx->val-str CS |ReferenceError| )
          msg = |Wrong error message: { lx->val-str }| ).
    ENDTRY.
    " typeof on an undeclared variable must NOT throw — returns 'undefined'
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( |console.log(typeof e1)| ) )
      exp = |undefined| ).
  ENDMETHOD.

  METHOD test_arrow_function.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `var add = (a, b) => a + b;` && lv_nl &&
      `console.log(add(3, 2));`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |5| ).
  ENDMETHOD.

  METHOD test_void.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `console.log(void 0);` && lv_nl &&
      `console.log(void "hello");` && lv_nl &&
      `console.log(typeof void 0);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |undefined undefined undefined| ).
  ENDMETHOD.

  METHOD test_plain_call_this.
    " In sloppy mode, plain function calls get the global object as 'this'.
    " Mutating this inside a plain call is visible via the global 'this' reference.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `var global = this;` && lv_nl &&
      `function setFoo() { this.foo = "bar"; }` && lv_nl &&
      `setFoo();` && lv_nl &&
      `console.log(global.foo);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |bar| ).
  ENDMETHOD.

  METHOD test_negative_literal.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `var a = -1;` && lv_nl &&
      `var b = 0 - 1;` && lv_nl &&
      `console.log(a);` && lv_nl &&
      `console.log(b);` && lv_nl &&
      `console.log(a === -1);` && lv_nl &&
      `console.log(b === -1);` && lv_nl &&
      `console.log(a === b);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |-1 -1 true true true| ).
  ENDMETHOD.

  METHOD test_comma_expr.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    " comma expression in grouping returns last value
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( |var x = (1 + 1, 10 + 5); console.log(x);| ) )
      exp = |15| ).
    " comma expression prevents infinite loop in for-loop condition
    DATA(lv_js) =
      `var run = true;` && lv_nl &&
      `var i = 0;` && lv_nl &&
      `for (; run && (i = i + 1, i < 3); ) {` && lv_nl &&
      `  if (i >= 2) { run = false; }` && lv_nl &&
      `}` && lv_nl &&
      `console.log(i);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |2| ).
  ENDMETHOD.

  METHOD test_regex_in_class1.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `var F = class {` && lv_nl &&
      `  m() { return /a+/; }` && lv_nl &&
      `};` && lv_nl &&
      `console.log("OK");`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |OK| ).
  ENDMETHOD.

  METHOD test_regex_in_class2.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `var F = class {` && lv_nl &&
      `  m() { return /a+/; }` && lv_nl &&
      `};` && lv_nl &&
      `// c` && lv_nl &&
      `console.log("OK");`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |OK| ).
  ENDMETHOD.

  METHOD test_regex_in_class3.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
* this regex is invalid? but anyhow, should tokenize okay
    DATA(lv_js) =
      `var F = class {` && lv_nl &&
      `  m() { return /[x/]+$/; }` && lv_nl &&
      `};` && lv_nl &&
      `// comment` && lv_nl &&
      `console.log("OK");`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |OK| ).
  ENDMETHOD.

  METHOD test_dflt_params.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    " Missing arg uses default
    DATA(lv_js) =
      `function greet(name, msg = "hello") { return msg + " " + name; }` && lv_nl &&
      `console.log(greet("world"));`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |hello world| ).
    " Explicit undefined uses default
    lv_js =
      `function f(a, b = 42) { return b; }` && lv_nl &&
      `console.log(f(1, undefined));`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |42| ).
    " Explicit value overrides default
    lv_js =
      `function f(a = 10) { return a; }` && lv_nl &&
      `console.log(f(99));`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |99| ).
  ENDMETHOD.

  METHOD test_function_length.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    " Basic: required params only
    DATA(lv_js) =
      `function f(a, b, c) {}` && lv_nl &&
      `console.log(f.length);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = `3` ).
    " Trailing comma does not add a phantom param
    lv_js =
      `function f(a,) {}` && lv_nl &&
      `console.log(f.length);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = `1` ).
    " Multiple params with trailing comma
    lv_js =
      `function f(a, b,) {}` && lv_nl &&
      `console.log(f.length);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = `2` ).
    " Params before first default count; default and trailing comma excluded
    lv_js =
      `function f(a, b = 39,) {}` && lv_nl &&
      `console.log(f.length);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = `1` ).
    " All-default params: length = 0
    lv_js =
      `function f(x = 42) {}` && lv_nl &&
      `console.log(f.length);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = `0` ).
  ENDMETHOD.

  METHOD test_ternary.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    " Basic true branch
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( |console.log(1 ? "yes" : "no")| ) )
      exp = |yes| ).
    " Basic false branch
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( |console.log(0 ? "yes" : "no")| ) )
      exp = |no| ).
    " True branch with expression (was broken: ? was silently dropped)
    DATA(lv_js) =
      `var msg = "hello";` && lv_nl &&
      `var y = msg ? msg + ": " : "";` && lv_nl &&
      `console.log(y);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |hello:| ).
    " Nested ternary
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( |console.log(1 > 0 ? "gt" : "le")| ) )
      exp = |gt| ).
  ENDMETHOD.

  METHOD test_string_line_cont.
    " Backslash + line terminator inside a string literal = line continuation (produces nothing)
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    " "\<LF>x" === "x"
    DATA(lv_js) = `console.log("\` && lv_nl && `x" === "x");`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |true| ).
    " "a\<LF>b" === "ab"
    DATA(lv_js2) = `console.log("a\` && lv_nl && `b" === "ab");`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js2 ) )
      exp = |true| ).
    " Empty line continuation: "\<LF>" === ""
    DATA(lv_js3) = `console.log("\` && lv_nl && `" === "");`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js3 ) )
      exp = |true| ).
  ENDMETHOD.

  METHOD test_for_const_of.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `let sum = 0;` && lv_nl &&
      `for (const x of [10, 20, 30]) {` && lv_nl &&
      `  sum = sum + x;` && lv_nl &&
      `}` && lv_nl &&
      `console.log(sum);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |60| ).
  ENDMETHOD.

  METHOD test_for_of_undef_or_arr.
    DATA(lv_js) = `for (let x of undefined || []) { console.log(x); } console.log("done");`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |done| ).
  ENDMETHOD.

  METHOD test_for_of_map.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `const wa = [].map(x => x);` && lv_nl &&
      `for (const w of wa) { console.log(w); }` && lv_nl &&
      `console.log("done");`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |done| ).
  ENDMETHOD.

  METHOD test_substr.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `console.log("abcdefghij".substr(1, 2));` && lv_nl &&
      `console.log("abcdefghij".substr(-3, 2));` && lv_nl &&
      `console.log("abcdefghij".substr(-3));` && lv_nl &&
      `console.log("abcdefghij".substr(1));` && lv_nl &&
      `console.log("abcdefghij".substr(-20, 2));` && lv_nl &&
      `console.log("abcdefghij".substr(20, 2));`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |bc hi hij bcdefghij ab| ).
  ENDMETHOD.

  METHOD test_lexer_loop.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `var Lexer = class {` && lv_nl &&
      `  process() {` && lv_nl &&
      `    console.log("BEFORE LOOP");` && lv_nl &&
      `    for (; ; ) {` && lv_nl &&
      `       console.log("IN LOOP");` && lv_nl &&
      `       break;` && lv_nl &&
      `    }` && lv_nl &&
      `    console.log("AFTER LOOP");` && lv_nl &&
      `  }` && lv_nl &&
      `};` && lv_nl &&
      `var l = new Lexer();` && lv_nl &&
      `l.process();`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |BEFORE LOOP IN LOOP AFTER LOOP| ).
  ENDMETHOD.

  METHOD test_instanceof.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `class A {}` && lv_nl &&
      `class B extends A {}` && lv_nl &&
      `let a = new A();` && lv_nl &&
      `let b = new B();` && lv_nl &&
      `console.log(a instanceof A);` && lv_nl &&
      `console.log(b instanceof B);` && lv_nl &&
      `console.log(b instanceof A);` && lv_nl &&
      `console.log(a instanceof B);` && lv_nl &&
      `console.log({} instanceof Object);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |true true true false true| ).
  ENDMETHOD.

  METHOD test_destructuring.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `var C = class {` && lv_nl &&
      `  removePragma(tokens) {` && lv_nl &&
      `    return { tokens: ["a", "b"], pragmas: ["p1"] };` && lv_nl &&
      `  }` && lv_nl &&
      `  run(tokens) {` && lv_nl &&
      `    const { tokens: filtered, pragmas } = this.removePragma(tokens);` && lv_nl &&
      `    console.log(filtered.length);` && lv_nl &&
      `    console.log(pragmas[0]);` && lv_nl &&
      `  }` && lv_nl &&
      `};` && lv_nl &&
      `new C().run([]);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |2 p1| ).
  ENDMETHOD.

  METHOD test_inc_dec.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `let x = 10;` && lv_nl &&
      `console.log(x++);` && lv_nl &&
      `console.log(++x);` && lv_nl &&
      `console.log(x--);` && lv_nl &&
      `console.log(--x);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |10 12 12 10| ).
  ENDMETHOD.

  METHOD test_for_loop_inc.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `let sum = 0;` && lv_nl &&
      `for (let i = 0; i < 5; i++) {` && lv_nl &&
      `  sum += i;` && lv_nl &&
      `}` && lv_nl &&
      `console.log(sum);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |10| ).
  ENDMETHOD.

  METHOD test_array_find.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `let arr = [5, 12, 8, 130, 44];` && lv_nl &&
      `let found = arr.find(e => e > 10);` && lv_nl &&
      `console.log(found);` && lv_nl &&
      `let notFound = arr.find(e => e > 200);` && lv_nl &&
      `console.log(notFound);`.
    cl_abap_unit_assert=>assert_equals(
      act = trim( zcl_mjs=>eval( lv_js ) )
      exp = |12 undefined| ).
  ENDMETHOD.

ENDCLASS.
