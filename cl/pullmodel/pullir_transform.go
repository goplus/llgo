// Package pullmodel implements the pull-based async/await transformation.
// This file implements SSA → Pull IR transformation.

package pullmodel

import (
	"fmt"
	"go/types"
	"log"

	"golang.org/x/tools/go/ssa"
)

// =============================================================================
// SSA to Pull IR Transformer
// =============================================================================

// PullIRBuilder transforms an SSA function into Pull IR.
type PullIRBuilder struct {
	sm        *StateMachine       // Existing state machine analysis
	slots     map[ssa.Value]*Slot // SSA value -> Slot mapping
	slotList  []*Slot             // All slots in order
	nextField int                 // Next field index (0 = state)
	tempCount int                 // Temporary counter per state
	states    []*PullState        // Generated Pull IR states
}

// NewPullIRBuilder creates a new Pull IR builder from an analyzed state machine.
func NewPullIRBuilder(sm *StateMachine) *PullIRBuilder {
	return &PullIRBuilder{
		sm:        sm,
		slots:     make(map[ssa.Value]*Slot),
		nextField: 1, // Field 0 is state number
	}
}

// Build transforms the state machine into Pull IR.
func (b *PullIRBuilder) Build() (*PullIR, error) {
	fn := b.sm.Original

	// Step 1: Allocate slots for parameters
	for _, param := range fn.Params {
		b.allocateSlot(param, SlotParam, param.Name())
	}

	// Step 2: Allocate slots for cross-suspend variables
	for _, cv := range b.sm.CrossVars {
		name := cv.Name()
		if name == "" {
			name = fmt.Sprintf("cv%d", len(b.slotList))
		}
		b.allocateSlot(cv, SlotCross, name)
	}

	// Step 2.5: Pre-analyze cross-state references
	// Identify values defined in one state but used in another
	b.allocateCrossStateSlots()

	// Step 3: Transform each state
	for i, state := range b.sm.States {
		pullState, err := b.transformState(state, i)
		if err != nil {
			return nil, fmt.Errorf("transform state %d: %w", i, err)
		}
		b.states = append(b.states, pullState)
	}

	// Step 4: Allocate result slot
	var resultSlot *Slot
	if b.sm.ResultType != nil {
		resultSlot = &Slot{
			Name:     "result",
			Type:     b.sm.ResultType,
			FieldIdx: b.nextField,
			Kind:     SlotCross,
		}
		b.slotList = append(b.slotList, resultSlot)
		b.nextField++
	}

	return &PullIR{
		FuncName:   fn.Name(),
		Original:   fn,
		Params:     b.getParamSlots(),
		Slots:      b.slotList,
		States:     b.states,
		ResultSlot: resultSlot,
		ResultType: b.sm.ResultType,
	}, nil
}

// allocateSlot creates a new slot for an SSA value.
func (b *PullIRBuilder) allocateSlot(v ssa.Value, kind SlotKind, name string) *Slot {
	slotType := v.Type()
	stackAlloc := false
	if alloc, ok := v.(*ssa.Alloc); ok && !alloc.Heap {
		// Persist the element value instead of the transient stack pointer.
		if ptr, ok := alloc.Type().(*types.Pointer); ok {
			slotType = ptr.Elem()
			stackAlloc = true
		}
	}
	slot := &Slot{
		Name:       name,
		Type:       slotType,
		FieldIdx:   b.nextField,
		Kind:       kind,
		SSAValue:   v,
		StackAlloc: stackAlloc,
	}
	b.slots[v] = slot
	b.slotList = append(b.slotList, slot)
	b.nextField++
	return slot
}

// getParamSlots returns slots for function parameters.
func (b *PullIRBuilder) getParamSlots() []*Slot {
	var params []*Slot
	for _, param := range b.sm.Original.Params {
		if slot, ok := b.slots[param]; ok {
			params = append(params, slot)
		}
	}
	return params
}

// getSlot returns the slot for an SSA value, or nil if not found.
func (b *PullIRBuilder) getSlot(v ssa.Value) *Slot {
	return b.slots[v]
}

