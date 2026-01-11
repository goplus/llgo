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

// Package pullmodel implements the pull-based async/await transformation
// for llgo. It transforms functions that return Future[T] into explicit
// state machines with Poll methods, inspired by Rust's async/await design.
package pullmodel

import (
	"fmt"
	"go/types"
	"reflect"
	"sort"
	"strings"

	"golang.org/x/tools/go/ssa"
)

// FuturePkgPath is the package path for the async Future type.
// Functions returning this type are considered async functions.
const FuturePkgPath = "github.com/goplus/llgo/async"

// SuspendPoint represents an await point in an async function.
type SuspendPoint struct {
	// Call is the SSA call instruction for the .Await() call
	Call *ssa.Call
	// Block is the basic block containing this suspend point
	Block *ssa.BasicBlock
	// Index is the instruction index within the block
	Index int
	// SubFuture is the SSA value of the future being awaited
	SubFuture ssa.Value
	// Result is the SSA value that receives the await result
	Result ssa.Value
}

// StateMachine represents a transformed async function.
type StateMachine struct {
	// Original is the original SSA function
	Original *ssa.Function
	// States contains all the states after splitting at suspend points
	States []*State
	// BlockEntries maps each SSA basic block to the index of its first state
	BlockEntries map[*ssa.BasicBlock]int
	// CrossVars are variables that live across suspend points
	CrossVars []ssa.Value
	// SubFutures are the concrete future types used by this function
	SubFutures []types.Type
	// ResultType is the type parameter T of Future[T]
	ResultType types.Type
	// HasDefer is true if the function contains defer statements
	HasDefer bool
	// HasPanic is true if the function contains panic statements
	HasPanic bool
	// LoopAllocs tracks ssa.Alloc instructions that appear in loop blocks.
	// These allocs should not reuse a single pointer across iterations.
	LoopAllocs map[*ssa.Alloc]struct{}
}

// State represents a single state in the state machine.
type State struct {
	// Block that this state belongs to. Blocks containing suspend points can
	// produce multiple states (segments) that share the same Block pointer.
	Block *ssa.BasicBlock
	// Index is the state number (0, 1, 2, ...)
	Index int
	// Instructions are the SSA instructions for this state
	Instructions []ssa.Instruction
	// SuspendPoint is non-nil if this state ends with a suspend
	SuspendPoint *SuspendPoint
	// IsTerminal is true if this state returns a Ready value
	IsTerminal bool
}

// Terminator returns the last SSA instruction in this state, if any.
func (s *State) Terminator() ssa.Instruction {
	if len(s.Instructions) == 0 {
		return nil
	}
	return s.Instructions[len(s.Instructions)-1]
}

// IsAsyncFunc checks if a function returns Future[T] and should be transformed.
func IsAsyncFunc(fn *ssa.Function) bool {
	if fn == nil {
		return false
	}
	sig := fn.Signature
	results := sig.Results()
	if results.Len() != 1 {
		return false
	}
	return isFutureType(results.At(0).Type())
}

// isFutureType checks if a type is Future[T] (or concrete async future helper types) from the async package.
func isFutureType(t types.Type) bool {
	// Handle type aliases (Go 1.22+) - unwrap to get the underlying type
	for {
		if alias, ok := t.(*types.Alias); ok {
			t = alias.Rhs()
			continue
		}
		break
	}

	// Handle pointer to named
	if ptr, ok := t.(*types.Pointer); ok {
		t = ptr.Elem()
	}

	// Handle named types (async.Future / AsyncFuture / ReadyFuture)
	named, ok := t.(*types.Named)
	if !ok {
		return false
	}
	obj := named.Obj()
	if obj == nil {
		return false
	}
	if obj.Name() != "Future" {
		return false
	}
	pkg := obj.Pkg()
	if pkg == nil {
		return false
	}
	return pkg.Path() == FuturePkgPath
}

// GetFutureResultType extracts T from Future[T].
func GetFutureResultType(t types.Type) types.Type {
	// Handle type aliases (Go 1.22+) - unwrap to get the underlying type
	for {
		if alias, ok := t.(*types.Alias); ok {
			t = alias.Rhs()
			continue
		}
		break
	}

	named, ok := t.(*types.Named)
	if !ok {
		return nil
	}
	// Get type arguments
	args := named.TypeArgs()
	if args == nil || args.Len() != 1 {
		return nil
	}
	return args.At(0)
}

