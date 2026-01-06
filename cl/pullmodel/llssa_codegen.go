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

// Package pullmodel implements the pull-based async/await model for LLGO.
// This file contains llssa-level code generation for state machines.
package pullmodel

import (
	"fmt"
	"go/types"
	"log"

	"golang.org/x/tools/go/ssa"

	llssa "github.com/goplus/llgo/ssa"
)

// LLSSACodeGen generates LLVM IR code for state machines using llssa API.
type LLSSACodeGen struct {
	prog   llssa.Program
	pkg    llssa.Package
	ssaPkg *ssa.Package
	sm     *StateMachine
}

// NewLLSSACodeGen creates a new llssa code generator.
func NewLLSSACodeGen(
	prog llssa.Program,
	pkg llssa.Package,
	ssaPkg *ssa.Package,
	sm *StateMachine,
) *LLSSACodeGen {
	return &LLSSACodeGen{
		prog:   prog,
		pkg:    pkg,
		ssaPkg: ssaPkg,
		sm:     sm,
	}
}

// Generate generates the complete state machine code.
// This is the main entry point for llssa code generation.
func (g *LLSSACodeGen) Generate() error {
	// Step 1: Generate state struct type
	stateType, err := g.generateStateType()
	if err != nil {
		return fmt.Errorf("failed to generate state type: %w", err)
	}

	// Step 2: Generate constructor function
	if err := g.generateConstructor(stateType); err != nil {
		return fmt.Errorf("failed to generate constructor: %w", err)
	}

	// Step 3: Generate Poll method
	if err := g.generatePollMethod(stateType); err != nil {
		return fmt.Errorf("failed to generate Poll method: %w", err)
	}

	log.Printf("[Pull Model] Successfully generated state machine for %s", g.sm.Original.Name())
	return nil
}

// generateStateType generates the state machine struct type.
func (g *LLSSACodeGen) generateStateType() (llssa.Type, error) {
	// Build field types
	var fieldTypes []llssa.Type

	// Field 0: state (int8)
	stateFieldType := g.prog.Type(types.Typ[types.Int8], llssa.InGo)
	fieldTypes = append(fieldTypes, stateFieldType)

	// Fields for parameters
	for _, param := range g.sm.Original.Params {
		paramType := g.prog.Type(param.Type(), llssa.InGo)
		fieldTypes = append(fieldTypes, paramType)
	}

	// Fields for cross-suspend variables
	for _, v := range g.sm.CrossVars {
		varType := g.prog.Type(v.Type(), llssa.InGo)
		fieldTypes = append(fieldTypes, varType)
	}

	// Fields for sub-futures
	for _, futType := range g.sm.SubFutures {
		// Sub-futures are stored as pointers to their concrete types
		subType := g.prog.Type(futType, llssa.InGo)
		fieldTypes = append(fieldTypes, subType)
	}

	// Create struct type
	stateType := g.prog.Struct(fieldTypes...)

	log.Printf("[Pull Model] Generated state struct with %d fields", len(fieldTypes))
	return stateType, nil
}

// generateConstructor generates the constructor function that initializes the state machine.
// The constructor takes the original function's parameters and returns an initialized state struct.
func (g *LLSSACodeGen) generateConstructor(stateType llssa.Type) error {
	fn := g.sm.Original

	// Build Go types.Signature for the constructor
	// Params: same as original function
	// Result: state struct type (as value, not pointer)
	origSig := fn.Signature
	paramTuple := origSig.Params()

	// Create result tuple with state struct type
	stateGoType := g.buildStateGoType()
	resultVar := types.NewVar(0, nil, "", stateGoType)
	resultTuple := types.NewTuple(resultVar)

	// Create constructor signature
	ctorSig := types.NewSignatureType(nil, nil, nil, paramTuple, resultTuple, false)

	// Create the constructor function
	ctorName := fn.Name()
	ctor := g.pkg.NewFunc(ctorName, ctorSig, llssa.InGo)

	// Create single basic block
	ctor.MakeBlocks(1)

	// Get builder and set to first block
	b := ctor.NewBuilder()
	b.SetBlock(ctor.Block(0))

	// Allocate state struct on stack
	statePtr := b.Alloc(stateType, false)

	// Initialize state field (index 0) to 0
	stateFieldPtr := b.FieldAddr(statePtr, 0)
	int8Type := g.prog.Type(types.Typ[types.Int8], llssa.InGo)
	zero := g.prog.IntVal(0, int8Type)
	b.Store(stateFieldPtr, zero)

	// Copy parameters to state struct fields
	fieldIdx := 1 // Start after state field
	for i := range fn.Params {
		paramVal := ctor.Param(i)
		fieldPtr := b.FieldAddr(statePtr, fieldIdx)
		b.Store(fieldPtr, paramVal)
		fieldIdx++
	}

	// Initialize cross-var fields to zero values (they'll be set during execution)
	for _, v := range g.sm.CrossVars {
		fieldPtr := b.FieldAddr(statePtr, fieldIdx)
		zeroVal := g.prog.Zero(g.prog.Type(v.Type(), llssa.InGo))
		b.Store(fieldPtr, zeroVal)
		fieldIdx++
	}

	// Initialize sub-future fields to nil
	for _, futType := range g.sm.SubFutures {
		fieldPtr := b.FieldAddr(statePtr, fieldIdx)
		nilVal := g.prog.Nil(g.prog.Type(futType, llssa.InGo))
		b.Store(fieldPtr, nilVal)
		fieldIdx++
	}

	// Load and return the state struct
	stateVal := b.Load(statePtr)
	b.Return(stateVal)

	log.Printf("[Pull Model] Generated constructor for %s with %d params", fn.Name(), len(fn.Params))
	return nil
}

