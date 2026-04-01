# ZMJS test262 Gaps — 34 remaining failures

**Status**: PASS=232 FAIL=34 out of 266 tests (87.2%)

---

## A. `arguments` object — ~10 tests

Every JS function receives an implicit `arguments` pseudo-array containing all actual
arguments, regardless of declared parameters.

```js
function f() { return arguments[0]; }
f(42); // → 42

function f(...) { arguments[0]["PI"] = 3.14; }
f(obj); // obj.PI should be 3.14
```

**What breaks**: `arguments` is undefined → `arguments[0]` throws/returns undefined.
**Tests**: `S13.2.1_A4_T3`, `S13.2.1_A4_T4`, `S13.2.2_A18_T1`, `S13.2.2_A18_T2`,
`S13.2.2_A5_T1`, `S13.2.2_A5_T2`, and several more that access `arguments.callee`.
**Fix**: At each function call, bind `arguments` as an array-like object in the function env.

---

## B. Named function expression — name not block-scoped — 3 tests

Named function expressions `(function foo(){...})` should bind `foo` only inside the
function body, not in the enclosing scope. Currently our evaluator unconditionally calls
`env.Define(n.Str, fnVal)` for any named function — including expressions.

```js
var x = (function __func(n){ return n; })(1); // __func NOT defined here
typeof __func; // → "undefined"   (we return "function")

// Also: function expressions used as values should not create outer bindings
if (function __func() {}) { ... }
typeof __func; // → "undefined"   (we return "function")
```

**Tests**: `S13_A2_T1`, `S13_A2_T2`, `S13_A2_T3`
**Fix**: Distinguish `NodeFuncDecl` (statement) from `NodeFuncExpr` (expression). Only
declarations define names in the outer scope. Expressions define the name only in the
function's own inner scope (for self-recursion).

---

## C. `function.prototype` — prototype chain for `new fn()` — 8 tests

Plain function constructors (`function Ctor(){ this.x = 1; }; new Ctor()`) should:
1. Create a new empty object whose `__proto__` is `Ctor.prototype`
2. Call `Ctor` with `this` = new object
3. Return the new object (or the constructor's return value if it's an object)

Prototype method inheritance via `Ctor.prototype.method = function(){...}` should make
instances respond to `.method()` by walking the prototype chain.

```js
function C() {}
C.prototype.greet = function() { return "hi"; };
var obj = new C();
obj.greet(); // → "hi"  (we return undefined)
```

**What breaks**: `obj.prop === undefined` — `this` assignments in constructor don't
persist to the returned object; prototype methods are not found.
**Tests**: `S13.2.2_A12`, `S13.2.2_A15_T1/T2/T4`, `S13.2.2_A17_T2/T3`,
`S13.2.2_A19_T2/T3/T4/T7`
**Fix**: `new fn()` needs to: create object, set its `__proto__` to `fn.prototype`,
call fn with `this` = object, return object. Property access needs `__proto__` chain walk.

---

## D. `valueOf` coercion protocol — 8 tests

When objects appear in arithmetic/comparison expressions, JS calls `valueOf()` to
convert them to primitives. We don't call `valueOf`.

```js
var x = { valueOf: function() { throw "x"; } };
x + 1; // should throw "x" (we just stringify/ignore)
```

**Tests**: All `S11.*.2_A2.3_T1` — arithmetic/comparison operators with `valueOf` objects
**Fix**: In `ToNumber()` / `ToPrimitive()`, check for `valueOf` method on objects and
call it before falling back to NaN.

---

## E. `do-while` loop + labeled break/continue — 1 test

```js
outer: while(true) {
  inner: do {
    break outer; // labeled break exits the outer while
  } while(false);
}
```

**Test**: `S12.6.2_A4_T3`
**Fix**: (1) Add do-while node type + parser; (2) Add labeled break/continue support
(store label in break/continue nodes, match against loop labels during execution).

---

## F. `delete` operator — 1 test

```js
var x = 1;
delete x; // → false (non-configurable) or removes property from object
```

**Test**: `S12.2_A2`
**Fix**: Implement `delete expr` — for identifiers: always false (var/let/const are
non-configurable); for property access `delete obj.prop`: remove from obj, return true.

---

## G. Unicode identifiers in function bodies — 2 tests

Functions containing unicode characters in identifier names.
**Tests**: `S14_A5_T1`, `S14_A5_T2`
**Fix**: Extend tokenizer's identifier recognition to include unicode letter ranges.

---

## Summary table

| Gap | Tests | Effort | Impact |
|-----|-------|--------|--------|
| **A. `arguments` object** | ~10 | Medium | High — unblocks constructor tests too |
| **B. Named func expr scoping** | 3 | Easy | Medium |
| **C. `prototype` chain** | 8 | Hard | Medium (real-world: classes cover most cases) |
| **D. `valueOf` protocol** | 8 | Medium | Low (edge case) |
| **E. `do-while` + labels** | 1 | Easy | Low |
| **F. `delete` operator** | 1 | Easy | Low |
| **G. Unicode identifiers** | 2 | Easy | Low |

**Estimated ceiling if all fixed**: ~266/266 (100%), but some tests may depend on
`verifyProperty` or other harness features not in our bundle → realistic ceiling ~258/266.
