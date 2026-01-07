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

// RegisterValueFunc is a callback to register a pre-computed value mapping.
// This is used to map original SSA params/values to state struct field loads.
type RegisterValueFunc func(v ssa.Value, expr llssa.Expr)

// LLSSACodeGen generates LLVM IR code for state machines using llssa API.
type LLSSACodeGen struct {
	prog           llssa.Program
	pkg            llssa.Package
	ssaPkg         *ssa.Package
	sm             *StateMachine
	compileValue   CompileValueFunc  // callback to compile SSA values
	registerValue  RegisterValueFunc // callback to register value mappings
	pollStructType types.Type        // cached Poll[T] struct type for consistency
	pollLLType     llssa.Type        // cached LLVM type for Poll[T]
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

	// Step 2: Generate constructor function
	if err := g.generateConstructor(stateType); err != nil {
		return fmt.Errorf("failed to generate constructor: %w", err)
	}

	// Step 3: Generate Poll method
	if err := g.generatePollMethod(stateType); err != nil {
		return fmt.Errorf("failed to generate Poll method: %w", err)
	}

	// Step 4: Rewrite original function to return state machine
	// The original function's body is replaced to call the constructor
	// and return the state as a Future[T]
	if err := g.generateOriginalFunctionWrapper(stateType); err != nil {
		return fmt.Errorf("failed to rewrite original function: %w", err)
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

	// Fields for sub-futures with value embedding (design doc 5.2)
	// Uses two-phase state encoding: state transitions implicitly track initialization
	// - State N*2:   need to initialize sub-future N
	// - State N*2+1: sub-future N initialized, polling
	for i, futType := range g.sm.SubFutures {
		// Add value-embedded sub-future (no init_flag needed)
		name := fmt.Sprintf("sub%d", i)
		// If futType is a pointer (*AsyncFuture[T]), use the underlying type (AsyncFuture[T])
		embedType := futType
		if ptr, ok := futType.(*types.Pointer); ok {
			embedType = ptr.Elem()
		}
		fields = append(fields, types.NewField(0, nil, name, embedType, false))
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
		// Terminal state: return Ready(result) = Poll[T]{ready: true, value: result}
		// For now, return a zero Poll[T] (ready=false, value=zero) using cached type
		// Full implementation would compute actual result value
		zeroResult := g.prog.Nil(g.pollLLType)
		b.Return(zeroResult)
		return
	}

	if state.SuspendPoint != nil {
		// This state has a suspend point - we need to poll the sub-future
		sp := state.SuspendPoint

		// Get sub-future field (value embedded)
		subFutFieldIdx := g.getSubFutureFieldIndex(stateIdx)
		subFutFieldPtr := b.FieldAddr(statePtr, subFutFieldIdx)
		// subFutFieldPtr is the address of the embedded value

		// Check if sub-future needs initialization by examining its first field
		// AsyncFuture[T] has resolver as first field which is nil when zero-initialized
		// This eliminates the need for separate init flags
		resolverFieldPtr := b.FieldAddr(subFutFieldPtr, 0) // resolver is field 0
		resolverPtrPtr := b.FieldAddr(resolverFieldPtr, 0) // resolver.ptr is field 0 of resolver
		resolverPtr := b.Load(resolverPtrPtr)

		// Check if resolver.ptr is nil (zero-initialized = needs init)
		nilPtr := g.prog.Nil(g.prog.VoidPtr())
		needsInit := b.BinOp(token.EQL, resolverPtr, nilPtr)

		// Create blocks for init/poll branching
		initBlocks := poll.MakeBlocks(2)
		initBlock := initBlocks[0]
		pollBlock := initBlocks[1]

		b.If(needsInit, initBlock, pollBlock)

		// Init path: initialize sub-future
		b.SetBlock(initBlock)
		if g.compileValue != nil {
			// Compile sp.SubFuture (e.g., Step() call) - returns *AsyncFuture[T]
			newSubFutPtr := g.compileValue(b, sp.SubFuture)
			// Dereference pointer to get value, then store to embedded field
			newSubFutVal := b.Load(newSubFutPtr)
			b.Store(subFutFieldPtr, newSubFutVal)
		}
		b.Jump(pollBlock)

		// Poll path: sub-future is already initialized
		b.SetBlock(pollBlock)
		// subFutFieldPtr IS the receiver (pointer to embedded value)

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
			// Interface: use Imethod - need to load the interface value first
			subFutIface := b.Load(subFutFieldPtr)
			pollClosure := b.Imethod(subFutIface, pollMethod)
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

			// Call the method: methodFunc(subFutFieldPtr, ctx)
			// subFutFieldPtr is the pointer to embedded value, acting as receiver
			pollResult = b.Call(methodFunc.Expr, subFutFieldPtr, ctx)
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
	return GenerateStateMachineWithCallback(prog, pkg, ssaPkg, fn, nil, nil)
}

// GenerateStateMachineWithCallback is like GenerateStateMachine but accepts
// callback functions for compiling SSA values and registering value mappings.
func GenerateStateMachineWithCallback(
	prog llssa.Program,
	pkg llssa.Package,
	ssaPkg *ssa.Package,
	fn *ssa.Function,
	compileValue CompileValueFunc,
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
	// TODO: Import async package and get Context type
	// For now, return a placeholder
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

// generateOriginalFunctionWrapper rewrites the original async function.
// The original function body is replaced to:
// 1. Allocate and initialize the state struct
// 2. Return a pointer to the state struct as Future[T]
//
// This allows callers to use the original function name while actually
// getting a state machine that implements the Future interface.
func (g *LLSSACodeGen) generateOriginalFunctionWrapper(stateType llssa.Type) error {
	fn := g.sm.Original

	// Build concrete return type: *StateStruct (not interface)
	// Future[T] in source is a compile-time placeholder, replaced with concrete type
	stateGoType := g.buildStateGoType()
	statePtrType := types.NewPointer(stateGoType)
	origSig := fn.Signature

	// Create new signature with concrete state pointer return type
	newResults := types.NewTuple(types.NewVar(0, nil, "", statePtrType))
	newSig := types.NewSignatureType(nil, nil, nil, origSig.Params(), newResults, origSig.Variadic())

	// Use the original function's full path name
	fullName := llssa.FuncName(fn.Pkg.Pkg, fn.Name(), nil, false)

	// Create the wrapper function with concrete return type
	wrapper := g.pkg.NewFunc(fullName, newSig, llssa.InGo)

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

	log.Printf("[Pull Model] Generated wrapper for original function %s", fn.Name())
	return nil
}
