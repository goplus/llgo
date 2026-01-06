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
	"go/token"
	"go/types"
	"log"

	"golang.org/x/tools/go/ssa"

	llssa "github.com/goplus/llgo/ssa"
)

// CompileValueFunc is a callback to compile SSA values using the main compiler.
type CompileValueFunc func(b llssa.Builder, v ssa.Value) llssa.Expr

// LLSSACodeGen generates LLVM IR code for state machines using llssa API.
type LLSSACodeGen struct {
	prog         llssa.Program
	pkg          llssa.Package
	ssaPkg       *ssa.Package
	sm           *StateMachine
	compileValue CompileValueFunc // callback to compile SSA values
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

// SetCompileValue sets the callback function for compiling SSA values.
// This must be called before Generate() if sub-future initialization is needed.
func (g *LLSSACodeGen) SetCompileValue(fn CompileValueFunc) {
	g.compileValue = fn
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

	// Build method signature: func (s *StateStruct) Poll(ctx *Context) Poll[T]
	stateGoType := g.buildStateGoType()
	statePtrType := types.NewPointer(stateGoType)
	recvVar := types.NewVar(0, nil, "s", statePtrType)

	// Get the result type T from Future[T]
	// The original function returns Future[T], we need Poll[T] which is struct{ready bool; value T}
	resultType := g.sm.ResultType // This should be T, the type parameter
	if resultType == nil {
		// Fallback: use empty struct for Void
		resultType = types.NewStruct(nil, nil)
	}

	// Create Poll[T] struct type: struct { ready bool; value T }
	pollStructType := g.createPollType(resultType)
	pollResults := types.NewTuple(types.NewVar(0, nil, "", pollStructType))

	// Add ctx *async.Context parameter
	// TODO: Import async package and get Context type properly
	ctxType := types.NewPointer(types.NewStruct(nil, nil)) // Placeholder for *async.Context
	ctxParam := types.NewVar(0, nil, "ctx", ctxType)
	params := types.NewTuple(ctxParam)

	// Create Poll method signature: func (s *State) Poll(ctx *Context) Poll[T]
	pollSig := types.NewSignatureType(recvVar, nil, nil, params, pollResults, false)

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
	ctx := poll.Param(1) // Get ctx parameter
	for i, state := range g.sm.States {
		b.SetBlock(poll.Block(i + 1))
		g.generateStateBlock(b, poll, statePtr, ctx, state, i)
	}

	// Default block: unreachable (should never reach here)
	b.SetBlock(defaultBlock)
	// Return a zero Poll[T] value (unreachable in normal execution)
	pollLLType := g.prog.Type(pollStructType, llssa.InGo)
	zeroResult := g.prog.Zero(pollLLType)
	b.Return(zeroResult)

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
	ctx llssa.Expr,
	state *State,
	stateIdx int,
) {
	int8Type := g.prog.Type(types.Typ[types.Int8], llssa.InGo)

	if state.IsTerminal {
		// Terminal state: return Ready(result) = Poll[T]{ready: true, value: result}
		// For now, return a zero Poll[T] (ready=false, value=zero)
		// Full implementation would compute actual result value
		resultType := g.sm.ResultType
		if resultType == nil {
			resultType = types.NewStruct(nil, nil) // Void
		}
		pollType := g.createPollType(resultType)
		pollLLType := g.prog.Type(pollType, llssa.InGo)
		// For a Ready result, ready should be true, but we use zero for now
		zeroResult := g.prog.Zero(pollLLType)
		b.Return(zeroResult)
		return
	}

	if state.SuspendPoint != nil {
		// This state has a suspend point - we need to poll the sub-future
		sp := state.SuspendPoint

		// Get sub-future field
		subFutFieldIdx := g.getSubFutureFieldIndex(stateIdx)
		subFutFieldPtr := b.FieldAddr(statePtr, subFutFieldIdx)
		subFut := b.Load(subFutFieldPtr)

		// Check if subFut is nil and initialize if needed
		llSubFutType := g.prog.Type(sp.SubFuture.Type(), llssa.InGo)
		nilVal := g.prog.Nil(llSubFutType)
		isNil := b.BinOp(token.EQL, subFut, nilVal)

		// Create blocks for init/poll branching
		initBlocks := poll.MakeBlocks(2)
		initBlock := initBlocks[0]
		pollBlock := initBlocks[1]

		// Branch: if nil, initialize; otherwise, poll
		b.If(isNil, initBlock, pollBlock)

		// Init path: create the sub-future
		b.SetBlock(initBlock)

		// Compile the sub-future expression using the callback
		if g.compileValue != nil {
			// Compile sp.SubFuture (e.g., Step() call) to get the future value
			newSubFut := g.compileValue(b, sp.SubFuture)
			b.Store(subFutFieldPtr, newSubFut)
		} else {
			// No callback available - skip initialization (sub-future must be pre-initialized)
			// This is a fallback for testing without full compiler integration
		}
		b.Jump(pollBlock)

		// Poll path: continue with existing subFut
		b.SetBlock(pollBlock)
		// Reload subFut after potential initialization
		subFut = b.Load(subFutFieldPtr)

		// Get result type from suspend point
		resultType := sp.Result.Type()

		// Create Poll method signature
		pollMethod := g.createPollMethod(resultType)

		// For concrete types (not interfaces), we need to get the method value
		// instead of using Imethod
		goSubFutType := sp.SubFuture.Type() // go/types.Type

		// Check if it's an interface or concrete type
		_, isInterface := goSubFutType.Underlying().(*types.Interface)

		var pollResult llssa.Expr
		if isInterface {
			// Interface: use Imethod
			pollClosure := b.Imethod(subFut, pollMethod)
			pollResult = b.Call(pollClosure, ctx)
		} else {
			// Concrete type: lookup method using method set
			mset := types.NewMethodSet(goSubFutType)

			// Find Poll method
			var pollSel *types.Selection
			for i := 0; i < mset.Len(); i++ {
				sel := mset.At(i)
				if sel.Obj().Name() == "Poll" {
					pollSel = sel
					break
				}
			}

			if pollSel == nil {
				// Method not found - just transition optimistically
				nextState := uint64(stateIdx + 1)
				stateFieldPtr := b.FieldAddr(statePtr, 0)
				b.Store(stateFieldPtr, g.prog.IntVal(nextState, int8Type))
				if stateIdx+1 < len(g.sm.States) {
					b.Jump(poll.Block(stateIdx + 2))
				} else {
					// Return zero Poll[T] for fallback
					b.Return(g.createZeroPoll())
				}
				return
			}

			// Get method function object
			pollMethodObj := pollSel.Obj().(*types.Func)

			// Build full method name: package.(*Type).Method
			methodPkg := pollMethodObj.Pkg()
			methodName := llssa.FullName(methodPkg, "("+goSubFutType.String()+").Poll")

			// Create function reference
			methodSig := pollMethodObj.Type().(*types.Signature)
			methodFunc := g.pkg.NewFunc(methodName, methodSig, llssa.InGo)

			// Call the method: methodFunc(subFut, ctx)
			pollResult = b.Call(methodFunc.Expr, subFut, ctx)
		}

		// Poll[T] is struct { ready bool; value T }
		// We need to check the ready field
		pollResultType := g.prog.Type(g.createPollType(resultType), llssa.InGo)

		// Allocate pollResult on stack (not heap) to get address
		pollResultPtr := b.AllocaT(pollResultType)
		b.Store(pollResultPtr, pollResult)

		// Extract ready field (field 0)
		readyFieldPtr := b.FieldAddr(pollResultPtr, 0)
		ready := b.Load(readyFieldPtr)

		// Create blocks for ready/pending branching
		branchBlocks := poll.MakeBlocks(2)
		readyBlock := branchBlocks[0]
		pendingBlock := branchBlocks[1]

		// Branch based on ready
		b.If(ready, readyBlock, pendingBlock)

		// Pending path: return Pending[T] for OUR result type (not sub-future's)
		b.SetBlock(pendingBlock)
		// Create a Pending result: Poll[T]{ready: false, value: zero}
		// We need to use the state machine's result type, not the sub-future's
		ourResultType := g.sm.ResultType
		if ourResultType == nil {
			ourResultType = types.NewStruct(nil, nil) // Void
		}
		ourPollType := g.createPollType(ourResultType)
		ourPollLLType := g.prog.Type(ourPollType, llssa.InGo)
		pendingResult := g.prog.Zero(ourPollLLType) // ready=false, value=zero
		b.Return(pendingResult)

		// Ready path: extract value, update state, continue
		b.SetBlock(readyBlock)

		// Extract value field (field 1) from Poll result
		valueFieldPtr := b.FieldAddr(pollResultPtr, 1)
		value := b.Load(valueFieldPtr)

		// Find the cross-var index for sp.Result and store the value
		// CrossVars are stored starting at field 1 (after state field)
		resultVarIdx := g.getCrossVarFieldIndex(sp.Result)
		if resultVarIdx >= 0 {
			resultFieldPtr := b.FieldAddr(statePtr, resultVarIdx)
			b.Store(resultFieldPtr, value)
		}

		// Update state to next
		nextState := uint64(stateIdx + 1)
		stateFieldPtr := b.FieldAddr(statePtr, 0)
		b.Store(stateFieldPtr, g.prog.IntVal(nextState, int8Type))

		// Jump to next state block to continue execution in same poll
		if stateIdx+1 < len(g.sm.States) {
			b.Jump(poll.Block(stateIdx + 2)) // +1 for 0-indexed, +1 because block 0 is entry
		} else {
			// No more states - this shouldn't happen for suspend states
			b.Return(g.createZeroPoll())
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
		// Return zero Poll[T] for fallback
		b.Return(g.createZeroPoll())
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

// getCrossVarFieldIndex returns the field index for a cross-suspend variable.
// Returns -1 if the variable is not a cross-var.
func (g *LLSSACodeGen) getCrossVarFieldIndex(v ssa.Value) int {
	// Fields are: state(0), params..., crossVars..., subFutures...
	baseIdx := 1 + len(g.sm.Original.Params)

	for i, crossVar := range g.sm.CrossVars {
		if crossVar == v {
			return baseIdx + i
		}
	}
	return -1 // Not found
}

// GenerateStateMachine is the main entry point called from compile.go.
// It performs the complete transformation from SSA function to state machine.
func GenerateStateMachine(
	prog llssa.Program,
	pkg llssa.Package,
	ssaPkg *ssa.Package,
	fn *ssa.Function,
) error {
	return GenerateStateMachineWithCallback(prog, pkg, ssaPkg, fn, nil)
}

// GenerateStateMachineWithCallback is like GenerateStateMachine but accepts
// a callback function for compiling SSA values (used for sub-future initialization).
func GenerateStateMachineWithCallback(
	prog llssa.Program,
	pkg llssa.Package,
	ssaPkg *ssa.Package,
	fn *ssa.Function,
	compileValue CompileValueFunc,
) error {
	// Step 1: Analyze SSA and create state machine
	sm := Transform(fn)
	if sm == nil {
		return fmt.Errorf("failed to transform %s to state machine", fn.Name())
	}

	// Step 2: Generate llssa code
	codegen := NewLLSSACodeGen(prog, pkg, ssaPkg, sm)
	if compileValue != nil {
		codegen.SetCompileValue(compileValue)
	}
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

// createPollType creates the Poll[T] struct type.
// Poll[T] is: struct { ready bool; value T }
func (g *LLSSACodeGen) createPollType(resultType types.Type) types.Type {
	fields := []*types.Var{
		types.NewField(0, nil, "ready", types.Typ[types.Bool], false),
		types.NewField(0, nil, "value", resultType, false),
	}
	return types.NewStruct(fields, nil)
}

// createZeroPoll returns a zero value of Poll[T] for the state machine's result type.
func (g *LLSSACodeGen) createZeroPoll() llssa.Expr {
	resultType := g.sm.ResultType
	if resultType == nil {
		resultType = types.NewStruct(nil, nil) // Void
	}
	pollType := g.createPollType(resultType)
	pollLLType := g.prog.Type(pollType, llssa.InGo)
	return g.prog.Zero(pollLLType)
}