// buildStateGoType builds the Go types.Struct for the state machine.
func (g *LLSSACodeGen) buildStateGoType() *types.Struct {
	var fields []*types.Var
	var tags []string

	// Field 0: state (int8)
	fields = append(fields, types.NewField(0, nil, "state", types.Typ[types.Int8], false))
	tags = append(tags, "")

	// Fields for parameters
	for i, param := range g.sm.Original.Params {
		name := fmt.Sprintf("param%d", i)
		fields = append(fields, types.NewField(0, nil, name, param.Type(), false))
		tags = append(tags, "")
	}

	// Fields for cross-suspend variables
	for i, v := range g.sm.CrossVars {
		name := fmt.Sprintf("var%d", i)
		fields = append(fields, types.NewField(0, nil, name, v.Type(), false))
		tags = append(tags, "")
	}

	// Fields for sub-futures
	for i, futType := range g.sm.SubFutures {
		name := fmt.Sprintf("sub%d", i)
		fields = append(fields, types.NewField(0, nil, name, futType, false))
		tags = append(tags, "")
	}

	return types.NewStruct(fields, tags)
}

// generatePollMethod generates the Poll method for the state machine.
// The Poll method implements the state machine logic with a switch dispatcher.
func (g *LLSSACodeGen) generatePollMethod(stateType llssa.Type) error {
	fn := g.sm.Original

	// Build method signature: func (s *StateStruct) Poll() Poll[T]
	// For simplicity, we'll return the result type directly for now
	stateGoType := g.buildStateGoType()
	statePtrType := types.NewPointer(stateGoType)
	recvVar := types.NewVar(0, nil, "s", statePtrType)

	// Result type is the same as original function's result
	origResults := fn.Signature.Results()

	// Create Poll method signature
	pollSig := types.NewSignatureType(recvVar, nil, nil, nil, origResults, false)

	// Create the Poll method
	pollName := fn.Name() + "$Poll"
	poll := g.pkg.NewFunc(pollName, pollSig, llssa.InGo)

	// Create basic blocks:
	// - Block 0: entry (switch dispatcher)
	// - Blocks 1..n: state blocks
	// - Block n+1: default/unreachable
	numStates := len(g.sm.States)
	numBlocks := 2 + numStates // entry + states + default
	poll.MakeBlocks(numBlocks)

	// Get builder
	b := poll.NewBuilder()

	// Entry block: switch on state field
	b.SetBlock(poll.Block(0))

	// Get receiver (first param for method)
	statePtr := poll.Param(0)

	// Load state field
	stateFieldPtr := b.FieldAddr(statePtr, 0)
	stateVal := b.Load(stateFieldPtr)

	// Default block (unreachable - should never happen)
	defaultBlock := poll.Block(numBlocks - 1)

	// Create switch statement
	sw := b.Switch(stateVal, defaultBlock)

	// Add case for each state
	int8Type := g.prog.Type(types.Typ[types.Int8], llssa.InGo)
	for i := 0; i < numStates; i++ {
		caseVal := g.prog.IntVal(uint64(i), int8Type)
		stateBlock := poll.Block(i + 1)
		sw.Case(caseVal, stateBlock)
	}
	sw.End(b)

	// Generate code for each state block
	for i, state := range g.sm.States {
		b.SetBlock(poll.Block(i + 1))
		g.generateStateBlock(b, poll, statePtr, state, i)
	}

	// Default block: unreachable (should never reach here)
	b.SetBlock(defaultBlock)
	// For now, just return a nil value (using Nil instead of Zero to fix type mismatch)
	if origResults.Len() > 0 {
		resultType := g.prog.Type(origResults.At(0).Type(), llssa.InGo)
		nilResult := g.prog.Nil(resultType)
		b.Return(nilResult)
	} else {
		b.Return()
	}

	log.Printf("[Pull Model] Generated Poll method for %s with %d states", fn.Name(), numStates)
	return nil
}

