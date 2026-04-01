# ZMJS Gap-Closure Report

## Scope

This report outlines how to close the main gaps in ZMJS across three areas:

- Test262 conformance
- Interpreter speed
- Code quality and maintainability

The focus is the ABAP interpreter in `src/`, with the Go implementation in `pkg/jseval/` used as a reference and staging ground for semantics and performance work.

## Current State

The codebase is already useful and compact, but it is still in the "targeted subset" stage rather than "broad ECMAScript subset with predictable behavior". The main issues are:

- Several implemented operators are not JavaScript-correct
- Some README claims exceed what the parser/evaluator visibly support
- The parser has weak error handling
- The evaluator is monolithic and mixes language semantics with builtin plumbing
- The Go version has performance ideas not yet reflected in ABAP

## Highest-Priority Conformance Gaps

### 1. Fix semantics before adding features

The most important work is not new syntax. It is making existing syntax behave like JavaScript.

#### Logical operators

`&&` and `||` currently evaluate both operands eagerly and collapse to booleans. JavaScript requires:

- short-circuit evaluation
- returning the selected operand value, not only `true` or `false`

Impact:

- breaks side-effect order
- breaks common fallback patterns
- breaks many real-world libraries
- causes avoidable Test262 failures

Action:

- move `&&` and `||` out of generic binary-op evaluation
- evaluate them in `eval_node` with short-circuit behavior
- add ABAP and Go tests for:
  - `0 && f()`
  - `1 || f()`
  - `"x" && 5`
  - `null || "fallback"`

#### Equality semantics

`==` and `!=` currently behave effectively like strict equality with limited coercion. JavaScript requires distinct behavior for:

- `==`
- `!=`
- `===`
- `!==`

Action:

- preserve current strict path for `===` and `!==`
- implement a separate abstract-equality routine for `==` and `!=`
- start with the common cases:
  - number/string coercion
  - boolean coercion
  - null/undefined equivalence

This alone should unlock a noticeable portion of Test262.

#### Numeric edge cases

Division and modulo by zero currently return `0`. That is incorrect and creates semantic drift.

Action:

- model `Infinity`, `-Infinity`, and `NaN` consistently
- update arithmetic helpers and `to_string`
- add tests for:
  - `1 / 0`
  - `-1 / 0`
  - `0 / 0`
  - `%` with negative and non-integer values

### 2. Introduce real parser errors

`expect()` currently consumes the next token without validating it.

Impact:

- malformed input can be accepted too long
- syntax failures become hard to diagnose
- feature work becomes riskier because parser regressions are harder to localize

Action:

- add a parse exception class carrying:
  - expected token
  - actual token
  - token index
  - source position if available
- teach the tokenizer to retain line/column or offset
- make parser failures deterministic and testable

### 3. Align documented features with implemented features

The README currently presents a wider feature set than the parser/evaluator clearly implement. That creates avoidable confusion.

Action:

- audit each claimed feature
- classify each as:
  - fully supported
  - partially supported
  - planned
- move unsupported items to a roadmap section
- link claims to tests where possible

This is cheap and improves trust immediately.

## Test262 Closure Plan

The right strategy is staged closure, not broad unstructured feature expansion.

### Stage 1: Raise pass rate through correctness fixes

Target:

- maximize gains from semantics fixes without major parser expansion

Work:

- logical operators
- equality semantics
- numeric edge cases
- better `typeof`
- better truthiness/coercion coverage
- ensure `throw` and `try/catch/finally` match expected control flow

Expected result:

- relatively high return on effort
- fewer regressions hidden behind current shortcuts

### Stage 2: Expand syntax only where tests justify it

Likely next features with good payoff:

- ternary operator if not fully covered end-to-end
- `null` and `undefined` edge behavior
- `do...while`
- `void`
- more string and array behavior
- function-expression edge cases

Defer until needed:

- private fields
- generators
- async/promises
- modules
- proxies
- symbols

### Stage 3: Harden the test pipeline

The Go Test262 runner is a good start, but the project needs a tighter workflow between:

- Go conformance gains
- ABAP conformance gains
- README claims

Action:

- maintain a machine-readable support matrix
- split tests into:
  - semantics
  - syntax
  - builtins
  - skipped unsupported features
- record failures by category, not only total count
- add a regression floor in CI for both Go and generated SAP bundles

### Stage 4: Use Go as a semantics proving ground

The Go interpreter is easier to test and iterate on. It should become the semantics lab.

Action:

- land semantics fixes in Go first
- expand tests there
- port stabilized changes into ABAP
- avoid diverging behavior between implementations

## Performance Improvement Plan

### 1. Separate correctness work from optimization work

Do not optimize the wrong semantics. First stabilize behavior, then optimize the hot path.

### 2. Port the slot-based environment idea into ABAP

