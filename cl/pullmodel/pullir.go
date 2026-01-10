/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// Package pullmodel implements the pull-based async/await transformation.
// This file defines the Pull IR intermediate representation for async functions.
// Pull IR is an explicit slot-based representation that avoids SSA value caching issues.
package pullmodel

import (
	"fmt"
	"go/token"
	"go/types"
	"io"

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
type Slot struct {
	Name       string     // Human-readable name
	Type       types.Type // Go type of the stored value
	FieldIdx   int        // Index in state struct (-1 if not persisted)
	Kind       SlotKind   // Param, Local, or Cross
	SSAValue   ssa.Value  // Original SSA value this slot represents
	StackAlloc bool       // True for non-escaping stack allocations
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
	VarRefTemp                    // Temporary result in same state
)

// VarRef represents an operand reference in Pull IR instructions.
type VarRef struct {
	Kind  VarRefKind
	Slot  *Slot     // For VarRefSlot
	Const ssa.Value // For VarRefConst
	Temp  int       // For VarRefTemp
}

// NewSlotRef creates a VarRef that loads from a slot.
func NewSlotRef(slot *Slot) VarRef { return VarRef{Kind: VarRefSlot, Slot: slot} }

// NewConstRef creates a VarRef for a constant value.
func NewConstRef(c ssa.Value) VarRef { return VarRef{Kind: VarRefConst, Const: c} }

// NewTempRef creates a VarRef for a temporary value.
func NewTempRef(idx int) VarRef { return VarRef{Kind: VarRefTemp, Temp: idx} }

// =============================================================================
// Pull IR Instructions
// =============================================================================

// PullInstr is the interface for all Pull IR instructions.
type PullInstr interface{ pullInstr() }

// Storage operations
type LoadSlot struct{ Src *Slot }
type StoreSlot struct {
	Dst   *Slot
	Value VarRef
}

func (*LoadSlot) pullInstr()  {}
func (*StoreSlot) pullInstr() {}

// Computation operations
type PullBinOp struct {
	Op   token.Token
	X, Y VarRef
}
type PullUnOp struct {
	Op token.Token
	X  VarRef
}
type PullCall struct {
	Func     ssa.Value
	Args     []VarRef
	HasValue bool
}
type PullExtract struct {
	Tuple VarRef
	Index int
}
type PullIndex struct {
	Base, Index VarRef
}
type PullSlice struct {
	Base, Low, High VarRef
}
type PullLookup struct {
	Map, Key VarRef
	CommaOk  bool
}
type PullRange struct{ X VarRef }
type PullNext struct {
	Iter     VarRef
	ElemType types.Type
	IsString bool
}
type PullFieldAddr struct {
	Base  VarRef
	Field int
}
type PullLoad struct{ Addr VarRef }
type PullStore struct{ Addr, Value VarRef }
type PullConvert struct {
	Value VarRef
	Type  types.Type
}
type PullAlloc struct {
	Type types.Type
	Heap bool
}
type PullMakeInterface struct {
	IfaceType types.Type
	Value     VarRef
}

func (*PullBinOp) pullInstr()         {}
func (*PullUnOp) pullInstr()          {}
func (*PullCall) pullInstr()          {}
func (*PullExtract) pullInstr()       {}
func (*PullIndex) pullInstr()         {}
func (*PullSlice) pullInstr()         {}
func (*PullLookup) pullInstr()        {}
func (*PullRange) pullInstr()         {}
func (*PullNext) pullInstr()          {}
func (*PullFieldAddr) pullInstr()     {}
func (*PullLoad) pullInstr()          {}
func (*PullStore) pullInstr()         {}
func (*PullConvert) pullInstr()       {}
func (*PullAlloc) pullInstr()         {}
func (*PullMakeInterface) pullInstr() {}

// Control flow operations
type Await struct {
	SubFuture  VarRef
	ResultSlot *Slot
	NextState  int
}
type Branch struct {
	Cond                  VarRef
	TrueState, FalseState int
}
type Jump struct{ Target int }
type Return struct{ Value VarRef }

func (*Await) pullInstr()  {}
func (*Branch) pullInstr() {}
func (*Jump) pullInstr()   {}
func (*Return) pullInstr() {}

// =============================================================================
// State: Pull IR State Block
// =============================================================================

// EdgeWrite represents a slot write before transitioning to a state.
type EdgeWrite struct {
	Dst   *Slot
	Value VarRef
}

// PullState represents a single state in the Pull IR state machine.
type PullState struct {
	Index        int
	Instructions []PullInstr
	EdgeWrites   map[int][]EdgeWrite
	OriginalSSA  *ssa.BasicBlock
}

// =============================================================================
// PullIR: Complete Representation
// =============================================================================

// PullIR is the complete Pull IR representation of an async function.
type PullIR struct {
	FuncName   string
	Original   *ssa.Function
	Params     []*Slot
	Slots      []*Slot
	States     []*PullState
	ResultSlot *Slot
	ResultType types.Type
}

// NumFields returns the number of fields needed in the state struct.
func (p *PullIR) NumFields() int {
	maxField := 0
	for _, slot := range p.Slots {
		if slot.FieldIdx > maxField {
			maxField = slot.FieldIdx
		}
	}
	return maxField + 1
}

// Dump prints a readable snapshot of the Pull IR.
func (p *PullIR) Dump(w io.Writer) {
	if p == nil {
		return
	}
	fmt.Fprintf(w, "PullIR %s (%d states, %d slots)\n", p.FuncName, len(p.States), len(p.Slots))
	fmt.Fprintln(w, "Slots:")
	for i, s := range p.Slots {
		fmt.Fprintf(w, "  [%02d] kind=%v field=%d name=%s\n", i, s.Kind, s.FieldIdx, s.Name)
	}
	fmt.Fprintln(w, "States:")
	for i, st := range p.States {
		fmt.Fprintf(w, "State %02d: %d instrs\n", i, len(st.Instructions))
	}
}