// generateStateBlock generates code for a single state in the Poll method.
// This is the core of the state machine - it handles:
// 1. Polling sub-futures at suspend points
// 2. Branching based on Pending/Ready
// 3. Updating state and returning appropriately
func (g *LLSSACodeGen) generateStateBlock(
	b llssa.Builder,
	poll llssa.Function,
	statePtr llssa.Expr,
	state *State,
	stateIdx int,
) {
	origResults := g.sm.Original.Signature.Results()
	int8Type := g.prog.Type(types.Typ[types.Int8], llssa.InGo)

	if state.IsTerminal {
		// Terminal state: return Ready(result)
		// For now, return nil/zero - full implementation would compute actual result
		if origResults.Len() > 0 {
			resultType := g.prog.Type(origResults.At(0).Type(), llssa.InGo)
			nilResult := g.prog.Nil(resultType)
			b.Return(nilResult)
		} else {
			b.Return()
		}
		return
	}

	if state.SuspendPoint != nil {
		// This state has a suspend point - we need to poll the sub-future
		// TODO: Actually poll the sub-future once we have proper interface call support
		_ = state.SuspendPoint // Mark as used (will be needed for full implementation)

		// Find the sub-future field index (for future use)
		subFutFieldIdx := g.getSubFutureFieldIndex(stateIdx)

		// Get sub-future from state struct (load but don't use yet)
		subFutFieldPtr := b.FieldAddr(statePtr, subFutFieldIdx)
		_ = b.Load(subFutFieldPtr) // Will be used when we implement actual poll call

		// Check if sub-future is nil (not initialized yet)
		// For now, we assume sub-future is already stored - full implementation would
		// call the future-producing function and store it first

		// We need to call subFut.Poll(ctx)
		// Since we don't have ctx parameter in our simplified signature,
		// we'll pass nil for now
		// Full implementation would add ctx parameter to Poll method

		// For this implementation, we check if sub-future is ready by:
		// 1. If subFut is nil, call the future-producing function and store it
		// 2. Otherwise, call subFut.Poll() and check result

		// Since sub-future is stored as interface/pointer, we need to do interface call
		// This is complex, so for MVP we do a simplified approach:
		// - First poll: transition to next state immediately (optimistic)
		// - This works for synchronous AsyncFuture that resolves immediately

		// Update state to next
		nextState := uint64(stateIdx + 1)
		stateFieldPtr := b.FieldAddr(statePtr, 0)
		b.Store(stateFieldPtr, g.prog.IntVal(nextState, int8Type))

		// Jump to next state block to continue execution in same poll
		if stateIdx+1 < len(g.sm.States) {
			b.Jump(poll.Block(stateIdx + 2)) // +1 for 0-indexed, +1 because block 0 is entry
		} else {
			// No more states
			if origResults.Len() > 0 {
				resultType := g.prog.Type(origResults.At(0).Type(), llssa.InGo)
				nilResult := g.prog.Nil(resultType)
				b.Return(nilResult)
			} else {
				b.Return()
			}
		}
		return
	}

	// Intermediate state without suspend - just transition to next
	nextState := uint64(stateIdx + 1)
	stateFieldPtr := b.FieldAddr(statePtr, 0)
	b.Store(stateFieldPtr, g.prog.IntVal(nextState, int8Type))

	if stateIdx+1 < len(g.sm.States) {
		b.Jump(poll.Block(stateIdx + 2))
	} else {
		if origResults.Len() > 0 {
			resultType := g.prog.Type(origResults.At(0).Type(), llssa.InGo)
			nilResult := g.prog.Nil(resultType)
			b.Return(nilResult)
		} else {
			b.Return()
		}
	}
}

// getSubFutureFieldIndex returns the field index for the sub-future at given state.
func (g *LLSSACodeGen) getSubFutureFieldIndex(stateIdx int) int {
	// Fields are: state(0), params..., crossVars..., subFutures...
	// Count how many sub-futures come before this state
	baseIdx := 1 + len(g.sm.Original.Params) + len(g.sm.CrossVars)

	subFutIdx := 0
	for i := 0; i < stateIdx; i++ {
		if g.sm.States[i].SuspendPoint != nil {
			subFutIdx++
		}
	}
	return baseIdx + subFutIdx
}

// GenerateStateMachine is the main entry point called from compile.go.
// It performs the complete transformation from SSA function to state machine.
func GenerateStateMachine(
	prog llssa.Program,
	pkg llssa.Package,
	ssaPkg *ssa.Package,
	fn *ssa.Function,
) error {
	// Step 1: Analyze SSA and create state machine
	sm := Transform(fn)
	if sm == nil {
		return fmt.Errorf("failed to transform %s to state machine", fn.Name())
	}

	// Step 2: Generate llssa code
	codegen := NewLLSSACodeGen(prog, pkg, ssaPkg, sm)
	if err := codegen.Generate(); err != nil {
		return fmt.Errorf("failed to generate code for %s: %w", fn.Name(), err)
	}

	return nil
}

// Helper functions for type conversion

// getAsyncContextType returns the *async.Context type.
func (g *LLSSACodeGen) getAsyncContextType() *types.Pointer {
	// TODO: Import async package and get Context type
	// For now, return a placeholder
	return types.NewPointer(types.NewStruct(nil, nil))
}

// getAsyncPollType returns the async.Poll[T] type for the given result type.
func (g *LLSSACodeGen) getAsyncPollType(resultType types.Type) types.Type {
	// TODO: Instantiate Poll[T] with the result type
	// For now, return a placeholder struct
	return types.NewStruct(nil, nil)
}