func findResultAllocSSA(fn *ssa.Function) *ssa.Alloc {
	var first *ssa.Alloc
	for _, alloc := range fn.Locals {
		if alloc == nil {
			continue
		}
		name := alloc.Name()
		if strings.HasPrefix(name, "~r") || strings.HasPrefix(name, "result") || strings.HasPrefix(name, "ret") {
			return alloc
		}
		if first == nil {
			first = alloc
		}
	}
	return first
}

// FindSuspendPoints finds all .Await() calls in an async function.
func FindSuspendPoints(fn *ssa.Function) []*SuspendPoint {
	var points []*SuspendPoint

	for _, block := range fn.Blocks {
		for i, instr := range block.Instrs {
			call, ok := instr.(*ssa.Call)
			if !ok {
				continue
			}
			if sp := checkAwaitCall(call, block, i); sp != nil {
				points = append(points, sp)
			}
		}
	}

	return points
}

// checkAwaitCall checks if a call is a .Await() call on a Future.
func checkAwaitCall(call *ssa.Call, block *ssa.BasicBlock, index int) *SuspendPoint {
	// Check if this is a method call
	if call.Call.IsInvoke() {
		// Interface method call: receiver.Await()
		if call.Call.Method.Name() == "Await" {
			recv := call.Call.Value
			if isFutureType(recv.Type()) || isAsyncPkgType(recv.Type()) {
				return &SuspendPoint{
					Call:      call,
					Block:     block,
					Index:     index,
					SubFuture: recv,
					Result:    call,
				}
			}
		}
		return nil
	}

	// Check for static method call on concrete Future type
	fn := call.Call.StaticCallee()
	if fn == nil {
		return nil
	}

	// Check if the method is named "Await" (may have generic suffix like "Await[int]")
	if !isAwaitMethod(fn.Name()) {
		return nil
	}

	// Check if it's a method with a receiver
	sig := fn.Signature
	recv := sig.Recv()
	if recv == nil {
		return nil
	}

	// Check if receiver type is from async package (Future, AsyncFuture, ReadyFuture, etc.)
	recvType := recv.Type()
	// Handle pointer receiver
	if ptr, ok := recvType.(*types.Pointer); ok {
		recvType = ptr.Elem()
	}

	if isFutureType(recvType) || isAsyncPkgType(recvType) {
		// Get the receiver value from call arguments
		var subFuture ssa.Value
		if len(call.Call.Args) > 0 {
			subFuture = call.Call.Args[0]
		}
		return &SuspendPoint{
			Call:      call,
			Block:     block,
			Index:     index,
			SubFuture: subFuture,
			Result:    call,
		}
	}

	return nil
}

// isAsyncPkgType checks if a type is from the async package.
// This includes AsyncFuture, ReadyFuture, and any other types that have Await methods.
func isAsyncPkgType(t types.Type) bool {
	named, ok := t.(*types.Named)
	if !ok {
		return false
	}

	obj := named.Obj()
	if obj == nil {
		return false
	}

	pkg := obj.Pkg()
	if pkg == nil {
		return false
	}

	return pkg.Path() == FuturePkgPath
}

// isAwaitMethod checks if a method name is "Await" or "Await[T]" (generic instantiation).
func isAwaitMethod(name string) bool {
	return name == "Await" || strings.HasPrefix(name, "Await[")
}

