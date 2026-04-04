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
    METHODS test_substring_one_arg FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_extends FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_class_expression FOR TESTING RAISING zcx_mjs_runtime.
    METHODS test_class_expr_extends FOR TESTING RAISING zcx_mjs_runtime.

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

ENDCLASS.