// allocateCrossStateSlots pre-allocates slots for all value-producing instructions.
// This ensures that any value can be accessed from any state via slot load.
// The aggressive approach avoids missing cross-state references that can occur
// due to control flow complexities (branches, loops, PHI nodes).
func (b *PullIRBuilder) allocateCrossStateSlots() {
	for _, state := range b.sm.States {
		for _, instr := range state.Instructions {
			// Skip if already has a slot
			if v, ok := instr.(ssa.Value); ok {
				if b.getSlot(v) != nil {
					continue
				}
				// Skip constants - they don't need slots
				if _, isConst := v.(*ssa.Const); isConst {
					continue
				}
				// Allocate slot for this value
				name := fmt.Sprintf("instr_%p", v)
				b.allocateSlot(v, SlotCross, name)
			}
		}
	}
}

// getInstrOperands returns all SSA value operands of an instruction.
func getInstrOperands(instr ssa.Instruction) []ssa.Value {
	var ops []ssa.Value
	switch v := instr.(type) {
	case *ssa.BinOp:
		ops = append(ops, v.X, v.Y)
	case *ssa.UnOp:
		ops = append(ops, v.X)
	case *ssa.Call:
		ops = append(ops, v.Call.Value)
		ops = append(ops, v.Call.Args...)
	case *ssa.Store:
		ops = append(ops, v.Addr, v.Val)
	case *ssa.Alloc:
		// No operands
	case *ssa.FieldAddr:
		ops = append(ops, v.X)
	case *ssa.IndexAddr:
		ops = append(ops, v.X, v.Index)
	case *ssa.Slice:
		ops = append(ops, v.X)
		if v.Low != nil {
			ops = append(ops, v.Low)
		}
		if v.High != nil {
			ops = append(ops, v.High)
		}
	case *ssa.Lookup:
		ops = append(ops, v.X, v.Index)
	case *ssa.Extract:
		ops = append(ops, v.Tuple)
	case *ssa.Range:
		ops = append(ops, v.X)
	case *ssa.Next:
		ops = append(ops, v.Iter)
	case *ssa.MakeInterface:
		ops = append(ops, v.X)
	case *ssa.Convert:
		ops = append(ops, v.X)
	case *ssa.ChangeType:
		ops = append(ops, v.X)
	case *ssa.If:
		ops = append(ops, v.Cond)
	case *ssa.Return:
		ops = append(ops, v.Results...)
	case *ssa.Phi:
		ops = append(ops, v.Edges...)
	}
	return ops
}

// =============================================================================
// State Transformation
// =============================================================================

// stateTransformContext holds context for transforming a single state.
type stateTransformContext struct {
	builder     *PullIRBuilder
	state       *State
	stateIdx    int
	instrs      []PullInstr
	edgeWrites  map[int][]EdgeWrite
	tempMapping map[ssa.Value]int // SSA value -> temp index in this state
	nextTemp    int
}

func (b *PullIRBuilder) transformState(state *State, idx int) (*PullState, error) {
	ctx := &stateTransformContext{
		builder:     b,
		state:       state,
		stateIdx:    idx,
		edgeWrites:  make(map[int][]EdgeWrite),
		tempMapping: make(map[ssa.Value]int),
	}

	// Transform each instruction
	for _, instr := range state.Instructions {
		// Skip the suspend call itself; handled by handleSuspendPoint/Await.
		if state.SuspendPoint != nil && instr == state.SuspendPoint.Call {
			continue
		}
		if err := ctx.transformInstr(instr); err != nil {
			log.Printf("[PullIR] Warning: failed to transform instr %T: %v", instr, err)
			// Continue with best effort
		}
	}

	// Handle suspend point if any
	if sp := state.SuspendPoint; sp != nil {
		ctx.handleSuspendPoint(sp)
	}

	// Handle terminator
	ctx.handleTerminator(state)

	return &PullState{
		Index:        idx,
		Instructions: ctx.instrs,
		EdgeWrites:   ctx.edgeWrites,
		OriginalSSA:  state.Block,
	}, nil
}

