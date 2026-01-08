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

package ssa

import (
	"go/token"
	"go/types"
	"os"

	"github.com/goplus/llvm"
)

// -----------------------------------------------------------------------------
// LLVM Coroutine Mode
//
// The goroutine implementation can be switched between:
//   - pthread mode (default): uses pthread for goroutines
//   - llvm coroutine mode: uses LLVM coroutines for goroutines
//
// Set environment variable LLGO_CORO=1 to enable LLVM coroutine mode.
//
// In coroutine mode, functions have two versions:
//   foo      - Original function (synchronous, blocking)
//   foo$coro - Coroutine version (suspendable, returns handle)
// -----------------------------------------------------------------------------

const (
	// CoroSuffix is appended to function names for coroutine versions
	CoroSuffix = "$coro"

	// EnvLLGoCoro is the environment variable to enable LLVM coroutine mode
	EnvLLGoCoro = "LLGO_CORO"
)

// IsLLVMCoroMode returns true if LLVM coroutine mode is enabled.
// Check environment variable LLGO_CORO=1.
func IsLLVMCoroMode() bool {
	return os.Getenv(EnvLLGoCoro) == "1"
}

// CoroFunc holds the coroutine version of a function along with metadata
type CoroFunc struct {
	Fn       Function         // The coroutine function
	OrigName string           // Original function name (without $coro)
	OrigSig  *types.Signature // Original Go signature
}

// NewCoroFunc creates a coroutine version of a function.
// The coro version has a different signature: returns ptr (coroutine handle)
// instead of the original return type.
func (p Package) NewCoroFunc(name string, sig *types.Signature, bg Background) *CoroFunc {
	return p.NewCoroFuncEx(name, sig, bg, false)
}

// NewCoroFuncEx creates a new coroutine function with hasFreeVars flag.
func (p Package) NewCoroFuncEx(name string, sig *types.Signature, bg Background, hasFreeVars bool) *CoroFunc {
	coroName := name + CoroSuffix

	// Create coro signature: same params, but returns ptr (handle)
	coroSig := makeCoroSignature(sig, p.Prog)

	// Create the coroutine function
	coroFn := p.NewFuncEx(coroName, coroSig, bg, hasFreeVars, false)

	// Mark with presplitcoroutine attribute for LLVM CoroSplit pass
	// Must use enum attribute, not string attribute, for LLVM to recognize it
	kind := llvm.AttributeKindID("presplitcoroutine")
	coroFn.impl.AddFunctionAttr(
		p.mod.Context().CreateEnumAttribute(kind, 0),
	)

	return &CoroFunc{
		Fn:       coroFn,
		OrigName: name,
		OrigSig:  sig,
	}
}

// makeCoroSignature creates a coroutine signature from an original signature.
// Parameters are unchanged; return type becomes unsafe.Pointer (coroutine handle).
// Note: Type parameters are not copied - each generic instantiation gets its own $coro.
func makeCoroSignature(orig *types.Signature, prog Program) *types.Signature {
	params := orig.Params()

	// Return type: unsafe.Pointer (coroutine handle)
	ptrType := prog.VoidPtr().raw.Type
	results := types.NewTuple(types.NewParam(0, nil, "", ptrType))

	return types.NewSignatureType(
		orig.Recv(),
		nil, // No receiver type params - already instantiated
		nil, // No type params - already instantiated
		params,
		results,
		orig.Variadic(),
	)
}

// CoroName returns the coroutine version name for a function
func CoroName(name string) string {
	return name + CoroSuffix
}

// IsCoroName checks if a function name is a coroutine version
func IsCoroName(name string) bool {
	return len(name) > len(CoroSuffix) &&
		name[len(name)-len(CoroSuffix):] == CoroSuffix
}

// BaseNameFromCoro extracts the original function name from a coro name
func BaseNameFromCoro(name string) string {
	if IsCoroName(name) {
		return name[:len(name)-len(CoroSuffix)]
	}
	return name
}

// IsClosureName checks if a function name is a closure/anonymous function.
// Closure names have pattern like "pkg.funcName$1", "pkg.funcName$2", etc.
func IsClosureName(name string) bool {
	// Find the last '$' followed by digits
	for i := len(name) - 1; i >= 0; i-- {
		if name[i] == '$' {
			// Check if all remaining chars are digits
			if i+1 < len(name) {
				for j := i + 1; j < len(name); j++ {
					if name[j] < '0' || name[j] > '9' {
						return false
					}
				}
				return true
			}
			return false
		}
	}
	return false
}

// -----------------------------------------------------------------------------
// LLVM Coroutine Intrinsic Signatures
//
// These methods return Go type signatures for LLVM coroutine intrinsics.
// LLVM token type is represented as types.Invalid in Go since Go has no
// equivalent type. The actual LLVM token type is used in getCoroIntrinsic().
// -----------------------------------------------------------------------------

