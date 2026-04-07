CLASS lcl_test DEFINITION FOR TESTING
  DURATION LONG
  RISK LEVEL HARMLESS.
  PRIVATE SECTION.
    METHODS test262 FOR TESTING RAISING zcx_mjs_runtime.
    METHODS bench_fib FOR TESTING RAISING zcx_mjs_runtime.
    METHODS bench_loop FOR TESTING RAISING zcx_mjs_runtime.
ENDCLASS.

CLASS lcl_test IMPLEMENTATION.

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
      `assert(10 / 3 === 10 / 3, "div");` && lv_nl &&
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
      `let sum = 0;` && lv_nl &&
      `let i = 0;` && lv_nl &&
      `while (i < 5) { sum = sum + i; i = i + 1; }` && lv_nl &&
      `assert(sum === 10, "while sum");` && lv_nl &&
      `sum = 0;` && lv_nl &&
      `for (let j = 0; j < 5; j = j + 1) { sum = sum + j; }` && lv_nl &&
      `assert(sum === 10, "for sum");` && lv_nl &&
      `sum = 0;` && lv_nl &&
      `for (let j = 0; j < 100; j = j + 1) { if (j === 5) break; sum = sum + j; }` && lv_nl &&
      `assert(sum === 10, "break");` && lv_nl &&
      `sum = 0;` && lv_nl &&
      `for (let j = 0; j < 5; j = j + 1) { if (j === 2) continue; sum = sum + j; }` && lv_nl &&
      `assert(sum === 8, "continue");` && lv_nl &&
      `function double(n) { return n * 2; }` && lv_nl &&
      `assert(double(21) === 42, "return");` && lv_nl &&
      `let sw = "";` && lv_nl &&
      `switch(2) { case 1: sw = "one"; break; case 2: sw = "two"; break; case 3: sw = "three"; break; }` && lv_nl &&
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
      `var instance = 60; var of = 6; var g = 2; var notRegExp = instance/of/g;` && lv_nl &&
      `assert(notRegExp === 5, "division vs regex");` && lv_nl &&
      `console.log("PASS=" + pass + " FAIL=" + fail);` && lv_nl.

    DATA(lv_r) = zcl_mjs=>eval( lv_js ).
    cl_abap_unit_assert=>assert_true(
      act = boolc( lv_r CS |PASS=46 FAIL=0| )
      msg = |Test262: expected PASS=46 FAIL=0, got: { lv_r }| ).
  ENDMETHOD.

  METHOD bench_fib.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `function fib(n) {` && lv_nl &&
      `  if (n < 2) return n;` && lv_nl &&
      `  return fib(n - 1) + fib(n - 2);` && lv_nl &&
      `}` && lv_nl &&
      `let r = fib(20);` && lv_nl &&
      `console.log("fib(20)=" + r);` && lv_nl.

    DATA lv_t1 TYPE i.
    DATA lv_t2 TYPE i.
    GET RUN TIME FIELD lv_t1.
    DATA(lv_r) = zcl_mjs=>eval( lv_js ).
    GET RUN TIME FIELD lv_t2.
    DATA(lv_ms) = ( lv_t2 - lv_t1 ) / 1000.
    cl_abap_unit_assert=>assert_true(
      act = boolc( lv_r CS |fib(20)=6765| )
      msg = |fib(20) expected 6765, got: { lv_r }| ).
  ENDMETHOD.

  METHOD bench_loop.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `let sum = 0;` && lv_nl &&
      `for (let i = 0; i < 10000; i = i + 1) { sum = sum + i; }` && lv_nl &&
      `console.log("sum=" + sum);` && lv_nl.

    DATA lv_t1 TYPE i.
    DATA lv_t2 TYPE i.
    GET RUN TIME FIELD lv_t1.
    DATA(lv_r) = zcl_mjs=>eval( lv_js ).
    GET RUN TIME FIELD lv_t2.
    DATA(lv_ms) = ( lv_t2 - lv_t1 ) / 1000.
    cl_abap_unit_assert=>assert_true(
      act = boolc( lv_r CS |sum=49995000| )
      msg = |loop sum expected 49995000, got: { lv_r }| ).
  ENDMETHOD.

ENDCLASS.
