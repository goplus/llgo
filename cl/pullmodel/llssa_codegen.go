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

// CompileInstrFunc is a callback to compile SSA instructions using the main compiler.
type CompileInstrFunc func(b llssa.Builder, instr ssa.Instruction)

// RegisterValueFunc is a callback to register a pre-computed value mapping.
// This is used to map original SSA params/values to state struct field loads.
type RegisterValueFunc func(v ssa.Value, expr llssa.Expr)

// LLSSACodeGen generates LLVM IR code for state machines using llssa API.
type LLSSACodeGen struct {
	prog                llssa.Program
	pkg                 llssa.Package
	ssaPkg              *ssa.Package
	sm                  *StateMachine
	compileValue        CompileValueFunc  // callback to compile SSA values
	compileInstr        CompileInstrFunc  // callback to compile SSA instructions
	registerValue       RegisterValueFunc // callback to register value mappings
	pollStructType      types.Type        // cached Poll[T] struct type for consistency
	pollLLType          llssa.Type        // cached LLVM type for Poll[T]
	stateNamed          *types.Named      // Named type FnName$State for proper itab
	pollMethod          *types.Func       // Poll method added to stateNamed
	completedStateIndex int               // sentinel index meaning state machine finished
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

// SetCompileInstr sets the callback for compiling SSA instructions.
// This is used to compile state body instructions (like fmt.Printf).
func (g *LLSSACodeGen) SetCompileInstr(fn CompileInstrFunc) {
	g.compileInstr = fn
}

// SetRegisterValue sets the callback for registering pre-computed value mappings.
// This is used to map SSA params/values to loaded state struct fields.
func (g *LLSSACodeGen) SetRegisterValue(fn RegisterValueFunc) {
	g.registerValue = fn
}

// Generate generates the complete state machine code.
// This is the main entry point for llssa code generation.
func (g *LLSSACodeGen) Generate() error {
	// Step 1: Generate state struct type
	stateType, err := g.generateStateType()
	if err != nil {
		return fmt.Errorf("failed to generate state type: %w", err)
	}

	// Step 2: Generate Poll method
	if err := g.generatePollMethod(stateType); err != nil {
		return fmt.Errorf("failed to generate Poll method: %w", err)
	}

	// Step 3: Rewrite original function to return state machine
	// The original function's body is replaced to allocate and init state struct
	if err := g.generateOriginalFunctionWrapper(stateType); err != nil {
		return fmt.Errorf("failed to rewrite original function: %w", err)
	}

	log.Printf("[Pull Model] Successfully generated state machine for %s", g.sm.Original.Name())
	return nil
}

// generateStateType generates the state machine struct type.
// Uses Named type (FnName$State) for proper itab generation.
func (g *LLSSACodeGen) generateStateType() (llssa.Type, error) {
	// Ensure the Named type is created first
	g.buildStateGoType()

	// Use Named type if available (for proper itab)
	if g.stateNamed != nil {
		stateType := g.prog.Type(g.stateNamed, llssa.InGo)
		log.Printf("[Pull Model] Generated state struct with %d fields", g.stateNamed.Underlying().(*types.Struct).NumFields())
		return stateType, nil
	}

	// Fallback: Build anonymous struct type (legacy path)
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
// Also creates a Named type FnName$State for proper itab generation.
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

	// Fields for sub-futures - store as pointers for proper closure semantics
	// The callback inside AsyncFuture captures 'f' by pointer, so we must keep
	// the original pointer, not copy the struct value.
	for i, futType := range g.sm.SubFutures {
		name := fmt.Sprintf("sub%d", i)
		// Keep the pointer type - do NOT dereference
		// futType is already *AsyncFuture[T], store it as-is
		fields = append(fields, types.NewField(0, nil, name, futType, false))
		tags = append(tags, "")
	}

	// Defer-related fields (only if function uses defer)
	if g.sm.HasDefer {
		// deferHead: pointer to defer list head (*runtime.DeferNode)
		// For now use unsafe.Pointer as placeholder until runtime type defined
		fields = append(fields, types.NewField(0, nil, "deferHead", types.Typ[types.UnsafePointer], false))
		tags = append(tags, "")

		// panicValue: any type to hold panic value
		fields = append(fields, types.NewField(0, nil, "panicValue", types.NewInterfaceType(nil, nil), false))
		tags = append(tags, "")

		// isPanicking: bool flag
		fields = append(fields, types.NewField(0, nil, "isPanicking", types.Typ[types.Bool], false))
		tags = append(tags, "")

		// recovered: bool flag
		fields = append(fields, types.NewField(0, nil, "recovered", types.Typ[types.Bool], false))
		tags = append(tags, "")
	}

	structType := types.NewStruct(fields, tags)

	// Create Named type FnName$State if not already created
	// This enables proper itab generation when converting to interface
	if g.stateNamed == nil {
		fn := g.sm.Original
		typeName := fn.Name() + "$State"

		// Get the Go package for the type
		// Use ssaPkg which has the full package info including scope
		var pkg *types.Package
		if g.ssaPkg != nil && g.ssaPkg.Pkg != nil {
			pkg = g.ssaPkg.Pkg
		} else if fn.Pkg != nil && fn.Pkg.Pkg != nil {
			pkg = fn.Pkg.Pkg
		}

		// Create a type object in the same package as the original function
		typeObj := types.NewTypeName(0, pkg, typeName, nil)
		g.stateNamed = types.NewNamed(typeObj, structType, nil)

		// Insert the type into the package scope so abiType can find it
		if pkg != nil && pkg.Scope() != nil {
			pkg.Scope().Insert(typeObj)
		}

		// CRITICAL: Add Poll method to the Named type BEFORE any abiType calls
		// This ensures types.NewMethodSet can find the Poll method when generating itab
		g.addPollMethodToNamedType(pkg, fn)
	}

	return structType
}

// addPollMethodToNamedType adds the Poll method signature to the Named type.
// This must be called before any abiType() to ensure the method is visible.
func (g *LLSSACodeGen) addPollMethodToNamedType(pkg *types.Package, fn *ssa.Function) {
	if g.stateNamed == nil {
		return
	}

	// Create receiver: s *FnName$State
	recvVar := types.NewVar(0, pkg, "s", types.NewPointer(g.stateNamed))

	// Get result type T from Future[T]
	resultType := g.sm.ResultType
	if resultType == nil {
		resultType = types.NewStruct(nil, nil)
	}

	// Create Poll[T] return type
	pollStructType := g.createPollType(resultType)
	pollResults := types.NewTuple(types.NewVar(0, nil, "", pollStructType))

	// Create ctx *async.Context parameter - use actual async.Context type for proper itab matching
	ctxType := g.getAsyncContextType()
	ctxParam := types.NewVar(0, nil, "ctx", ctxType)
	params := types.NewTuple(ctxParam)

	// Create Poll method signature
	pollSig := types.NewSignatureType(recvVar, nil, nil, params, pollResults, false)

	// Create method and add to Named type
	pollFunc := types.NewFunc(0, pkg, "Poll", pollSig)
	g.stateNamed.AddMethod(pollFunc)
	g.pollMethod = pollFunc
}

// generatePollMethod generates the Poll method for the state machine.
// The Poll method implements the state machine logic with a switch dispatcher.
func (g *LLSSACodeGen) generatePollMethod(stateType llssa.Type) error {
	fn := g.sm.Original

	// Build method signature: func (s *FnName$State) Poll(ctx *Context) Poll[T]
	// First ensure the Named type is created
	g.buildStateGoType()

	// Use Named type for receiver (enables proper itab generation)
	var statePtrType types.Type
	if g.stateNamed != nil {
		statePtrType = types.NewPointer(g.stateNamed)
	} else {
		// Fallback to struct type (won't have proper itab)
		statePtrType = types.NewPointer(g.buildStateGoType())
	}
	recvVar := types.NewVar(0, nil, "s", statePtrType)

	// Get the result type T from Future[T]
	// The original function returns Future[T], we need Poll[T] which is struct{ready bool; value T}
	resultType := g.sm.ResultType // This should be T, the type parameter
	if resultType == nil {
		// Fallback: use empty struct for Void
		resultType = types.NewStruct(nil, nil)
	}

	// Create Poll[T] struct type: struct { ready bool; value T }
	// Cache it for consistent use across all return statements
	g.pollStructType = g.createPollType(resultType)
	g.pollLLType = g.prog.Type(g.pollStructType, llssa.InGo)
	pollResults := types.NewTuple(types.NewVar(0, nil, "", g.pollStructType))

	// Add ctx *async.Context parameter
	// TODO: Import async package and get Context type properly
	ctxType := types.NewPointer(types.NewStruct(nil, nil)) // Placeholder for *async.Context
	ctxParam := types.NewVar(0, nil, "ctx", ctxType)
	params := types.NewTuple(ctxParam)

	// Create Poll method signature: func (s *State) Poll(ctx *Context) Poll[T]
	pollSig := types.NewSignatureType(recvVar, nil, nil, params, pollResults, false)

	// Create the Poll method with proper method naming: pkg.(*FnName$State).Poll
	// Pass recvVar to FuncName to generate correct method name that matches itab reference
	pollName := llssa.FuncName(fn.Pkg.Pkg, "Poll", recvVar, false)
	poll := g.pkg.NewFunc(pollName, pollSig, llssa.InGo)

	// Note: Poll method was already added to Named type in addPollMethodToNamedType()
	// This ensures the method exists before any abiType() calls

	// Create basic blocks:
	// - Block 0: entry (switch dispatcher)
	// - Blocks 1..n: state blocks
	// - Block n+1: completed sentinel
	// - Block n+2: default/unreachable
	numStates := len(g.sm.States)
	doneStateIdx := numStates // sentinel state meaning "completed"
	g.completedStateIndex = doneStateIdx
	numBlocks := 3 + numStates // entry + states + done + default
	poll.MakeBlocks(numBlocks)

	// Prepare a recover block so defer statements compiled via compileInstr
	// have a valid target even though we're outside the normal cl compile pipeline.
	recovBlock := poll.MakeBlock()
	poll.SetRecover(recovBlock)
	recovBuilder := poll.NewBuilder()
	recovBuilder.SetBlock(recovBlock)
	recovBuilder.Return(g.prog.Nil(g.pollLLType))

	// Get builder
	b := poll.NewBuilder()

	// Entry block: switch on state field
	b.SetBlock(poll.Block(0))

	// Get receiver (first param for method)
	statePtr := poll.Param(0)

	// Load state field
	stateFieldPtr := b.FieldAddr(statePtr, 0)
	stateVal := b.Load(stateFieldPtr)

	// Block that handles already-completed futures (state == doneStateIdx)
	doneBlock := poll.Block(numBlocks - 2)
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
	// If the future already ran to completion, just return Ready without
	// re-running terminal side effects.
	doneCaseVal := g.prog.IntVal(uint64(doneStateIdx), int8Type)
	sw.Case(doneCaseVal, doneBlock)
	sw.End(b)

	// Generate code for each state block
	ctx := poll.Param(1) // Get ctx parameter
	for i, state := range g.sm.States {
		b.SetBlock(poll.Block(i + 1))

		// Register SSA params and cross-vars as loaded values from state struct
		// This allows compileValue to find them when compiling sub-future initializers
		if g.registerValue != nil {
			fn := g.sm.Original
			fieldIdx := 1 // Start after state field

			// Register original function params
			for _, param := range fn.Params {
				// Load param value from state struct
				fieldPtr := b.FieldAddr(statePtr, fieldIdx)
				loadedVal := b.Load(fieldPtr)
				g.registerValue(param, loadedVal)
				fieldIdx++
			}

			// Register cross-suspend variables
			for _, v := range g.sm.CrossVars {
				fieldPtr := b.FieldAddr(statePtr, fieldIdx)
				loadedVal := b.Load(fieldPtr)
				g.registerValue(v, loadedVal)
				fieldIdx++
			}
		}

		g.generateStateBlock(b, poll, statePtr, ctx, state, i)
	}

	// Completed block: return Ready immediately on subsequent polls
	b.SetBlock(doneBlock)
	g.returnReadyPoll(b)

	// Default block: unreachable (should never reach here)
	b.SetBlock(defaultBlock)
	// Return a zero Poll[T] value (unreachable in normal execution)
	zeroResult := g.prog.Nil(g.pollLLType)
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
		// Terminal state: compile state instructions and return Ready
		// First compile any instructions in this state (like fmt.Printf)
		g.compileStateInstructions(b, state, statePtr)
		// Mark machine as completed so future polls skip re-running side effects.
		stateFieldPtr := b.FieldAddr(statePtr, 0)
		doneVal := g.prog.IntVal(uint64(g.completedStateIndex), int8Type)
		b.Store(stateFieldPtr, doneVal)
		// Then return Ready(result) = Poll[T]{ready: true, value: result}
		// For Future[Void], value is empty struct so we just need ready=true
		g.returnReadyPoll(b)
		return
	}

	if state.SuspendPoint != nil {
		// This state has a suspend point - we need to poll the sub-future
		sp := state.SuspendPoint

		// Get sub-future field (value embedded)
		subFutFieldIdx := g.getSubFutureFieldIndex(stateIdx)
		subFutFieldPtr := b.FieldAddr(statePtr, subFutFieldIdx)
		// subFutFieldPtr is the address of the embedded value

		// Sub-future field is now a pointer (*AsyncFuture[T])
		// Check if it's nil (needs initialization)
		subFutPtr := b.Load(subFutFieldPtr) // Load the pointer value
		nilPtr := g.prog.Nil(g.prog.VoidPtr())
		needsInit := b.BinOp(token.EQL, subFutPtr, nilPtr)

		// Create blocks for init/poll branching
		initBlocks := poll.MakeBlocks(2)
		initBlock := initBlocks[0]
		pollBlock := initBlocks[1]

		b.If(needsInit, initBlock, pollBlock)

		// Init path: initialize sub-future pointer
		b.SetBlock(initBlock)
		g.replayAllocStores(b, state, statePtr)
		// Compile state instructions (before the suspend point)
		g.compileStateInstructions(b, state, statePtr)
		// Compile sp.SubFuture (e.g., Step() call) - returns *AsyncFuture[T]
		newSubFutPtr := g.compileValue(b, sp.SubFuture)
		// Store the pointer directly (no dereferencing)
		b.Store(subFutFieldPtr, newSubFutPtr)
		b.Jump(pollBlock)

		// Poll path: sub-future is initialized
		b.SetBlock(pollBlock)
		// Load the stored sub-future pointer for use as receiver
		subFutPtrVal := b.Load(subFutFieldPtr)

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
			// Interface: use Imethod - subFutPtrVal contains the interface value
			pollClosure := b.Imethod(subFutPtrVal, pollMethod)
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

			// Build full method name using FuncName with receiver
			// This generates: pkg.(*Type).Poll matching llgo's method naming conventions
			methodPkg := pollMethodObj.Pkg()
			methodSig := pollMethodObj.Type().(*types.Signature)

			// Use FuncName with receiver to generate correct method name
			methodName := llssa.FuncName(methodPkg, "Poll", methodSig.Recv(), false)

			// Create function reference
			methodFunc := g.pkg.NewFunc(methodName, methodSig, llssa.InGo)

			// Call the method: methodFunc(subFutPtrVal, ctx)
			// subFutPtrVal is the loaded pointer value, acting as receiver
			pollResult = b.Call(methodFunc.Expr, subFutPtrVal, ctx)
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
		// Create a Pending result: Poll[T]{ready: false, value: zero} using cached type
		pendingResult := g.prog.Nil(g.pollLLType) // ready=false, value=zero
		b.Return(pendingResult)

		// Ready path: extract value, update state, continue
		b.SetBlock(readyBlock)

		// Extract value field (field 1) from Poll result
		valueFieldPtr := b.FieldAddr(pollResultPtr, 1)
		value := b.Load(valueFieldPtr)

		// Register the SSA result value so compileValue can reuse it without
		// re-emitting the original Await call.
		if g.registerValue != nil && sp.Result != nil {
			g.registerValue(sp.Result, value)
		}

		// Apply pending stores that assign the await result to captured heap vars.
		g.storeSuspendResult(b, statePtr, sp, value)

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

// replayAllocStores eagerly executes heap Alloc+Store pairs so captured pointers
// are initialized even when compileValue only pulls SSA values without running
// the original Store instructions.
func (g *LLSSACodeGen) replayAllocStores(b llssa.Builder, state *State, statePtr llssa.Expr) {
	if g.compileValue == nil {
		return
	}

	fn := g.sm.Original
	fieldIdx := 1 // Skip state field
	valueCache := make(map[ssa.Value]llssa.Expr, len(fn.Params)+len(g.sm.CrossVars))

	// Reload and register original parameters from the state struct.
	for _, param := range fn.Params {
		fieldPtr := b.FieldAddr(statePtr, fieldIdx)
		loaded := b.Load(fieldPtr)
		valueCache[param] = loaded
		if g.registerValue != nil {
			g.registerValue(param, loaded)
		}
		fieldIdx++
	}

	// Reload cross-suspend variables for the same reason.
	for _, cross := range g.sm.CrossVars {
		fieldPtr := b.FieldAddr(statePtr, fieldIdx)
		loaded := b.Load(fieldPtr)
		valueCache[cross] = loaded
		if g.registerValue != nil {
			g.registerValue(cross, loaded)
		}
		fieldIdx++
	}

	allocPtrs := make(map[*ssa.Alloc]llssa.Expr)
	for _, instr := range state.Instructions {
		switch v := instr.(type) {
		case *ssa.Alloc:
			ptr := g.ensureAllocPtr(b, statePtr, v)
			if !ptr.IsNil() {
				allocPtrs[v] = ptr
			}
		case *ssa.Store:
			alloc, ok := v.Addr.(*ssa.Alloc)
			if !ok || !alloc.Heap {
				continue
			}
			val, ok := valueCache[v.Val]
			if !ok || val.IsNil() {
				continue
			}
			ptr := allocPtrs[alloc]
			if ptr.IsNil() {
				ptr = g.ensureAllocPtr(b, statePtr, alloc)
				if ptr.IsNil() {
					continue
				}
				allocPtrs[alloc] = ptr
			}
			b.Store(ptr, val)
		}
	}
}

func (g *LLSSACodeGen) ensureAllocPtr(b llssa.Builder, statePtr llssa.Expr, alloc *ssa.Alloc) llssa.Expr {
	tptr, ok := alloc.Type().(*types.Pointer)
	if !ok {
		return llssa.Expr{}
	}
	elem := g.prog.Type(tptr.Elem(), llssa.InGo)
	ptr := b.Alloc(elem, alloc.Heap)
	if g.registerValue != nil {
		g.registerValue(alloc, ptr)
	}
	if idx := g.getCrossVarFieldIndex(alloc); idx >= 0 {
		fieldPtr := b.FieldAddr(statePtr, idx)
		b.Store(fieldPtr, ptr)
	}
	return ptr
}

func (g *LLSSACodeGen) storeSuspendResult(b llssa.Builder, statePtr llssa.Expr, sp *SuspendPoint, value llssa.Expr) {
	if value.IsNil() {
		return
	}
	block := sp.Block
	for i := sp.Index + 1; i < len(block.Instrs); i++ {
		store, ok := block.Instrs[i].(*ssa.Store)
		if !ok || store.Val != sp.Result {
			continue
		}
		idx := g.getCrossVarFieldIndex(store.Addr)
		if idx < 0 {
			continue
		}
		fieldPtr := b.FieldAddr(statePtr, idx)
		targetPtr := b.Load(fieldPtr)
		if targetPtr.IsNil() {
			continue
		}
		b.Store(targetPtr, value)
	}
}

// compileStateInstructions compiles the SSA instructions in a state.
// It skips instructions that are:
// - The suspend point call itself (handled separately)
// - Alloc+Store pairs for heap-escaped params (handled by replayAllocStores)
// - Return instructions (handled by terminal state logic)
func (g *LLSSACodeGen) compileStateInstructions(b llssa.Builder, state *State, statePtr llssa.Expr) {
	if g.compileInstr == nil {
		return
	}

	for _, instr := range state.Instructions {
		// Skip the suspend point call itself - it's handled separately
		if state.SuspendPoint != nil && instr == state.SuspendPoint.Call {
			continue
		}

		// Skip Return instructions for terminal states
		if _, isReturn := instr.(*ssa.Return); isReturn {
			continue
		}

		// Skip Alloc for heap-escaped params (handled by replayAllocStores)
		if alloc, isAlloc := instr.(*ssa.Alloc); isAlloc && alloc.Heap {
			continue
		}

		// Skip Store to heap Alloc (handled by replayAllocStores)
		if store, isStore := instr.(*ssa.Store); isStore {
			if alloc, ok := store.Addr.(*ssa.Alloc); ok && alloc.Heap {
				continue
			}
		}

		// Compile all other instructions (like fmt.Printf, BinOp, etc.)
		g.compileInstr(b, instr)
	}
}

// getSubFutureFieldIndex returns the field index for the sub-future VALUE at given state.
// With value embedding and state-based init tracking, each sub-future has 1 field.
func (g *LLSSACodeGen) getSubFutureFieldIndex(stateIdx int) int {
	// Fields are: state(0), params..., crossVars..., sub_futures...
	baseIdx := 1 + len(g.sm.Original.Params) + len(g.sm.CrossVars)

	subFutIdx := 0
	for i := 0; i < stateIdx; i++ {
		if g.sm.States[i].SuspendPoint != nil {
			subFutIdx++
		}
	}
	// Each sub-future occupies 1 field (no init flag)
	return baseIdx + subFutIdx
}

// getCrossVarFieldIndex returns the field index for a cross-suspend variable.
// Returns -1 if the variable is not a cross-var.
func (g *LLSSACodeGen) getCrossVarFieldIndex(v ssa.Value) int {
	// Fields are: state(0), params..., crossVars..., subFutures..., [defer fields if HasDefer]
	baseIdx := 1 + len(g.sm.Original.Params)

	for i, crossVar := range g.sm.CrossVars {
		if crossVar == v {
			return baseIdx + i
		}
	}
	return -1 // Not found
}

// getDeferFieldBaseIndex returns the base index for defer-related fields.
// Returns -1 if function has no defer.
func (g *LLSSACodeGen) getDeferFieldBaseIndex() int {
	if !g.sm.HasDefer {
		return -1
	}
	// Fields are: state(0), params..., crossVars..., subFutures..., defer fields...
	// Count sub-futures: one field per state with a suspend point
	subFutCount := 0
	for _, state := range g.sm.States {
		if state.SuspendPoint != nil {
			subFutCount++
		}
	}
	return 1 + len(g.sm.Original.Params) + len(g.sm.CrossVars) + subFutCount
}

// getDeferHeadFieldIndex returns the field index for deferHead.
func (g *LLSSACodeGen) getDeferHeadFieldIndex() int {
	base := g.getDeferFieldBaseIndex()
	if base < 0 {
		return -1
	}
	return base + 0
}

// getPanicValueFieldIndex returns the field index for panicValue.
func (g *LLSSACodeGen) getPanicValueFieldIndex() int {
	base := g.getDeferFieldBaseIndex()
	if base < 0 {
		return -1
	}
	return base + 1
}

// getIsPanickingFieldIndex returns the field index for isPanicking.
func (g *LLSSACodeGen) getIsPanickingFieldIndex() int {
	base := g.getDeferFieldBaseIndex()
	if base < 0 {
		return -1
	}
	return base + 2
}

// getRecoveredFieldIndex returns the field index for recovered.
func (g *LLSSACodeGen) getRecoveredFieldIndex() int {
	base := g.getDeferFieldBaseIndex()
	if base < 0 {
		return -1
	}
	return base + 3
}

// GenerateStateMachine is the main entry point called from compile.go.
// It performs the complete transformation from SSA function to state machine.
func GenerateStateMachine(
	prog llssa.Program,
	pkg llssa.Package,
	ssaPkg *ssa.Package,
	fn *ssa.Function,
) error {
	return GenerateStateMachineWithCallback(prog, pkg, ssaPkg, fn, nil, nil, nil)
}

// GenerateStateMachineWithCallback is like GenerateStateMachine but accepts
// callback functions for compiling SSA values/instructions and registering value mappings.
func GenerateStateMachineWithCallback(
	prog llssa.Program,
	pkg llssa.Package,
	ssaPkg *ssa.Package,
	fn *ssa.Function,
	compileValue CompileValueFunc,
	compileInstr CompileInstrFunc,
	registerValue RegisterValueFunc,
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
	if compileInstr != nil {
		codegen.SetCompileInstr(compileInstr)
	}
	if registerValue != nil {
		codegen.SetRegisterValue(registerValue)
	}
	if err := codegen.Generate(); err != nil {
		return fmt.Errorf("failed to generate code for %s: %w", fn.Name(), err)
	}

	return nil
}

// Helper functions for type conversion

// getAsyncContextType returns the *async.Context type.
func (g *LLSSACodeGen) getAsyncContextType() *types.Pointer {
	// Find the async package in imports
	fn := g.sm.Original
	pkg := fn.Pkg

	// Look for async package in imports
	for _, imp := range pkg.Pkg.Imports() {
		if imp.Path() == FuturePkgPath {
			// Found async package, look for Context type
			ctxObj := imp.Scope().Lookup("Context")
			if ctxObj == nil {
				break
			}

			// Get the named type and return pointer to it
			ctxNamed, ok := ctxObj.Type().(*types.Named)
			if !ok {
				break
			}

			return types.NewPointer(ctxNamed)
		}
	}

	// Fallback: return placeholder (should not happen for proper async functions)
	return types.NewPointer(types.NewStruct(nil, nil))
}

// createPollType creates the Poll[T] type from the async package.
// This uses the actual async.Poll[T] generic type instantiated with resultType.
func (g *LLSSACodeGen) createPollType(resultType types.Type) types.Type {
	// Find the async package in imports
	fn := g.sm.Original
	pkg := fn.Pkg

	// Look for async package in imports
	for _, imp := range pkg.Pkg.Imports() {
		if imp.Path() == FuturePkgPath {
			// Found async package, look for Poll type
			pollObj := imp.Scope().Lookup("Poll")
			if pollObj == nil {
				break
			}

			// Get the named type
			pollNamed, ok := pollObj.Type().(*types.Named)
			if !ok {
				break
			}

			// Instantiate Poll[T] with our resultType
			// types.Instantiate creates Poll[resultType]
			instantiated, err := types.Instantiate(nil, pollNamed, []types.Type{resultType}, false)
			if err != nil {
				log.Printf("[Pull Model] Failed to instantiate Poll[T]: %v", err)
				break
			}

			return instantiated
		}
	}

	// Fallback: create anonymous struct if async package not found
	log.Printf("[Pull Model] Warning: async package not found, using fallback Poll type")
	fields := []*types.Var{
		types.NewField(0, nil, "ready", types.Typ[types.Bool], false),
		types.NewField(0, nil, "value", resultType, false),
	}
	return types.NewStruct(fields, nil)
}

// createZeroPoll returns a zero value of Poll[T] using the cached type.
// Uses Nil (ConstNull) instead of Zero to preserve named type identity,
// avoiding anonymous struct literals like { i1, {} } for Poll[Void].
func (g *LLSSACodeGen) createZeroPoll() llssa.Expr {
	return g.prog.Nil(g.pollLLType)
}

// returnReadyPoll generates code to return Ready(value) = Poll[T]{ready: true, value: ...}.
// For Future[Void], the value is an empty struct.
func (g *LLSSACodeGen) returnReadyPoll(b llssa.Builder) {
	// Poll[T] is a struct { ready bool, value T }
	// We need to create { true, zeroValue(T) }
	boolType := g.prog.Type(types.Typ[types.Bool], llssa.InGo)
	trueVal := g.prog.BoolVal(true)

	// Get the result type (T from Poll[T])
	resultType := g.sm.ResultType
	if resultType == nil {
		// Void type - use empty struct
		resultType = types.NewStruct(nil, nil)
	}

	// Create zero value for the result type
	resultLLType := g.prog.Type(resultType, llssa.InGo)
	zeroResult := g.prog.Zero(resultLLType)

	// Build the Poll struct: { ready: true, value: zeroResult }
	// Use Alloca to construct the struct
	pollPtr := b.AllocaT(g.pollLLType)

	// Store ready = true
	readyFieldPtr := b.FieldAddr(pollPtr, 0)
	b.Store(readyFieldPtr, trueVal)

	// Store value = zeroResult (for Void, this is empty struct)
	valueFieldPtr := b.FieldAddr(pollPtr, 1)
	b.Store(valueFieldPtr, zeroResult)

	// Load and return the struct
	pollVal := b.Load(pollPtr)
	b.Return(pollVal)
	_ = boolType // Suppress unused warning
}

// generateOriginalFunctionWrapper rewrites the original async function.
// The original function body is replaced to:
// 1. Allocate and initialize the state struct
// 2. Return a pointer to the state struct as Future[T]
//
// This allows callers to use the original function name while actually
// getting a state machine that implements the Future interface.
//
// Generates ONE function:
// FnName$Concrete - returns *State directly
//
// The interface wrapper is NOT generated here. Instead, llgo's normal
// compilation handles interface conversion at call sites where the
// return value is assigned to a Future[T] variable.
func (g *LLSSACodeGen) generateOriginalFunctionWrapper(stateType llssa.Type) error {
	fn := g.sm.Original

	// Ensure Named type is created
	g.buildStateGoType()

	// Build concrete return type: *FnName$State (Named type, not anonymous struct)
	// This enables proper itab generation when converting to interface
	var statePtrType types.Type
	if g.stateNamed != nil {
		statePtrType = types.NewPointer(g.stateNamed)
	} else {
		// Fallback
		statePtrType = types.NewPointer(g.buildStateGoType())
	}
	origSig := fn.Signature

	// Create new signature with concrete state pointer return type
	newResults := types.NewTuple(types.NewVar(0, nil, "", statePtrType))
	concreteSig := types.NewSignatureType(nil, nil, nil, origSig.Params(), newResults, origSig.Variadic())

	// Generate $Concrete version (returns *State)
	// This is used for .Await() optimization where we want concrete type
	concreteName := llssa.FuncName(fn.Pkg.Pkg, fn.Name()+"$Concrete", nil, false)
	concreteWrapper := g.pkg.NewFunc(concreteName, concreteSig, llssa.InGo)
	g.generateConcreteWrapperBody(concreteWrapper, stateType, fn)
	log.Printf("[Pull Model] Generated $Concrete wrapper for %s", fn.Name())

	// Generate original name version that returns Future[T] interface
	// This matches the source code signature and uses MakeInterface for conversion
	fullName := llssa.FuncName(fn.Pkg.Pkg, fn.Name(), nil, false)
	ifaceWrapper := g.pkg.NewFunc(fullName, origSig, llssa.InGo)
	g.generateInterfaceWrapperBody(ifaceWrapper, concreteWrapper, fn)
	log.Printf("[Pull Model] Generated interface wrapper for %s", fn.Name())

	return nil
}

// generateConcreteWrapperBody generates the body for $Concrete function
// that returns *State directly
func (g *LLSSACodeGen) generateConcreteWrapperBody(wrapper llssa.Function, stateType llssa.Type, fn *ssa.Function) {
	// Create entry block
	b := wrapper.MakeBody(1)
	b.SetBlock(wrapper.Block(0))

	// Allocate state struct on heap (not stack) so it survives function return
	statePtr := b.Alloc(stateType, true)

	// Initialize state field (index 0) to 0
	stateFieldPtr := b.FieldAddr(statePtr, 0)
	int8Type := g.prog.Type(types.Typ[types.Int8], llssa.InGo)
	zero := g.prog.IntVal(0, int8Type)
	b.Store(stateFieldPtr, zero)

	// Copy parameters to state struct fields
	fieldIdx := 1 // Start after state field
	for i := range fn.Params {
		paramVal := wrapper.Param(i)
		fieldPtr := b.FieldAddr(statePtr, fieldIdx)
		b.Store(fieldPtr, paramVal)
		fieldIdx++
	}

	// Initialize cross-var fields to zero values
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

	// Return state pointer directly (no interface boxing!)
	b.Return(statePtr)
}

// generateInterfaceWrapperBody generates the body for original-named function
// that calls $Concrete and converts to interface using MakeInterface.
// The Named type (FnName$State) with registered Poll method enables proper itab.
func (g *LLSSACodeGen) generateInterfaceWrapperBody(wrapper llssa.Function, concreteWrapper llssa.Function, fn *ssa.Function) {
	// Create entry block
	b := wrapper.MakeBody(1)
	b.SetBlock(wrapper.Block(0))

	// Gather parameters
	args := make([]llssa.Expr, len(fn.Params))
	for i := range fn.Params {
		args[i] = wrapper.Param(i)
	}

	// Call $Concrete version
	concreteResult := b.Call(concreteWrapper.Expr, args...)

	// Convert *State to interface Future[T]
	// The Named type (FnName$State) with AddMethod(Poll) enables proper itab generation
	origRetType := fn.Signature.Results().At(0).Type()
	ifaceType := g.prog.Type(origRetType, llssa.InGo)
	ifaceVal := b.MakeInterface(ifaceType, concreteResult)

	// Return interface
	b.Return(ifaceVal)
}