// transformInstr converts an SSA instruction to Pull IR.
func (ctx *stateTransformContext) transformInstr(instr ssa.Instruction) error {
	switch v := instr.(type) {
	case *ssa.Phi:
		// PHI nodes are handled specially - they become edge writes
		// The value is written at the predecessor's exit, not at entry
		return nil // Skip here, handled in edge generation

	case *ssa.BinOp:
		return ctx.transformBinOp(v)

	case *ssa.UnOp:
		return ctx.transformUnOp(v)

	case *ssa.Call:
		return ctx.transformCall(v)

	case *ssa.Store:
		return ctx.transformStore(v)

	case *ssa.Alloc:
		// Stack allocations - check if it's a cross-var slot
		if slot := ctx.builder.getSlot(v); slot != nil {
			// Already has a slot from cross-vars, no instruction needed
			return nil
		}
		// For non-cross-var allocs, emit PullAlloc instruction
		elemType := v.Type().(*types.Pointer).Elem()
		ctx.emit(&PullAlloc{Type: elemType, Heap: v.Heap})
		ctx.registerTempAndStore(v)
		return nil

	case *ssa.IndexAddr:
		return ctx.transformIndexAddr(v)

	case *ssa.FieldAddr:
		return ctx.transformFieldAddr(v)

	case *ssa.Extract:
		return ctx.transformExtract(v)

	case *ssa.Slice:
		return ctx.transformSlice(v)

	case *ssa.Convert:
		return ctx.transformConvert(v)

	case *ssa.ChangeType:
		return ctx.transformConvert(v)

	case *ssa.MakeInterface:
		// MakeInterface creates an interface value from concrete value
		concrete := ctx.getVarRef(v.X)
		ctx.emit(&PullMakeInterface{IfaceType: v.Type(), Value: concrete})
		ctx.registerTempAndStore(v)
		return nil

	case *ssa.Lookup:
		// Map lookup: v, ok = m[key]
		mapRef := ctx.getVarRef(v.X)
		keyRef := ctx.getVarRef(v.Index)
		ctx.emit(&PullLookup{Map: mapRef, Key: keyRef, CommaOk: v.CommaOk})
		ctx.registerTempAndStore(v)
		return nil

	case *ssa.Range:
		// Range creates an iterator for the collection
		x := ctx.getVarRef(v.X)
		ctx.emit(&PullRange{X: x})
		ctx.registerTempAndStore(v)
		return nil

	case *ssa.Next:
		// Next advances the iterator, returns (key, value, ok) tuple
		iter := ctx.getVarRef(v.Iter)
		ctx.emit(&PullNext{Iter: iter, ElemType: v.Type(), IsString: v.IsString})
		ctx.registerTempAndStore(v)
		return nil

	case *ssa.If:
		// Handled in terminator
		return nil

	case *ssa.Jump:
		// Handled in terminator
		return nil

	case *ssa.Return:
		// Handled in terminator
		return nil

	default:
		// Unknown instruction - skip with warning
		log.Printf("[PullIR] Skipping unknown instr type: %T", v)
		return nil
	}
}

// =============================================================================
// Instruction Transformers
// =============================================================================

func (ctx *stateTransformContext) transformBinOp(v *ssa.BinOp) error {
	x := ctx.getVarRef(v.X)
	y := ctx.getVarRef(v.Y)
	ctx.emit(&PullBinOp{Op: v.Op, X: x, Y: y})
	ctx.registerTempAndStore(v)
	return nil
}

func (ctx *stateTransformContext) transformUnOp(v *ssa.UnOp) error {
	x := ctx.getVarRef(v.X)
	ctx.emit(&PullUnOp{Op: v.Op, X: x})
	ctx.registerTempAndStore(v)
	return nil
}

func (ctx *stateTransformContext) transformCall(v *ssa.Call) error {
	var args []VarRef
	for _, arg := range v.Call.Args {
		args = append(args, ctx.getVarRef(arg))
	}
	hasValue := v.Type() != nil
	ctx.emit(&PullCall{Func: v.Call.Value, Args: args, HasValue: hasValue})
	if hasValue {
		ctx.registerTempAndStore(v)
	}
	return nil
}

func (ctx *stateTransformContext) transformStore(v *ssa.Store) error {
	addr := ctx.getVarRef(v.Addr)
	val := ctx.getVarRef(v.Val)
	ctx.emit(&PullStore{Addr: addr, Value: val})
	return nil
}

func (ctx *stateTransformContext) transformIndexAddr(v *ssa.IndexAddr) error {
	base := ctx.getVarRef(v.X)
	index := ctx.getVarRef(v.Index)
	ctx.emit(&PullIndex{Base: base, Index: index})
	ctx.registerTempAndStore(v)
	return nil
}

func (ctx *stateTransformContext) transformFieldAddr(v *ssa.FieldAddr) error {
	base := ctx.getVarRef(v.X)
	ctx.emit(&PullFieldAddr{Base: base, Field: v.Field})
	ctx.registerTempAndStore(v)
	return nil
}

