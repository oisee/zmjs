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
    <img src="https://img.shields.io/badge/Test262-45%2F45-brightgreen" alt="Test262 45/45"/>
    <img src="https://img.shields.io/badge/LOC-2100-lightgrey" alt="2100 lines"/>
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

It supports enough of JavaScript to run real-world JS code on SAP — things like the [abaplint](https://github.com/larshp/abaplint) lexer, recursive algorithms, classes with constructors, closures, and more.

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

### Classes

```abap
DATA(lv_js) =
  `class Point {`                                       && cl_abap_char_utilities=>newline &&
  `  constructor(x, y) { this.x = x; this.y = y; }`    && cl_abap_char_utilities=>newline &&
  `  distance() {`                                      && cl_abap_char_utilities=>newline &&
  `    return (this.x * this.x + this.y * this.y);`     && cl_abap_char_utilities=>newline &&
  `  }`                                                 && cl_abap_char_utilities=>newline &&
  `}`                                                   && cl_abap_char_utilities=>newline &&
  `let p = new Point(3, 4);`                            && cl_abap_char_utilities=>newline &&
  `console.log(p.distance());`.

DATA(lv) = zcl_mjs=>eval( lv_js ).
" lv = "25\n"
```

### Load JS from SMW0

```abap
" Upload your .js file to SMW0 as binary, then:
DATA(lv_xstr) = cl_mime_repository=>get( '/SAP/PUBLIC/my_script.js' ).
DATA(lv_js) = cl_abap_conv_codepage=>create_in( codepage = 'UTF-8' )->convert( lv_xstr ).

DATA(lv_result) = zcl_mjs=>eval( lv_js && cl_abap_char_utilities=>newline && `console.log("done");` ).
```

## Language Support

<table>
<tr><td><b>Data Types</b></td><td>Numbers (float64), strings, booleans, null, undefined, objects, arrays</td></tr>
<tr><td><b>Variables</b></td><td><code>let</code>, <code>var</code>, <code>const</code></td></tr>
<tr><td><b>Operators</b></td><td><code>+ - * / %</code> &nbsp; <code>< > <= >= === !== == !=</code> &nbsp; <code>&& || !</code></td></tr>
<tr><td><b>Strings</b></td><td><code>.length</code> <code>.charAt()</code> <code>.charCodeAt()</code> <code>.indexOf()</code> <code>.substring()</code></td></tr>
<tr><td><b>Control Flow</b></td><td><code>if/else</code> &nbsp; <code>while</code> &nbsp; <code>for</code> &nbsp; <code>switch/case</code> &nbsp; <code>break</code> &nbsp; <code>continue</code></td></tr>
<tr><td><b>Functions</b></td><td>Declarations, closures, recursion, <code>return</code></td></tr>
<tr><td><b>Objects</b></td><td>Literals <code>{x:1}</code>, property access <code>.x</code> / <code>["x"]</code>, assignment</td></tr>
<tr><td><b>Arrays</b></td><td>Literals <code>[1,2,3]</code>, <code>.push()</code>, <code>.length</code>, index access</td></tr>
<tr><td><b>Classes</b></td><td><code>class</code> with <code>constructor</code> and methods, <code>new</code></td></tr>
<tr><td><b>Other</b></td><td><code>typeof</code> &nbsp; <code>console.log</code> (output capture)</td></tr>
</table>

## Why Run JS on SAP?

| Use Case | Description |
|----------|-------------|
| **Run JS libraries on-stack** | Load parsers, validators, or transformers from SMW0 and execute them on the app server — no RFC, no HTTP, no middleware |
| **Embeddable scripting** | Let users write business rules in JS without custom ABAP development — store scripts in a table, eval at runtime |
| **Cross-platform logic** | Write validation/transformation logic once in JS, run it in the browser AND on SAP |
| **AI agent tooling** | Let AI agents generate and execute JS snippets on SAP for data processing and analysis |
| **Offline linting** | Run [abaplint](https://github.com/larshp/abaplint)'s lexer/parser on SAP to analyze ABAP code without external tools |

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
            26 node types              |
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
| `ZIF_MJS` | 105 | Types & constants (26 AST node kinds, value types) |
| `ZCL_MJS_OBJ` | 56 | JS object — hashed property table |
| `ZCL_MJS_ARR` | 28 | JS array — ordered value list |
| `ZCL_MJS_ENV` | 100 | Scope chain — variable lookup with parent chain, output buffer |
| `ZCL_MJS_PARSER` | 817 | Tokenizer (strings, numbers, idents, operators) + recursive descent parser |
| `ZCL_MJS` | 1046 | **Entry point** — `eval()` method, evaluator, built-in methods |

## Benchmarks

Measured on SAP NetWeaver AS ABAP 7.58 (CAL instance, 4 vCPU):

| Benchmark | Result | Time | Notes |
|-----------|--------|------|-------|
| `fib(20)` | 6,765 | **449ms** | 21,891 recursive calls |
| `fib(25)` | 75,025 | **4,332ms** | 242,785 recursive calls |
| Loop sum 0..9999 | 49,995,000 | **146ms** | 10K iterations |
| String concat 1000x | 1,000 chars | **16ms** | |
| abaplint lexer | 155 tokens | **59ms** | Real ABAP class source |
| Test262 suite | **45/45** | <1ms | Conformance tests |

> Tree-walking interpreters trade speed for simplicity. ZMJS is fast enough for scripting, configuration, and running small JS libraries. It's not meant for compute-heavy workloads.

## Test262 Conformance

45 tests inspired by the [ECMAScript Language Specification](https://tc39.es/ecma262/):

```
  Numeric literals        typeof operator         Multiplicative ops
  Additive ops            String concatenation    Relational ops
  Strict equality         Logical AND/OR/NOT      if/else branching
  while loops             for loops               break & continue
  Function return         switch/case             Recursive factorial
  Closures (counter)      Array ops               Object property access
  String methods          Class + constructor     Method calls
```

Run the included `ZMJS_BENCHMARK` program as ABAP Unit Test to verify.

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
4. ZCL_MJS_ENV        (references ZIF_MJS)
5. ZCL_MJS_PARSER     (references ZIF_MJS)
6. ZCL_MJS            (references all above)
7. ZMJS_BENCHMARK     (optional — test program)
```

## Limitations

What ZMJS does **not** support (yet):

- `++` / `--` operators (use `i = i + 1`)
- Ternary operator `? :`
- `try` / `catch` / `throw`
- Regular expressions
- `for...in` / `for...of`
- Destructuring, spread, rest, arrow functions
- `Date`, `Math`, `JSON`, `parseInt` built-ins
- Module system (`import` / `export`)
- Prototype chain (classes use simple property copy)
- Async / Promises / generators

## License

[MIT](LICENSE)

## Credits

Built with [Claude Code](https://claude.ai/claude-code) (Anthropic).

**Clean room implementation** — the interpreter (tokenizer, parser, evaluator) was written from scratch as a tree-walking interpreter, following the classic approach described in [Crafting Interpreters](https://craftinginterpreters.com/) by Robert Nystrom. No code was copied from any existing JS engine.

The [abaplint](https://github.com/abaplint/abaplint) lexer by [Lars Hvam](https://github.com/larshp) (MIT license) is used as a real-world test case — the JS lexer code runs through ZMJS on SAP to tokenize ABAP source.