// AnalyzeCrossVars finds variables that are defined before a suspend point
// and used after it.
func AnalyzeCrossVars(fn *ssa.Function, suspends []*SuspendPoint) []ssa.Value {
	if len(suspends) == 0 {
		return nil
	}

	paramSet := make(map[ssa.Value]bool, len(fn.Params))
	for _, p := range fn.Params {
		paramSet[p] = true
	}

	// Build a map of suspend point positions for quick lookup
	suspendPositions := make(map[*ssa.BasicBlock][]int)
	for _, sp := range suspends {
		suspendPositions[sp.Block] = append(suspendPositions[sp.Block], sp.Index)
	}

	// Collect all definitions and their positions
	type defPos struct {
		block *ssa.BasicBlock
		index int
	}
	definitions := make(map[ssa.Value]defPos)

	for _, block := range fn.Blocks {
		for i, instr := range block.Instrs {
			if v, ok := instr.(ssa.Value); ok {
				definitions[v] = defPos{block, i}
			}
		}
	}

	// Also include function parameters
	for _, param := range fn.Params {
		definitions[param] = defPos{fn.Blocks[0], -1}
	}

	// Find values that cross suspend points
	crossVars := make(map[ssa.Value]bool)

	for _, sp := range suspends {
		// Find all values used after this suspend point
		usesAfter := findUsesAfterSuspend(fn, sp)

		// Debug: check if Range is in usesAfter
		for v := range usesAfter {
			if _, isRange := v.(*ssa.Range); isRange {
				debugf("[DEBUG AnalyzeCrossVars] Found Range in usesAfter: %v", v)
			}
		}

		// Check which of those were defined before the suspend
		for v := range usesAfter {
			dp, ok := definitions[v]
			if !ok {
				if _, isRange := v.(*ssa.Range); isRange {
					debugf("[DEBUG AnalyzeCrossVars] Range %v not in definitions!", v)
				}
				continue
			}

			// Check if defined before suspend
			if isDefinedBefore(dp, sp) {
				if _, isRange := v.(*ssa.Range); isRange {
					debugf("[DEBUG AnalyzeCrossVars] Range %v crosses suspend point!", v)
				}
				crossVars[v] = true
			}
		}
	}

	// Ensure phi nodes are preserved across suspends since their values depend
	// on the predecessor edge that led into the block. Without capturing them,
	// loop induction variables (e.g. range indices) are lost when resuming.
	for _, block := range fn.Blocks {
		for _, instr := range block.Instrs {
			if phi, ok := instr.(*ssa.Phi); ok {
				crossVars[phi] = true
			}
		}
	}

	// Include suspend point results - these are defined AT the suspend point
	// (not before it) but need to persist to the state struct so they can be
	// reloaded in subsequent states. Without this, the value would only exist
	// in the readyBlock's scope and violate SSA dominance when used later.
	for _, sp := range suspends {
		if sp.Result != nil {
			crossVars[sp.Result] = true
		}
		// Also include operands of SubFuture since they must persist to be available
		// when the _init path needs to compute the sub-future. For example, if we have
		// Compute(v).Await() where v comes from MapIterNext, v must be stored before
		// transitioning states, otherwise _init would re-execute MapIterNext.
		if sp.SubFuture != nil {
			debugf("[AnalyzeCrossVars] SubFuture for %s: %v (type=%T)", fn.Name(), sp.SubFuture, sp.SubFuture)
			// If SubFuture is a Call, log its arguments
			if call, isCall := sp.SubFuture.(*ssa.Call); isCall {
				debugf("[AnalyzeCrossVars] SubFuture %s has %d args", fn.Name(), len(call.Call.Args))
				for i, arg := range call.Call.Args {
					debugf("[AnalyzeCrossVars] SubFuture %s arg[%d]: %v (type=%T)", fn.Name(), i, arg, arg)
				}
			}
			collectTransitiveDependencies(sp.SubFuture, crossVars)
		}
	}

	// Always include free variables (closures) so their captured values persist
	// across suspends. This is crucial for async callbacks that close over
	// outer variables.
	for _, fv := range fn.FreeVars {
		crossVars[fv] = true
	}

	// Include free vars captured by deferred closures. These values must remain
	// valid across suspend points because deferred closures execute after return.
	for _, block := range fn.Blocks {
		for _, instr := range block.Instrs {
			deferInstr, ok := instr.(*ssa.Defer)
			if !ok {
				continue
			}
			if mc, ok := deferInstr.Call.Value.(*ssa.MakeClosure); ok {
				for _, binding := range mc.Bindings {
					if binding != nil {
						crossVars[binding] = true
					}
				}
			}
		}
	}

	// Convert map to slice
	result := make([]ssa.Value, 0, len(crossVars))
	for v := range crossVars {
		if paramSet[v] {
			continue
		}
		// Note: ssa.Range returns a pointer to iterator (not the struct itself)
		// This pointer can be persisted like any other pointer (8 bytes)
		// The runtime keeps the iterator alive as long as we hold the pointer
		// Skip Next values - they return tuples that are immediately extracted
		// in the same block. The extracted values (key, value) are what get persisted.
		if _, isNext := v.(*ssa.Next); isNext {
			debugf("[DEBUG] Skipping Next value: %v (type: %v)", v, v.Type())
			continue
		}
		// Skip Lookup values with CommaOk - they return (T, bool) tuples
		// that cannot be persisted to the state struct yet.
		if lookup, isLookup := v.(*ssa.Lookup); isLookup && lookup.CommaOk {
			debugf("[DEBUG] Skipping Lookup with CommaOk: %v (type: %v)", v, v.Type())
			continue
		}
		debugf("[DEBUG] Adding to crossVars for %s: %v (type: %v, kind: %T)", fn.Name(), v, v.Type(), v)
		result = append(result, v)
	}

	// Sort for deterministic ordering
	sort.Slice(result, func(i, j int) bool {
		pi, pj := result[i].Pos(), result[j].Pos()
		if pi != pj {
			return pi < pj
		}
		// Use String() (includes value kind) for stable grouping.
		si, sj := result[i].String(), result[j].String()
		if si != sj {
			return si < sj
		}
		// Final tie-breaker: pointer address to avoid mixing same Name().
		return uintptrPtr(result[i]) < uintptrPtr(result[j])
	})

	return result
}

