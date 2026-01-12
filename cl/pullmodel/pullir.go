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
	Op         token.Token
	X          VarRef
	CommaOk    bool
	ResultType types.Type
}
type PullCall struct {
	Func     ssa.Value
	Args     []VarRef
	HasValue bool
}
type PullDefer struct {
	IsInvoke bool
	Method   *types.Func
	Func     VarRef
	Args     []VarRef
	ArgTypes []types.Type
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
type PullSend struct {
	Chan  VarRef
	Value VarRef
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
type PullMakeChan struct {
	ChanType types.Type
	Size     VarRef
}
type PullMakeSlice struct {
	SliceType types.Type
	Len       VarRef
	Cap       VarRef
}
type PullMakeMap struct {
	MapType types.Type
	Reserve VarRef
}
type PullMakeInterface struct {
	IfaceType types.Type
	Value     VarRef
}
type PullMakeClosure struct {
	Func     ssa.Value
	Bindings []VarRef
}
type PullPanic struct{ Value VarRef }
type PullRunDefers struct{}

func (*PullBinOp) pullInstr()         {}
func (*PullUnOp) pullInstr()          {}
func (*PullCall) pullInstr()          {}
func (*PullDefer) pullInstr()         {}
func (*PullExtract) pullInstr()       {}
func (*PullIndex) pullInstr()         {}
func (*PullSlice) pullInstr()         {}
func (*PullLookup) pullInstr()        {}
func (*PullRange) pullInstr()         {}
func (*PullNext) pullInstr()          {}
func (*PullSend) pullInstr()          {}
func (*PullFieldAddr) pullInstr()     {}
func (*PullLoad) pullInstr()          {}
func (*PullStore) pullInstr()         {}
func (*PullConvert) pullInstr()       {}
func (*PullAlloc) pullInstr()         {}
func (*PullMakeChan) pullInstr()      {}
func (*PullMakeSlice) pullInstr()     {}
func (*PullMakeMap) pullInstr()       {}
func (*PullMakeInterface) pullInstr() {}
func (*PullMakeClosure) pullInstr()   {}
func (*PullPanic) pullInstr()         {}
func (*PullRunDefers) pullInstr()     {}
func (*PullSelect) pullInstr()        {}
func (*PullGo) pullInstr()            {}

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
type PullSelectState struct {
	Chan  VarRef
	Value VarRef
	Send  bool
}
type PullSelect struct {
	States   []PullSelectState
	Blocking bool
}
type PullGo struct {
	IsInvoke bool
	Method   *types.Func
	Func     VarRef
	Args     []VarRef
}

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
	HasDefer   bool
	HasPanic   bool
}

// NumFields returns the number of fields needed in the state struct.
func (p *PullIR) NumFields() int {
	maxField := 0
	for _, slot := range p.Slots {
		if slot.FieldIdx > maxField {
			maxField = slot.FieldIdx
		}
	}
	extra := 0
	if p.HasDefer {
		extra++
	}
	extra++ // panicErr
	return maxField + 1 + extra
}

// Dump prints a readable snapshot of the Pull IR.
func (p *PullIR) Dump(w io.Writer) {
	if p == nil {
		return
	}
	fmt.Fprintf(w, "PullIR %s (%d states, %d slots)\n", p.FuncName, len(p.States), len(p.Slots))
	fmt.Fprintln(w, "Slots:")
	for i, s := range p.Slots {
		var typ string
		if s.Type != nil {
			typ = fmt.Sprintf("%s (%T)", types.TypeString(s.Type, func(*types.Package) string { return "" }), s.Type)
		} else {
			typ = "<nil>"
		}
		fmt.Fprintf(w, "  [%02d] kind=%v field=%d name=%s type=%s\n", i, s.Kind, s.FieldIdx, s.Name, typ)
	}
	fmt.Fprintln(w, "States:")
	for i, st := range p.States {
		fmt.Fprintf(w, "State %02d: %d instrs\n", i, len(st.Instructions))
		for j, instr := range st.Instructions {
			fmt.Fprintf(w, "  %02d: %s\n", j, describeInstr(instr))
		}
		if len(st.EdgeWrites) > 0 {
			fmt.Fprintf(w, "  EdgeWrites:\n")
			for target, writes := range st.EdgeWrites {
				fmt.Fprintf(w, "    ->%d:\n", target)
				for _, ew := range writes {
					fmt.Fprintf(w, "      %s = %s\n", ew.Dst.Name, describeVarRef(ew.Value))
				}
			}
		}
	}
}

func describeInstr(instr PullInstr) string {
	switch v := instr.(type) {
	case *LoadSlot:
		return fmt.Sprintf("LoadSlot %s", slotName(v.Src))
	case *StoreSlot:
		return fmt.Sprintf("StoreSlot %s = %s", slotName(v.Dst), describeVarRef(v.Value))
	case *PullBinOp:
		return fmt.Sprintf("BinOp %s %s %s", describeVarRef(v.X), v.Op, describeVarRef(v.Y))
	case *PullUnOp:
		return fmt.Sprintf("UnOp %s %s", v.Op, describeVarRef(v.X))
	case *PullCall:
		return fmt.Sprintf("Call %v args=%v", v.Func, describeVarRefs(v.Args))
	case *PullDefer:
		return fmt.Sprintf("Defer %s args=%v", describeVarRef(v.Func), describeVarRefs(v.Args))
	case *PullExtract:
		return fmt.Sprintf("Extract %s[%d]", describeVarRef(v.Tuple), v.Index)
	case *PullIndex:
		return fmt.Sprintf("Index %s[%s]", describeVarRef(v.Base), describeVarRef(v.Index))
	case *PullSlice:
		return fmt.Sprintf("Slice %s[%s:%s]", describeVarRef(v.Base), describeVarRef(v.Low), describeVarRef(v.High))
	case *PullLookup:
		return fmt.Sprintf("Lookup %s[%s]", describeVarRef(v.Map), describeVarRef(v.Key))
	case *PullRange:
		return fmt.Sprintf("Range %s", describeVarRef(v.X))
	case *PullNext:
		return fmt.Sprintf("Next %s", describeVarRef(v.Iter))
	case *PullSend:
		return fmt.Sprintf("Send %s <- %s", describeVarRef(v.Chan), describeVarRef(v.Value))
	case *PullSelect:
		return fmt.Sprintf("Select blocking=%v states=%d", v.Blocking, len(v.States))
	case *PullGo:
		return fmt.Sprintf("Go %s args=%v", describeVarRef(v.Func), describeVarRefs(v.Args))
	case *PullFieldAddr:
		return fmt.Sprintf("FieldAddr %s.%d", describeVarRef(v.Base), v.Field)
	case *PullLoad:
		return fmt.Sprintf("Load *%s", describeVarRef(v.Addr))
	case *PullStore:
		return fmt.Sprintf("Store *%s = %s", describeVarRef(v.Addr), describeVarRef(v.Value))
	case *PullConvert:
		return fmt.Sprintf("Convert %s to %s", describeVarRef(v.Value), v.Type)
	case *PullAlloc:
		return fmt.Sprintf("Alloc %s heap=%v", v.Type, v.Heap)
	case *PullMakeChan:
		return fmt.Sprintf("MakeChan %s size=%s", v.ChanType, describeVarRef(v.Size))
	case *PullMakeSlice:
		return fmt.Sprintf("MakeSlice %s len=%s cap=%s", v.SliceType, describeVarRef(v.Len), describeVarRef(v.Cap))
	case *PullMakeMap:
		return fmt.Sprintf("MakeMap %s reserve=%s", v.MapType, describeVarRef(v.Reserve))
	case *PullMakeInterface:
		return fmt.Sprintf("MakeInterface %s -> %s", describeVarRef(v.Value), v.IfaceType)
	case *PullMakeClosure:
		return fmt.Sprintf("MakeClosure %v %v", v.Func, describeVarRefs(v.Bindings))
	case *PullPanic:
		return fmt.Sprintf("Panic %s", describeVarRef(v.Value))
	case *PullRunDefers:
		return "RunDefers"
	case *Await:
		return fmt.Sprintf("Await %s -> %s next=%d", describeVarRef(v.SubFuture), slotName(v.ResultSlot), v.NextState)
	case *Branch:
		return fmt.Sprintf("Branch %s ? %d : %d", describeVarRef(v.Cond), v.TrueState, v.FalseState)
	case *Jump:
		return fmt.Sprintf("Jump %d", v.Target)
	case *Return:
		if v.Value.Kind != 0 || v.Value.Slot != nil || v.Value.Const != nil || v.Value.Temp != 0 {
			return fmt.Sprintf("Return %s", describeVarRef(v.Value))
		}
		return "Return"
	default:
		return fmt.Sprintf("%T", instr)
	}
}

func describeVarRefs(rs []VarRef) []string {
	out := make([]string, len(rs))
	for i, r := range rs {
		out[i] = describeVarRef(r)
	}
	return out
}

func describeVarRef(r VarRef) string {
	switch r.Kind {
	case VarRefSlot:
		return slotName(r.Slot)
	case VarRefConst:
		if r.Const == nil {
			return "nil"
		}
		return fmt.Sprintf("const(%v)", r.Const)
	case VarRefTemp:
		return fmt.Sprintf("t%d", r.Temp)
	default:
		return fmt.Sprintf("ref{%v}", r.Kind)
	}
}

func slotName(s *Slot) string {
	if s == nil {
		return "<nil>"
	}
	return fmt.Sprintf("%s@%d", s.Name, s.FieldIdx)
}
