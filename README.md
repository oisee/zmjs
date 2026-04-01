<p align="center">
  <h1 align="center">ZMJS</h1>
  <p align="center">
    <strong>Mini JavaScript Engine for SAP ABAP</strong>
  </p>
  <p align="center">
    A complete JavaScript interpreter in pure ABAP.<br/>
    No kernel modules. No external dependencies. Just classes.
  </p>
  <p align="center">
    <img src="https://img.shields.io/badge/ABAP-7.58+-blue" alt="ABAP 7.58+"/>
    <img src="https://img.shields.io/badge/ABAP_test262-230%2F266-brightgreen" alt="230/266 ABAP test262"/>
    <img src="https://img.shields.io/badge/Go_test262-242%2F266-brightgreen" alt="242/266 Go test262"/>
    <img src="https://img.shields.io/badge/SAP_tests-21%2F21-brightgreen" alt="21/21 SAP tests"/>
    <img src="https://img.shields.io/badge/LOC-3100-lightgrey" alt="3100 lines"/>
    <img src="https://img.shields.io/badge/license-MIT-green" alt="MIT"/>
  </p>
</p>

---

```abap
DATA(lv) = zcl_mjs=>eval( |console.log(6 * 7)| ).
" => "42"
```

## What Is This?

ZMJS is a tree-walking JavaScript interpreter that runs **entirely inside SAP**. You pass it a JavaScript source string, it tokenizes, parses into an AST, evaluates — and returns the captured `console.log` output. All in ~2,100 lines of ABAP.