// AnalyzeLoopAllocs collects alloc instructions that live in loop blocks.
// These are executed on each iteration and must not be pointer-reused.
func AnalyzeLoopAllocs(fn *ssa.Function) map[*ssa.Alloc]struct{} {
	if fn == nil || len(fn.Blocks) == 0 {
		return nil
	}
	loops := blocksInLoops(fn)
	if len(loops) == 0 {
		return nil
	}
	loopAllocs := make(map[*ssa.Alloc]struct{})
	for _, block := range fn.Blocks {
		if !loops[block] {
			continue
		}
		for _, instr := range block.Instrs {
			if alloc, ok := instr.(*ssa.Alloc); ok {
				loopAllocs[alloc] = struct{}{}
			}
		}
	}
	if len(loopAllocs) == 0 {
		return nil
	}
	return loopAllocs
}

func uintptrPtr(v ssa.Value) uintptr {
	return uintptr(reflect.ValueOf(v).Pointer())
}

// isDefinedBefore checks if a definition position is before a suspend point.
func isDefinedBefore(dp struct {
	block *ssa.BasicBlock
	index int
}, sp *SuspendPoint) bool {
	if dp.block == sp.Block {
		return dp.index < sp.Index
	}
	// For simplicity, assume definitions in earlier blocks are before
	// A more accurate implementation would use dominance analysis
	return dp.block.Index < sp.Block.Index
}

// findUsesAfterSuspend finds all values used after a suspend point.
// This must consider loop back-edges where control flows back to blocks
// with lower indices than the suspend point's block.
func findUsesAfterSuspend(fn *ssa.Function, sp *SuspendPoint) map[ssa.Value]bool {
	uses := make(map[ssa.Value]bool)

	// Collect uses in the same block after the suspend
	for i := sp.Index + 1; i < len(sp.Block.Instrs); i++ {
		collectOperands(sp.Block.Instrs[i], uses)
	}

	// Traverse all blocks reachable from the suspend point's successors.
	// This handles loop back-edges where control returns to blocks with
	// lower indices (e.g., for-range loop header after await in loop body).
	visited := make(map[*ssa.BasicBlock]bool)
	var visit func(b *ssa.BasicBlock)
	visit = func(b *ssa.BasicBlock) {
		if visited[b] {
			return
		}
		visited[b] = true
		// Collect uses from all instructions in this block
		for _, instr := range b.Instrs {
			collectOperands(instr, uses)
		}
		// Continue to successor blocks
		for _, succ := range b.Succs {
			visit(succ)
		}
	}

	// Start traversal from all successors of the suspend point's block
	for _, succ := range sp.Block.Succs {
		visit(succ)
	}

	return uses
}

// blocksInLoops returns a set of blocks that are part of a CFG cycle.
func blocksInLoops(fn *ssa.Function) map[*ssa.BasicBlock]bool {
	index := 0
	stack := make([]*ssa.BasicBlock, 0, len(fn.Blocks))
	onStack := make(map[*ssa.BasicBlock]bool, len(fn.Blocks))
	indices := make(map[*ssa.BasicBlock]int, len(fn.Blocks))
	lowlink := make(map[*ssa.BasicBlock]int, len(fn.Blocks))
	inLoop := make(map[*ssa.BasicBlock]bool, len(fn.Blocks))

	var strongconnect func(v *ssa.BasicBlock)
	strongconnect = func(v *ssa.BasicBlock) {
		indices[v] = index
		lowlink[v] = index
		index++
		stack = append(stack, v)
		onStack[v] = true

		for _, w := range v.Succs {
			if _, ok := indices[w]; !ok {
				strongconnect(w)
				if lowlink[w] < lowlink[v] {
					lowlink[v] = lowlink[w]
				}
			} else if onStack[w] {
				if indices[w] < lowlink[v] {
					lowlink[v] = indices[w]
				}
			}
		}

		if lowlink[v] == indices[v] {
			component := []*ssa.BasicBlock{}
			for {
				n := len(stack) - 1
				w := stack[n]
				stack = stack[:n]
				onStack[w] = false
				component = append(component, w)
				if w == v {
					break
				}
			}
			if len(component) > 1 {
				for _, b := range component {
					inLoop[b] = true
				}
			} else {
				// Self-loop counts as a cycle.
				for _, succ := range v.Succs {
					if succ == v {
						inLoop[v] = true
						break
					}
				}
			}
		}
	}

	for _, b := range fn.Blocks {
		if _, ok := indices[b]; !ok {
			strongconnect(b)
		}
	}

	return inLoop
}

