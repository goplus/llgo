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
	"os"
	"strings"

	"golang.org/x/tools/go/ssa"

	llssa "github.com/goplus/llgo/ssa"
)

// debugLog controls whether debug output is enabled.
// Enable by setting env LLGO_PULL_DEBUG=1 when running llgo/llgen/tests.
var debugLog = os.Getenv("LLGO_PULL_DEBUG") == "1"

// debugf logs a message if debug logging is enabled.
func debugf(format string, args ...interface{}) {
	if debugLog {
		log.Printf(format, args...)
	}
}

// CompileValueFunc is a callback to compile SSA values using the main compiler.
type CompileValueFunc func(b llssa.Builder, v ssa.Value) llssa.Expr

// CompileInstrFunc is a callback to compile SSA instructions using the main compiler.
type CompileInstrFunc func(b llssa.Builder, instr ssa.Instruction)

// RegisterValueFunc is a callback to register a pre-computed value mapping.
// This is used to map original SSA params/values to state struct field loads.
type RegisterValueFunc func(v ssa.Value, expr llssa.Expr)

// ClearCacheExceptFunc is a callback to clear cached values except for specified keys.
// This is used at state block entry to prevent SSA dominance violations from cached
// values that were computed in other basic blocks.
type ClearCacheExceptFunc func(keep []ssa.Value)

// LLSSACodeGen generates LLVM IR code for state machines using llssa API.
type LLSSACodeGen struct {
	prog                llssa.Program
	pkg                 llssa.Package
	ssaPkg              *ssa.Package
	sm                  *StateMachine
	compileValue        CompileValueFunc     // callback to compile SSA values
	compileInstr        CompileInstrFunc     // callback to compile SSA instructions
	registerValue       RegisterValueFunc    // callback to register value mappings
	clearCacheExcept    ClearCacheExceptFunc // callback to clear cached values except keep list
	pollStructType      types.Type           // cached Poll[T] struct type for consistency
	pollLLType          llssa.Type           // cached LLVM type for Poll[T]
	stateNamed          *types.Named         // Named type FnName$State for proper itab
	pollMethod          *types.Func          // Poll method added to stateNamed
	completedStateIndex int                  // sentinel index meaning state machine finished
	resultFieldIndex    int                  // field index storing the final result value
	stackAllocPtrs      map[*ssa.Alloc]llssa.Expr
	stackAllocCrossVars map[*ssa.Alloc]struct{}
	suspendResults      map[ssa.Value]struct{}
	deferWraps          map[string]deferWrapperInfo
	deferWrapSeq        int
}

type deferWrapperInfo struct {
	fn            llssa.Function
	argStruct     *types.Struct
	argStructType llssa.Type
}

// NewLLSSACodeGen creates a new llssa code generator.
func NewLLSSACodeGen(
	prog llssa.Program,
	pkg llssa.Package,
	ssaPkg *ssa.Package,
	sm *StateMachine,
) *LLSSACodeGen {
	return &LLSSACodeGen{
		prog:                prog,
		pkg:                 pkg,
		ssaPkg:              ssaPkg,
		sm:                  sm,
		resultFieldIndex:    -1,
		stackAllocCrossVars: make(map[*ssa.Alloc]struct{}),
		deferWraps:          make(map[string]deferWrapperInfo),
	}
}

// signatureWithCtx returns the function signature, adding the hidden closure
// context parameter when the SSA function has free variables.
func (g *LLSSACodeGen) signatureWithCtx(sig *types.Signature) *types.Signature {
	ctx := g.closureCtxParam()
	if ctx == nil {
		return sig
	}
	return llssa.FuncAddCtx(ctx, sig)
}

// closureCtxParam builds the synthetic __llgo_ctx parameter for closures that
// capture free variables. Returns nil when there are no free vars.
func (g *LLSSACodeGen) closureCtxParam() *types.Var {
	fn := g.sm.Original
	if len(fn.FreeVars) == 0 {
		return nil
	}
	fields := make([]*types.Var, len(fn.FreeVars))
	for i, fv := range fn.FreeVars {
		fields[i] = types.NewField(token.NoPos, nil, fv.Name(), fv.Type(), false)
	}
	ctxStruct := types.NewStruct(fields, nil)
	ctxPtr := types.NewPointer(ctxStruct)
	return types.NewParam(token.NoPos, nil, "__llgo_ctx", ctxPtr)
}

func (g *LLSSACodeGen) isSuspendResult(v ssa.Value) bool {
	if v == nil {
		return false
	}
	if g.suspendResults == nil {
		g.suspendResults = make(map[ssa.Value]struct{})
		for _, st := range g.sm.States {
			if st.SuspendPoint != nil && st.SuspendPoint.Result != nil {
				g.suspendResults[st.SuspendPoint.Result] = struct{}{}
			}
		}
	}
	_, ok := g.suspendResults[v]
	return ok
}

func (g *LLSSACodeGen) shouldPreloadCrossVar(v ssa.Value, block *ssa.BasicBlock) bool {
	if v == nil {
		return false
	}
	if _, ok := g.isStackAllocCrossVar(v); ok {
		return true
	}
	// Free variables are captured environment values; always preload so
	// compileValue can resolve them without re-evaluating.
	if _, ok := v.(*ssa.FreeVar); ok {
		return true
	}
	// Always preload heap allocs that are cross-vars, since they need to persist
	// across multiple states even within the same SSA block.
	if alloc, ok := v.(*ssa.Alloc); ok && alloc.Heap {
		return true
	}

	// Special handling for Extract: if the tuple source is from a different block,
	// the Extract value was pre-computed and stored during state transition.
	// We must preload it instead of recomputing (which would re-execute the tuple source).
	if ext, isExtract := v.(*ssa.Extract); isExtract {
		tupleDefBlock := g.valueBlock(ext.Tuple)
		if tupleDefBlock != nil && tupleDefBlock != block {
			// Tuple is from different block - the Extract was stored, preload it
			return true
		}
	}

	if defBlk := g.valueBlock(v); defBlk != nil && defBlk == block {
		if _, isPhi := v.(*ssa.Phi); !isPhi && !g.isSuspendResult(v) {
			return false
		}
	}
	return true
}