func (ctx *stateTransformContext) transformExtract(v *ssa.Extract) error {
	tuple := ctx.getVarRef(v.Tuple)
	ctx.emit(&PullExtract{Tuple: tuple, Index: v.Index})
	ctx.registerTempAndStore(v)
	return nil
}

func (ctx *stateTransformContext) transformSlice(v *ssa.Slice) error {
	base := ctx.getVarRef(v.X)
	var low, high VarRef
	if v.Low != nil {
		low = ctx.getVarRef(v.Low)
	} else {
		low = NewConstRef(&ssa.Const{}) // Zero
	}
	if v.High != nil {
		high = ctx.getVarRef(v.High)
	} else {
		high = NewConstRef(nil) // Nil means "len"
	}
	ctx.emit(&PullSlice{Base: base, Low: low, High: high})
	ctx.registerTempAndStore(v)
	return nil
}

func (ctx *stateTransformContext) transformConvert(v ssa.Value) error {
	var x ssa.Value
	var typ = v.Type()
	switch cv := v.(type) {
	case *ssa.Convert:
		x = cv.X
	case *ssa.ChangeType:
		x = cv.X
	}
	if x != nil {
		ctx.emit(&PullConvert{Value: ctx.getVarRef(x), Type: typ})
		ctx.registerTempAndStore(v)
	}
	return nil
}

// =============================================================================
// Suspend Point & Terminator Handling
// =============================================================================

func (ctx *stateTransformContext) handleSuspendPoint(sp *SuspendPoint) {
	// Get sub-future reference
	subFuture := ctx.getVarRef(sp.SubFuture)

	// Get or create result slot
	resultSlot := ctx.builder.getSlot(sp.Result)
	if resultSlot == nil {
		// Result not in cross-vars, create a local slot
		resultSlot = &Slot{
			Name:     fmt.Sprintf("await_result_%d", ctx.stateIdx),
			Type:     sp.Result.Type(),
			FieldIdx: ctx.builder.nextField,
			Kind:     SlotCross,
			SSAValue: sp.Result,
		}
		ctx.builder.slots[sp.Result] = resultSlot
		ctx.builder.slotList = append(ctx.builder.slotList, resultSlot)
		ctx.builder.nextField++
	}

	// Find next state
	nextState := ctx.stateIdx + 1
	if nextState >= len(ctx.builder.sm.States) {
		nextState = -1 // Terminal
	}

	ctx.emit(&Await{
		SubFuture:  subFuture,
		ResultSlot: resultSlot,
		NextState:  nextState,
	})
}

func (ctx *stateTransformContext) handleTerminator(state *State) {
	if state.SuspendPoint != nil {
		// Already handled await
		return
	}

	term := state.Terminator()
	if term == nil {
		return
	}

	switch v := term.(type) {
	case *ssa.If:
		cond := ctx.getVarRef(v.Cond)
		trueIdx := ctx.getStateIdx(v.Block().Succs[0])
		falseIdx := ctx.getStateIdx(v.Block().Succs[1])

		// Generate PHI edge writes for both branches
		ctx.generatePhiEdgeWrites(v.Block(), v.Block().Succs[0], trueIdx)
		ctx.generatePhiEdgeWrites(v.Block(), v.Block().Succs[1], falseIdx)

		ctx.emit(&Branch{Cond: cond, TrueState: trueIdx, FalseState: falseIdx})

	case *ssa.Jump:
		targetBlock := v.Block().Succs[0]
		targetIdx := ctx.getStateIdx(targetBlock)

		// Generate PHI edge writes
		ctx.generatePhiEdgeWrites(v.Block(), targetBlock, targetIdx)

		ctx.emit(&Jump{Target: targetIdx})

	case *ssa.Return:
		if len(v.Results) > 0 {
			val := ctx.getVarRef(v.Results[0])
			ctx.emit(&Return{Value: val})
		} else {
			ctx.emit(&Return{})
		}
	}
}

