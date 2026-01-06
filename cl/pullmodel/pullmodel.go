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
	// CrossVars are variables that live across suspend points
	CrossVars []ssa.Value
	// SubFutures are the concrete future types used by this function
	SubFutures []types.Type
	// ResultType is the type parameter T of Future[T]
	ResultType types.Type
}

// State represents a single state in the state machine.
type State struct {
	// Index is the state number (0, 1, 2, ...)
	Index int
	// Instructions are the SSA instructions for this state
	Instructions []ssa.Instruction
	// SuspendPoint is non-nil if this state ends with a suspend
	SuspendPoint *SuspendPoint
	// IsTerminal is true if this state returns a Ready value
	IsTerminal bool
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

	// Convert map to slice
	result := make([]ssa.Value, 0, len(crossVars))
	for v := range crossVars {
		result = append(result, v)
	}

	return result
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

	// Get result type from Future[T]
	resultType := GetFutureResultType(fn.Signature.Results().At(0).Type())

	// Collect sub-future types
	var subFutures []types.Type
	for _, sp := range suspends {
		if sp.SubFuture != nil {
			subFutures = append(subFutures, sp.SubFuture.Type())
		}
	}

	sm := &StateMachine{
		Original:   fn,
		CrossVars:  crossVars,
		SubFutures: subFutures,
		ResultType: resultType,
	}

	// Split into states at suspend points
	sm.States = splitIntoStates(fn, suspends)

	return sm
}

// splitIntoStates splits the function into states at suspend points.
func splitIntoStates(fn *ssa.Function, suspends []*SuspendPoint) []*State {
	if len(suspends) == 0 {
		// No suspend points, single state
		return []*State{{
			Index:      0,
			IsTerminal: true,
		}}
	}

	// Build suspend point lookup
	suspendMap := make(map[*ssa.Call]*SuspendPoint)
	for _, sp := range suspends {
		suspendMap[sp.Call] = sp
	}

	var states []*State
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
					states = append(states, &State{
						Index:        stateIndex,
						Instructions: currentInstrs,
						SuspendPoint: sp,
						IsTerminal:   false,
					})
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
			states = append(states, &State{
				Index:        stateIndex,
				Instructions: currentInstrs,
				IsTerminal:   isTerminal,
			})
			stateIndex++
		}
	}

	return states
}
