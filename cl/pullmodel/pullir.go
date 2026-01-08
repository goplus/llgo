// Package pullmodel implements the pull-based async/await transformation.
// This file defines the Pull IR intermediate representation.

package pullmodel

import (
	"go/token"
	"go/types"

	"golang.org/x/tools/go/ssa"
)

// =============================================================================
// Slot: Variable Storage in State Struct
// =============================================================================

// SlotKind indicates the origin and lifetime of a slot.
type SlotKind int

const (
	SlotParam SlotKind = iota // Function parameter
	SlotLocal                 // Local within single state (not persisted)
	SlotCross                 // Crosses suspend points (persisted in struct)
)

// Slot represents a storage location in the state struct.
// Unlike SSA values which are ephemeral, slots are explicitly stored.
type Slot struct {
	Name     string     // Human-readable name (e.g., "idx", "sum")
	Type     types.Type // Go type of the stored value
	FieldIdx int        // Index in state struct (-1 if not persisted)
	Kind     SlotKind   // Param, Local, or Cross
	SSAValue ssa.Value  // Original SSA value this slot represents (if any)
}

// IsPersisted returns true if this slot is stored in the state struct.
func (s *Slot) IsPersisted() bool {
	return s.Kind != SlotLocal && s.FieldIdx >= 0
}

// =============================================================================
// VarRef: Operand Reference
// =============================================================================

// VarRefKind indicates the source of an operand value.
type VarRefKind int

const (
	VarRefSlot  VarRefKind = iota // Load from a slot
	VarRefConst                   // Constant value
	VarRefTemp                    // Temporary (result of previous instruction in same state)
)

// VarRef represents an operand reference in Pull IR instructions.
// This makes value sources explicit - no implicit caching.
type VarRef struct {
	Kind  VarRefKind
	Slot  *Slot     // For VarRefSlot
	Const ssa.Value // For VarRefConst (must be *ssa.Const)
	Temp  int       // For VarRefTemp (index in current state's temps)
}

// NewSlotRef creates a VarRef that loads from a slot.
func NewSlotRef(slot *Slot) VarRef {
	return VarRef{Kind: VarRefSlot, Slot: slot}
}

// NewConstRef creates a VarRef for a constant value.
func NewConstRef(c ssa.Value) VarRef {
	return VarRef{Kind: VarRefConst, Const: c}
}

// NewTempRef creates a VarRef for a temporary value.
func NewTempRef(idx int) VarRef {
	return VarRef{Kind: VarRefTemp, Temp: idx}
}

// =============================================================================
// Pull IR Instructions
// =============================================================================

// PullInstr is the interface for all Pull IR instructions.
type PullInstr interface {
	pullInstr() // marker method
}

// --- Storage Operations ---

// LoadSlot loads a value from a slot.
// Result is a temporary that can be referenced by subsequent instructions.
type LoadSlot struct {
	Src *Slot // Source slot to load from
}

func (*LoadSlot) pullInstr() {}

// StoreSlot stores a value to a slot.
type StoreSlot struct {
	Dst   *Slot  // Destination slot
	Value VarRef // Value to store
}

func (*StoreSlot) pullInstr() {}

// --- Computation Operations ---

// PullBinOp performs a binary operation.
// Result is a temporary.
type PullBinOp struct {
	Op token.Token // e.g., token.ADD, token.MUL
	X  VarRef      // Left operand
	Y  VarRef      // Right operand
}

func (*PullBinOp) pullInstr() {}

// PullUnOp performs a unary operation.
type PullUnOp struct {
	Op token.Token
	X  VarRef
}

func (*PullUnOp) pullInstr() {}

// PullCall calls a function.
// Result is a temporary (may be void).
type PullCall struct {
	Func     ssa.Value // Function to call
	Args     []VarRef  // Arguments
	HasValue bool      // True if call returns a value
}

func (*PullCall) pullInstr() {}

// PullExtract extracts a value from a tuple.
type PullExtract struct {
	Tuple VarRef // Tuple to extract from
	Index int    // Index to extract
}

func (*PullExtract) pullInstr() {}

// PullIndex indexes into an array/slice.
type PullIndex struct {
	Base  VarRef // Array or slice
	Index VarRef // Index
}

func (*PullIndex) pullInstr() {}