// generatePhiEdgeWrites generates slot writes for PHI nodes at state transitions.
// This is the key to correct PHI lowering - values are written at exit, not entry.
func (ctx *stateTransformContext) generatePhiEdgeWrites(fromBlock, toBlock *ssa.BasicBlock, targetState int) {
	if toBlock == nil || targetState < 0 {
		return
	}

	// Find all PHI nodes in the target block
	for _, instr := range toBlock.Instrs {
		phi, ok := instr.(*ssa.Phi)
		if !ok {
			break // PHI nodes are always at the start
		}

		// Find the incoming edge from our block
		predIdx := -1
		for i, pred := range toBlock.Preds {
			if pred == fromBlock {
				predIdx = i
				break
			}
		}
		if predIdx < 0 || predIdx >= len(phi.Edges) {
			continue
		}

		// Get the incoming value for this edge
		incoming := phi.Edges[predIdx]
		if incoming == nil {
			continue
		}

		// Get or create slot for the PHI
		slot := ctx.builder.getSlot(phi)
		if slot == nil {
			continue // Not a cross-suspend PHI
		}

		// Get the value reference
		val := ctx.getVarRef(incoming)

		// Add edge write
		ctx.edgeWrites[targetState] = append(ctx.edgeWrites[targetState], EdgeWrite{
			Dst:   slot,
			Value: val,
		})
	}
}

// =============================================================================
// Helper Methods
// =============================================================================

func (ctx *stateTransformContext) emit(instr PullInstr) {
	ctx.instrs = append(ctx.instrs, instr)
}

func (ctx *stateTransformContext) registerTemp(v ssa.Value) {
	ctx.tempMapping[v] = ctx.nextTemp
	ctx.nextTemp++
}

// registerTempAndStore registers a temp and, if the value has a pre-allocated slot,
// also emits a StoreSlot instruction to persist it for cross-state access.
func (ctx *stateTransformContext) registerTempAndStore(v ssa.Value) {
	tempIdx := ctx.nextTemp
	ctx.tempMapping[v] = tempIdx
	ctx.nextTemp++

	// Check if this value has a pre-allocated slot
	if slot := ctx.builder.getSlot(v); slot != nil {
		// Emit store to persist the value for cross-state access
		ctx.emit(&StoreSlot{
			Dst:   slot,
			Value: NewTempRef(tempIdx),
		})
	}
}

func (ctx *stateTransformContext) getVarRef(v ssa.Value) VarRef {
	if v == nil {
		return NewConstRef(nil)
	}

	// Check if it's a constant
	if c, ok := v.(*ssa.Const); ok {
		return NewConstRef(c)
	}

	// Check if it's in a slot (parameter or cross-var)
	if slot := ctx.builder.getSlot(v); slot != nil {
		return NewSlotRef(slot)
	}

	// Check if it's a temp in this state
	if tempIdx, ok := ctx.tempMapping[v]; ok {
		return NewTempRef(tempIdx)
	}

	// Not found - this value is from a different state or not yet processed
	// For any value-producing instruction from another state, allocate a slot on demand
	// This handles cases where control flow splits values across states
	if _, isValue := v.(ssa.Value); isValue {
		// Check if it produces a value (not just a side-effect instruction)
		switch v.(type) {
		case *ssa.Lookup, *ssa.Extract, *ssa.Range, *ssa.Next,
			*ssa.BinOp, *ssa.UnOp, *ssa.Call, *ssa.Alloc,
			*ssa.FieldAddr, *ssa.IndexAddr, *ssa.Slice,
			*ssa.Convert, *ssa.ChangeType, *ssa.MakeInterface,
			*ssa.Phi, *ssa.Index, *ssa.Field, *ssa.TypeAssert:
			// These are value-producing instructions that may cross states
			// Allocate a slot for them on demand
			name := fmt.Sprintf("cross_%p", v)
			slot := ctx.builder.allocateSlot(v, SlotCross, name)
			return NewSlotRef(slot)
		}
	}

	// Unknown value - treat as constant for now
	log.Printf("[PullIR] Warning: unknown value %v (%T), treating as const", v, v)
	return NewConstRef(v)
}

func (ctx *stateTransformContext) getStateIdx(block *ssa.BasicBlock) int {
	// Find which state corresponds to this block
	for i, state := range ctx.builder.sm.States {
		if state.Block == block {
			return i
		}
	}
	return -1 // Not found
}

// =============================================================================
// Public API
// =============================================================================

// TransformToPullIR converts an analyzed state machine to Pull IR.
func TransformToPullIR(sm *StateMachine) (*PullIR, error) {
	builder := NewPullIRBuilder(sm)
	return builder.Build()
}