It supports enough of JavaScript to run real-world JS code on SAP — things like the [abaplint](https://github.com/abaplint/abaplint) lexer, recursive algorithms, classes with inheritance, closures, arrow functions, template literals, and more.

## Usage

### Hello World

```abap
DATA(lv) = zcl_mjs=>eval( |console.log("Hello from JS on SAP!")| ).
" lv = "Hello from JS on SAP!\n"
```

### Fibonacci

```abap
DATA(lv_js) =
  `function fib(n) {`             && cl_abap_char_utilities=>newline &&
  `  if (n <= 1) return n;`       && cl_abap_char_utilities=>newline &&
  `  return fib(n-1) + fib(n-2);` && cl_abap_char_utilities=>newline &&
  `}`                             && cl_abap_char_utilities=>newline &&
  `console.log(fib(20));`.

DATA(lv) = zcl_mjs=>eval( lv_js ).
" lv = "6765\n"
```

### Classes with Inheritance

```abap
DATA(lv_js) =
  `class Animal {`                                            && cl_abap_char_utilities=>newline &&
  `  constructor(name) { this.name = name; }`                 && cl_abap_char_utilities=>newline &&
  `  speak() { return this.name + " makes a sound"; }`       && cl_abap_char_utilities=>newline &&
  `}`                                                         && cl_abap_char_utilities=>newline &&
  `class Dog extends Animal {`                                && cl_abap_char_utilities=>newline &&
  `  speak() { return this.name + " barks"; }`               && cl_abap_char_utilities=>newline &&
  `}`                                                         && cl_abap_char_utilities=>newline &&
  `let d = new Dog("Rex");`                                   && cl_abap_char_utilities=>newline &&
  `console.log(d.speak());`.

DATA(lv) = zcl_mjs=>eval( lv_js ).
" lv = "Rex barks\n"
```

### Arrow Functions & Modern JS

```abap
DATA(lv_js) =
  `const nums = [1, 2, 3, 4, 5];`                            && cl_abap_char_utilities=>newline &&
  `const sum = (...args) => {`                                && cl_abap_char_utilities=>newline &&
  `  let s = 0;`                                              && cl_abap_char_utilities=>newline &&
  `  for (const x of args) s = s + x;`                       && cl_abap_char_utilities=>newline &&
  `  return s;`                                               && cl_abap_char_utilities=>newline &&
  `};`                                                        && cl_abap_char_utilities=>newline &&
  `console.log(sum(...nums));`.

DATA(lv) = zcl_mjs=>eval( lv_js ).
" lv = "15\n"
```

### Load JS from SMW0

```abap
" Upload your .js file to SMW0 as binary, then:
DATA(lv_xstr) = cl_mime_repository=>get( '/SAP/PUBLIC/my_script.js' ).
DATA(lv_js) = cl_abap_conv_codepage=>create_in( codepage = 'UTF-8' )->convert( lv_xstr ).

DATA(lv_result) = zcl_mjs=>eval( lv_js && cl_abap_char_utilities=>newline && `console.log("done");` ).
```

### Feature Demo: ABAP → JS → ABAP (transpiled execution)

ZMJS can execute JavaScript produced by the [abaplint transpiler](https://github.com/abaplint/transpiler). This means you can write ABAP, transpile it to JS offline, and run it through ZMJS on SAP:

**Step 1: Write ABAP**
```abap
REPORT zdemo.
DATA lv_sum TYPE i.
DATA lv_i TYPE i.
lv_sum = 0. lv_i = 1.
WHILE lv_i <= 10.
  lv_sum = lv_sum + lv_i.
  lv_i = lv_i + 1.
ENDWHILE.
WRITE lv_sum.
```

**Step 2: Transpile** (offline, via `npx @abaplint/transpiler-cli`)
```javascript
// Generated JS:
let lv_sum = new abap.types.Integer({});
let lv_i = new abap.types.Integer({});
lv_sum.set(abap.IntegerFactory.get(0));
lv_i.set(abap.IntegerFactory.get(1));
while (abap.compare.le(lv_i, abap.IntegerFactory.get(10))) {
  lv_sum.set(abap.operators.add(lv_sum, lv_i));
  lv_i.set(abap.operators.add(lv_i, abap.IntegerFactory.get(1)));
}
abap.statements.write(lv_sum);
```

**Step 3: Run on SAP** (runtime shim + transpiled JS → `zcl_mjs=>eval()`)
```abap
" Load runtime shim + transpiled JS from SMW0 or string
DATA(lv_result) = zcl_mjs=>eval( lv_runtime_shim && lv_transpiled_js ).
" lv_result = "55"
```

The [abaplint lexer](https://github.com/abaplint/abaplint) also runs directly through ZMJS, tokenizing real ABAP source code on SAP (155 tokens in 59ms).

## Language Support

<table>
<tr><td><b>Data Types</b></td><td>Numbers (float64), strings, booleans, null, undefined, objects, arrays</td></tr>
<tr><td><b>Variables</b></td><td><code>let</code>, <code>var</code>, <code>const</code></td></tr>
<tr><td><b>Operators</b></td><td><code>+ - * / %</code> &nbsp; <code>< > <= >= === !== == !=</code> &nbsp; <code>&& || ! ?? ?.</code> &nbsp; <code>? :</code></td></tr>
<tr><td><b>Strings</b></td><td><code>.length</code> <code>.charAt()</code> <code>.charCodeAt()</code> <code>.indexOf()</code> <code>.substring()</code></td></tr>
<tr><td><b>Template Literals</b></td><td><code>`hello ${name}, ${1+2}`</code></td></tr>
<tr><td><b>Control Flow</b></td><td><code>if/else</code> &nbsp; <code>while</code> &nbsp; <code>for</code> &nbsp; <code>for...of</code> &nbsp; <code>for...in</code> &nbsp; <code>switch/case</code> &nbsp; <code>break</code> &nbsp; <code>continue</code></td></tr>
<tr><td><b>Functions</b></td><td>Declarations, expressions, arrow functions <code>() => {}</code>, closures, recursion</td></tr>
<tr><td><b>Rest/Spread</b></td><td><code>function f(...args)</code> &nbsp; <code>[...a, ...b]</code></td></tr>
<tr><td><b>Error Handling</b></td><td><code>throw</code> &nbsp; <code>try/catch/finally</code> &nbsp; <code>new Error(msg)</code></td></tr>
<tr><td><b>Objects</b></td><td>Literals <code>{x:1}</code>, property access <code>.x</code> / <code>["x"]</code>, assignment</td></tr>
<tr><td><b>Arrays</b></td><td>Literals <code>[1,2,3]</code>, <code>.push()</code>, <code>.length</code>, index access</td></tr>
<tr><td><b>Classes</b></td><td><code>class</code> with <code>constructor</code>, methods, <code>static</code>, <code>extends</code>, <code>new</code></td></tr>
<tr><td><b>Constructors</b></td><td><code>Boolean()</code> <code>Number()</code> <code>String()</code> — type coercion builtins</td></tr>
<tr><td><b>String Escapes</b></td><td><code>\n \t \r \b \f \v \0 \xNN \uNNNN</code> — full escape sequence support</td></tr>
<tr><td><b>Numeric Literals</b></td><td>Hex <code>0xFF</code>, scientific <code>1e3</code>, dot-prefix <code>.5</code></td></tr>
<tr><td><b>Other</b></td><td><code>typeof</code> &nbsp; <code>console.log</code> &nbsp; <code>undefined</code> <code>null</code> <code>Infinity</code> <code>NaN</code></td></tr>
</table>

## What's New in v0.3.x

**v0.3.3** (2026-04-01): Performance — ABAP interpreter
- **−28% fib(20)**: 525ms → 378ms
- **−5% loop 10K**: 157ms → 149ms
- Eliminated `arguments` object allocation for functions that don't use it
- Args passed as `tt_value_slots` (direct values, no boxing overhead)
- Inlined slot access in `eval_node` — no method dispatch for local variable reads/writes
- Inlined trivial value constructors (`number_val`, `bool_val`, etc.)
- Try/catch safety net around all `cl_abap_codepage=>convert_from` calls
- ABAP test262: **230/266** on SAP

**v0.3.2** (2026-04-01): Language + slot optimization — ABAP interpreter
- **`arguments` object** — bound in every function call (unless shadowed by param)
- **Short-circuit `&&` / `||` / `??`** — now returns the deciding operand value
- **Variable slot optimization** in ABAP: integer-indexed slots replace per-call hash lookups
- Go test262: **242/266** (was 233 in v0.3.1)

**v0.3.1** (2026-04-01):
- `finally` blocks now execute (previously no-op)
- `var` declarations inside `catch` blocks propagate to outer scope
- String escapes: `\r` `\b` `\f` `\v` `\0` `\xNN` `\uNNNN`
- `Boolean()` / `Number()` / `String()` constructors
- Go test262: **233/266** (was 178 in v0.2.0)

**v0.3.0** (2026-04-01):
- `try/catch/throw` — fully working exception handling
- `finally` blocks parsed (execution added in v0.3.1)
- Function expressions in expression position
- Comma operator in for-loop bodies

## Why Run JS on SAP?

| Use Case | Description |
|----------|-------------|
| **Run JS libraries on-stack** | Load parsers, validators, or transformers from SMW0 and execute them on the app server — no RFC, no HTTP, no middleware |
| **Embeddable scripting** | Let users write business rules in JS without custom ABAP development — store scripts in a table, eval at runtime |
| **Cross-platform logic** | Write validation/transformation logic once in JS, run it in the browser AND on SAP |
| **AI agent tooling** | Let AI agents generate and execute JS snippets on SAP for data processing and analysis |
| **Offline linting** | Run [abaplint](https://github.com/abaplint/abaplint)'s lexer/parser on SAP to analyze ABAP code without external tools |

### Proven: abaplint Lexer on SAP

The abaplint JavaScript lexer (~130 lines) runs through ZMJS on SAP, correctly tokenizing ABAP source code into ident/number/punct/op/string/comment tokens — **155 tokens in 59ms**.

## Architecture

```
                    zcl_mjs=>eval( iv_source )
                              |
                    +---------+---------+
                    |                   |
               [Tokenizer]        [console.log]
                    |              output capture
               [Parser]                |
            recursive descent          |
            30 node types              |
                    |                  |
              [Evaluator]              |
           tree-walking interp.        |
           scope chain (env)           |
                    |                  |
                    +--------+---------+
                             |
                      rv_output (string)
```

| Class | LOC | Role |
|-------|-----|------|
| `ZIF_MJS` | 106 | Types & constants (28 AST node kinds, value types) |
| `ZCL_MJS_OBJ` | 55 | JS object — hashed property table |
| `ZCL_MJS_ARR` | 27 | JS array — ordered value list |
| `ZCL_MJS_ENV` | 99 | Scope chain — variable lookup with parent chain, output buffer |
| `ZCX_MJS_THROW` | 20 | Exception class for JS `throw` (cx_no_check, carries JS value) |
| `ZCL_MJS_PARSER` | 888 | Tokenizer + recursive descent parser |
| `ZCL_MJS` | 1082 | **Entry point** — `eval()`, evaluator, built-in methods |

## Benchmarks

Measured on SAP NetWeaver AS ABAP 7.58 (CAL instance, 4 vCPU):

| Benchmark | Result | Time | Notes |
|-----------|--------|------|-------|
| `fib(20)` | 6,765 | **378ms** | 21,891 recursive calls (v0.3.3, −28% vs v0.3.2) |
| `fib(25)` | 75,025 | **~3,600ms** | 242,785 recursive calls |
| Loop sum 0..9999 | 49,995,000 | **149ms** | 10K iterations (v0.3.3, −5% vs v0.3.2) |
| String concat 1000x | 1,000 chars | **16ms** | |
| abaplint lexer | 155 tokens | **59ms** | Real ABAP class source |
| Test262 (266 tests) | **230/266** | **377ms** | Full ECMAScript conformance suite |

**Go reference implementation** (with variable slot optimization):

| Benchmark | Time | Notes |
|-----------|------|-------|
| `fib(20)` | **~107ms** | Slot optimization, 1.45x speedup vs baseline |

> Tree-walking interpreters trade speed for simplicity. ZMJS is fast enough for scripting, configuration, and running small JS libraries. It's not meant for compute-heavy workloads.

## Tests

### Go tests (reference implementation)

99 tests covering all language features — run with `go test ./pkg/jseval/` in the [vibing-steampunk](https://github.com/oisee/vibing-steampunk) repo.

### SAP ABAP unit tests

21 test methods across two test classes, all passing on SAP:

`ZCL_MJS` test include (17 methods):
```
test_2plus2, test_string, test_if_else, test_function, test_factorial,
test_closure, test_object, test_array, test_class, test_for_loop,
test_while_continue, test_switch, test_typeof, test_string_methods,
test_or_chain, test_space_handling, test262 (44 JS-level assertions)
```

`ZMJS_BENCHMARK` program (4 methods):
```
test262 (45 assertions), test_try_catch (4 try/catch scenarios),
bench_fib (fib(20)=6765 in ~450ms), bench_loop (10K iters in ~150ms)
```

### Test262 Conformance

Two levels of conformance testing:

**SAP built-in suite** — 45 hand-written tests that ship with ZMJS (all passing):
```
  Numeric literals        typeof operator         Multiplicative ops
  Additive ops            String concatenation    Relational ops
  Strict equality         Logical AND/OR/NOT      if/else branching
  while loops             for loops               break & continue
  Function return         switch/case             Recursive factorial
  Closures (counter)      Array ops               Object property access
  String methods          Class + constructor     Method calls
```

**Full test262 suite** — 266 tests from real ECMAScript262 test cases,
run on both the Go reference implementation and the SAP ABAP interpreter:

| Version | Go Pass | ABAP Pass | Fail | Total | Notes |
|---------|---------|-----------|------|-------|-------|
| v0.1.0 | 130 | — | 136 | 266 | |
| v0.2.0 | 178 | — | 88 | 266 | |
| v0.3.0 | 231 | — | 35 | 266 | try/catch/throw |
| v0.3.1 | 233 | — | 33 | 266 | finally, string escapes |
| v0.3.2 | **242** | — | 24 | 266 | arguments, slot opt |
| **v0.3.3** | **242** | **230** | **36** | **266** | first ABAP run! |

Categories covered: numeric literals (hex, scientific, dot-prefix), string escapes
(`\r\b\f\v\0\xNN\uNNNN`), template literals, all operators, control flow, functions,
closures, classes, `try/catch/finally`, `throw`, `Boolean()`/`Number()`/`String()`
constructors, rest/spread, `for...of`, `for...in`, `switch`, `arguments` object, and more.

Remaining ABAP failures (36): `valueOf` coercion on functions/objects, `arguments.callee`,
named function expression scoping, prototype chain, `do-while`, `delete`, unicode identifiers.
See [`test262/GAPS.md`](test262/GAPS.md) for details.

## Installation

### Via abapGit

1. Install [abapGit](https://abapgit.org/) on your SAP system
2. Create package `$ZMJS`
3. Clone this repository into the package

### Manual Import

Create objects in this order (respects dependencies):

```
1. ZCL_MJS_OBJ        (no dependencies)
2. ZCL_MJS_ARR        (no dependencies)
3. ZIF_MJS            (references OBJ, ARR)
4. ZCX_MJS_THROW      (references ZIF_MJS)
5. ZCL_MJS_ENV        (references ZIF_MJS)
6. ZCL_MJS_PARSER     (references ZIF_MJS)
7. ZCL_MJS            (references all above)
8. ZMJS_BENCHMARK     (optional — test program)
```

## Limitations

What ZMJS does **not** support (yet):

- `++` / `--` operators (use `i = i + 1`)
- `do-while` loops
- Labeled `break` / `continue`
- `delete` operator
- `arguments.callee` (property on the arguments object)
- Prototype chain (`func.prototype` — classes use property copy instead)
- `valueOf` coercion on objects in arithmetic expressions
- Regular expressions
- Destructuring assignments
- `Date`, `Math`, `JSON`, `parseInt`, `Array.isArray` built-ins
- Module system (`import` / `export`)
- Async / Promises / generators
- Getters / setters

## License

[MIT](LICENSE)

## Credits

Built with [Claude Code](https://claude.ai/claude-code) (Anthropic).

**Clean room implementation** — the interpreter (tokenizer, parser, evaluator) was written from scratch as a tree-walking interpreter, following the classic approach described in [Crafting Interpreters](https://craftinginterpreters.com/) by Robert Nystrom. No code was copied from any existing JS engine.

The [abaplint](https://github.com/abaplint/abaplint) lexer by [Lars Hvam](https://github.com/larshp) (MIT license) is used as a real-world test case — the JS lexer code runs through ZMJS on SAP to tokenize ABAP source.
