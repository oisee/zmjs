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

### Phase P — Prep & clean baseline
- [ ] Upload items 1–3 to SAP (`ZIF_MJS`, `ZCL_MJS`) via method-level edit; `activate`.
- [ ] Implement item 4 (pre-size `slots` to `max_slots` in `call_function`; strip the grow
      branch in `set_slot`); transpile; tests green; upload + activate.
- [ ] Run SE30/SAT trace of `ZMJS_ABAPLINT`; save Total Net + top hotspots as the
      **measured baseline** (this replaces the pre-optimization 10:51 trace).
- [ ] Save the current test262 HEAD failure list as the regression gate
      (`node test262/run.mjs | grep '^FAIL:' | sort > head_baseline.txt`).

### Phase 0 — Atoms (self-contained; low risk)
- [ ] Add atom store `zcl_mjs_atoms`: `intern( name ) → id` (`HASHED string→i`) + reverse
      `name( id )` table for errors / `for-in` / `Object.keys`.
- [ ] Pre-register well-known atoms as constants: `c_atom_this`, `c_atom_length`,
      `c_atom_prototype`, `c_atom___super_proto__`, `c_atom___is_class__`, and the method
      names used in hot dispatch.
- [ ] Parser: intern every identifier, property name, and object-literal key; store the id
      on the node (add `str_atom` / `property_atom` to `ty_node`); keep the string for
      display/errors.
- [ ] `zcl_mjs_obj`: re-key `tt_props` from `key TYPE string` to `key TYPE i` (atom);
      add atom-keyed `get`/`set`/`has`; keep string wrappers only where a real string key
      is unavoidable.
- [ ] `zcl_mjs_env`: key `slot_map` and `vars` by atom id.
- [ ] Convert hot string compares to atom compares: `<n>-str = 'this'` → `= c_atom_this`;
      `iv_prop = 'length'`; the method-name checks in `eval_method_call`.
- [ ] Transpile; unit tests green; test262 diff identical → upload + activate → re-trace →
      record delta on `OBJ->GET` / `RESOLVE` / property-access net%.

### Phase 1 — Hybrid bytecode VM (the multiple-x)
Design first:
- [ ] Write the VM design doc: opcode list, `ty_instr` layout, chunk format, and the
      per-node → bytecode mapping. Review before cutting VM code (see §8.3).
- [ ] Define `ty_instr { op TYPE i, a TYPE i, b TYPE i }`, `tt_code`, a constants pool
      (`tt_value_slots`), and `ty_chunk { code, consts, max_stack }` on `ty_function`.
- [ ] Define opcode constants: `push_const`, `push_undef`, `load_slot`, `store_slot`,
      `load_this`, `resolve`, `get_field`, `set_field`, `get_index`, `set_index`,
      `add`/`sub`/`mul`/`div`/`mod`, compare ops, `jump`, `jump_false`, `jump_true`,
      `call`, `call_method`, `new`, `make_array`, `make_object`, `pop`, `dup`, `ret`.

Compiler:
- [ ] New `compile_to_bytecode( body, slot_map ) → chunk`: recursive emitter — expression
      leaves one value on the stack, statement is stack-neutral. Reuse slot allocation
      from `compile_function`.
- [ ] Forward-jump backpatching for `if` / `while` / `for` / ternary / `&&` / `||`.
- [ ] Mark compilable node kinds; if a body contains an unsupported kind (try/switch/
      class/regex/for-in/…), set a flag and **fall back to AST `eval_node`** for the whole
      function (hybrid gate).

VM + wiring:
- [ ] Implement `run_chunk( chunk, io_env ) RETURNING rs_val`: the dispatch loop; operand
      stack pre-sized to `max_stack`; instruction fetch via `ASSIGN it_code[ ip ]`.
- [ ] Inline the number fast path in arithmetic/compare opcodes; fall to
      `eval_bin_op` for non-number operands.
- [ ] `call` / `call_method` / `new` opcodes reuse existing `call_function` /
      `eval_method_call` / `eval_node_new` initially (optimize frames later).
- [ ] `get_field` / `set_field` use the atom-keyed object accessors from Phase 0
      (IC hooks added in Phase 2).
- [ ] Route `call_function` to `run_chunk` when the function is bytecode-compiled, else the
      AST body.
- [ ] Transpile; tests green; test262 diff identical → upload + activate → re-trace →
      confirm the `EVAL_NODE` mountain collapses and `bench_fib` / `bench_loop` show a
      multiple-x.

### Phase 2 — Shapes + inline caches
- [ ] Add `shape_id` to `zcl_mjs_obj`; shape registry mapping atom-set → shape; transition
      shape on new-key insert.
- [ ] Store props as a parallel values array indexed by shape offset (keep a hashed
      fallback for deleted/dynamic keys).
- [ ] Add IC fields to `get_field` / `set_field` (`cache_shape`, `cache_offset`);
      hit = offset read, miss = hash + refresh.
- [ ] Tests green → upload → re-trace → confirm `OBJ->GET/SET` leave the top hotspots.

### Phase 3 — Value compaction
- [ ] Operate in place on the operand stack (`ASSIGN it_stack[ sp ]`); remove by-value
      copies on the hottest opcodes.
- [ ] Evaluate shrinking `ty_value` (measure before/after — do not do it blind).
- [ ] Tests green → upload → final trace vs the Phase P baseline.

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
