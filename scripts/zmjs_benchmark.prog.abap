REPORT zmjs_benchmark.

CLASS lcl_test DEFINITION FOR TESTING
  DURATION MEDIUM
  RISK LEVEL HARMLESS.
  PRIVATE SECTION.
    METHODS test262 FOR TESTING.
    METHODS test_try_catch FOR TESTING.
    METHODS bench_fib FOR TESTING.
    METHODS bench_loop FOR TESTING.
    METHODS self_contained FOR TESTING.
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
      `console.log("PASS=" + pass + " FAIL=" + fail);` && lv_nl.

    DATA(lv_r) = zcl_mjs=>eval( lv_js ).
    cl_abap_unit_assert=>assert_char_cp(
      act = lv_r
      exp = `*PASS=45 FAIL=0*`
      msg = |Test262: { lv_r }| ).
  ENDMETHOD.

  METHOD test_try_catch.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `var pass = 0; var fail = 0;` && lv_nl &&
      `function assert(cond, msg) {` && lv_nl &&
      `  if (cond) { pass = pass + 1; }` && lv_nl &&
      `  else { fail = fail + 1; console.log("FAIL: " + msg); }` && lv_nl &&
      `}` && lv_nl &&
      `var caught = false;` && lv_nl &&
      `try { throw "oops"; } catch(e) { caught = (e === "oops"); }` && lv_nl &&
      `assert(caught, "throw string");` && lv_nl &&
      `var x = 0;` && lv_nl &&
      `try { x = 1; } catch(e) { x = 2; }` && lv_nl &&
      `assert(x === 1, "no throw no catch");` && lv_nl &&
      `var y = 0;` && lv_nl &&
      `try { throw 42; } catch(e) { y = e; }` && lv_nl &&
      `assert(y === 42, "throw number");` && lv_nl &&
      `function boom() { throw "bang"; }` && lv_nl &&
      `var msg = "";` && lv_nl &&
      `try { boom(); } catch(e) { msg = e; }` && lv_nl &&
      `assert(msg === "bang", "throw from func");` && lv_nl &&
      `console.log("PASS=" + pass + " FAIL=" + fail);` && lv_nl.
    DATA(lv_r) = zcl_mjs=>eval( lv_js ).
    cl_abap_unit_assert=>assert_char_cp(
      act = lv_r
      exp = `*PASS=4 FAIL=0*`
      msg = |try/catch: { lv_r }| ).
  ENDMETHOD.

  METHOD bench_fib.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `function fib(n) {` && lv_nl &&
      `  if (n < 2) return n;` && lv_nl &&
      `  return fib(n - 1) + fib(n - 2);` && lv_nl &&
      `}` && lv_nl &&
      `console.log(fib(20));` && lv_nl.
    DATA lv_t1 TYPE i.
    DATA lv_t2 TYPE i.
    GET RUN TIME FIELD lv_t1.
    DATA(lv_r) = zcl_mjs=>eval( lv_js ).
    GET RUN TIME FIELD lv_t2.
    DATA lv_ms TYPE i.
    lv_ms = ( lv_t2 - lv_t1 ) / 1000.
    DATA lv_trimmed TYPE string.
    lv_trimmed = lv_r.
    REPLACE ALL OCCURRENCES OF cl_abap_char_utilities=>newline IN lv_trimmed WITH ``.
    CONDENSE lv_trimmed.
    cl_abap_unit_assert=>assert_equals( act = lv_trimmed exp = |6765| msg = |fib| ).
    cl_abap_unit_assert=>fail( msg = |FIB20=6765 in { lv_ms }ms| ).
  ENDMETHOD.

  METHOD bench_loop.
    DATA(lv_nl) = cl_abap_char_utilities=>newline.
    DATA(lv_js) =
      `let s = 0;` && lv_nl &&
      `for (let i = 0; i < 10000; i = i + 1) { s = s + i; }` && lv_nl &&
      `console.log(s);` && lv_nl.
    DATA lv_t1 TYPE i.
    DATA lv_t2 TYPE i.
    GET RUN TIME FIELD lv_t1.
    DATA(lv_r) = zcl_mjs=>eval( lv_js ).
    GET RUN TIME FIELD lv_t2.
    DATA lv_ms TYPE i.
    lv_ms = ( lv_t2 - lv_t1 ) / 1000.
    DATA lv_trimmed TYPE string.
    lv_trimmed = lv_r.
    REPLACE ALL OCCURRENCES OF cl_abap_char_utilities=>newline IN lv_trimmed WITH ``.
    CONDENSE lv_trimmed.
    cl_abap_unit_assert=>assert_equals( act = lv_trimmed exp = |49995000| msg = |loop| ).
    cl_abap_unit_assert=>fail( msg = |LOOP10K=49995000 in { lv_ms }ms| ).
  ENDMETHOD.

  METHOD self_contained.
    SELECT obj_name FROM tadir
      WHERE pgmid = 'R3TR'
        AND devclass = '$ZMJS'
      INTO TABLE @DATA(lt_all).
    DATA lv_list TYPE string.
    LOOP AT lt_all ASSIGNING FIELD-SYMBOL(<o>).
      IF lv_list IS NOT INITIAL.
        lv_list = lv_list && `, `.
      ENDIF.
      lv_list = lv_list && <o>-obj_name.
    ENDLOOP.
    cl_abap_unit_assert=>assert_not_initial( act = lt_all msg = |$ZMJS empty| ).
    cl_abap_unit_assert=>fail( msg = |$ZMJS: { lines( lt_all ) } objects: { lv_list }| ).
  ENDMETHOD.
ENDCLASS.
