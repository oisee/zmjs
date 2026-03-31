# ZMJS — Mini JavaScript Engine for SAP ABAP

A complete JavaScript interpreter written in pure ABAP. No external dependencies, no kernel modules — just ABAP classes that parse and execute JavaScript code directly on SAP.

## Quick Start

```abap
DATA(lv_result) = zcl_mjs=>eval( |console.log(2 + 2)| ).
" lv_result = "4\n"
```

## What It Does

ZMJS is a tree-walking JavaScript interpreter that runs inside SAP. You give it JavaScript source code as a string, it tokenizes, parses, builds an AST, and evaluates it — all in ABAP.

```abap
" Fibonacci
DATA(lv_js) =
  `function fib(n) {` && cl_abap_char_utilities=>newline &&
  `  if (n <= 1) return n;` && cl_abap_char_utilities=>newline &&
  `  return fib(n - 1) + fib(n - 2);` && cl_abap_char_utilities=>newline &&
  `}` && cl_abap_char_utilities=>newline &&
  `console.log(fib(20));`.

DATA(lv_result) = zcl_mjs=>eval( lv_js ).
" lv_result = "6765\n"
```

## Supported JavaScript Features

| Feature | Examples |
|---------|---------|
| **Variables** | `let x = 42;`, `var name = "hello";`, `const PI = 3.14;` |
| **Arithmetic** | `+`, `-`, `*`, `/`, `%` |
| **Comparison** | `<`, `>`, `<=`, `>=`, `===`, `!==`, `==`, `!=` |
| **Logical** | `&&`, `\|\|`, `!` |
| **Strings** | `"hello"`, `'world'`, concatenation with `+` |
| **String methods** | `.length`, `.charAt()`, `.charCodeAt()`, `.indexOf()`, `.substring()` |
| **If/else** | `if (cond) { ... } else { ... }` |
| **While** | `while (cond) { ... }` |
| **For** | `for (let i = 0; i < n; i = i + 1) { ... }` |
| **Functions** | `function add(a, b) { return a + b; }` |
| **Closures** | Functions capture their enclosing scope |
| **Recursion** | Recursive function calls (e.g., factorial, fibonacci) |
| **Objects** | `{x: 1, y: 2}`, `.prop`, `["key"]` |
| **Arrays** | `[1, 2, 3]`, `.push()`, `.length`, `[index]` |
| **Classes** | `class Foo { constructor(x) { this.x = x; } method() { ... } }` |
| **Switch** | `switch(x) { case 1: ...; break; default: ... }` |
| **typeof** | `typeof 42 === "number"` |
| **break/continue** | Loop control |
| **console.log** | Output capture (returned as string) |

## Why?

Running JavaScript inside ABAP opens up interesting possibilities:

- **Run JS libraries on SAP** — load JavaScript code (e.g., parsers, validators, transformers) from SMW0 and execute them directly on the application server
- **Embeddable scripting** — add user-configurable logic to ABAP applications without custom development
- **Cross-platform code** — write logic once in JS, run it both in the browser and on SAP
- **Testing** — use JS test frameworks to validate ABAP behavior
- **AI agent tooling** — let AI agents generate and execute JS snippets on SAP for data processing

### Real-World Example: ABAP Lexer

We run the [abaplint](https://github.com/nicknisi/abaplint) JavaScript lexer directly on SAP to tokenize ABAP source code:

```abap
" Load JS lexer from SMW0
DATA(lo_file) = zcl_llm_00_file_smw0=>new( iv_ = 'ZABAPLINT_LEXER.JS' ).
DATA(lv_js) = cl_abap_conv_codepage=>create_in( codepage = 'UTF-8' )->convert( lo_file->get_xstring( ) ).

" Tokenize ABAP code
DATA(lv_full) = lv_js && cl_abap_char_utilities=>newline
  && `let result = lexer("DATA lv TYPE i.");`
  && `console.log(result.length);`.

DATA(lv_result) = zcl_mjs=>eval( lv_full ).
" Produces correct token stream: ident:DATA, ident:lv, ident:TYPE, ident:i, punct:.
```

## Architecture

```
zcl_mjs=>eval( js_source )
    |
    v
[Tokenizer] -> tokens (number, string, ident, operator, punctuation)
    |
    v
[Parser] -> AST (recursive descent, 26 node types)
    |
    v
[Evaluator] -> result (tree-walking interpreter with scope chain)
```

6 classes, 1 interface, ~2,100 lines of ABAP:

| Object | Lines | Purpose |
|--------|-------|---------|
| `ZIF_MJS` | 105 | Shared types, constants (26 node kinds, value/token/node types) |
| `ZCL_MJS_OBJ` | 56 | JavaScript object (hashed property table) |
| `ZCL_MJS_ARR` | 28 | JavaScript array (ordered list) |
| `ZCL_MJS_ENV` | 100 | Scope chain (variable lookup, output capture) |
| `ZCL_MJS_PARSER` | 817 | Tokenizer + recursive descent parser |
| `ZCL_MJS` | 1046 | Evaluator (entry point: `zcl_mjs=>eval()`) |

## Benchmarks (SAP ABAP 7.58)

| Benchmark | Result | Time |
|-----------|--------|------|
| fib(20) — 21K recursive calls | 6765 | 449ms |
| Loop sum 0..9999 | 49,995,000 | 146ms |
| String concat 1000x | 1000 chars | 16ms |
| abaplint lexer (155 tokens) | correct | 59ms |
| Test262 conformance | 45/45 | <1ms |

## Test262 Conformance

45 tests inspired by [ECMA-262](https://tc39.es/ecma262/) covering:

- Numeric literals, typeof, arithmetic, string operations
- Relational and equality operators
- Logical operators (`&&`, `||`, `!`)
- Control flow (if/else, while, for, break, continue, switch)
- Functions, return, recursion (factorial)
- Closures
- Arrays (literal, push, length, index)
- Objects (literal, property access, assignment)
- String methods (charAt, indexOf, substring, charCodeAt)
- Classes with constructors and methods

Run `ZMJS_BENCHMARK` as unit test to verify all 45 pass.

## Installation

### Option 1: Manual (SE80/ADT)

Create package `$ZMJS` (or your preferred name) and import the files from `src/` in this order:

1. `zcl_mjs_obj.clas.abap`
2. `zcl_mjs_arr.clas.abap`
3. `zif_mjs.intf.abap`
4. `zcl_mjs_env.clas.abap`
5. `zcl_mjs_parser.clas.abap`
6. `zcl_mjs.clas.abap`
7. `zmjs_benchmark.prog.abap` (optional, for testing)

### Option 2: abapGit

Import this repository via [abapGit](https://abapgit.org/).

## Limitations

- No `++`/`--` operators (use `i = i + 1`)
- No ternary operator (`? :`)
- No `try`/`catch`
- No regex
- No `for...in` / `for...of`
- No destructuring, spread, arrow functions
- No `Date`, `Math`, `JSON` built-ins
- No module system (import/export)
- Tree-walking interpreter (not JIT) — adequate for scripting, not for compute-heavy workloads

## License

MIT

## Credits

Developed with [Claude Code](https://claude.ai/claude-code) (Anthropic).
Inspired by [abaplint](https://github.com/nicknisi/abaplint) by Lars Hvam.