// collectOperands adds all operands of an instruction to the uses map.
func collectOperands(instr ssa.Instruction, uses map[ssa.Value]bool) {
	for _, op := range instr.Operands(nil) {
		if op != nil && *op != nil {
			uses[*op] = true
		}
	}
}

// Transform transforms an async function into a state machine.
func Transform(fn *ssa.Function) *StateMachine {
	if !IsAsyncFunc(fn) {
		return nil
	}

	suspends := FindSuspendPoints(fn)

	// Warnings/diagnostics for tricky patterns (goroutine, map range + await)
	if len(suspends) > 0 {
		for _, blk := range fn.Blocks {
			for _, instr := range blk.Instrs {
				if _, ok := instr.(*ssa.Go); ok {
					msg := "goroutine inside async is not supported; may misbehave"
					if fatalUnsupported() {
						panic(fmt.Errorf("async function %s: %s", fn.Name(), msg))
					}
					warnUnsupported(fn.Name(), msg)
				}
				if rng, ok := instr.(*ssa.Range); ok {
					if _, isMap := rng.X.Type().Underlying().(*types.Map); isMap {
						msg := "range over map with await is not supported; convert map to slice first"
						if fatalUnsupported() {
							panic(fmt.Errorf("async function %s: %s", fn.Name(), msg))
						}
						warnUnsupported(fn.Name(), msg)
					}
				}
			}
		}
	}

	crossVars := AnalyzeCrossVars(fn, suspends)
	loopAllocs := AnalyzeLoopAllocs(fn)

	// Get result type from Future[T]
	resultType := GetFutureResultType(fn.Signature.Results().At(0).Type())

	// Collect sub-future types and detect defer statements
	var subFutures []types.Type
	hasDefer := false
	hasPanic := false
	for _, sp := range suspends {
		if sp.SubFuture != nil {
			subFutures = append(subFutures, sp.SubFuture.Type())
		}
	}

	// Scan all blocks for defer/panic/recover instructions
	for _, block := range fn.Blocks {
		for _, instr := range block.Instrs {
			switch instr.(type) {
			case *ssa.Defer:
				hasDefer = true
			case *ssa.Panic:
				hasPanic = true
			}
		}
	}

	// Ensure result alloc persists when defer/panic present (needed for recover).
	if hasDefer || hasPanic {
		if resAlloc := findResultAllocSSA(fn); resAlloc != nil {
			already := false
			for _, v := range crossVars {
				if v == resAlloc {
					already = true
					break
				}
			}
			if !already {
				crossVars = append(crossVars, resAlloc)
			}
		}
	}

	sm := &StateMachine{
		Original:   fn,
		CrossVars:  crossVars,
		SubFutures: subFutures,
		ResultType: resultType,
		HasDefer:   hasDefer,
		HasPanic:   hasPanic,
		LoopAllocs: loopAllocs,
	}

	// Split into states at suspend points
	sm.States, sm.BlockEntries = splitIntoStates(fn, suspends)

	return sm
}