func (g *LLSSACodeGen) isLoopAlloc(alloc *ssa.Alloc) bool {
	if g == nil || g.sm == nil || g.sm.LoopAllocs == nil {
		return false
	}
	_, ok := g.sm.LoopAllocs[alloc]
	return ok
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

// SetClearCacheExcept sets the callback for clearing cached values.
// This is used at state block entry to prevent SSA dominance violations.
func (g *LLSSACodeGen) SetClearCacheExcept(fn ClearCacheExceptFunc) {
	g.clearCacheExcept = fn
}

// clearBlockCache clears the value cache except for params and cross-vars.
// This must be called at the entry of each state block to prevent SSA dominance
// violations where values computed in one block are incorrectly reused in another
// block that doesn't dominate or isn't dominated by the first.
func (g *LLSSACodeGen) clearBlockCache() {
	if g.clearCacheExcept == nil {
		return
	}
	// Build list of values to keep: params and cross-vars
	fn := g.sm.Original
	keep := make([]ssa.Value, 0, len(fn.Params)+len(g.sm.CrossVars))
	for _, param := range fn.Params {
		keep = append(keep, param)
	}
	for _, cv := range g.sm.CrossVars {
		keep = append(keep, cv)
	}
	g.clearCacheExcept(keep)
}

func (g *LLSSACodeGen) cacheValueMapping(v ssa.Value, expr llssa.Expr) {
	if g.registerValue == nil || expr.IsNil() {
		return
	}
	g.registerValue(v, expr)
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

	debugf("[Pull Model] Successfully generated state machine for %s", g.sm.Original.Name())
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
		debugf("[Pull Model] Generated state struct with %d fields", g.stateNamed.Underlying().(*types.Struct).NumFields())
		return stateType, nil
	}

	// Fallback: Build anonymous struct type (legacy path)
	var fieldTypes []llssa.Type

	// Field 0: state (int8)
	stateFieldType := g.prog.Type(types.Typ[types.Int8], llssa.InGo)
	fieldTypes = append(fieldTypes, stateFieldType)

	// Fields for parameters (include hidden ctx for closures)
	paramTuple := g.signatureWithCtx(g.sm.Original.Signature).Params()
	for i := 0; i < paramTuple.Len(); i++ {
		paramType := g.prog.Type(paramTuple.At(i).Type(), llssa.InGo)
		fieldTypes = append(fieldTypes, paramType)
	}

	// Fields for cross-suspend variables
	debugf("[DEBUG generateStateType fallback] Processing %d crossVars", len(g.sm.CrossVars))
	for i, v := range g.sm.CrossVars {
		vType := v.Type()
		// Special handling for Range: use unsafe.Pointer
		if _, isRange := v.(*ssa.Range); isRange {
			debugf("[DEBUG generateStateType fallback] Converting Range to unsafe.Pointer")
			vType = types.Typ[types.UnsafePointer]
		}
		// Special handling for Next: use unsafe.Pointer
		if _, isNext := v.(*ssa.Next); isNext {
			debugf("[DEBUG generateStateType fallback] Converting Next to unsafe.Pointer")
			vType = types.Typ[types.UnsafePointer]
		}
		debugf("[DEBUG generateStateType fallback] CrossVar %d: %v (type: %v)", i, v, vType)
		varType := g.prog.Type(vType, llssa.InGo)
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

	debugf("[Pull Model] Generated state struct with %d fields", len(fieldTypes))
	return stateType, nil
}

// generateConstructor generates the constructor function that initializes the state machine.
// The constructor takes the original function's parameters and returns an initialized state struct.
func (g *LLSSACodeGen) generateConstructor(stateType llssa.Type) error {
	fn := g.sm.Original

	// Build Go types.Signature for the constructor
	// Params: same as original function
	// Result: state struct type (as value, not pointer)
	origSig := g.signatureWithCtx(fn.Signature)
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
	for i := 0; i < paramTuple.Len(); i++ {
		paramVal := ctor.Param(i)
		fieldPtr := b.FieldAddr(statePtr, fieldIdx)
		b.Store(fieldPtr, paramVal)
		fieldIdx++
	}

	// Initialize cross-var fields. For free vars, capture the bound value from ctx.
	for _, v := range g.sm.CrossVars {
		fieldPtr := b.FieldAddr(statePtr, fieldIdx)

		// FreeVar: load from closure ctx (first parameter) using the free var index.
		if fv, ok := v.(*ssa.FreeVar); ok {
			idx := g.freeVarIndex(fv)
			if idx >= 0 {
				ctxParam := ctor.Param(0) // __llgo_ctx is always first when present
				ctxField := b.FieldAddr(ctxParam, idx)
				val := b.Load(ctxField)
				b.Store(fieldPtr, val)
				fieldIdx++
				continue
			}
		}

		fieldType := v.Type()
		if alloc, ok := g.isStackAllocCrossVar(v); ok {
			if tptr, ok := alloc.Type().(*types.Pointer); ok {
				fieldType = tptr.Elem()
			}
		}
		zeroVal := g.prog.Zero(g.prog.Type(fieldType, llssa.InGo))
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

	debugf("[Pull Model] Generated constructor for %s with %d params", fn.Name(), paramTuple.Len())
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

	// Fields for parameters (include hidden ctx when present)
	paramTuple := g.signatureWithCtx(g.sm.Original.Signature).Params()
	for i := 0; i < paramTuple.Len(); i++ {
		name := fmt.Sprintf("param%d", i)
		fields = append(fields, types.NewField(0, nil, name, paramTuple.At(i).Type(), false))
		tags = append(tags, "")
	}

	// Fields for cross-suspend variables
	for i, v := range g.sm.CrossVars {
		name := fmt.Sprintf("var%d", i)
		fieldType := v.Type()
		debugf("[DEBUG buildStateGoType] Processing crossVar %d: %v (type: %v, kind: %T)", i, v, fieldType, v)

		// Special handling for Range: it returns an opaque iterator type in SSA,
		// but in LLVM IR it's just a pointer. Use unsafe.Pointer as the field type.
		if _, isRange := v.(*ssa.Range); isRange {
			debugf("[DEBUG buildStateGoType] Converting Range to unsafe.Pointer")
			fieldType = types.Typ[types.UnsafePointer]
		}
		// Special handling for Next: it returns a tuple that may contain opaque types.
		// Treat it as unsafe.Pointer if it somehow ends up in crossVars.
		if _, isNext := v.(*ssa.Next); isNext {
			debugf("[DEBUG buildStateGoType] Converting Next to unsafe.Pointer")
			fieldType = types.Typ[types.UnsafePointer]
		}

		if alloc, ok := v.(*ssa.Alloc); ok && !alloc.Heap {
			if ptr, ok := alloc.Type().(*types.Pointer); ok {
				fieldType = ptr.Elem()
				g.stackAllocCrossVars[alloc] = struct{}{}
			} else {
			}
		} else if ok {
		}
		debugf("[DEBUG buildStateGoType] Field %d (%s): final type = %v", i, name, fieldType)
		fields = append(fields, types.NewField(0, nil, name, fieldType, false))
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
		// Embed async.DeferState as a single field to match runtime layout
		deferStateType := g.getDeferStateType()
		fields = append(fields, types.NewField(0, nil, "deferState", deferStateType, false))
		tags = append(tags, "")
	}

	// Field to cache the final result value so subsequent polls can reuse it.
	resultType := g.sm.ResultType
	if resultType == nil {
		resultType = types.NewStruct(nil, nil)
	}
	g.resultFieldIndex = len(fields)
	fields = append(fields, types.NewField(0, nil, "resultValue", resultType, false))
	tags = append(tags, "")

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
	// Create Await method signature (compile-time marker)
	awaitResults := types.NewTuple(types.NewVar(0, nil, "", resultType))
	awaitSig := types.NewSignatureType(recvVar, nil, nil, nil, awaitResults, false)

	// Create methods and add to Named type BEFORE any abiType() calls so itab sees both
	pollFunc := types.NewFunc(0, pkg, "Poll", pollSig)
	awaitFunc := types.NewFunc(0, pkg, "Await", awaitSig)
	g.stateNamed.AddMethod(pollFunc)
	g.stateNamed.AddMethod(awaitFunc)
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

	// Add ctx *async.Context parameter using the real async.Context type
	ctxType := g.getAsyncContextType()
	ctxParam := types.NewVar(0, nil, "ctx", ctxType)
	params := types.NewTuple(ctxParam)

	// Also generate a stub Await method so the state type fully satisfies async.Future[T]
	// This prevents itab generation from zeroing the method table when Await is missing.
	awaitResults := types.NewTuple(types.NewVar(0, nil, "", resultType))
	awaitSig := types.NewSignatureType(recvVar, nil, nil, nil, awaitResults, false)
	awaitName := llssa.FuncName(fn.Pkg.Pkg, "Await", recvVar, false)
	awaitFn := g.pkg.NewFunc(awaitName, awaitSig, llssa.InGo)
	awaitBody := awaitFn.MakeBody(1)
	awaitBody.SetBlock(awaitFn.Block(0))
	awaitZero := awaitBody.AggregateExpr(g.prog.Type(resultType, llssa.InGo))
	awaitBody.Return(awaitZero)

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
	// Create named blocks for readability.
	poll.MakeNamedBlock(fmt.Sprintf("%s_entry", fn.Name()))
	for i := 0; i < numStates; i++ {
		poll.MakeNamedBlock(fmt.Sprintf("%s_state_%02d", fn.Name(), i))
	}
	doneBlock := poll.MakeNamedBlock(fmt.Sprintf("%s_state_done", fn.Name()))
	defaultBlock := poll.MakeNamedBlock(fmt.Sprintf("%s_state_unreach", fn.Name()))

	// Pre-allocate stack slots for non-escaping SSA allocs in the entry block.
	g.prepareStackAllocas(poll)

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

	// Debug: log dispatch state before switching.
	g.emitPullDebugState(b, stateVal, "dispatch", false, false)

	// Block that handles already-completed futures (state == doneStateIdx)
	doneBlock = poll.Block(numStates + 1)
	// Default block (unreachable - should never happen)
	defaultBlock = poll.Block(numStates + 2)

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
		g.restoreStackAllocState(b, statePtr)

		// Clear the value cache but keep only values we are about to preload.
		// This avoids stale cross-var mappings when we intentionally skip
		// preloading values defined in the same block.
		if g.clearCacheExcept != nil {
			fn := g.sm.Original
			keep := make([]ssa.Value, 0, len(fn.Params)+len(g.sm.CrossVars))
			for _, param := range fn.Params {
				keep = append(keep, param)
			}
			for _, cv := range g.sm.CrossVars {
				if g.shouldPreloadCrossVar(cv, state.Block) {
					keep = append(keep, cv)
				}
			}
			g.clearCacheExcept(keep)
		}

		// Re-register stack alloc pointers so allocs map to the preallocated slots.
		if g.registerValue != nil {
			for alloc, ptr := range g.stackAllocPtrs {
				if !ptr.IsNil() {
					g.registerValue(alloc, ptr)
				}
			}
		}

		// Register SSA params and cross-vars as loaded values from state struct
		// This allows compileValue to find them when compiling sub-future initializers
		if g.registerValue != nil {
			fn := g.sm.Original
			fieldIdx := 1 // Start after state field

			// Register parameters (including optional __llgo_ctx). SSA params do not
			// include ctx, so offset accordingly.
			paramTuple := g.signatureWithCtx(fn.Signature).Params()
			ctxOffset := 0
			if g.closureCtxParam() != nil {
				ctxOffset = 1
			}
			for i := 0; i < paramTuple.Len(); i++ {
				fieldPtr := b.FieldAddr(statePtr, fieldIdx)
				loadedVal := b.Load(fieldPtr)
				if i >= ctxOffset {
					param := fn.Params[i-ctxOffset]
					g.registerValue(param, loadedVal)
				}
				fieldIdx++
			}

			// Register cross-suspend variables
			for _, v := range g.sm.CrossVars {
				if alloc, ok := g.isStackAllocCrossVar(v); ok {
					ptr := g.stackAllocPtr(alloc)
					if ptr.IsNil() {
						ptr = g.ensureEntryAlloc(b, alloc)
					}
					if !ptr.IsNil() {
						g.registerValue(v, ptr)
					}
					fieldIdx++
					continue
				}

				if !g.shouldPreloadCrossVar(v, state.Block) {
					fieldIdx++
					continue
				}

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
	g.emitPullDebugState(b, g.prog.IntVal(uint64(doneStateIdx), g.prog.Int()), "done", false, true)
	finalValue := g.loadResultValue(b, statePtr)
	g.returnReadyPoll(b, finalValue)

	// Default block: unreachable (should never reach here)
	b.SetBlock(defaultBlock)
	// Return a zero Poll[T] value (unreachable in normal execution)
	zeroResult := g.prog.Nil(g.pollLLType)
	b.Return(zeroResult)

	debugf("[Pull Model] Generated Poll method for %s with %d states", fn.Name(), numStates)
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

	g.emitPullDebugState(b, g.prog.IntVal(uint64(stateIdx), g.prog.Int()), "enter", state.SuspendPoint != nil, state.IsTerminal)
	if g.sm.Original.Name() == "RangeAggregator" && stateIdx == 1 {
		rangeIdxField := -1
		for _, cv := range g.sm.CrossVars {
			if cv != nil && cv.Name() == "t3" {
				rangeIdxField = g.getCrossVarFieldIndex(cv)
				break
			}
		}
		if rangeIdxField >= 0 {
			idxFieldPtr := b.FieldAddr(statePtr, rangeIdxField)
			idxVal := b.Load(idxFieldPtr)
			g.emitPullDebugState(b, idxVal, "idx", false, false)
		}
		t4Field := -1
		for _, cv := range g.sm.CrossVars {
			if cv != nil && cv.Name() == "t4" {
				t4Field = g.getCrossVarFieldIndex(cv)
				break
			}
		}
		if t4Field >= 0 {
			t4FieldPtr := b.FieldAddr(statePtr, t4Field)
			t4Val := b.Load(t4FieldPtr)
			g.emitPullDebugState(b, t4Val, "t4", false, false)
		}
		opsFieldPtr := b.FieldAddr(statePtr, 1) // param0: ops
		opsSlice := b.Load(opsFieldPtr)
		lenVal := b.SliceLen(opsSlice)
		g.emitPullDebugState(b, lenVal, "len", false, false)
	}

	if state.IsTerminal {
		// Terminal state: compile state instructions, capture final result, and return Ready
		resultVal, returned := g.compileStateInstructions(b, state, statePtr)
		if returned {
			return
		}
		if !resultVal.IsNil() {
			g.storeResultValue(b, statePtr, resultVal)
		}
		g.flushStackAllocState(b, statePtr)
		// Mark machine as completed so future polls skip re-running side effects.
		stateFieldPtr := b.FieldAddr(statePtr, 0)
		doneVal := g.prog.IntVal(uint64(g.completedStateIndex), int8Type)
		b.Store(stateFieldPtr, doneVal)
		// Then return Ready(result) = Poll[T]{ready: true, value: result}
		g.emitPullDebugState(b, g.prog.IntVal(uint64(stateIdx), g.prog.Int()), "ready", false, true)
		finalValue := g.loadResultValue(b, statePtr)
		g.returnReadyPoll(b, finalValue)
		return
	}

	if state.SuspendPoint != nil {
		// This state has a suspend point - we need to poll the sub-future
		sp := state.SuspendPoint

		// Get sub-future field (value embedded)
		subFutFieldIdx := g.getSubFutureFieldIndex(stateIdx)
		subFutFieldPtr := b.FieldAddr(statePtr, subFutFieldIdx)
		// subFutFieldPtr is the address of the embedded value

		// Load stored sub-future value
		subFutVal := b.Load(subFutFieldPtr)
		// Compare against zero value of the sub-future type to decide init.
		zeroSubFut := g.prog.Zero(g.prog.Type(sp.SubFuture.Type(), llssa.InGo))
		needsInit := b.BinOp(token.EQL, subFutVal, zeroSubFut)
		g.emitPullDebugState(b, subFutVal, fmt.Sprintf("subfut_%02d_val", stateIdx), false, false)

		// Create blocks for init/poll branching
		initBlock := poll.MakeNamedBlock(fmt.Sprintf("%s_state_%02d_init", g.sm.Original.Name(), stateIdx))
		pollBlock := poll.MakeNamedBlock(fmt.Sprintf("%s_state_%02d_poll", g.sm.Original.Name(), stateIdx))

		b.If(needsInit, initBlock, pollBlock)

		// Init path: initialize sub-future pointer
		b.SetBlock(initBlock)
		g.replayAllocStores(b, state, statePtr)
		// Compile state instructions (before the suspend point)
		_, returned := g.compileStateInstructions(b, state, statePtr)
		if returned {
			return
		}
		// Compile sp.SubFuture (e.g., Step() call) - returns *AsyncFuture[T]
		newSubFutPtr := g.compileValue(b, sp.SubFuture)
		// Store the pointer directly (no dereferencing)
		b.Store(subFutFieldPtr, newSubFutPtr)
		b.Jump(pollBlock)

		// Poll path: sub-future is initialized
		b.SetBlock(pollBlock)
		// Load the stored sub-future pointer for use as receiver
		subFutPtrVal := b.Load(subFutFieldPtr)
		g.emitPullDebugState(b, subFutPtrVal, fmt.Sprintf("subfut_%02d_ptr", stateIdx), false, false)

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
					g.flushStackAllocState(b, statePtr)
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

		// Poll[T] is struct { ready bool; value T; err any }
		// Extract ready field (field 0) directly
		ready := b.Field(pollResult, 0)

		// Create blocks for ready/pending branching
		readyBlock := poll.MakeNamedBlock(fmt.Sprintf("%s_state_%02d_ready", g.sm.Original.Name(), stateIdx))
		pendingBlock := poll.MakeNamedBlock(fmt.Sprintf("%s_state_%02d_pending", g.sm.Original.Name(), stateIdx))

		// Branch based on ready
		b.If(ready, readyBlock, pendingBlock)

		// Pending path: return Pending[T] for OUR result type (not sub-future's)
		b.SetBlock(pendingBlock)
		// Create a Pending result: Poll[T]{ready: false, value: zero} using cached type
		pendingResult := g.prog.Nil(g.pollLLType) // ready=false, value=zero
		g.flushStackAllocState(b, statePtr)
		g.emitPullDebugState(b, g.prog.IntVal(uint64(stateIdx), g.prog.Int()), "pending", true, false)
		b.Return(pendingResult)

		// Ready path: extract value, update state, continue
		b.SetBlock(readyBlock)

		// Extract value field (field 1) from Poll result
		value := b.Field(pollResult, 1)

		// NOTE: Do NOT call registerValue(sp.Result, value) here!
		// The 'value' register is only valid within this readyBlock.
		// Subsequent state blocks must reload sp.Result from the state struct
		// (stored below at resultVarIdx) to maintain SSA dominance.
		// See: "Always Reload from State Struct" pattern in troubleshooting_guide.md

		// Apply pending stores that assign the await result to captured heap vars.
		g.storeSuspendResult(b, statePtr, sp, value)

		// Find the cross-var index for sp.Result and store the value
		// CrossVars are stored starting at field 1 (after state field)
		resultVarIdx := g.getCrossVarFieldIndex(sp.Result)
		if resultVarIdx >= 0 {
			resultFieldPtr := b.FieldAddr(statePtr, resultVarIdx)
			b.Store(resultFieldPtr, value)
		}

		// Persist other cross-vars that might be needed by the next state (e.g., freevars).
		// Suspend states bypass compileStateInstructions, so we must manually snapshot
		// remaining cross-vars here to avoid nil placeholders (see visitor closure crash).
		for _, cv := range g.sm.CrossVars {
			if cv == sp.Result {
				continue // already stored above
			}
			// Skip stack alloc cross-vars; they are handled separately.
			if alloc, ok := g.isStackAllocCrossVar(cv); ok {
				_ = alloc
				continue
			}
			idx := g.getCrossVarFieldIndex(cv)
			if idx < 0 {
				continue
			}
			fieldPtr := b.FieldAddr(statePtr, idx)
			val := g.compileValue(b, cv)
			b.Store(fieldPtr, val)
		}

		// Reset the sub-future pointer so subsequent iterations re-create the
		// awaited future instead of polling a finished one.
		b.Store(subFutFieldPtr, g.prog.Nil(subFutPtrVal.Type))

		g.flushStackAllocState(b, statePtr)

		// Update state to next
		nextState := uint64(stateIdx + 1)
		stateFieldPtr := b.FieldAddr(statePtr, 0)
		b.Store(stateFieldPtr, g.prog.IntVal(nextState, int8Type))

		// Jump to next state block to continue execution in same poll
		g.emitPullDebugState(b, g.prog.IntVal(uint64(stateIdx), g.prog.Int()), "ready", true, false)
		if stateIdx+1 < len(g.sm.States) {
			b.Jump(poll.Block(stateIdx + 2)) // +1 for 0-indexed, +1 because block 0 is entry
		} else {
			// No more states - this shouldn't happen for suspend states
			g.flushStackAllocState(b, statePtr)
			b.Return(g.createZeroPoll())
		}
		return
	}

	// Intermediate state without suspend.
	_, returned := g.compileStateInstructions(b, state, statePtr)
	if returned {
		return
	}
	g.flushStackAllocState(b, statePtr)
	nextStateIdx := stateIdx + 1
	hasNext := nextStateIdx < len(g.sm.States)
	nextStateSameBlock := hasNext && state.Block != nil && g.sm.States[nextStateIdx].Block == state.Block

	if nextStateSameBlock {
		// Still executing the same SSA block (e.g., continuation after suspend).
		nextState := uint64(nextStateIdx)
		stateFieldPtr := b.FieldAddr(statePtr, 0)
		b.Store(stateFieldPtr, g.prog.IntVal(nextState, int8Type))
		b.Jump(poll.Block(nextStateIdx + 1))
		return
	}

	// Otherwise, branch according to the SSA terminator.
	terminator := state.Terminator()
	switch term := terminator.(type) {
	case *ssa.If:
		if state.Block == nil || len(state.Block.Succs) != 2 {
			// Fallback to sequential execution if block metadata is missing.
			break
		}
		cond := g.compileValue(b, term.Cond)
		trueBlockSSA := state.Block.Succs[0]
		falseBlockSSA := state.Block.Succs[1]
		trueIdx := g.stateIndexForBlock(trueBlockSSA)
		falseIdx := g.stateIndexForBlock(falseBlockSSA)
		g.branchToState(b, poll, statePtr, cond, state.Block, trueBlockSSA, falseBlockSSA, trueIdx, falseIdx, int8Type)
		return
	case *ssa.Jump:
		if state.Block == nil || len(state.Block.Succs) == 0 {
			break
		}
		targetBlock := state.Block.Succs[0]
		targetIdx := g.stateIndexForBlock(targetBlock)
		g.setStateAndJump(b, poll, statePtr, state.Block, targetBlock, targetIdx, int8Type)
		return
	}

	// Fallback: behave like original sequential transition.
	if hasNext {
		targetBlock := g.sm.States[nextStateIdx].Block
		g.setStateAndJump(b, poll, statePtr, state.Block, targetBlock, nextStateIdx, int8Type)
		return
	}

	// No next state: return zero Poll.
	g.flushStackAllocState(b, statePtr)
	b.Return(g.createZeroPoll())
}

func (g *LLSSACodeGen) prepareStackAllocas(poll llssa.Function) {
	// Reset cache for the current Poll generation.
	g.stackAllocPtrs = make(map[*ssa.Alloc]llssa.Expr)
	entryBuilder := poll.NewBuilder()
	entryBuilder.SetBlock(poll.Block(0))

	for _, state := range g.sm.States {
		for _, instr := range state.Instructions {
			alloc, ok := instr.(*ssa.Alloc)
			if !ok || alloc.Heap {
				continue
			}
			g.ensureEntryAlloc(entryBuilder, alloc)
		}
	}
}

func (g *LLSSACodeGen) stackAllocPtr(alloc *ssa.Alloc) llssa.Expr {
	if ptr, ok := g.stackAllocPtrs[alloc]; ok {
		return ptr
	}
	return llssa.Expr{}
}

func (g *LLSSACodeGen) isStackAllocCrossVar(v ssa.Value) (*ssa.Alloc, bool) {
	alloc, ok := v.(*ssa.Alloc)
	if !ok {
		return nil, false
	}
	_, ok = g.stackAllocCrossVars[alloc]
	return alloc, ok
}

// valueBlock returns the defining basic block of an SSA value if it is an instruction.
func (g *LLSSACodeGen) valueBlock(v ssa.Value) *ssa.BasicBlock {
	if instr, ok := v.(ssa.Instruction); ok {
		return instr.Block()
	}
	return nil
}

// freeVarIndex returns the position of a free variable within its parent
// function's FreeVars slice. Returns -1 if not found (should not happen).
func (g *LLSSACodeGen) freeVarIndex(fv *ssa.FreeVar) int {
	if fv == nil || fv.Parent() == nil {
		return -1
	}
	for i, cand := range fv.Parent().FreeVars {
		if cand == fv {
			return i
		}
	}
	return -1
}

func (g *LLSSACodeGen) restoreStackAllocState(b llssa.Builder, statePtr llssa.Expr) {
	if len(g.stackAllocCrossVars) == 0 {
		return
	}
	for alloc := range g.stackAllocCrossVars {
		idx := g.getCrossVarFieldIndex(alloc)
		if idx < 0 {
			continue
		}
		ptr := g.stackAllocPtr(alloc)
		if ptr.IsNil() {
			continue
		}
		fieldPtr := b.FieldAddr(statePtr, idx)
		val := b.Load(fieldPtr)
		b.Store(ptr, val)
		if g.registerValue != nil {
			g.registerValue(alloc, ptr)
		}
	}
}

func (g *LLSSACodeGen) flushStackAllocState(b llssa.Builder, statePtr llssa.Expr) {
	if len(g.stackAllocCrossVars) == 0 {
		return
	}
	for alloc := range g.stackAllocCrossVars {
		idx := g.getCrossVarFieldIndex(alloc)
		if idx < 0 {
			continue
		}
		ptr := g.stackAllocPtr(alloc)
		if ptr.IsNil() {
			continue
		}
		fieldPtr := b.FieldAddr(statePtr, idx)
		val := b.Load(ptr)
		b.Store(fieldPtr, val)
	}
}

func (g *LLSSACodeGen) ensureEntryAlloc(b llssa.Builder, alloc *ssa.Alloc) llssa.Expr {
	if ptr, ok := g.stackAllocPtrs[alloc]; ok {
		return ptr
	}
	tptr, ok := alloc.Type().(*types.Pointer)
	if !ok {
		return llssa.Expr{}
	}
	elem := g.prog.Type(tptr.Elem(), llssa.InGo)
	ptr := b.Alloc(elem, false)
	g.stackAllocPtrs[alloc] = ptr
	if g.registerValue != nil {
		g.registerValue(alloc, ptr)
	}
	return ptr
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
	paramTuple := g.signatureWithCtx(fn.Signature).Params()
	ctxOffset := 0
	if g.closureCtxParam() != nil {
		ctxOffset = 1
	}
	for i := 0; i < paramTuple.Len(); i++ {
		fieldPtr := b.FieldAddr(statePtr, fieldIdx)
		loaded := b.Load(fieldPtr)
		if i >= ctxOffset {
			param := fn.Params[i-ctxOffset]
			valueCache[param] = loaded
			if g.registerValue != nil {
				g.registerValue(param, loaded)
			}
		}
		fieldIdx++
	}

	// Reload cross-suspend variables for the same reason.
	for _, cross := range g.sm.CrossVars {
		if !g.shouldPreloadCrossVar(cross, state.Block) {
			fieldIdx++
			continue
		}
		fieldPtr := b.FieldAddr(statePtr, fieldIdx)
		if alloc, ok := g.isStackAllocCrossVar(cross); ok {
			ptr := g.stackAllocPtr(alloc)
			if ptr.IsNil() {
				ptr = g.ensureEntryAlloc(b, alloc)
			}
			if !ptr.IsNil() {
				val := b.Load(fieldPtr)
				b.Store(ptr, val)
				valueCache[cross] = ptr
				if g.registerValue != nil {
					g.registerValue(cross, ptr)
				}
			}
		} else {
			loaded := b.Load(fieldPtr)
			valueCache[cross] = loaded
			if g.registerValue != nil {
				g.registerValue(cross, loaded)
			}
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
	if ptr, ok := g.stackAllocPtrs[alloc]; ok {
		return ptr
	}
	tptr, ok := alloc.Type().(*types.Pointer)
	if !ok {
		return llssa.Expr{}
	}
	elem := g.prog.Type(tptr.Elem(), llssa.InGo)
	if alloc.Heap {
		if g.isLoopAlloc(alloc) {
			ptr := b.Alloc(elem, true)
			if g.registerValue != nil {
				g.registerValue(alloc, ptr)
			}
			if idx := g.getCrossVarFieldIndex(alloc); idx >= 0 {
				if _, isStack := g.stackAllocCrossVars[alloc]; isStack {
					return ptr
				}
				fieldPtr := b.FieldAddr(statePtr, idx)
				b.Store(fieldPtr, ptr)
			}
			return ptr
		}
		if idx := g.getCrossVarFieldIndex(alloc); idx >= 0 {
			fieldPtr := b.FieldAddr(statePtr, idx)
			existing := b.Load(fieldPtr)
			nilVal := g.prog.Nil(existing.Type)
			cond := b.BinOp(token.EQL, existing, nilVal)
			thenBlock := b.Func.MakeBlock()
			elseBlock := b.Func.MakeBlock()
			contBlock := b.Func.MakeBlock()
			b.If(cond, thenBlock, elseBlock)

			b.SetBlock(thenBlock)
			newPtr := b.Alloc(elem, true)
			b.Store(fieldPtr, newPtr)
			b.Jump(contBlock)

			b.SetBlock(elseBlock)
			b.Jump(contBlock)

			b.SetBlock(contBlock)
			ptr := b.Load(fieldPtr)
			if g.registerValue != nil {
				g.registerValue(alloc, ptr)
			}
			return ptr
		}
	}
	ptr := b.Alloc(elem, alloc.Heap)
	if g.registerValue != nil {
		g.registerValue(alloc, ptr)
	}
	if idx := g.getCrossVarFieldIndex(alloc); idx >= 0 {
		if _, isStack := g.stackAllocCrossVars[alloc]; isStack {
			return ptr
		}
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
		if alloc, ok := store.Addr.(*ssa.Alloc); ok && alloc.Heap {
			ptr := g.ensureAllocPtr(b, statePtr, alloc)
			if ptr.IsNil() {
				continue
			}
			b.Store(ptr, value)
			continue
		}
		idx := g.getCrossVarFieldIndex(store.Addr)
		if idx < 0 {
			continue
		}
		if alloc, ok := g.isStackAllocCrossVar(store.Addr); ok {
			ptr := g.stackAllocPtr(alloc)
			if ptr.IsNil() {
				ptr = g.ensureEntryAlloc(b, alloc)
			}
			if ptr.IsNil() {
				continue
			}
			b.Store(ptr, value)
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

func (g *LLSSACodeGen) storePhiValues(
	b llssa.Builder,
	statePtr llssa.Expr,
	fromBlock *ssa.BasicBlock,
	toBlock *ssa.BasicBlock,
) {
	if fromBlock == nil || toBlock == nil {
		return
	}
	for _, instr := range toBlock.Instrs {
		phi, ok := instr.(*ssa.Phi)
		if !ok {
			break
		}
		fieldIdx := g.getCrossVarFieldIndex(phi)
		if fieldIdx < 0 {
			continue
		}
		incomingIdx := -1
		for i, pred := range toBlock.Preds {
			if pred == fromBlock {
				incomingIdx = i
				break
			}
		}
		if incomingIdx < 0 || incomingIdx >= len(phi.Edges) {
			// DEBUG: Log when no matching predecessor found
			debugf("[storePhiValues] DEBUG: No matching pred for phi %v: fromBlock=%v (idx=%d), toBlock=%v, preds=%v",
				phi.Name(), fromBlock.Index, fromBlock.Index, toBlock.Index, func() []int {
					var indices []int
					for _, p := range toBlock.Preds {
						indices = append(indices, p.Index)
					}
					return indices
				}())
			continue
		}
		incoming := phi.Edges[incomingIdx]
		if incoming == nil {
			continue
		}
		// DEBUG: Log what we're storing
		debugf("[storePhiValues] DEBUG: Storing phi %v: fromBlock=%d, toBlock=%d, incomingIdx=%d, edge=%v (type=%T) to field %d",
			phi.Name(), fromBlock.Index, toBlock.Index, incomingIdx, incoming, incoming, fieldIdx)

		// DEBUG: If incoming is a BinOp, log its operands
		if binop, ok := incoming.(*ssa.BinOp); ok {
			debugf("[storePhiValues] DEBUG: BinOp %v: X=%v (type=%T), Y=%v", binop.Name(), binop.X, binop.X, binop.Y)
		}

		var val llssa.Expr
		if fieldIdxIncoming := g.getCrossVarFieldIndex(incoming); fieldIdxIncoming >= 0 {
			if alloc, ok := g.isStackAllocCrossVar(incoming); ok {
				ptr := g.stackAllocPtr(alloc)
				if ptr.IsNil() {
					ptr = g.ensureEntryAlloc(b, alloc)
				}
				if !ptr.IsNil() {
					val = b.Load(ptr)
				}
			} else {
				fieldPtrIncoming := b.FieldAddr(statePtr, fieldIdxIncoming)
				val = b.Load(fieldPtrIncoming)
			}
		}
		if val.IsNil() {
			val = g.compileValue(b, incoming)
		}

		// DEBUG: Log the compiled value
		debugf("[storePhiValues] DEBUG: Compiled %v to LLVM value (fieldIdx=%d)", incoming, fieldIdx)

		fieldPtr := b.FieldAddr(statePtr, fieldIdx)
		b.Store(fieldPtr, val)
		g.cacheValueMapping(phi, val)
	}
}

func (g *LLSSACodeGen) storeResultValue(b llssa.Builder, statePtr llssa.Expr, value llssa.Expr) {
	if g.resultFieldIndex < 0 || value.IsNil() {
		return
	}
	fieldPtr := b.FieldAddr(statePtr, g.resultFieldIndex)
	b.Store(fieldPtr, value)
}

func (g *LLSSACodeGen) loadResultValue(b llssa.Builder, statePtr llssa.Expr) llssa.Expr {
	if g.resultFieldIndex < 0 {
		return llssa.Expr{}
	}
	fieldPtr := b.FieldAddr(statePtr, g.resultFieldIndex)
	return b.Load(fieldPtr)
}

func (g *LLSSACodeGen) emitPullDebugState(b llssa.Builder, state llssa.Expr, phase string, suspend bool, terminal bool) {
	if !debugLog {
		return
	}
	asyncPkg := types.NewPackage("github.com/goplus/llgo/async", "async")
	sig := types.NewSignatureType(
		nil, nil, nil,
		types.NewTuple(
			types.NewVar(0, nil, "funcName", types.Typ[types.String]),
			types.NewVar(0, nil, "state", types.Typ[types.Int]),
			types.NewVar(0, nil, "phase", types.Typ[types.String]),
			types.NewVar(0, nil, "suspend", types.Typ[types.Bool]),
			types.NewVar(0, nil, "terminal", types.Typ[types.Bool]),
		),
		nil, false,
	)
	fnName := llssa.FuncName(asyncPkg, "PullDebugState", nil, false)
	debugFunc := g.pkg.NewFunc(fnName, sig, llssa.InGo)

	funcName := b.Str(g.sm.Original.Name())
	phaseVal := b.Str(phase)
	stateVal := state
	if state.IsNil() {
		stateVal = g.prog.IntVal(0, g.prog.Int())
	} else if state.Type != g.prog.Int() {
		// 仅在类型匹配时记录状态值，否则用0占位，避免调试转换引发panic
		stateVal = g.prog.IntVal(0, g.prog.Int())
	}
	suspendVal := g.prog.BoolVal(suspend)
	terminalVal := g.prog.BoolVal(terminal)
	b.Call(debugFunc.Expr, funcName, stateVal, phaseVal, suspendVal, terminalVal)
}

func (g *LLSSACodeGen) stateIndexForBlock(block *ssa.BasicBlock) int {
	if block == nil {
		return -1
	}
	if idx, ok := g.sm.BlockEntries[block]; ok {
		return idx
	}
	return -1
}

func (g *LLSSACodeGen) setStateAndJump(
	b llssa.Builder,
	poll llssa.Function,
	statePtr llssa.Expr,
	fromBlock *ssa.BasicBlock,
	targetBlock *ssa.BasicBlock,
	targetIdx int,
	int8Type llssa.Type,
) {
	if targetIdx < 0 {
		// Shouldn't happen, but return zero Poll to avoid invalid state
		g.flushStackAllocState(b, statePtr)
		b.Return(g.createZeroPoll())
		return
	}
	g.storePhiValues(b, statePtr, fromBlock, targetBlock)
	// Store crossVars that the target state needs but are defined in fromBlock.
	// This is critical for map iteration: the Extract from MapIterNext is defined
	// in the loop head but used in the loop body. We must store it before
	// transitioning to avoid re-executing MapIterNext.
	g.storeCrossVarsForNextState(b, statePtr, fromBlock, targetBlock, targetIdx)
	g.flushStackAllocState(b, statePtr)
	stateFieldPtr := b.FieldAddr(statePtr, 0)
	b.Store(stateFieldPtr, g.prog.IntVal(uint64(targetIdx), int8Type))
	b.Jump(poll.Block(targetIdx + 1))
}

// storeCrossVarsForNextState pre-computes and stores crossVars that the target
// state will need but are defined in the fromBlock. This prevents re-execution
// of instructions like MapIterNext when the target state's _init path runs.
func (g *LLSSACodeGen) storeCrossVarsForNextState(
	b llssa.Builder,
	statePtr llssa.Expr,
	fromBlock *ssa.BasicBlock,
	targetBlock *ssa.BasicBlock,
	targetIdx int,
) {
	if fromBlock == nil || targetBlock == nil || targetIdx < 0 || targetIdx >= len(g.sm.States) {
		return
	}

	debugf("[storeCrossVarsForNextState] %s: from block %d to state %d, crossVars count: %d", g.sm.Original.Name(), fromBlock.Index, targetIdx, len(g.sm.CrossVars))

	// Store ALL crossVars defined in fromBlock before state transition.
	// This is a "live-out" storage strategy: any value defined in this block
	// that might be needed by successor blocks (directly or indirectly) must
	// be persisted. This handles cases like:
	// - Map range: extract from MapIterNext used as function argument
	// - Channel range: similar pattern
	// - Any block-local value with indirect successor usage
	for _, cv := range g.sm.CrossVars {
		// Skip phi values (handled separately by storePhiValues)
		if _, isPhi := cv.(*ssa.Phi); isPhi {
			continue
		}

		// Get the block where this crossVar is defined
		defBlock := g.valueBlock(cv)

		// Special handling for Extract: if the Extract's tuple source is defined
		// in fromBlock, we should compute and store the Extract value now, even
		// if the Extract instruction itself is in a different block.
		// This is critical for map iteration: MapIterNext (tuple) is in loop head,
		// but extract #2 (value) may be in loop body. We must store the extracted
		// value before transitioning.
		if ext, isExtract := cv.(*ssa.Extract); isExtract {
			tupleDefBlock := g.valueBlock(ext.Tuple)
			debugf("[storeCrossVarsForNextState] Extract %v: defBlock=%v, tupleDefBlock=%v, fromBlock=%d",
				cv, defBlock, tupleDefBlock, fromBlock.Index)
			if tupleDefBlock != nil && tupleDefBlock == fromBlock {
				// Tuple source is in current block, compute and store the Extract
				fieldIdx := g.getCrossVarFieldIndex(cv)
				if fieldIdx >= 0 {
					// Get the fresh tuple value (just computed, not cached)
					tupleVal := g.compileValue(b, ext.Tuple)
					if !tupleVal.IsNil() {
						// Extract the value directly from the tuple
						val := b.Extract(tupleVal, ext.Index)
						debugf("[storeCrossVarsForNextState] Storing Extract %v to field %d (fresh extract from tuple in block %d)", cv, fieldIdx, fromBlock.Index)
						fieldPtr := b.FieldAddr(statePtr, fieldIdx)
						b.Store(fieldPtr, val)
						g.cacheValueMapping(cv, val) // Cache the fresh value
					}
				}
			}
			continue // Don't process Extract further in normal path
		}

		if defBlock == nil || defBlock != fromBlock {
			continue
		}

		// Get the field index for this crossVar
		fieldIdx := g.getCrossVarFieldIndex(cv)
		if fieldIdx < 0 {
			continue
		}

		// Compile and store the value
		val := g.compileValue(b, cv)
		if !val.IsNil() {
			debugf("[storeCrossVarsForNextState] Storing %v to field %d", cv, fieldIdx)
			fieldPtr := b.FieldAddr(statePtr, fieldIdx)
			b.Store(fieldPtr, val)
			g.cacheValueMapping(cv, val)
		}
	}
}

// instructionUses checks if an instruction uses a specific SSA value
func (g *LLSSACodeGen) instructionUses(instr ssa.Instruction, v ssa.Value) bool {
	for _, op := range instr.Operands(nil) {
		if op != nil && *op == v {
			return true
		}
	}
	// For Extract, check if the instruction depends on its tuple
	if ext, isExtract := v.(*ssa.Extract); isExtract {
		for _, op := range instr.Operands(nil) {
			if op != nil && *op == ext.Tuple {
				return true
			}
		}
	}
	return false
}

func (g *LLSSACodeGen) branchToState(
	b llssa.Builder,
	poll llssa.Function,
	statePtr llssa.Expr,
	cond llssa.Expr,
	fromBlock *ssa.BasicBlock,
	trueBlockSSA *ssa.BasicBlock,
	falseBlockSSA *ssa.BasicBlock,
	trueIdx int,
	falseIdx int,
	int8Type llssa.Type,
) {
	trueBlock := poll.MakeNamedBlock(fmt.Sprintf("%s_state_%02d_true", g.sm.Original.Name(), fromBlock.Index))
	falseBlock := poll.MakeNamedBlock(fmt.Sprintf("%s_state_%02d_false", g.sm.Original.Name(), fromBlock.Index))
	b.If(cond, trueBlock, falseBlock)

	b.SetBlock(trueBlock)
	g.setStateAndJump(b, poll, statePtr, fromBlock, trueBlockSSA, trueIdx, int8Type)

	b.SetBlock(falseBlock)
	g.setStateAndJump(b, poll, statePtr, fromBlock, falseBlockSSA, falseIdx, int8Type)
}

// compileStateInstructions compiles the SSA instructions in a state.
// It skips instructions that are:
// - The suspend point call itself (handled separately)
// - Alloc+Store pairs for heap-escaped params (handled by replayAllocStores)
// - Return instructions (handled by terminal state logic)
// It returns (finalValue, returned) where returned indicates the builder already emitted a return.
func (g *LLSSACodeGen) compileStateInstructions(b llssa.Builder, state *State, statePtr llssa.Expr) (llssa.Expr, bool) {
	var finalValue llssa.Expr

	for _, instr := range state.Instructions {
		// Skip the suspend point call itself - it's handled separately
		if state.SuspendPoint != nil && instr == state.SuspendPoint.Call {
			continue
		}

		// Skip Return instructions for terminal states
		if _, isReturn := instr.(*ssa.Return); isReturn {
			continue
		}

		// Capture async.Return(value) so we can materialize Poll[T] directly.
		if callInstr, ok := instr.(*ssa.Call); ok {
			if g.isAsyncReturnCall(callInstr) && len(callInstr.Call.Args) == 1 {
				debugf("[Pull Model] intercept async.Return in %s", g.sm.Original.Name())
				arg := callInstr.Call.Args[0]
				if fieldIdx := g.getCrossVarFieldIndex(arg); fieldIdx >= 0 {
					fieldPtr := b.FieldAddr(statePtr, fieldIdx)
					finalValue = b.Load(fieldPtr)
				} else {
					finalValue = g.compileValue(b, arg)
				}
				continue
			}
		}

		// Branch instructions are handled explicitly when wiring state transitions.
		if _, isIf := instr.(*ssa.If); isIf {
			continue
		}
		if _, isJump := instr.(*ssa.Jump); isJump {
			continue
		}
		if _, isPhi := instr.(*ssa.Phi); isPhi {
			// Phi nodes are handled by mapping cross-vars to state fields.
			continue
		}

		// Skip Alloc instructions - storage is handled up front (stack or heap)
		if _, isAlloc := instr.(*ssa.Alloc); isAlloc {
			continue
		}

		// Handle Store to Alloc (heap or stack)
		if store, isStore := instr.(*ssa.Store); isStore {
			if alloc, ok := store.Addr.(*ssa.Alloc); ok {
				ptr := g.ensureAllocPtr(b, statePtr, alloc)
				if ptr.IsNil() {
					continue
				}
				val := g.compileValue(b, store.Val)
				if val.IsNil() {
					continue
				}
				b.Store(ptr, val)
				continue
			}
		}

		// If this instruction produces a cross-var value, compute and store it
		// into the state struct so subsequent states can reload it.
		if valInstr, ok := instr.(ssa.Value); ok {
			if fieldIdx := g.getCrossVarFieldIndex(valInstr); fieldIdx >= 0 {
				val := g.compileValue(b, valInstr)
				if !val.IsNil() {
					fieldPtr := b.FieldAddr(statePtr, fieldIdx)
					b.Store(fieldPtr, val)
					g.cacheValueMapping(valInstr, val)
					continue
				}
			}
		}

		// Handle defer specially for pull model - use persistent defer list
		// instead of setjmp-based implementation
		if deferInstr, isDefer := instr.(*ssa.Defer); isDefer {
			g.compileDeferForPullModel(b, statePtr, deferInstr)
			continue
		}

		// Handle panic specially - set isPanicking flag and start defer unwinding
		if panicInstr, isPanic := instr.(*ssa.Panic); isPanic {
			g.compilePanicForPullModel(b, statePtr, panicInstr)
			return finalValue, true
		}

		// Handle RunDefers - execute stored defer list
		if _, isRunDefers := instr.(*ssa.RunDefers); isRunDefers {
			g.compileRunDefersForPullModel(b, statePtr)
			continue
		}

		// Compile all other instructions (like fmt.Printf, BinOp, etc.)
		if g.compileInstr != nil {
			g.compileInstr(b, instr)
		}
	}

	return finalValue, false
}

func (g *LLSSACodeGen) isAsyncReturnCall(callInstr *ssa.Call) bool {
	if callInstr == nil || callInstr.Call.IsInvoke() {
		return false
	}
	callee := callInstr.Call.StaticCallee()
	if callee == nil {
		return false
	}
	fullName := callee.String()
	if strings.HasPrefix(fullName, FuturePkgPath+".Return") {
		return true
	}
	if callee.Pkg != nil && callee.Pkg.Pkg != nil && callee.Pkg.Pkg.Path() == FuturePkgPath {
		name := callee.Name()
		return name == "Return" || strings.HasPrefix(name, "Return[")
	}
	return false
}

// GenerateStateMachine is the main entry point called from compile.go.
// It performs the complete transformation from SSA function to state machine.
func GenerateStateMachine(
	prog llssa.Program,
	pkg llssa.Package,
	ssaPkg *ssa.Package,
	fn *ssa.Function,
) error {
	return GenerateStateMachineWithCallback(prog, pkg, ssaPkg, fn, nil, nil, nil, nil)
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
	clearCacheExcept ClearCacheExceptFunc,
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
	if clearCacheExcept != nil {
		codegen.SetClearCacheExcept(clearCacheExcept)
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
func (g *LLSSACodeGen) returnReadyPoll(b llssa.Builder, value llssa.Expr) {
	trueVal := g.prog.BoolVal(true)
	zeroPoll := g.createZeroPoll()

	// Ensure the payload matches the Poll value field type.
	if value.IsNil() {
		value = b.Field(zeroPoll, 1)
	}

	fields := []llssa.Expr{trueVal, value}

	// Optional err field (async.Poll includes err any). When using the fallback
	// anonymous struct there are only two fields, so guard the append.
	if st, ok := g.pollLLType.RawType().Underlying().(*types.Struct); ok && st.NumFields() > 2 {
		fields = append(fields, b.Field(zeroPoll, 2))
	}

	pollVal := b.AggregateExpr(g.pollLLType, fields...)
	b.Return(pollVal)
}

// returnErrorPoll generates Poll[T]{ready:true, err:panicVal}.
func (g *LLSSACodeGen) returnErrorPoll(b llssa.Builder, panicVal llssa.Expr) {
	trueVal := g.prog.BoolVal(true)
	zeroPoll := g.createZeroPoll()

	// value zero from zeroPoll
	value := b.Field(zeroPoll, 1)
	fields := []llssa.Expr{trueVal, value}

	// err field if present
	if st, ok := g.pollLLType.RawType().Underlying().(*types.Struct); ok && st.NumFields() > 2 {
		fields = append(fields, panicVal)
	}

	pollVal := b.AggregateExpr(g.pollLLType, fields...)
	b.Return(pollVal)
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
	origSig := g.signatureWithCtx(fn.Signature)

	// Create new signature with concrete state pointer return type
	newResults := types.NewTuple(types.NewVar(0, nil, "", statePtrType))
	concreteSig := types.NewSignatureType(nil, nil, nil, origSig.Params(), newResults, origSig.Variadic())

	// Generate $Concrete version (returns *State)
	// This is used for .Await() optimization where we want concrete type
	concreteName := llssa.FuncName(fn.Pkg.Pkg, fn.Name()+"$Concrete", nil, false)
	concreteWrapper := g.pkg.NewFunc(concreteName, concreteSig, llssa.InGo)
	g.generateConcreteWrapperBody(concreteWrapper, stateType, fn)
	debugf("[Pull Model] Generated $Concrete wrapper for %s", fn.Name())

	// Generate original name version that returns Future[T] interface
	// This matches the source code signature and uses MakeInterface for conversion
	fullName := llssa.FuncName(fn.Pkg.Pkg, fn.Name(), nil, false)
	ifaceWrapper := g.pkg.NewFunc(fullName, origSig, llssa.InGo)
	g.generateInterfaceWrapperBody(ifaceWrapper, concreteWrapper, fn)
	debugf("[Pull Model] Generated interface wrapper for %s", fn.Name())

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

	// Copy parameters (including __llgo_ctx when present) to state struct fields
	fieldIdx := 1 // Start after state field
	paramTuple := g.signatureWithCtx(fn.Signature).Params()
	for i := 0; i < paramTuple.Len(); i++ {
		paramVal := wrapper.Param(i)
		fieldPtr := b.FieldAddr(statePtr, fieldIdx)
		b.Store(fieldPtr, paramVal)
		fieldIdx++
	}

	// Initialize cross-var fields. For free vars, store the captured value from __llgo_ctx
	// so they are non-nil when first resumed. Others default to zero.
	var ctxParam llssa.Expr
	if g.closureCtxParam() != nil {
		ctxParam = wrapper.Param(0)
	}
	for _, v := range g.sm.CrossVars {
		fieldPtr := b.FieldAddr(statePtr, fieldIdx)
		fieldType := v.Type()

		// Special handling for Range: use unsafe.Pointer
		if _, isRange := v.(*ssa.Range); isRange {
			fieldType = types.Typ[types.UnsafePointer]
		}
		// Special handling for Next: use unsafe.Pointer
		if _, isNext := v.(*ssa.Next); isNext {
			fieldType = types.Typ[types.UnsafePointer]
		}

		stored := false
		if fv, ok := v.(*ssa.FreeVar); ok && !ctxParam.IsNil() {
			idx := g.freeVarIndex(fv)
			if idx >= 0 {
				fvPtr := b.FieldAddr(ctxParam, idx)
				fvVal := b.Load(fvPtr)
				b.Store(fieldPtr, fvVal)
				stored = true
			}
		}

		if !stored {
			if alloc, ok := g.isStackAllocCrossVar(v); ok {
				if tptr, ok := alloc.Type().(*types.Pointer); ok {
					fieldType = tptr.Elem()
				}
			}
			zeroVal := g.prog.Zero(g.prog.Type(fieldType, llssa.InGo))
			b.Store(fieldPtr, zeroVal)
		}
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

	// Gather parameters (include __llgo_ctx when present)
	paramTuple := g.signatureWithCtx(fn.Signature).Params()
	args := make([]llssa.Expr, paramTuple.Len())
	for i := 0; i < paramTuple.Len(); i++ {
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
