package jseval

// ZMJS Bytecode VM — compiler + VM definition.
//
// Architecture inspired by Z-machine (ZCL_ORK_00_ZMACHINE):
//   - flat instruction array, sequential IP
//   - typed value stack (not byte array — ABAP-native)
//   - explicit call frames with captured env (closures)
//   - CASE dispatch on opcode integer
//
// Designed to port 1:1 to ABAP WHILE+CASE (ZCL_MJS_BC_VM).

// --- Opcodes ---

type Opcode byte

const (
	// Stack / literals
	OP_PUSH_NUM  Opcode = 1  // push number constant[arg0]
	OP_PUSH_STR  Opcode = 2  // push string constant[arg0]
	OP_PUSH_BOOL Opcode = 3  // push bool (arg0=0/1)
	OP_PUSH_NULL Opcode = 4  // push null
	OP_PUSH_UNDEF Opcode = 5 // push undefined
	OP_POP       Opcode = 6  // pop top

	// Variables
	OP_LOAD  Opcode = 10 // push env.get(names[arg0])
	OP_STORE Opcode = 11 // env.set(names[arg0], pop())
	OP_DEFVAR Opcode = 12 // env.def(names[arg0], pop()) — let/const/var

	// Arithmetic (binary: pop b, pop a, push result)
	OP_ADD Opcode = 20
	OP_SUB Opcode = 21
	OP_MUL Opcode = 22
	OP_DIV Opcode = 23
	OP_MOD Opcode = 24
	OP_NEG Opcode = 25 // unary minus

	// Comparison (push bool)
	OP_EQ  Opcode = 30 // ===
	OP_NEQ Opcode = 31 // !==
	OP_LT  Opcode = 32
	OP_LE  Opcode = 33
	OP_GT  Opcode = 34
	OP_GE  Opcode = 35

	// Logical
	OP_AND  Opcode = 40 // short-circuit: if top falsy, jump to arg0; else pop
	OP_OR   Opcode = 41 // short-circuit: if top truthy, jump to arg0; else pop
	OP_NOT  Opcode = 42 // unary !
	OP_NULL_COALESCE Opcode = 43 // ??

	// Control flow
	OP_JUMP    Opcode = 50 // IP = arg0
	OP_JUMP_IF Opcode = 51 // if pop() truthy: IP = arg0
	OP_JUMP_IF_NOT Opcode = 52 // if pop() falsy: IP = arg0

	// Functions
	OP_MAKE_FUNC Opcode = 60 // push closure: funcs[arg0] + current env
	OP_CALL      Opcode = 61 // call: pop func, pop N args (arg0=N), push result
	OP_RETURN    Opcode = 62 // return pop() from current frame
	OP_RETURN_UNDEF Opcode = 63 // return undefined

	// Objects / arrays
	OP_MAKE_OBJ  Opcode = 70 // push new {}
	OP_MAKE_ARR  Opcode = 71 // push new [] with arg0 elements popped from stack
	OP_GET_PROP  Opcode = 72 // pop obj, push obj[names[arg0]]
	OP_SET_PROP  Opcode = 73 // pop val, pop obj, obj[names[arg0]] = val, push obj
	OP_GET_IDX   Opcode = 74 // pop idx, pop obj, push obj[idx]
	OP_SET_IDX   Opcode = 75 // pop val, pop idx, pop obj, obj[idx] = val

	// Classes / new
	OP_NEW Opcode = 80 // new: pop ctor, pop N args (arg0=N), push instance

	// Native builtins (готовченки)
	OP_NATIVE Opcode = 90 // call native[arg0] with arg1 args from stack

	// Misc
	OP_TYPEOF    Opcode = 95
	OP_DUP       Opcode = 96 // duplicate top of stack
	OP_PUSH_THIS Opcode = 97
)

// Native function IDs (arg0 for OP_NATIVE)
const (
	NATIVE_CONSOLE_LOG   = 1
	NATIVE_STR_CHARAT    = 2
	NATIVE_STR_CHARCODE  = 3
	NATIVE_STR_INDEXOF   = 4
	NATIVE_STR_SUBSTRING = 5
	NATIVE_STR_LENGTH    = 6
	NATIVE_ARR_PUSH      = 7
	NATIVE_ARR_LENGTH    = 8
)

// --- Instruction ---

type Instr struct {
	Op   Opcode
	Arg0 int // primary operand (index or jump target or count)
	Arg1 int // secondary operand
}

// --- Function prototype ---

type FuncProto struct {
	Name    string
	Params  []string
	Code    []Instr
	// Nested function prototypes referenced by OP_MAKE_FUNC
	Funcs   []*FuncProto
}

// --- Module (compiled JS) ---

type Module struct {
	// Top-level code
	Code    []Instr
	// All function prototypes (top-level + nested, indexed)
	Funcs   []*FuncProto
	// Constant pools
	Numbers []float64
	Strings []string
}

// --- Runtime value (same as tree-walking VM) ---
// Re-uses Value from jseval.go — no duplication needed.

// --- Call frame ---

type Frame struct {
	Proto     *FuncProto
	IP        int
	Env       *Env     // captured + local scope
	This      Value
	ReturnTo  int      // index in global frame stack to return to
}