// tyCoroId returns the signature: func(i32, ptr, ptr, ptr) token
// declare token @llvm.coro.id(i32 <align>, ptr <promise>, ptr <coroaddr>, ptr <fnaddrs>)
func (p Program) tyCoroId() *types.Signature {
	if p.coroIdTy == nil {
		i32 := types.NewParam(token.NoPos, nil, "", p.Int32().raw.Type)
		ptr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		params := types.NewTuple(i32, ptr, ptr, ptr)
		tokenParam := types.NewParam(token.NoPos, nil, "", p.Token().raw.Type)
		results := types.NewTuple(tokenParam)
		p.coroIdTy = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.coroIdTy
}

// tyCoroBegin returns the signature: func(token, ptr) ptr
// declare ptr @llvm.coro.begin(token <id>, ptr <mem>)
func (p Program) tyCoroBegin() *types.Signature {
	if p.coroBeginTy == nil {
		tokenParam := types.NewParam(token.NoPos, nil, "", p.Token().raw.Type)
		ptr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		params := types.NewTuple(tokenParam, ptr)
		results := types.NewTuple(ptr)
		p.coroBeginTy = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.coroBeginTy
}

// tyCoroSuspend returns the signature: func(token, bool) int8
// declare i8 @llvm.coro.suspend(token <save>, i1 <final>)
func (p Program) tyCoroSuspend() *types.Signature {
	if p.coroSuspendTy == nil {
		tokenParam := types.NewParam(token.NoPos, nil, "", p.Token().raw.Type)
		boolParam := types.NewParam(token.NoPos, nil, "", p.Bool().raw.Type)
		params := types.NewTuple(tokenParam, boolParam)
		byteParam := types.NewParam(token.NoPos, nil, "", p.Byte().raw.Type)
		results := types.NewTuple(byteParam)
		p.coroSuspendTy = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.coroSuspendTy
}

// tyCoroEnd returns the signature: func(ptr, bool, token) bool
// declare i1 @llvm.coro.end(ptr <handle>, i1 <unwind>, token <result.token>)
func (p Program) tyCoroEnd() *types.Signature {
	if p.coroEndTy == nil {
		ptr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		boolParam := types.NewParam(token.NoPos, nil, "", p.Bool().raw.Type)
		tokenParam := types.NewParam(token.NoPos, nil, "", p.Token().raw.Type)
		params := types.NewTuple(ptr, boolParam, tokenParam)
		results := types.NewTuple(boolParam)
		p.coroEndTy = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.coroEndTy
}

// tyCoroResume returns the signature: func(ptr)
// declare void @llvm.coro.resume(ptr <handle>)
func (p Program) tyCoroResume() *types.Signature {
	if p.coroResumeTy == nil {
		ptr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		params := types.NewTuple(ptr)
		p.coroResumeTy = types.NewSignatureType(nil, nil, nil, params, nil, false)
	}
	return p.coroResumeTy
}

// tyCoroDestroy returns the signature: func(ptr)
// declare void @llvm.coro.destroy(ptr <handle>)
func (p Program) tyCoroDestroy() *types.Signature {
	if p.coroDestroyTy == nil {
		ptr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		params := types.NewTuple(ptr)
		p.coroDestroyTy = types.NewSignatureType(nil, nil, nil, params, nil, false)
	}
	return p.coroDestroyTy
}

// tyCoroSize returns the signature: func() int64
// declare i64 @llvm.coro.size.i64()
func (p Program) tyCoroSize() *types.Signature {
	if p.coroSizeTy == nil {
		i64 := types.NewParam(token.NoPos, nil, "", p.Int64().raw.Type)
		results := types.NewTuple(i64)
		p.coroSizeTy = types.NewSignatureType(nil, nil, nil, nil, results, false)
	}
	return p.coroSizeTy
}

// tyCoroAlloc returns the signature: func(token) bool
// declare i1 @llvm.coro.alloc(token <id>)
func (p Program) tyCoroAlloc() *types.Signature {
	if p.coroAllocTy == nil {
		tokenParam := types.NewParam(token.NoPos, nil, "", p.Token().raw.Type)
		params := types.NewTuple(tokenParam)
		boolParam := types.NewParam(token.NoPos, nil, "", p.Bool().raw.Type)
		results := types.NewTuple(boolParam)
		p.coroAllocTy = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.coroAllocTy
}

// tyCoroFree returns the signature: func(token, ptr) ptr
// declare ptr @llvm.coro.free(token <id>, ptr <handle>)
func (p Program) tyCoroFree() *types.Signature {
	if p.coroFreeTy == nil {
		tokenParam := types.NewParam(token.NoPos, nil, "", p.Token().raw.Type)
		ptr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		params := types.NewTuple(tokenParam, ptr)
		results := types.NewTuple(ptr)
		p.coroFreeTy = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.coroFreeTy
}

// -----------------------------------------------------------------------------
// Builder methods for coroutine intrinsics
//
// LLVM coroutine intrinsics use the special 'token' type which has no Go
// equivalent. We use llvm.AddFunction directly with llvm.FunctionType to
// properly declare these intrinsics with the correct types.
// -----------------------------------------------------------------------------

// getCoroIntrinsic gets or creates an LLVM coroutine intrinsic function
// with proper token types where required.
func (p Package) getCoroIntrinsic(name string) llvm.Value {
	ctx := p.mod.Context()
	fn := p.mod.NamedFunction(name)
	if !fn.IsNil() {
		return fn
	}

	// LLVM types
	tokenTy := ctx.TokenType()
	i1Ty := ctx.Int1Type()
	i8Ty := ctx.Int8Type()
	i32Ty := ctx.Int32Type()
	i64Ty := ctx.Int64Type()
	ptrTy := llvm.PointerType(i8Ty, 0)
	voidTy := ctx.VoidType()

	var fnTy llvm.Type
	switch name {
	case "llvm.coro.id":
		// declare token @llvm.coro.id(i32, ptr, ptr, ptr)
		fnTy = llvm.FunctionType(tokenTy, []llvm.Type{i32Ty, ptrTy, ptrTy, ptrTy}, false)
	case "llvm.coro.alloc":
		// declare i1 @llvm.coro.alloc(token)
		fnTy = llvm.FunctionType(i1Ty, []llvm.Type{tokenTy}, false)
	case "llvm.coro.begin":
		// declare ptr @llvm.coro.begin(token, ptr)
		fnTy = llvm.FunctionType(ptrTy, []llvm.Type{tokenTy, ptrTy}, false)
	case "llvm.coro.suspend":
		// declare i8 @llvm.coro.suspend(token, i1)
		fnTy = llvm.FunctionType(i8Ty, []llvm.Type{tokenTy, i1Ty}, false)
	case "llvm.coro.end":
		// declare i1 @llvm.coro.end(ptr, i1, token) - LLVM 19+
		fnTy = llvm.FunctionType(i1Ty, []llvm.Type{ptrTy, i1Ty, tokenTy}, false)
	case "llvm.coro.resume":
		// declare void @llvm.coro.resume(ptr)
		fnTy = llvm.FunctionType(voidTy, []llvm.Type{ptrTy}, false)
	case "llvm.coro.destroy":
		// declare void @llvm.coro.destroy(ptr)
		fnTy = llvm.FunctionType(voidTy, []llvm.Type{ptrTy}, false)
	case "llvm.coro.size.i64":
		// declare i64 @llvm.coro.size.i64()
		fnTy = llvm.FunctionType(i64Ty, nil, false)
	case "llvm.coro.free":
		// declare ptr @llvm.coro.free(token, ptr)
		fnTy = llvm.FunctionType(ptrTy, []llvm.Type{tokenTy, ptrTy}, false)
	case "llvm.coro.done":
		// declare i1 @llvm.coro.done(ptr)
		fnTy = llvm.FunctionType(i1Ty, []llvm.Type{ptrTy}, false)
	case "llvm.coro.promise":
		// declare ptr @llvm.coro.promise(ptr <handle>, i32 <alignment>, i1 <from>)
		fnTy = llvm.FunctionType(ptrTy, []llvm.Type{ptrTy, i32Ty, i1Ty}, false)
	default:
		panic("unknown coro intrinsic: " + name)
	}

	return llvm.AddFunction(p.mod, name, fnTy)
}

// CoroId calls llvm.coro.id intrinsic
// Returns a token identifying this coroutine
func (b Builder) CoroId(align, promise, coroaddr, fnaddrs Expr) Expr {
	fn := b.Pkg.getCoroIntrinsic("llvm.coro.id")
	ret := llvm.CreateCall(b.impl, fn.GlobalValueType(), fn,
		[]llvm.Value{align.impl, promise.impl, coroaddr.impl, fnaddrs.impl})
	// Return Token type (LLVM token, represented as types.Invalid in Go)
	return Expr{ret, b.Prog.Token()}
}

// CoroBegin calls llvm.coro.begin intrinsic
// Returns a coroutine handle
func (b Builder) CoroBegin(id, mem Expr) Expr {
	fn := b.Pkg.getCoroIntrinsic("llvm.coro.begin")
	ret := llvm.CreateCall(b.impl, fn.GlobalValueType(), fn,
		[]llvm.Value{id.impl, mem.impl})
	return Expr{ret, b.Prog.VoidPtr()}
}

// CoroSuspend calls llvm.coro.suspend intrinsic
// Returns: 0 = resumed, 1 = cleanup, -1 = final suspend
// save can be "none" token (use nil for none), final indicates if this is final suspend
func (b Builder) CoroSuspend(save, final Expr) Expr {
	fn := b.Pkg.getCoroIntrinsic("llvm.coro.suspend")
	// Use "token none" for save parameter
	noneToken := b.Prog.TokenNone()
	ret := llvm.CreateCall(b.impl, fn.GlobalValueType(), fn,
		[]llvm.Value{noneToken.impl, final.impl})
	return Expr{ret, b.Prog.Byte()}
}

// CoroEnd calls llvm.coro.end intrinsic
// LLVM 19+ requires a third parameter: token (use none for normal end)
func (b Builder) CoroEnd(handle, unwind Expr) Expr {
	fn := b.Pkg.getCoroIntrinsic("llvm.coro.end")
	// Use "token none" for the third parameter
	noneToken := b.Prog.TokenNone()
	ret := llvm.CreateCall(b.impl, fn.GlobalValueType(), fn,
		[]llvm.Value{handle.impl, unwind.impl, noneToken.impl})
	return Expr{ret, b.Prog.Bool()}
}

// CoroResume calls llvm.coro.resume intrinsic
func (b Builder) CoroResume(handle Expr) {
	fn := b.Pkg.getCoroIntrinsic("llvm.coro.resume")
	llvm.CreateCall(b.impl, fn.GlobalValueType(), fn, []llvm.Value{handle.impl})
}

// CoroDestroy calls llvm.coro.destroy intrinsic
func (b Builder) CoroDestroy(handle Expr) {
	fn := b.Pkg.getCoroIntrinsic("llvm.coro.destroy")
	llvm.CreateCall(b.impl, fn.GlobalValueType(), fn, []llvm.Value{handle.impl})
}

// CoroDone calls llvm.coro.done intrinsic
// Returns true if the coroutine is at its final suspend point
func (b Builder) CoroDone(handle Expr) Expr {
	fn := b.Pkg.getCoroIntrinsic("llvm.coro.done")
	ret := llvm.CreateCall(b.impl, fn.GlobalValueType(), fn, []llvm.Value{handle.impl})
	return Expr{ret, b.Prog.Bool()}
}

// CoroPromise calls llvm.coro.promise intrinsic
// Given a coroutine handle, returns a pointer to the promise.
// Given a promise pointer (from=true), returns the coroutine handle.
// alignment: the alignment of the promise in bytes
// from: if false, handle -> promise; if true, promise -> handle
func (b Builder) CoroPromise(handleOrPromise Expr, alignment int, from bool) Expr {
	fn := b.Pkg.getCoroIntrinsic("llvm.coro.promise")
	alignVal := b.Prog.IntVal(uint64(alignment), b.Prog.Int32())
	fromVal := b.Prog.BoolVal(from)
	ret := llvm.CreateCall(b.impl, fn.GlobalValueType(), fn,
		[]llvm.Value{handleOrPromise.impl, alignVal.impl, fromVal.impl})
	return Expr{ret, b.Prog.VoidPtr()}
}

// CoroSize calls llvm.coro.size.i64 intrinsic
// Returns the size of the coroutine frame
func (b Builder) CoroSize() Expr {
	fn := b.Pkg.getCoroIntrinsic("llvm.coro.size.i64")
	ret := llvm.CreateCall(b.impl, fn.GlobalValueType(), fn, nil)
	return Expr{ret, b.Prog.Int64()}
}

// CoroAlloc calls llvm.coro.alloc intrinsic
// Returns true if dynamic allocation is needed
func (b Builder) CoroAlloc(id Expr) Expr {
	fn := b.Pkg.getCoroIntrinsic("llvm.coro.alloc")
	ret := llvm.CreateCall(b.impl, fn.GlobalValueType(), fn, []llvm.Value{id.impl})
	return Expr{ret, b.Prog.Bool()}
}

// CoroFree calls llvm.coro.free intrinsic
// Returns pointer to free for coroutine frame
func (b Builder) CoroFree(id, handle Expr) Expr {
	fn := b.Pkg.getCoroIntrinsic("llvm.coro.free")
	ret := llvm.CreateCall(b.impl, fn.GlobalValueType(), fn,
		[]llvm.Value{id.impl, handle.impl})
	return Expr{ret, b.Prog.VoidPtr()}
}

// -----------------------------------------------------------------------------
// Coroutine Mode Register
//
// We use a callee-saved register (R12 on x86-64) to store the execution mode:
// - 0 = SYNC mode (synchronous, blocking calls)
// - 1 = CORO mode (coroutine, can suspend)
//
// Callee-saved registers are preserved across function calls, so the mode
// automatically propagates through the call chain without explicit passing.
// -----------------------------------------------------------------------------

const (
	CoroModeSync = 0 // Synchronous mode (blocking)
	CoroModeCoro = 1 // Coroutine mode (can suspend)
)

// SetCoroMode sets the coroutine mode register using inline assembly.
// On x86-64, we use R12 which is a callee-saved register.
func (b Builder) SetCoroMode(mode int) {
	prog := b.Prog
	arch := prog.target.GOARCH

	switch arch {
	case "amd64":
		// mov $mode, %r12
		var instruction string
		if mode == 0 {
			instruction = "xor %r12d, %r12d" // Efficient way to set to 0
		} else {
			instruction = "mov $$1, %r12d"
		}
		b.InlineAsm(instruction)
	default:
		// For other architectures, fall back to a global variable for now
		modeReg := b.Pkg.getCoroModeGlobal()
		val := prog.IntVal(uint64(mode), prog.Int64())
		b.Store(modeReg, val)
	}
}

// GetCoroMode gets the current coroutine mode register value.
// Returns the mode as an i64 value.
func (b Builder) GetCoroMode() Expr {
	prog := b.Prog
	arch := prog.target.GOARCH

	switch arch {
	case "amd64":
		// mov %r12, $0
		retType := prog.Int64()
		return b.InlineAsmFull("mov %r12, $0", "=r", retType, nil)
	default:
		// For other architectures, read from global variable
		modeReg := b.Pkg.getCoroModeGlobal()
		return b.Load(modeReg)
	}
}

// SetCoroModeExpr sets the coroutine mode register from an expression value.
// Used to restore a previously saved mode.
func (b Builder) SetCoroModeExpr(mode Expr) {
	prog := b.Prog
	arch := prog.target.GOARCH

	switch arch {
	case "amd64":
		// mov $0, %r12 (input is the mode value)
		b.InlineAsmFull("mov $0, %r12", "r", prog.Void(), []Expr{mode})
	default:
		// For other architectures, store to global variable
		modeReg := b.Pkg.getCoroModeGlobal()
		b.Store(modeReg, mode)
	}
}

// IsCoroMode checks if current mode is CORO (returns i1).
func (b Builder) IsCoroMode() Expr {
	mode := b.GetCoroMode()
	one := b.Prog.IntVal(CoroModeCoro, b.Prog.Int64())
	cmp := llvm.CreateICmp(b.impl, llvm.IntEQ, mode.impl, one.impl)
	return Expr{cmp, b.Prog.Bool()}
}

// getCoroModeGlobal returns a global variable for storing coro mode on
// architectures that don't support dedicated register usage.
func (p Package) getCoroModeGlobal() Expr {
	name := "__llgo_coro_mode"
	prog := p.Prog
	g := p.mod.NamedGlobal(name)
	if g.IsNil() {
		g = llvm.AddGlobal(p.mod, prog.tyInt64(), name)
		g.SetInitializer(llvm.ConstInt(prog.tyInt64(), 0, false))
		g.SetLinkage(llvm.CommonLinkage)
		g.SetThreadLocal(true) // Thread-local for proper multi-threading support
	}
	return Expr{g, prog.Pointer(prog.Int64())}
}

// coroSuspendYield performs a yield suspend point.
// This is a non-final suspend that allows the coroutine to be resumed.
// It calls llvm.coro.suspend with save=none, final=false.
func (b Builder) coroSuspendYield() {
	prog := b.Prog
	falseVal := prog.BoolVal(false)

	// Get suspend result: 0 = resumed, 1 = cleanup, -1 = final
	// Note: CoroSuspend always uses "token none" for save parameter
	result := b.CoroSuspend(Expr{}, falseVal)

	// For now, we assume the coroutine will always be resumed.
	// In a full implementation, we would branch on the result:
	// - 0: continue execution (resumed)
	// - 1: cleanup path
	// - -1: final suspend (should not happen here)
	_ = result
}

// -----------------------------------------------------------------------------
// Coroutine Function Structure
//
// A coroutine function has the following structure:
//
//   entry:
//     %id = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
//     %need.alloc = call i1 @llvm.coro.alloc(token %id)
//     br i1 %need.alloc, label %coro.alloc, label %coro.begin
//
//   coro.alloc:
//     %size = call i64 @llvm.coro.size.i64()
//     %mem = call ptr @malloc(i64 %size)
//     br label %coro.begin
//
//   coro.begin:
//     %phi.mem = phi ptr [null, %entry], [%mem, %coro.alloc]
//     %hdl = call ptr @llvm.coro.begin(token %id, ptr %phi.mem)
//     ; ... function body ...
//
//   coro.cleanup:
//     %mem.to.free = call ptr @llvm.coro.free(token %id, ptr %hdl)
//     call void @free(ptr %mem.to.free)
//     br label %coro.end
//
//   coro.end:
//     call i1 @llvm.coro.end(ptr %hdl, i1 false)
//     ret void
//
// -----------------------------------------------------------------------------

// CoroState holds the state needed for coroutine function generation
type CoroState struct {
	CoroId     Expr       // The coro.id token
	CoroHandle Expr       // The coro.begin handle
	ExitBlk    BasicBlock // The exit block (single final suspend point)
	CleanupBlk BasicBlock // The cleanup block
	EndBlk     BasicBlock // The end block
	// Promise support for return values
	Promise      Expr // The promise alloca (for return value storage)
	PromiseType  Type // The type of the promise (return type)
	PromiseAlign int  // Alignment of the promise
}

// CoroFuncPrologue generates the coroutine prologue at function entry.
// It creates the coro.id, allocates frame if needed, and calls coro.begin.
// After coro.begin, it jumps to bodyStartBlk where the function body begins.
// Returns the CoroState that must be used for epilogue.
//
// If retType is non-nil, a promise is allocated to store the return value.
// The promise can be accessed via CoroState.Promise after this call.
func (b Builder) CoroFuncPrologue(bodyStartBlk BasicBlock, retType Type) *CoroState {
	prog := b.Prog
	fn := b.Func

	// Create basic blocks for coroutine structure
	allocBlk := fn.MakeBlock()
	beginBlk := fn.MakeBlock()
	exitBlk := fn.MakeBlock()    // Single final suspend point
	cleanupBlk := fn.MakeBlock()
	endBlk := fn.MakeBlock()

	// Allocate promise if we have a return type
	var promise Expr
	var promiseAlign int
	zero := prog.IntVal(0, prog.Int32())
	null := prog.Nil(prog.VoidPtr())

	if retType == nil {
		// No return value, use null promise
		promise = null
		promiseAlign = 0
	} else {
		// Allocate promise for return value
		// Promise must be allocated before coro.id is called
		promise = b.AllocaT(retType)
		promiseAlign = 8 // Default alignment, should be computed from retType
	}

	// Entry block: call coro.id with promise
	coroId := b.CoroId(zero, promise, null, null)

	// Check if allocation is needed
	needAlloc := b.CoroAlloc(coroId)
	b.If(needAlloc, allocBlk, beginBlk)

	// coro.alloc block: allocate memory using C malloc
	// (LLVM coroutine frames need explicit memory management, not GC)
	b.SetBlock(allocBlk)
	size := b.CoroSize()
	// Convert i64 to uintptr for malloc compatibility
	sizeAsUintptr := b.Convert(prog.Uintptr(), size)
	mem := b.malloc(sizeAsUintptr)
	b.Jump(beginBlk)

	// coro.begin block: phi for memory, call coro.begin
	b.SetBlock(beginBlk)

	// Create phi for memory pointer
	memPhi := b.Phi(prog.VoidPtr())
	entryBlk := fn.Block(0) // entry block
	memPhi.AddIncoming(b, []BasicBlock{entryBlk, allocBlk}, func(i int, blk BasicBlock) Expr {
		if i == 0 {
			return null
		}
		return mem
	})

	coroHandle := b.CoroBegin(coroId, memPhi.Expr)

	// Jump to function body
	b.Jump(bodyStartBlk)

	return &CoroState{
		CoroId:       coroId,
		CoroHandle:   coroHandle,
		ExitBlk:      exitBlk,
		CleanupBlk:   cleanupBlk,
		EndBlk:       endBlk,
		Promise:      promise,
		PromiseType:  retType,
		PromiseAlign: promiseAlign,
	}
}

// CoroStoreResult stores a return value to the promise at the given field index.
// This should be called before jumping to ExitBlk in a return statement.
// Directly stores to the promise alloca - LLVM CoroSplit will relocate it to the frame.
//
// For single return value (fieldIndex=0, numResults=1): stores directly to promise
// For multiple return values: stores to the struct field at fieldIndex
func (b Builder) CoroStoreResult(state *CoroState, fieldIndex int, numResults int, result Expr) {
	if state.PromiseType == nil {
		return // No return value
	}
	if numResults == 1 {
		// Single return value: promise is direct type (e.g., i64), store directly
		b.Store(state.Promise, result)
	} else {
		// Multiple return values: promise is struct, use FieldAddr
		fieldPtr := b.FieldAddr(state.Promise, fieldIndex)
		b.Store(fieldPtr, result)
	}
}

// CoroLoadResult loads the return value from a completed coroutine's promise.
// This should be called after CoroAwaitWithSuspend when the coroutine is done.
// handle: the coroutine handle
// retType: the return type (to properly type the result)
// alignment: the promise alignment (typically 8)
func (b Builder) CoroLoadResult(handle Expr, retType Type, alignment int) Expr {
	// Get promise pointer from handle
	promisePtr := b.CoroPromise(handle, alignment, false)
	// Cast to proper pointer type and load
	typedPtr := Expr{promisePtr.impl, b.Prog.Pointer(retType)}
	return b.Load(typedPtr)
}

// CoroFuncEpilogue generates the coroutine epilogue (exit, cleanup and end blocks).
// This should be called after the function body is generated.
// All return statements in the function body should jump to ExitBlk.
func (b Builder) CoroFuncEpilogue(state *CoroState) {
	prog := b.Prog
	fn := b.Func

	// Generate exit block - single final suspend point
	b.SetBlock(state.ExitBlk)
	trueVal := prog.BoolVal(true)
	result := b.CoroSuspend(Expr{}, trueVal)

	// For final suspend, we use a custom switch instead of CoroSuspendSwitch.
	// The key difference is the default (-1) path:
	// - Non-final suspend: default returns handle (so caller can resume later)
	// - Final suspend: default calls coro.end then returns handle
	//
	// The coro.end call is critical because without it, CoroSplit generates
	// 'unreachable' for this path in the resume function. LLVM then optimizes
	// the unreachable into a fall-through to cleanup, causing the frame to be
	// freed before the caller can read the return value.
	// With coro.end, CoroSplit generates a proper return in the resume function.
	resumeBlk := fn.MakeBlock()  // case 0: final suspend resumed (go to cleanup)
	suspendBlk := fn.MakeBlock() // default (-1): suspended

	sw := b.impl.CreateSwitch(result.impl, suspendBlk.first, 2)
	sw.AddCase(llvm.ConstInt(prog.tyInt8(), 0, false), resumeBlk.first)
	sw.AddCase(llvm.ConstInt(prog.tyInt8(), 1, false), state.CleanupBlk.first)

	// Resume block (case 0) - final suspend shouldn't be resumed, go to cleanup
	b.SetBlock(resumeBlk)
	b.Jump(state.CleanupBlk)

	// Suspend block (default, -1) - jump to end block
	// The frame is NOT freed here - caller may still need to read return value.
	// By going through coro.end, CoroSplit generates proper 'ret void' instead of 'unreachable'.
	b.SetBlock(suspendBlk)
	b.Jump(state.EndBlk)

	// Generate cleanup block - use C free for coroutine frame
	b.SetBlock(state.CleanupBlk)
	memToFree := b.CoroFree(state.CoroId, state.CoroHandle)
	b.free(memToFree)
	b.Jump(state.EndBlk)

	// Generate end block - single coro.end for all exit paths
	b.SetBlock(state.EndBlk)
	falseVal := prog.BoolVal(false)
	b.CoroEnd(state.CoroHandle, falseVal)
	// Return the coroutine handle - coro functions return ptr
	b.Return(state.CoroHandle)
}

// CoroSuspendSwitch generates a switch statement for coro.suspend result.
// The switch handles:
// - 0: resume (jump to resumeBlk)
// - 1: cleanup (jump to cleanupBlk)
// - default: suspend point (return handle to caller)
//
// The default case is taken when suspend returns -1 (suspended).
// This is the return point where the ramp function returns the handle.
func (b Builder) CoroSuspendSwitch(result Expr, resumeBlk, cleanupBlk BasicBlock, coroHandle Expr) {
	// Create a suspend block that returns the handle
	suspendBlk := b.Func.MakeBlock()

	sw := b.impl.CreateSwitch(result.impl, suspendBlk.first, 2)
	sw.AddCase(llvm.ConstInt(b.Prog.tyInt8(), 0, false), resumeBlk.first)
	sw.AddCase(llvm.ConstInt(b.Prog.tyInt8(), 1, false), cleanupBlk.first)

	// The suspend block returns the coroutine handle
	b.SetBlock(suspendBlk)
	b.Return(coroHandle)
}

// CoroSuspendWithCleanup performs a suspend point with proper cleanup handling.
// Unlike coroSuspendYield, this handles all suspend result cases:
// - 0: resumed, continue execution
// - 1: cleanup, jump to cleanup block
// - -1: destroy, jump to cleanup block (for final suspend)
func (b Builder) CoroSuspendWithCleanup(state *CoroState) {
	// Use none token for save and false for non-final suspend
	falseVal := b.Prog.BoolVal(false)

	result := b.CoroSuspend(Expr{}, falseVal)

	// Create resume block
	resumeBlk := b.Func.MakeBlock()

	// Use switch to handle suspend result
	b.CoroSuspendSwitch(result, resumeBlk, state.CleanupBlk, state.CoroHandle)

	// Resume block - continue with normal execution
	b.SetBlock(resumeBlk)
}

// CoroAwait implements inline await for a coroutine.
// It resumes the coroutine until completion, blocking the caller.
// This is used when a coroutine function synchronously calls another
// function that has suspend points.
//
// The pattern is:
//
//	loop:
//	  resume_fn = load handle[0]
//	  if resume_fn == null: goto done  // coroutine finished
//	  call llvm.coro.resume(handle)
//	  goto loop
//	done:
//	  ; continue execution
//
// Note: This is for void functions. Functions with return values
// require additional frame access to retrieve the return value.
func (b Builder) CoroAwait(handle Expr) {
	prog := b.Prog
	fn := b.Func

	// Create basic blocks
	loopBlk := fn.MakeBlock()
	resumeBlk := fn.MakeBlock()
	doneBlk := fn.MakeBlock()

	// Jump to loop
	b.Jump(loopBlk)

	// Loop block: check if coroutine is done
	b.SetBlock(loopBlk)
	// Load resume_fn from handle (first field of coroutine frame)
	resumeFnPtr := handle // handle is already ptr to frame
	resumeFn := b.Load(Expr{resumeFnPtr.impl, prog.Pointer(prog.VoidPtr())})
	null := prog.Nil(prog.VoidPtr())
	isDone := b.BinOp(token.EQL, resumeFn, null)
	b.If(isDone, doneBlk, resumeBlk)

	// Resume block: resume the coroutine and loop back
	b.SetBlock(resumeBlk)
	b.CoroResume(handle)
	b.Jump(loopBlk)

	// Done block: coroutine finished, continue execution
	b.SetBlock(doneBlk)
}

// CoroAwaitWithSuspend implements await with suspension support.
// Unlike CoroAwait which busy-loops, this suspends the caller when
// the callee suspends, allowing cooperative scheduling.
//
// The pattern is:
//
//	loop:
//	  resume_fn = load handle[0]
//	  if resume_fn == null: goto done  // callee finished
//	  call llvm.coro.resume(handle)
//	  resume_fn = load handle[0]       // check again after resume
//	  if resume_fn == null: goto done  // callee finished
//	  ; callee suspended, we should suspend too
//	  call runtime.CoroReschedule(callee_handle)  // put callee back in queue
//	  suspend                                      // suspend ourselves
//	  goto loop
//	done:
//	  ; continue execution
//
// This requires the caller to be in a coroutine context with valid CoroState.
func (b Builder) CoroAwaitWithSuspend(handle Expr, state *CoroState) {
	fn := b.Func

	// Create basic blocks
	loopBlk := fn.MakeBlock()
	resumeBlk := fn.MakeBlock()
	checkBlk := fn.MakeBlock()
	suspendBlk := fn.MakeBlock()
	doneBlk := fn.MakeBlock()

	// Jump to loop
	b.Jump(loopBlk)

	// Loop block: check if coroutine is done using llvm.coro.done
	b.SetBlock(loopBlk)
	isDone := b.CoroDone(handle)
	b.If(isDone, doneBlk, resumeBlk)

	// Resume block: resume the callee coroutine
	b.SetBlock(resumeBlk)
	b.CoroResume(handle)
	b.Jump(checkBlk)

	// Check block: see if callee finished or suspended
	b.SetBlock(checkBlk)
	isDone2 := b.CoroDone(handle)
	b.If(isDone2, doneBlk, suspendBlk)

	// Suspend block: callee is still suspended, we should suspend too
	b.SetBlock(suspendBlk)
	// Put the callee handle back in the queue
	// Note: This would need runtime support (CoroReschedule)
	// For now, we just suspend ourselves
	b.CoroSuspendWithCleanup(state)
	// After being resumed, check the callee again
	b.Jump(loopBlk)

	// Done block: callee finished, continue execution
	b.SetBlock(doneBlk)
}

// -----------------------------------------------------------------------------
// Block-on helpers for closures
// -----------------------------------------------------------------------------

// CallIndirectCoro calls a closure's $coro version through function pointer.
// The closure is expected to be a {$f: fn_ptr, $data: ctx_ptr} structure where
// $f points to the $coro version of the closure function.
// Returns the coroutine handle (ptr).
//
// Important: The fnPtr type is the original closure signature (e.g., func(ctx) int),
// but the actual function is the $coro version which returns ptr.
// We must create the correct LLVM call with ptr return type.
func (b Builder) CallIndirectCoro(fnPtr Expr, args ...Expr) Expr {
	// Get original signature from fnPtr
	origSig := fnPtr.raw.Type.(*types.Signature)
	return b.CallIndirectCoroWithSig(fnPtr, origSig, args...)
}

// CallIndirectCoroWithSig calls a closure's $coro version through function pointer
// with an explicit signature. This is needed when fnPtr's type is VoidPtr
// (e.g., when extracted from a closure loaded from a variable).
// Returns the coroutine handle (ptr).
func (b Builder) CallIndirectCoroWithSig(fnPtr Expr, origSig *types.Signature, args ...Expr) Expr {
	prog := b.Prog

	// Create $coro signature: same params, returns ptr (unsafe.Pointer)
	// The closure's $coro version has context as first parameter
	ptrType := prog.VoidPtr().raw.Type
	results := types.NewTuple(types.NewParam(0, nil, "", ptrType))

	// Build params: context (ptr) + original params
	ctx := types.NewParam(token.NoPos, nil, "__llgo_ctx", types.Typ[types.UnsafePointer])
	coroSig := FuncAddCtx(ctx, types.NewSignatureType(
		nil,
		nil, nil,
		origSig.Params(),
		results,
		origSig.Variadic(),
	))

	// Get LLVM function type for coro signature
	coroLLType := prog.FuncDecl(coroSig, InC).ll

	// Build LLVM args
	llArgs := make([]llvm.Value, len(args))
	for i, arg := range args {
		llArgs[i] = arg.impl
	}

	// Make the call with correct return type (ptr)
	ret := llvm.CreateCall(b.impl, coroLLType, fnPtr.impl, llArgs)
	return Expr{ret, prog.VoidPtr()}
}

// CoroScheduleUntil calls runtime.CoroScheduleUntil to run the scheduler
// until the specified coroutine completes.
// This is used in sync context when calling a closure that may suspend.
func (b Builder) CoroScheduleUntil(handle Expr) {
	// Call runtime.CoroScheduleUntil(handle)
	pkg := b.Pkg
	scheduleUntilFn := pkg.rtFunc("CoroScheduleUntil")
	b.Call(scheduleUntilFn, handle)
}

// CoroBlockOnDynamic generates runtime check for block_on when context is unknown.
// If isInCoro() is true, use await with suspend; otherwise use scheduleUntil.
// This is used when the compiler cannot determine at compile-time whether
// we're in a coroutine context (e.g., closure passed through interface).
func (b Builder) CoroBlockOnDynamic(handle Expr, state *CoroState) {
	// For now, just use scheduleUntil as fallback
	// Full implementation would need runtime isInCoro() check
	// TODO: implement runtime context detection
	b.CoroScheduleUntil(handle)
}

// ExtractClosureFields extracts function pointer and context from a closure value.
// This handles the case where a closure is loaded from a global variable -
// the Go type is *types.Signature but the LLVM value is actually {ptr, ptr}.
// We store to alloca, then use GEP to extract the fields.
func (b Builder) ExtractClosureFields(closure Expr) (fnPtr, ctx Expr) {
	prog := b.Prog

	// Create closure struct type {ptr, ptr}
	closureLLType := prog.ctx.StructType([]llvm.Type{prog.tyVoidPtr(), prog.tyVoidPtr()}, false)

	// Alloca for the closure struct
	alloca := llvm.CreateAlloca(b.impl, closureLLType)

	// Store the closure value (which is actually {ptr, ptr}) to the alloca
	b.impl.CreateStore(closure.impl, alloca)

	// GEP to get field addresses
	zero := llvm.ConstInt(prog.tyInt32(), 0, false)
	fnPtrAddr := llvm.CreateGEP(b.impl, closureLLType, alloca, []llvm.Value{zero, zero})
	one := llvm.ConstInt(prog.tyInt32(), 1, false)
	ctxAddr := llvm.CreateGEP(b.impl, closureLLType, alloca, []llvm.Value{zero, one})

	// Load the fields
	fnPtr = Expr{llvm.CreateLoad(b.impl, prog.tyVoidPtr(), fnPtrAddr), prog.VoidPtr()}
	ctx = Expr{llvm.CreateLoad(b.impl, prog.tyVoidPtr(), ctxAddr), prog.VoidPtr()}
	return
}

// -----------------------------------------------------------------------------