// splitIntoStates splits the function into states at suspend points.
// It also records the first state index for every SSA basic block so codegen can
// jump across blocks (required for supporting loops/branches).
func splitIntoStates(fn *ssa.Function, suspends []*SuspendPoint) ([]*State, map[*ssa.BasicBlock]int) {
	if len(suspends) == 0 {
		// No suspend points, single state
		state := &State{
			Index: 0,
			Block: fn.Blocks[0],
			Instructions: func() []ssa.Instruction {
				if len(fn.Blocks) == 0 {
					return nil
				}
				return append([]ssa.Instruction{}, fn.Blocks[0].Instrs...)
			}(),
			IsTerminal: true,
		}
		return []*State{state}, map[*ssa.BasicBlock]int{fn.Blocks[0]: 0}
	}

	// Build suspend point lookup
	suspendMap := make(map[*ssa.Call]*SuspendPoint)
	for _, sp := range suspends {
		suspendMap[sp.Call] = sp
	}

	var states []*State
	blockEntries := make(map[*ssa.BasicBlock]int, len(fn.Blocks))
	stateIndex := 0

	// For now, create one state per suspend point plus final state
	// This is a simplified approach; full implementation would handle
	// complex control flow
	for _, block := range fn.Blocks {
		var currentInstrs []ssa.Instruction

		for _, instr := range block.Instrs {
			currentInstrs = append(currentInstrs, instr)

			if call, ok := instr.(*ssa.Call); ok {
				if sp, isSuspend := suspendMap[call]; isSuspend {
					// End current state with this suspend
					state := &State{
						Index:        stateIndex,
						Block:        block,
						Instructions: currentInstrs,
						SuspendPoint: sp,
						IsTerminal:   false,
					}
					if _, exists := blockEntries[block]; !exists {
						blockEntries[block] = len(states)
					}
					states = append(states, state)
					stateIndex++
					currentInstrs = nil
				}
			}
		}

		// Remaining instructions form a new state
		if len(currentInstrs) > 0 {
			isTerminal := false
			if len(currentInstrs) > 0 {
				_, isTerminal = currentInstrs[len(currentInstrs)-1].(*ssa.Return)
			}
			state := &State{
				Index:        stateIndex,
				Block:        block,
				Instructions: currentInstrs,
				IsTerminal:   isTerminal,
			}
			if _, exists := blockEntries[block]; !exists {
				blockEntries[block] = len(states)
			}
			states = append(states, state)
			stateIndex++
		}
	}

	return states, blockEntries
}

// collectTransitiveDependencies recursively collects all SSA values that a given
// value depends on and adds them to the crossVars map. This is used to ensure
// that values needed by suspend point arguments (like v in Compute(v).Await()) are
// persisted in the state struct, preventing re-execution of their source operations.
func collectTransitiveDependencies(v ssa.Value, crossVars map[ssa.Value]bool) {
	if v == nil {
		return
	}

	debugf("[collectTransitiveDependencies] Visiting: %v (type=%T)", v, v)

	// Skip constants and function references
	switch v.(type) {
	case *ssa.Const, *ssa.Global, *ssa.Function, *ssa.Builtin, *ssa.Parameter:
		debugf("[collectTransitiveDependencies] Skipping constant/global/function/param: %v", v)
		return
	}

	// For Call instructions, ALWAYS process operands (receiver and arguments)
	// even if the Call itself is already in crossVars, because different calls
	// to the same function may have different arguments that need to be collected.
	if call, isCall := v.(*ssa.Call); isCall {
		debugf("[collectTransitiveDependencies] Call instruction, collecting operands of: %v", call)
		ops := call.Operands(nil)
		debugf("[collectTransitiveDependencies] Call operands count: %d", len(ops))
		for i, op := range ops {
			if op != nil && *op != nil {
				debugf("[collectTransitiveDependencies] Call operand %d: %v (type=%T)", i, *op, *op)
				collectTransitiveDependencies(*op, crossVars)
			}
		}
		// Also explicitly iterate Call.Args since Operands may not include them
		debugf("[collectTransitiveDependencies] Call.Call.Args count: %d", len(call.Call.Args))
		for i, arg := range call.Call.Args {
			if arg != nil {
				debugf("[collectTransitiveDependencies] Call.Args[%d]: %v (type=%T)", i, arg, arg)
				collectTransitiveDependencies(arg, crossVars)
			}
		}
		return
	}

	// Skip if already in crossVars (but not for Calls which were handled above)
	if crossVars[v] {
		debugf("[collectTransitiveDependencies] Already in crossVars: %v", v)
		return
	}

	// For Extract, add it to crossVars - this is the key fix for map iteration
	if ext, isExtract := v.(*ssa.Extract); isExtract {
		crossVars[ext] = true
		debugf("[collectTransitiveDependencies] Adding Extract to crossVars: %v", ext)
		return
	}

	// For other value-producing instructions, add them to crossVars
	if _, ok := v.(ssa.Instruction); ok {
		crossVars[v] = true
	}
}