// PullSlice creates a slice from an array/slice.
type PullSlice struct {
	Base VarRef // Source
	Low  VarRef // Low bound (may be nil constant for 0)
	High VarRef // High bound (may be nil for len)
}

func (*PullSlice) pullInstr() {}

// PullLookup performs a map lookup.
type PullLookup struct {
	Map     VarRef // Map to lookup
	Key     VarRef // Key to lookup
	CommaOk bool   // True if ",ok" variant
}

func (*PullLookup) pullInstr() {}

// PullRange creates an iterator for a collection.
type PullRange struct {
	X VarRef // Collection to iterate
}

func (*PullRange) pullInstr() {}

// PullNext advances an iterator and returns (key, value, ok).
type PullNext struct {
	Iter     VarRef     // Iterator
	ElemType types.Type // Element type for iteration
	IsString bool       // True for string iteration
}

func (*PullNext) pullInstr() {}

// PullFieldAddr gets the address of a struct field.
type PullFieldAddr struct {
	Base  VarRef
	Field int
}

func (*PullFieldAddr) pullInstr() {}

// PullLoad loads from a pointer.
type PullLoad struct {
	Addr VarRef
}

func (*PullLoad) pullInstr() {}

// PullStore stores to a pointer.
type PullStore struct {
	Addr  VarRef
	Value VarRef
}

func (*PullStore) pullInstr() {}

// PullConvert performs type conversion.
type PullConvert struct {
	Value VarRef
	Type  types.Type
}

func (*PullConvert) pullInstr() {}

// PullAlloc allocates memory (stack or heap).
type PullAlloc struct {
	Type types.Type // Element type to allocate
	Heap bool       // Heap allocation if true
}

func (*PullAlloc) pullInstr() {}

// PullMakeInterface creates an interface from a concrete value.
type PullMakeInterface struct {
	IfaceType types.Type // Interface type
	Value     VarRef     // Concrete value
}

func (*PullMakeInterface) pullInstr() {}

// --- Control Flow Operations ---

// Await suspends execution waiting for a sub-future.
// On resume, the result is stored in ResultSlot.
type Await struct {
	SubFuture  VarRef // The future to await
	ResultSlot *Slot  // Where to store the result
	NextState  int    // State to transition to after ready
}

func (*Await) pullInstr() {}

// Branch conditionally transitions to one of two states.
type Branch struct {
	Cond       VarRef // Condition (must be bool)
	TrueState  int    // State if true
	FalseState int    // State if false
}

func (*Branch) pullInstr() {}

// Jump unconditionally transitions to a state.
type Jump struct {
	Target int // Target state index
}

func (*Jump) pullInstr() {}

// Return returns a ready value and terminates the state machine.
type Return struct {
	Value VarRef // Value to return
}

func (*Return) pullInstr() {}

// =============================================================================
// State: Pull IR State Block
// =============================================================================

// EdgeWrite represents a slot write that happens before transitioning to a state.
// This is how PHI nodes are lowered - the incoming value is written at the exit.
type EdgeWrite struct {
	Dst   *Slot  // Slot to write to
	Value VarRef // Value to write
}

// PullState represents a single state in the Pull IR state machine.
type PullState struct {
	Index        int                 // State number (0, 1, 2, ...)
	Instructions []PullInstr         // Instructions to execute in this state
	EdgeWrites   map[int][]EdgeWrite // Writes to execute before transitioning: targetState -> writes
	OriginalSSA  *ssa.BasicBlock     // Original SSA block (for debugging)
}

// =============================================================================
// PullIR: Complete Representation
// =============================================================================

// PullIR is the complete Pull IR representation of an async function.
type PullIR struct {
	FuncName   string        // Original function name
	Original   *ssa.Function // Original SSA function
	Params     []*Slot       // Function parameter slots
	Slots      []*Slot       // All slots (includes params)
	States     []*PullState  // All states
	ResultSlot *Slot         // Slot for final return value
	ResultType types.Type    // Type of return value (T in Future[T])
}

// NumFields returns the number of fields needed in the state struct.
// Field 0 is always the state number.
func (p *PullIR) NumFields() int {
	maxField := 0
	for _, slot := range p.Slots {
		if slot.FieldIdx > maxField {
			maxField = slot.FieldIdx
		}
	}
	return maxField + 1
}
