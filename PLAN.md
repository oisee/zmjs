# zmjs performance plan — from tree-walker to bytecode VM

Goal: **substantial** (multiple-x) speedups, not single-digit percentages.
Inspiration: [QuickJS](https://bellard.org/quickjs/) — compile each function to flat
bytecode once, then run a tight dispatch loop; intern names to integer atoms; cache
property offsets with shapes/inline caches.

---

## 1. Baseline (SAP `ZMJS_ABAPLINT`, S4H)

| Trace | Total Net | Notes |
|-------|-----------|-------|
| 2026-07-20 06:15 | 25,760,290 µs | first full trace |
| 2026-07-20 10:51 | 25,077,565 µs | ~unchanged; still runs pre-optimization SAP code |

Key figure: **`Number = 17.4M` internal processing blocks**, **98% gross under `EVAL_NODE`**.

Top Net% hotspots (10:51 trace):

| Symbol | Hits | Net % | Nature |
|--------|------|-------|--------|
| `OBJ->GET` | 894K | 5.14 | property read (hashed, leaf) |
| `EVAL_NODE_MEMBER_ACCESS` | 806K | 4.82 | dispatch |
| `EVAL_NODE_METHOD_CALL` | 360K | 4.52 | dispatch |
| `OBJ->SET` | 555K | 4.26 | property write (leaf) |
| `ENV->RESOLVE` | 549K | 4.14 | variable lookup (leaf) |
| `CALL_FUNCTION` | 245K | 4.11 | per-call setup |
| `EVAL_NODE_NEW` | 72K | 4.08 | |
| `EVAL_NODE` (×many rows) | millions | — | **recursive dispatch spine** |
| `EVAL_PROPERTY_ACCESS` | 806K | 3.30 | |
| `EVAL_NODE_BINOP` | 471K | 3.20 | |
| `ENV->SET_SLOT` | 300K | 3.02 | |
| `ENV->GET_THIS` | 803K | 2.76 | |

---

## 2. Diagnosis: the cost is the architecture, not the operations

The interpreter is not spending its time doing arithmetic or hashing — it is spending it
**re-dispatching**. For every AST node, every time it executes, it pays:

1. a **method call** (`eval_node` → `eval_node_binop` → `eval_node` …),
2. an **`ASSIGN ir_node->* TO <n>`** field-symbol rebind,
3. a **`CASE <n>-kind`** decode,
4. a **fat `ty_value` returned by value** (`type` + `num` + `str` + 3 refs ≈ 40+ bytes copied — 17M times).

A node inside a loop body that runs a million times pays all four a million times. This is
the naive tree-walker ceiling. Shaving individual leaf methods (items 1–4 below) cannot
remove it — those are worth ~15–20% combined, not a multiple.

Corollary from the codebase's own note (in `zcl_mjs.clas.abap`):
> "ABAP hoists DATA to method scope, so under the transpiler every local is allocated on
> each `eval_node` call."

This is *why* the code is split into many `eval_node_*` methods today. A bytecode VM
**inverts** it: locals are allocated **once per function invocation**, not once per node.

---

## 3. Incremental work (already in the git tree — the ~15–20% tier)

These are correct and regression-free (unit tests + test262 byte-identical to HEAD), but
they are the *ceiling-bound* tier. Not yet uploaded/activated on SAP, so absent from the
10:51 trace.

- [x] **1. Builtin discriminator** — cache `Object`/`Date`/`super` classification on
  `ty_node-builtin`; hot path does one integer compare instead of a string-compare gauntlet.
  (`classify_builtin`, `eval_node_method_call`, `eval_node_member_access`)
- [x] **2. Inline `this`** — walk the env chain inline in the `eval_node` ident fast-path;
  removes ~803K `get_this()` method calls/run.
- [x] **3. Param-binding plan** — `compile_function` precomputes `param_binds`
  `{ slot, is_rest, dflt }`; `call_function` binds with plain field reads (no per-call
  `strlen`/substring rest check, no `default_params` index lookup).
- [ ] **4. Pre-size slots → branchless `set_slot`** — pre-fill `slots` to `max_slots` in
  `call_function`; `set_slot` collapses to an indexed write (removes the grow branch,
  ~419K hits @ 3.9% net).

**Action:** upload 1–3 (and 4) to SAP, re-trace, and capture a clean measured baseline
before starting the architectural work below.

---

## 4. Architectural direction (QuickJS-inspired) — the multiple-x tier

Ranked by leverage. Each is mapped to trace evidence and to what ABAP can actually do
(no computed goto, no manual memory layout, no NaN-boxing — but a flat opcode `CASE`
loop, integer atoms, and shape caches all map cleanly).

### 4.1 Bytecode VM — the 3–10× change

Compile each function body to flat bytecode **once**, then run a single dispatch loop over
an instruction pointer with an explicit operand stack. Collapses all four per-node costs
into one `CASE` branch per instruction, in one method — no recursion, no per-node method
call, no per-node re-`ASSIGN`, locals allocated once per call.

Sketch:

```abap
METHOD run_chunk.
  DATA lt_stack TYPE zif_mjs=>tt_value_slots.  " operand stack, pre-sized to max depth
  DATA lv_sp TYPE i.                            " stack pointer
  DATA lv_ip TYPE i VALUE 1.                    " instruction pointer
  FIELD-SYMBOLS <c> TYPE ty_instr.
  DO.
    ASSIGN it_code[ lv_ip ] TO <c>.
    CASE <c>-op.
      WHEN c_op_load_slot.   " push local slot <c>-a
      WHEN c_op_add_num.     " pop b, pop a, push a+b (inlined number fast path)
      WHEN c_op_get_field.   " pop obj, push obj[atom <c>-a]  (+ inline cache, see 4.3)
      WHEN c_op_jump_false.  " pop cond; IF false. lv_ip = <c>-a. CONTINUE. ENDIF.
      WHEN c_op_call.        " frame setup here, not via ABAP recursion
      WHEN c_op_ret.         " rs_val = stack top. RETURN.
    ENDCASE.
    lv_ip = lv_ip + 1.
  ENDDO.
ENDMETHOD.
```

Front-end reuse: `compile_function` already walks the body and assigns slots — extend it
to **emit instructions** instead of annotating AST nodes.

### 4.2 Atoms — intern every identifier & property name to an integer

The other QuickJS signature move, and the biggest lever on property access
(`OBJ->GET` 894K + `EVAL_PROPERTY_ACCESS` 806K + `EVAL_NODE_MEMBER_ACCESS` 806K are all
string-keyed today). Intern all identifiers / property keys / string-literal keys at parse
time into a global `HASHED string→i` atom table. Then:

- object prop tables become `HASHED … WITH UNIQUE KEY atom TYPE i` — **integer** hashing,
- `iv_prop = 'length'` → `iv_atom = c_atom_length` (integer compare),
- variable resolution compares atoms, not names.

Delivers a real win **before** the VM and is self-contained → good Phase 0.

### 4.3 Inline caches / shapes for property access

Layered onto `get_field`/`set_field`. Give objects a `shape_id` (a shared map atom→offset;
objects built the same way share a shape). Each `get_field` instruction caches
`{ last_shape, offset }`. Hit path = compare shape id, read `values[offset]` — no hash.
Miss = hash + refresh cache. Turns property access from "O(1) hash + method call" into "an
array index." Requires storing object props as `shape + values array` instead of a hashed
table — the biggest structural change of the four, so it follows the VM.

### 4.4 Compact value & shared operand stack

`ty_value` is returned by value everywhere. On the VM operand stack, operate in place
(`ASSIGN it_stack[ sp ]`) to avoid most copies. Separately, consider shrinking the struct
(the `f` + `string` + three refs travel together even when the value is just a number).
Lower leverage than 4.1–4.3; do it opportunistically once the VM exists.

---

## 5. Phased migration (de-risked)

Keep `output/index.mjs` (unit tests) + `test262/run.mjs` green at **every** step. Compare
the test262 failure set against HEAD; it must stay byte-identical (regression gate).

| Phase | Scope | Risk | Success criteria |
|-------|-------|------|------------------|
| **0 — Atoms** | Intern identifiers/property keys → integer atom ids; re-key object & env tables; convert hot string compares to atom compares. Standalone, no VM. | Low | Tests green; measurable drop in `OBJ->GET` / `RESOLVE` / property-access net% on SAP trace. |
| **1 — Hybrid VM** | Define opcode set + chunk format. Extend `compile_function` to emit bytecode for common constructs (const/slot load-store, `this`, arithmetic, `if`/`while`/`for`, calls, member get/set, `return`). **Fall back to `eval_node`** for not-yet-compiled kinds (try/switch/class/regex/…). Start with the hottest function bodies. | Med–High | Tests green; the `EVAL_NODE` dispatch mountain collapses in the trace; end-to-end multiple-x on `bench_fib`/`bench_loop`. |
| **2 — Shapes + inline caches** | Objects store `shape + values array`; `get_field`/`set_field` carry an inline cache. | High | Tests green; `OBJ->GET`/`SET` fall out of the top hotspots. |
| **3 — Value compaction** | In-place operand-stack ops; optionally shrink `ty_value`. | Med | Tests green; reduced copy overhead. |

Sequencing rationale: Phase 0 is self-contained, low-risk, and **de-risks the atom design
that the VM (Phase 1) depends on**. Phases 2–3 refine once the VM exists.

---

## 6. Step-by-step checklist

Work top to bottom. **After every code change**: transpile → unit tests → test262 diff
must stay identical to the HEAD gate (see §7). Check a box only when that gate passes.

> **Progress (local, transpiled-target validated).** Items 1–4 and Phase 0 are
> implemented and green: 114/114 unit tests pass, test262 `PASS=191` byte-identical
> to HEAD at every step. SAP upload/activate/SE30 steps are **manual** (no SAP tool in
> the dev session) — do them to get the authoritative numbers. JS-target A/B (median of
> 3) after items 1–4 + Phase 0 vs HEAD: abaplint −1.0%, array −3.7%, fib −0.9%,
> loop −2.1%, object −0.4%, string −1.9% — all flat-or-better, no regression. As the
> plan predicted, the atom/int-key win is muted on V8 (cheap string hashing) and should
> be larger on SAP; the real multiple needs Phase 1.

### Phase P — Prep & clean baseline
- [ ] Upload items 1–3 to SAP (`ZIF_MJS`, `ZCL_MJS`) via method-level edit; `activate`. *(manual — no SAP tool in dev session)*
- [~] Item 4 (pre-size `slots`) implemented, then **REVERTED**: pre-sizing `max_slots` entries
      on every call regressed the call-heavy `abaplint` benchmark (~half of a measured ~10–15%
      regression). Restored lazy grow in `set_slot`; the VM's slot writes route through
      `set_slot` too, so lazy growth is safe on both the AST and VM paths.
- [ ] Run SE30/SAT trace of `ZMJS_ABAPLINT`; save Total Net + top hotspots as the
      **measured baseline**. *(manual — no SAP tool in dev session)*
- [x] Save the current test262 HEAD failure list as the regression gate. **Done** (34 fails; used as the gate for every step).

### Phase 0 — Atoms (self-contained; low risk) — **DONE, green**
- [x] Atom store: `zcl_mjs_obj=>atom( name ) → id` (1-based, `HASHED string→i`) + O(1)
      reverse `atom_name( id )`. *(hosted on `zcl_mjs_obj` to keep the dep graph acyclic,
      not a separate `zcl_mjs_atoms` class.)*
- [x] Well-known / static names interned **lazily and cached on the node** (`property_atom`),
      rather than pre-registered constants — same effect, zero parser churn.
- [x] Static property/method names interned on first eval and cached on `ty_node-property_atom`
      (member-access, method-call, member-assign). *(Lazy-on-node instead of parser-time —
      covers top-level + function bodies uniformly.)*
- [x] `zcl_mjs_obj`: `tt_props` re-keyed `key TYPE string → i`; atom API `get_a`/`set_a`/`has_a`;
      string `get`/`set`/`has` kept (intern-then-delegate) for computed/dynamic keys; the 6
      direct `props` iterations (for-in, `Object.keys`, JSON.stringify, class/super copy,
      `copy_from`) map atom→name via `atom_name`.
- [ ] `zcl_mjs_env`: key `slot_map`/`vars` by atom. *(Deferred — env locals already use integer
      slots on the hot path; `vars` hash is only globals/closures/catch. Low value, revisit later.)*
- [x] Hot property path (`eval_property_access`/`eval_method_call` + member-access/method-call/
      member-assign) now passes the cached atom → integer-keyed `get_a`/`set_a`. Transpiled; unit
      tests green; test262 identical.

### Phase 1 — Hybrid bytecode VM (the multiple-x)
Design first:
- [ ] Write the VM design doc: opcode list, `ty_instr` layout, chunk format, and the
      per-node → bytecode mapping. Review before cutting VM code (see §8.3).
      *(Built directly; the opcode set + emitter below serve as the spec.)*
- [x] Defined `ty_instr { op, a, b, s }` + `tt_instr`, constants pool (`tt_value_slots`),
      and `vm_code`/`vm_consts`/`vm_max_stack`/`vm_ok`/`vm_checked` on `ty_function`.
- [x] Opcode constants defined: `push_const`, `push_undef`, `load_slot`, `store_slot`,
      `load_this`, `resolve`, `store_name`, `binop`, `neg`, `not`, `jump`, `jump_false`,
      `jump_true`, `call`, `ret`, `ret_undef`, `pop`, `incdec`.
      *(`get_field`/`set_field`/`make_array`/`make_object`/`call_method`/`new` = Phase 1-cont.)*

Compiler:
- [x] `vm_emit_stmt` / `vm_emit_expr` recursive emitters (expression leaves one value,
      statement is stack-neutral); slot allocation reused from `compile_function`.
- [x] Forward-jump backpatching for `if` / `while` / `for`. *(ternary / `&&` / `||` = Phase 1-cont.)*
- [x] Emitter sets `cv_ok = false` on the first unsupported node → `vm_try_compile` leaves
      `vm_ok = false` → whole function stays on the AST evaluator (hybrid gate).

VM + wiring:
- [x] `run_chunk( ir_fn, io_env )` dispatch loop; operand stack pre-sized to `vm_max_stack`;
      instruction fetch via `ASSIGN vm_code[ ip ]`; jumps `CONTINUE` past the ip increment.
- [x] Leaf ops delegate to existing tested methods (`eval_bin_op`, `resolve`, inc/dec via
      `eval_bin_op`) → identical semantics, no divergence.
- [x] `call` handles plain named calls via `vm_call_named` (mirrors `eval_node_call`'s named
      path incl. the `defineProperty` intercept); reuses `call_function`. Builtins/spread/
      expression-callee/`?.`/method-calls → fall back.
- [x] `get_field` / `set_field` / `call_method` on the atom-keyed accessors — member read
      (`obj.x`), member write (`obj.x = v`, incl. the function-target writeback), and method
      calls (`recv.m(args)`) delegate to `eval_property_access` / `eval_method_call` (getters,
      `this`-binding, array/string/proto dispatch preserved). Computed / builtin / `super` /
      spread / optional → fall back.
- [x] `call_function` routes to `run_chunk` when `vm_ok`, else the AST body loop.
- [x] Transpiled; **114/114 unit tests green; test262 `PASS=191` byte-identical to HEAD** at
      every step. Robust JS signal: **fib −21% to −39%** across runs (compute-bound, fully
      VM-compiled). Property/method benchmarks improved 5–9% in low-noise runs but are
      **noise-dominated** on this machine (long `abaplint` bench swings ±10% between identical
      builds), so treat them as inconclusive — **the authoritative measure is the isolated SAP
      `ZMJS_ABAPLINT` trace (manual)**, where per-node dispatch overhead is far higher.

**Covered subset (runs on the VM):** number/string/bool literals; identifiers (slot/`this`/
resolve); arithmetic & comparison binops; `&&`/`||`/ternary; unary `-`/`!`; `var`/`let`/
`const`; assignment (`=`, `+=`); `++`/`--`; `if`/`else`; `while`; `for` (C-style);
`break`/`continue`; member read `obj.x` and `obj[expr]`; member write `obj.x = v`; method
call `recv.m(args)`; array literals `[a,b,c]`; `return`; plain named calls & recursion.
**Still falls back to AST** (unchanged, correct): `new`, object literals, computed member
*write* `obj[e] = v`, `for-of`/`for-in`, `try`, `throw`, `switch`, `class`, regex, nested
functions/closures, spread, optional chaining, builtin/`super` calls, labeled break/continue.

### Phase 1-cont — extended VM coverage — **DONE, green**
- [x] `&&`/`||`/ternary (via `dup` + jump backpatching).
- [x] `break`/`continue` (class-level loop-context stack, backpatched per loop; `continue`
      targets while-cond / for-update; labeled → fall back).
- [x] Computed member **read** `obj[expr]` (`get_index` → `eval_property_access`, handles
      array/string/object indexing).
- [x] Array literals `[a,b,c]` (`make_array`; spread → fall back).
- [ ] Object literals (`make_object`) — deferred; proto/getters/methods/computed-key/spread
      edge cases make safe delegation costly. Falls back to AST.
- [ ] Computed member **write** `obj[e] = v` (`set_index`) — deferred; the AST member-assign
      array path needs separate verification. Falls back to AST.

### Phase 2 — Shapes + inline caches — **IMPLEMENTED, then REVERTED (measured regression)**
- Full hidden-class shapes + per-instruction inline caches were implemented (`shape_id` +
  flat `values` array + `offset_of` + transition cache; `get_field`/`set_field` ICs) and
  passed correctness (114 + test262 191).
- **But measurement showed a ~10–15% regression on the `abaplint` benchmark** — the workload
  closest to the SAP hot path (the interpreter running lint-like code). Root cause: shapes add
  indirection (`gt_shapes` index → shape-map hash → `values` index) to **every** property
  access, but the inline cache only pays off on the **VM** path. `abaplint` is dominated by the
  **AST** path (complex functions that fall back), so shapes optimized the minority path and
  pessimized the majority. Interleaved min-of-N measurement (to beat the ±15% machine noise)
  confirmed the regression was real and consistent.
- **Reverted to the flat atom-keyed hashed table** (Phase 0 model, measured neutral vs base).
  Kept the safe win: the VM `get_field` still reads `obj->props` inline (one hashed read, no
  `eval_property_access`/`get_a` method calls) — a pure gain with no AST-path penalty. `entries( )`
  retained for the iteration sites. **Lesson: an inline cache without a cache on the dominant
  (AST) path is net-negative; shapes need the AST member-access nodes to carry ICs too before
  they pay off — a larger change, best validated on SAP.**

### Phase 3 — Value compaction — **DONE, green**
- [x] **In-place operand stack**: the VM stack is a `tt_value_slots` pre-sized once per call
      to `vm_max_stack`; push/pop are index moves and reads/writes go through field-symbols
      (`ASSIGN lt_stack[ sp ]`) — no per-op table growth or by-value stack juggling.
- [x] **Inlined number binop** — the VM `binop` opcode computes number arithmetic/comparison
      in place (mirroring `eval_bin_op`'s fast path), removing the method call and two ~80-byte
      by-value operand copies per hot arithmetic op; falls back to `eval_bin_op` for non-number
      operands or other operators. Tests green.
- [x] **`ty_value` shrink — evaluated (per the plan's "measure first, do not do it blind").**
      The three ref fields (`obj`/`arr`/`fn`) are mutually exclusive, so ~2 ref-slots per value
      are unused; merging them is the only real size reduction. **Conclusion: not implemented,
      by evaluation.** (1) On the only measurable target (transpiled JS) it yields ~nothing —
      the struct becomes a JS object regardless of ABAP field count, and the noise floor here
      is ±17% (the function-less `loop` bench swings that much between identical builds).
      (2) The merge requires casting at every `-obj`/`-arr`/`-fn` site (hundreds across all
      files) — high regression risk. (3) Its only real payoff is a smaller native memcpy on
      SAP, which cannot be measured in this environment. Implementing it here would be exactly
      the "blind" change the plan warns against; it belongs in a SAP-instrumented session where
      before/after can be measured. Robust JS signal for the work that *was* done: **fib −21%
      to −39%** across runs.

---

## 7. Validation / toolchain

```bash
npx @abaplint/cli .                 # syntax/lint
npx @abaplint/transpiler-cli        # ABAP → JS  (output/)
node output/index.mjs               # unit tests (114) — must exit 0
node test262/run.mjs                # conformance — PASS/FAIL vs HEAD must not regress
```

Regression gate used so far:
```bash
node test262/run.mjs 2>&1 | grep '^FAIL:' | sort > after.txt
diff head_baseline.txt after.txt    # must be identical
```

Perf on the transpiled target: `perf/run.mjs`; the authoritative number is the SAP
`ZMJS_ABAPLINT` runtime trace (SE30/SAT).

---

## 8. Open decisions

1. **Upload incremental 1–3 (and 4) to SAP and re-trace first?** Yes — establishes a clean
   measured baseline before the rewrite. (Currently the trace runs pre-optimization code.)
2. **How far to commit now?** Recommended: start **Phase 0 (atoms)** — self-contained,
   low-risk, and it fixes the value the VM will build on.
3. **Write a full VM design doc before Phase 1?** Opcode set, chunk format
   (`ty_instr` = `{ op TYPE i, a TYPE i, b TYPE i, … }`), and the per-node → bytecode
   mapping — worth a reviewed spec before cutting VM code.

---

## 9. Notes / constraints

- ABAP has **no computed goto** → dispatch is an integer `CASE` (still far cheaper than
  recursive AST method dispatch).
- Operand stack = a `STANDARD TABLE OF ty_value` with an explicit SP; prefer
  `ASSIGN … INDEX` over `READ … INTO` to avoid copies.
- The transpiler (`abap_transpile.json`) mirrors the ABAP to JS; the VM's
  "locals allocated once per call" property helps **both** targets.
- Editing on SAP is method-level via the `SAP(action="edit"/"activate")` flow (see
  `CLAUDE.md`) — separate from the git tree; changes must be uploaded to appear in traces.
