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

// isFutureType checks if a type is Future[T] from the async package.
func isFutureType(t types.Type) bool {
	// Handle named types (like async.Future[int])
	named, ok := t.(*types.Named)
	if !ok {
		return false
	}

	obj := named.Obj()
	if obj == nil {
		return false
	}

	// Check type name
	if obj.Name() != "Future" {
		return false
	}

	// Check package path
	pkg := obj.Pkg()
	if pkg == nil {
		return false
	}

	return pkg.Path() == FuturePkgPath
}

// GetFutureResultType extracts T from Future[T].
func GetFutureResultType(t types.Type) types.Type {
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

		// Check which of those were defined before the suspend
		for v := range usesAfter {
			dp, ok := definitions[v]
			if !ok {
				continue
			}

			// Check if defined before suspend
			if isDefinedBefore(dp, sp) {
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
func findUsesAfterSuspend(fn *ssa.Function, sp *SuspendPoint) map[ssa.Value]bool {
	uses := make(map[ssa.Value]bool)

	// Collect uses in the same block after the suspend
	for i := sp.Index + 1; i < len(sp.Block.Instrs); i++ {
		collectOperands(sp.Block.Instrs[i], uses)
	}

	// Collect uses in successor blocks (simplified: all blocks after)
	for _, block := range fn.Blocks {
		if block.Index > sp.Block.Index {
			for _, instr := range block.Instrs {
				collectOperands(instr, uses)
			}
		}
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
	crossVars := AnalyzeCrossVars(fn, suspends)
	loopAllocs := AnalyzeLoopAllocs(fn)

	// Get result type from Future[T]
	resultType := GetFutureResultType(fn.Signature.Results().At(0).Type())

	// Collect sub-future types and detect defer statements
	var subFutures []types.Type
	hasDefer := false
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
			}
		}
	}

	sm := &StateMachine{
		Original:   fn,
		CrossVars:  crossVars,
		SubFutures: subFutures,
		ResultType: resultType,
		HasDefer:   hasDefer,
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
			Index:      0,
			Block:      fn.Blocks[0],
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
