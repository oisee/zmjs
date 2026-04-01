# Changelog

All notable changes to ZMJS are documented here.

## [Unreleased]

## [0.3.1] — 2026-04-01

### Added
- **`finally` blocks** — now fully execute (previously parsed and silently discarded)
  - `try { } catch(e) { } finally { }` — finally runs after try/catch regardless of exception
  - `try { } finally { }` (no catch) — finally runs, then exception re-propagates
- **`var` hoisting from catch** — `var` declarations inside `catch` blocks now visible in outer scope
- **String escape sequences** — `\r` `\b` `\f` `\v` `\0` `\xNN` `\uNNNN` now decoded correctly
- **`Boolean()` constructor** — `Boolean(0)` → false, `Boolean("")` → false, `Boolean({})` → true
- **`Number()` and `String()` constructors** — type coercion builtins

### Fixed
- Empty catch body `catch(e) {}` was treated as "no catch" — exception was re-thrown instead of caught
  Root cause: `parseBlock` returned `nil` for empty blocks; evaluator used `nil` to mean "no catch"
  Fix: `parseBlock` now always returns a non-nil (but possibly empty) slice
- **ABAP**: `x'NN'` hex literal syntax in assignment statements is invalid — replaced with integer assignment (`lv_xb = 13. lv_xs = lv_xb.`)
- **ABAP**: wrong xstring→string conversion API — corrected to `cl_abap_codepage=>convert_from( source = xs codepage = '4110' )`

### Tests
- Go test262: **PASS=232 FAIL=34** out of 266 tests (was 231 in v0.3.0)

## [0.3.0] — 2026-04-01

### Added
- **try/catch/throw** — fully working exception handling
  - `throw expr` raises `ZCX_MJS_THROW` (inherits `cx_no_check`) carrying the JS value
  - `try { } catch(e) { }` catches it, binds the value to `e` in a new scope
  - `finally` blocks are parsed and discarded (no-op — ensures parse compatibility)
  - catch propagates `return` correctly back to the caller's env
- **Function expressions** — `function() { ... }` and `function name() { ... }` in expression position
  - Previously only function declarations (statements) worked; passing `function(){}` as an argument or assigning it to a variable caused parse corruption
  - Anonymous functions (`function() {}`) now return a value without defining a name in scope
- **Comma operator** in expression statements — `body = fn(), run = false;`
  - Parsing `expr1, expr2` as a sequence was silently dropping the second expression, causing infinite loops in `for` bodies using the comma idiom
- **`ZCX_MJS_THROW`** — new ABAP exception class (`cx_no_check`, carries `zif_mjs=>ty_value`)

### Fixed
- `c_node_func_decl` evaluator: now returns the function value even for named declarations (needed for `let f = function foo() {}` and closures stored in variables)

### Tests
- `test_try_catch` in `ZMJS_BENCHMARK`: 4 scenarios — throw string, no-throw path, throw number, throw from called function
- Go test262 conformance: **PASS=178 FAIL=88** out of 266 tests

### Notes
- `cx_dynamic_check` exceptions require `RAISING` declarations on every method in the call stack — `eval_node` has no such declarations, so exceptions silently vanished. Switching to `cx_no_check` (propagates freely like Java's `RuntimeException`) was the correct fix.

---

## [0.2.0] — 2026-03-28

### Added
- Full test262 conformance harness — 45 synthetic tests covering all supported language features
- Go reference implementation (`pkg/jseval/jseval.go`) mirroring the ABAP evaluator 1:1
- 99 Go unit tests
- Bytecode VM skeleton (parked — tree-walking is fast enough)
- `ZMJS_BENCHMARK` report with `test262`, `bench_fib`, `bench_loop` test methods
- `ZCL_MJS_TEST` — dedicated test class (same 45-test harness as benchmark)

### Language additions
- `extends` / class inheritance
- `static` class methods
- `new Error(msg)` — Error constructor
- Optional chaining `?.`
- Nullish coalescing `??`
- Function expressions (partial — named only)
- Spread/rest operators (`...args`, `[...a, ...b]`)
- Template literals `` `hello ${name}` ``

---

## [0.1.0] — 2026-03-20

### Added
- Initial release — tree-walking JavaScript interpreter in pure ABAP
- Tokenizer + recursive descent parser (30 AST node types)
- Evaluator with scope chain (`ZCL_MJS_ENV`)
- Types: number (float64), string, boolean, null, undefined, object, array
- Variables: `let`, `var`, `const`
- Arithmetic, comparison, logical operators
- `if/else`, `while`, `for`, `for...of`, `for...in`
- `switch/case/break`
- Functions: declarations, closures, recursion
- Arrow functions `() => {}`
- Classes: `constructor`, methods, `new`
- `typeof`, `console.log` (output capture)
- String built-ins: `.length`, `.charAt()`, `.charCodeAt()`, `.indexOf()`, `.substring()`
- Array built-ins: `.push()`, `.length`, index access
- `break`, `continue`
- Entry point: `ZCL_MJS=>EVAL( iv_source TYPE string ) RETURNING rv_output TYPE string`

### Package
- `$ZMJS` on SAP NetWeaver AS ABAP 7.58
- Objects: `ZIF_MJS`, `ZCL_MJS_OBJ`, `ZCL_MJS_ARR`, `ZCL_MJS_ENV`, `ZCL_MJS_PARSER`, `ZCL_MJS`