The Go implementation already includes variable slot optimization for function locals. This is likely the single highest-value performance idea in the repo.

Current ABAP behavior:

- environment lookup is hash-based by variable name
- repeated lookups happen on almost every expression evaluation

Optimization path:

- assign integer slots to local variables during parsing or a lightweight compile pass
- store local values in indexed tables or arrays
- reserve name-based lookup for globals and dynamic cases

Expected benefit:

- faster function calls
- faster loops
- faster recursion
- lower lookup overhead for closure-heavy code

### 3. Add a lightweight compile pass over the AST

The ABAP runtime is purely interpretive. A small compile/preparation pass would help without requiring a full VM.

Possible outputs of the compile pass:

- variable slot assignment
- constant folding
- interned property names
- preclassified node metadata for hot dispatch

This can preserve the simple tree-walking architecture while removing repeated work.

### 4. Reduce boxing churn

The engine boxes and unboxes values heavily through `REF TO data`.

Potential improvements:

- reduce temporary allocations for intermediate values
- avoid boxing for local-only values where no aliasing is required
- distinguish storage representation from transient evaluation representation

This is especially relevant in:

- arithmetic-heavy code
- loops
- object/array access
- function argument passing

### 5. Optimize builtin dispatch

Current builtins use special-case checks and string-based branching.

Optimization path:

- represent natives explicitly
- dispatch by small integer native id rather than property string checks
- optionally cache method lookups for common builtins

### 6. Profile before deeper structural work

Before considering a full bytecode VM in ABAP, gather real hotspots.

Recommended benchmark set:

- Fibonacci recursion
- large numeric loop
- closure-heavy counter benchmark
- object property access benchmark
- array push/index benchmark
- transpiled abaplint workload

If most time is in env lookup and allocation, fix those first. A bytecode VM should only be pursued if tree-walking remains the bottleneck after those improvements.

## Code Quality Improvement Plan

### 1. Split `zcl_mjs` by responsibility

`zcl_mjs` currently mixes:

- tokenization
- runtime value helpers
- evaluator dispatch
- builtin handling
- function invocation

Recommended extraction:

- `zcl_mjs_lexer`
- `zcl_mjs_eval`
- `zcl_mjs_native`
- `zcl_mjs_value` or helper module

Benefits:

- easier review
- safer feature work
- smaller methods
- more targeted tests

### 2. Introduce explicit error taxonomy

The interpreter should distinguish:

- syntax errors
- runtime throw values
- internal interpreter errors

Today, JS `throw` has a dedicated exception class, but parser/runtime diagnostics should also be explicit and testable.

### 3. Add line/column source tracking

This is a quality improvement with large practical value.

Benefits:

- readable syntax errors
- better runtime diagnostics
- easier Test262 debugging
- easier user adoption for embedded scripting

### 4. Tighten feature tests against documentation

For every documented feature:

- add a narrow ABAP test
- add a Go test if semantics are nontrivial

This prevents the README from drifting ahead of the implementation.

### 5. Add regression tests for known weak points

Specifically:

- short-circuit behavior
- coercion behavior
- `this` binding in methods and constructors
- catch/finally interaction
- variable scope leakage and shadowing
- object vs array property behavior

### 6. Establish a support matrix

Create a checked-in document or generated table listing:

- feature
- status
- test coverage
- known gaps

This should become the source of truth for:

- README support claims
- skip patterns in Test262 tooling
- roadmap prioritization

## Suggested Delivery Roadmap

### Milestone 1: Semantics Repair

- fix `&&` and `||`
- split strict and loose equality
- correct divide/modulo edge semantics
- add parser validation errors
- update tests

Expected outcome:

- better predictability
- immediate Test262 gains
- safer base for further work

### Milestone 2: Runtime Refactor

- split `zcl_mjs` into lexer/eval/native pieces
- add source positions
- improve error classes
- align README with reality

Expected outcome:

- better maintainability
- easier debugging

### Milestone 3: Performance Pass

- introduce local variable slotting
- reduce boxing overhead
- optimize builtin/native dispatch
- benchmark before and after

Expected outcome:

- noticeable speedup on loops, recursion, and transpiled code

### Milestone 4: Structured Test262 Expansion

- reduce skip surface intentionally
- add feature categories
- promote more passing subsets from Go to ABAP
- enforce minimum pass thresholds

Expected outcome:

- steady conformance growth without losing control of scope

## Recommended Immediate Actions

If only a few things are done next, they should be:

1. Fix logical operators to short-circuit and return operand values
2. Implement proper `==` and `!=`
3. Replace parser `expect()` with validating syntax errors
4. Align README claims with tested support
5. Prototype slot-based local variable storage in ABAP

These five items offer the best combined return across correctness, speed, and maintainability.
