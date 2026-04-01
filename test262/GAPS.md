# ZMJS test262 Gaps — 36 remaining failures

**Status**: PASS=230 FAIL=36 out of 266 tests (86.5%)
**Run date**: 2026-04-01 · Time: 377ms
**Full inventory**: `../_tmp/codex_report_2026-04-01-test262-conformance-inventory.md`

---

## Meta-problem: why all 36 failures print `: undefined`

The harness defines `new Test262Error(msg)` using a plain function constructor.
`c_node_new` only handles class objects (type=6); plain functions (type=4) fall through
and return `undefined`. Every `$ERROR(msg)` call therefore throws `undefined`, and the
harness prints `"" + undefined = "undefined"`.

**Fix Group A first** — it will also unmask readable error messages in all other groups.

---

## Group A — `new PlainFunction()` broken — 11 tests — CRITICAL

**File**: `src/zcl_mjs.clas.abap` · method `EVAL_NODE` · `WHEN zif_mjs=>c_node_new`

Current code only enters the `IF ls_cls-type = 6` branch. Plain functions (type=4)
fall through and return `undefined`.

**Correct `new F(args)` semantics:**
1. Create a fresh object (`ls_instance = object_val()`)
2. Evaluate args
3. Call `ls_cls-fn` with `this = ls_instance`
4. If the function explicitly returns an object → use that as the result
5. Otherwise → return `ls_instance`

**Tests**: `S13.2.2_A5_T1/T2`, `A6_T1/T2`, `A7_T1/T2`, `A12`, `A15_T1/T2/T3/T4`

**Impact on open-abap-core**: Critical. Transpiled ABAP uses plain function constructors
everywhere: `new abap.types.Integer({})`, `new abap.types.String({})` etc.

---

## Group B — `with` statement not implemented — 8 tests

**File**: `src/zcl_mjs_parser.clas.abap` + `src/zcl_mjs.clas.abap`

`with(obj) { ... }` is not parsed or evaluated. Extends the scope chain with an object's
properties for the duration of its body.

**Tests**: `S13.2.2_A17_T2/T3`, `A18_T1/T2`, `A19_T2/T3/T4/T7`

**Impact**: Low — transpiler does not generate `with` statements.

---

## Group C — `valueOf` / ToPrimitive coercion missing — 8 tests

**File**: `src/zcl_mjs.clas.abap` · `eval_bin_op`, `to_number`

Arithmetic and relational operators do not invoke `valueOf()` on object operands.
Objects are coerced to `0` unconditionally.

**Tests**: Addition, subtraction, multiplication, division, modulus, less-than,
greater-than-or-equal — all `*_A2.3_T1` variants.

**Fix**: In `to_number` / `ToPrimitive`, check for a `valueOf` method and call it before
falling back to NaN.

---

## Group D — Named function expression name leaks to outer scope — 3 tests

**Files**: `src/zif_mjs.intf.abap`, `src/zcl_mjs_parser.clas.abap`, `src/zcl_mjs.clas.abap`

`var x = (function __name(){ ... })()` — `__name` should be visible only inside the
function body (for self-reference). Currently defined in the outer scope via `define()`.

**Fix**: Introduce a distinct `c_node_func_expr` node type (vs. `c_node_func_decl`).
Expressions define the name only in the function's own inner scope.

**Tests**: `S13_A2_T1/T2/T3`

---

## Group E — Unicode `\uNNNN` escapes in identifier names — 2 tests

**File**: `src/zcl_mjs.clas.abap` · `TOKENIZE` method

Tokenizer handles `\uNNNN` in string literals but not in identifier names.

**Tests**: `S14_A5_T1/T2`
**Impact**: None — abaplint and open-abap-core don't use unicode escapes in identifiers.

---

## Group F — Labeled `break` from nested loop — 1 test

**Files**: `src/zcl_mjs_parser.clas.abap`, `src/zcl_mjs.clas.abap`

`break label;` targeting an outer named loop is not implemented.

```js
do_out: while(1===1) {
    do_in: while (1) {
        break do_out;
    }
}
```

**Test**: `S12.6.2_A4_T3`

---

## Group G — `delete` operator — 1 test

**File**: `src/zcl_mjs.clas.abap` · unary operator evaluation

`delete identifier` not implemented. Should return `false` for declared variables.

**Test**: `S12.2_A2`

---

## Group H — Braceless `if` attaches second IIFE to body — 1 test

**File**: `src/zcl_mjs_parser.clas.abap`

```js
if (false) (function(){throw "truebranch"})();
(function(){throw "missbranch"})();  // must ALWAYS execute
```

Parser may include the second IIFE in the if-body instead of treating it as a
separate statement.

**Test**: `S12.5_A4`

---

## Group I — Calling a caught function value as plain `e()` — 1 test

**File**: `src/zcl_mjs.clas.abap` · `c_node_call` / catch-scope lookup

```js
function foo() { this.x = 'instance'; }
try { throw foo; } catch (e) { e(); }
```

`e` is a function. The catch-binding lookup or `this` binding is incorrect.

**Test**: `statements/try/12.14-13.js`

---

## Backlog

| # | Group | Files | Pass gain | Effort | Risk |
|---|-------|-------|-----------|--------|------|
| 1 | **A** new PlainFunction() | `zcl_mjs.clas.abap` EVAL_NODE | +11 | Small | Low |
| 2 | **F** Labeled break | `zcl_mjs_parser`, `zcl_mjs` | +1 | Small | Low |
| 3 | **G** delete operator | `zcl_mjs.clas.abap` | +1 | Small | Low |
| 4 | **H** Braceless-if parser | `zcl_mjs_parser.clas.abap` | +1 | Small | Low |
| 5 | **I** Caught fn call | `zcl_mjs.clas.abap` | +1 | Small | Low |
| 6 | **D** Named func expr scoping | `zif_mjs`, parser, eval | +3 | Medium | Medium |
| 7 | **C** valueOf/ToPrimitive | `zcl_mjs.clas.abap` | +8 | Medium | Low |
| 8 | **E** Unicode identifiers | `zcl_mjs.clas.abap` TOKENIZE | +2 | Small | Low |
| 9 | **B** with statement | parser + eval | +8 | Large | Medium |

**Practical sequence**: A → F/G/H/I → D/C/E → B
**Projected ceiling**: ~266/266 (quick+mid+long all done)

---

## Performance backlog

### Quick wins (src/zcl_mjs.clas.abap)
- Remove redundant `copy_from` after `call_function` — `this` already carries an object
  ref, so the write-back is wasted on hot paths
- Remove identifier write-back after method calls in `eval_method_call` — same reason
- More fast paths in `eval_bin_op` / `to_number` for number/boolean cases

### Mid wins
- Stop boxing every object property and array item as `REF TO data` — see
  `src/zcl_mjs_obj.clas.abap`, `src/zcl_mjs_arr.clas.abap`
- Reduce env churn: `for`, `catch`, function calls all allocate env objects with repeated
  slot-map checks — a leaner slot-env vs map-env split would help (`zcl_mjs_env.clas.abap`)
- Precompile AST metadata: builtin IDs, literal property names, direct callee kind
  (cuts string compares in hot `WHEN` branches)

### Long wins
- Move from tree-walk to bytecode execution — mirrors `pkg/jseval/bytecode.go` direction;
  the only change likely to give a step-function speedup
- Object shapes / prototype caches — only worthwhile after generic interpreter overhead
  is already reduced
