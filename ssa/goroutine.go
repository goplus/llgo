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
	"strconv"

	"github.com/goplus/llvm"
)

// -----------------------------------------------------------------------------

// func(c.Pointer) c.Pointer
func (p Program) tyRoutine() *types.Signature {
	if p.routineTy == nil {
		paramPtr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		params := types.NewTuple(paramPtr)
		p.routineTy = types.NewSignatureType(nil, nil, nil, params, params, false)
	}
	return p.routineTy
}

func (b Builder) pthreadCreate(pp, attr, routine, arg Expr) Expr {
	fn := b.Pkg.rtFunc("CreateThread")
	return b.Call(fn, pp, attr, routine, arg)
}

// -----------------------------------------------------------------------------

// The Go instruction creates a new goroutine and calls the specified
// function within it.
//
// Example printed form:
//
//	go println(t0, t1)
//	go t3()
//	go invoke t5.Println(...t6)
func (b Builder) Go(fn Expr, args ...Expr) {
	if debugInstr {
		logCall("Go", fn, args)
	}

	// Check if LLVM coroutine mode is enabled
	if IsLLVMCoroMode() {
		b.goCoro(fn, args...)
		return
	}

	// Default: pthread mode
	b.goPthread(fn, args...)
}

// goPthread implements goroutine using pthread (default mode)
func (b Builder) goPthread(fn Expr, args ...Expr) {
	prog := b.Prog
	pkg := b.Pkg

	var offset int
	if fn.kind != vkBuiltin {
		offset = 1
	}
	typs := make([]Type, len(args)+offset)
	flds := make([]llvm.Value, len(args)+offset)
	if offset == 1 {
		typs[0] = fn.Type
		flds[0] = fn.impl
	}
	for i, arg := range args {
		typs[i+offset] = arg.Type
		flds[i+offset] = arg.impl
	}
	t := prog.Struct(typs...)
	voidPtr := prog.VoidPtr()
	data := Expr{b.aggregateMalloc(t, flds...), voidPtr}
	size := prog.SizeOf(voidPtr)
	pthd := b.Alloca(prog.IntVal(uint64(size), prog.Uintptr()))
	b.pthreadCreate(pthd, prog.Nil(voidPtr), pkg.routine(t, fn, len(args)), data)
}

// goCoro implements goroutine using LLVM coroutine (dual-symbol mode)
func (b Builder) goCoro(fn Expr, args ...Expr) {
	prog := b.Prog
	pkg := b.Pkg
	voidPtr := prog.VoidPtr()

	// Try to get the function name for dual-symbol mode
	fnName := ""
	if fn.kind != vkBuiltin && !fn.impl.IsNil() {
		fnName = fn.impl.Name()
	}

	// If it's a named function (not closure), use dual-symbol mode
	if fnName != "" && !IsCoroName(fnName) {
		// Look up or create the $coro version
		coroFn := pkg.getOrCreateCoroFunc(fnName, fn)

		// Call the $coro version with arguments
		handle := b.Call(coroFn, args...)

		// Submit to scheduler
		b.InlineCall(pkg.rtFunc("CoroSpawn"), handle)
		return
	}

	// Fall back to wrapper mode for closures/method values
	var offset int
	if fn.kind != vkBuiltin {
		offset = 1
	}
	typs := make([]Type, len(args)+offset)
	flds := make([]llvm.Value, len(args)+offset)
	if offset == 1 {
		typs[0] = fn.Type
		flds[0] = fn.impl
	}
	for i, arg := range args {
		typs[i+offset] = arg.Type
		flds[i+offset] = arg.impl
	}
	t := prog.Struct(typs...)
	data := Expr{b.aggregateMalloc(t, flds...), voidPtr}

	// Create coroutine wrapper and get handle
	coroRoutine := pkg.coroRoutine(t, fn, len(args))
	handle := b.Call(coroRoutine, data)

	// Submit to scheduler
	b.InlineCall(pkg.rtFunc("CoroSpawn"), handle)
}

func (p Package) routineName() string {
	p.iRoutine++
	return p.Path() + "._llgo_routine$" + strconv.Itoa(p.iRoutine)
}

func (p Package) coroRoutineName() string {
	p.iRoutine++
	return p.Path() + "._llgo_coro$" + strconv.Itoa(p.iRoutine)
}

// getOrCreateCoroFunc returns the $coro version of a named function.
// If it doesn't exist, creates a coroutine wrapper that:
// 1. Sets up coroutine frame
// 2. Calls the original function
// 3. Returns coroutine handle
//
// Dual-symbol mode: for function "foo", creates "foo$coro"
func (p Package) getOrCreateCoroFunc(fnName string, origFn Expr) Expr {
	coroName := fnName + CoroSuffix

	// Check cache first
	if cached, ok := p.coroFns[coroName]; ok {
		return cached
	}

	prog := p.Prog

	// Get original function signature
	origSig, ok := origFn.raw.Type.(*types.Signature)
	if !ok {
		// Not a function type, fall back to wrapper mode
		return Expr{}
	}

	// Create $coro signature: same params, returns ptr (handle)
	coroSig := makeCoroSignature(origSig, prog)

	// Create the coroutine function
	coroFn := p.NewFunc(coroName, coroSig, InC)

	// Mark as presplitcoroutine for LLVM CoroSplit pass
	kind := llvm.AttributeKindID("presplitcoroutine")
	coroFn.impl.AddFunctionAttr(
		p.mod.Context().CreateEnumAttribute(kind, 0),
	)

	// Build function body with 2 blocks: entry (for prologue) and body
	b := coroFn.MakeBody(2)
	bodyBlk := coroFn.Block(1)

	// Generate coroutine prologue (jumps to bodyBlk after coro.begin)
	coroState := b.CoroFuncPrologue(bodyBlk)

	// Switch to body block for actual work
	b.SetBlock(bodyBlk)

	// Get parameters and call the original function
	nParams := origSig.Params().Len()
	args := make([]Expr, nParams)
	for i := 0; i < nParams; i++ {
		args[i] = coroFn.Param(i)
	}

	// Call the original function
	b.Call(origFn, args...)

	// Do final suspend with switch to handle result
	trueVal := prog.BoolVal(true)
	result := b.CoroSuspend(Expr{}, trueVal)

	// Create suspend block (for final suspend, just go to cleanup)
	suspendBlk := coroFn.MakeBlock()
	b.CoroSuspendSwitch(result, suspendBlk, coroState.CleanupBlk)

	// Suspend block - for final suspend, go to cleanup
	b.SetBlock(suspendBlk)
	b.Jump(coroState.CleanupBlk)

	// Generate coroutine epilogue (cleanup and end blocks)
	b.CoroFuncEpilogue(coroState)

	// Cache and return
	coroExpr := coroFn.Expr
	coroExpr.Type = prog.rawType(coroSig)
	p.coroFns[coroName] = coroExpr

	return coroExpr
}

// coroRoutine creates a coroutine wrapper function for a goroutine.
// The wrapper is a full LLVM coroutine that:
// 1. Unpacks arguments from the data struct
// 2. Calls the target function
// 3. Returns the coroutine handle
//
// Signature: func(data unsafe.Pointer) unsafe.Pointer
func (p Package) coroRoutine(t Type, fn Expr, n int) Expr {
	prog := p.Prog
	voidPtr := prog.VoidPtr()

	// Create coroutine function signature: func(ptr) ptr
	paramData := types.NewParam(token.NoPos, nil, "", voidPtr.raw.Type)
	resultHandle := types.NewParam(token.NoPos, nil, "", voidPtr.raw.Type)
	sig := types.NewSignatureType(nil, nil, nil,
		types.NewTuple(paramData),
		types.NewTuple(resultHandle),
		false)

	// Create the coroutine function
	coroFn := p.NewFunc(p.coroRoutineName(), sig, InC)

	// Mark as presplitcoroutine for LLVM CoroSplit pass
	// Must use enum attribute, not string attribute, for LLVM to recognize it
	kind := llvm.AttributeKindID("presplitcoroutine")
	coroFn.impl.AddFunctionAttr(
		p.mod.Context().CreateEnumAttribute(kind, 0),
	)

	// Build function body with 2 blocks: entry (for prologue) and body
	b := coroFn.MakeBody(2)
	param := coroFn.Param(0)
	bodyBlk := coroFn.Block(1)

	// Generate coroutine prologue (jumps to bodyBlk after coro.begin)
	coroState := b.CoroFuncPrologue(bodyBlk)

	// Switch to body block for actual work
	b.SetBlock(bodyBlk)

	// Unpack data and call target function
	data := Expr{llvm.CreateLoad(b.impl, t.ll, param.impl), t}
	args := make([]Expr, n)
	var offset int
	if fn.kind != vkBuiltin {
		fn = b.getField(data, 0)
		offset = 1
	}
	for i := 0; i < n; i++ {
		args[i] = b.getField(data, i+offset)
	}

	// Call the target function
	b.Call(fn, args...)

	// Free the data
	b.free(param)

	// Do final suspend with switch to handle result
	trueVal := prog.BoolVal(true)
	result := b.CoroSuspend(Expr{}, trueVal)

	// Create suspend block (for final suspend, just go to cleanup)
	suspendBlk := coroFn.MakeBlock()
	b.CoroSuspendSwitch(result, suspendBlk, coroState.CleanupBlk)

	// Suspend block - for final suspend, go to cleanup
	b.SetBlock(suspendBlk)
	b.Jump(coroState.CleanupBlk)

	// Generate coroutine epilogue (cleanup and end blocks)
	b.CoroFuncEpilogue(coroState)

	return coroFn.Expr
}

func (p Package) routine(t Type, fn Expr, n int) Expr {
	prog := p.Prog
	routine := p.NewFunc(p.routineName(), prog.tyRoutine(), InC)
	b := routine.MakeBody(1)
	param := routine.Param(0)
	data := Expr{llvm.CreateLoad(b.impl, t.ll, param.impl), t}
	args := make([]Expr, n)
	var offset int
	if fn.kind != vkBuiltin {
		fn = b.getField(data, 0)
		offset = 1
	}
	for i := 0; i < n; i++ {
		args[i] = b.getField(data, i+offset)
	}
	b.Call(fn, args...)
	b.free(param)
	b.Return(prog.Nil(prog.VoidPtr()))
	return routine.Expr
}

// -----------------------------------------------------------------------------

// func(c.Pointer)
func (p Program) tyDestruct() *types.Signature {
	if p.destructTy == nil {
		paramPtr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		params := types.NewTuple(paramPtr)
		p.destructTy = types.NewSignatureType(nil, nil, nil, params, nil, false)
	}
	return p.destructTy
}

// func(*c.Int, func(c.Pointer)) c.Int
func (p Program) tyPthreadKeyCreate() *types.Signature {
	if p.createKeyTy == nil {
		cint := p.CInt()
		cintPtr := p.Pointer(cint)
		paramCintPtr := types.NewParam(token.NoPos, nil, "", cintPtr.raw.Type)
		paramDestruct := types.NewParam(token.NoPos, nil, "", p.tyDestruct())
		paramCInt := types.NewParam(token.NoPos, nil, "", cint.raw.Type)
		params := types.NewTuple(paramCintPtr, paramDestruct)
		results := types.NewTuple(paramCInt)
		p.createKeyTy = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.createKeyTy
}

func (b Builder) pthreadKeyCreate(key, destruct Expr) Expr {
	fn := b.Pkg.cFunc("pthread_key_create", b.Prog.tyPthreadKeyCreate())
	return b.Call(fn, key, destruct)
}

// -----------------------------------------------------------------------------

// func(c.Int) c.Pointer
func (p Program) tyPthreadGetspecific() *types.Signature {
	if p.getSpecTy == nil {
		paramCInt := types.NewParam(token.NoPos, nil, "", p.CInt().raw.Type)
		paramPtr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		params := types.NewTuple(paramCInt)
		results := types.NewTuple(paramPtr)
		p.getSpecTy = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.getSpecTy
}

// func(c.Int, c.Pointer) c.Int
func (p Program) tyPthreadSetspecific() *types.Signature {
	if p.setSpecTy == nil {
		paramCInt := types.NewParam(token.NoPos, nil, "", p.CInt().raw.Type)
		paramPtr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		params := types.NewTuple(paramCInt, paramPtr)
		results := types.NewTuple(paramCInt)
		p.setSpecTy = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.setSpecTy
}

func (b Builder) pthreadGetspecific(key Expr) Expr {
	fn := b.Pkg.cFunc("pthread_getspecific", b.Prog.tyPthreadGetspecific())
	return b.Call(fn, key)
}

func (b Builder) pthreadSetspecific(key, val Expr) Expr {
	fn := b.Pkg.cFunc("pthread_setspecific", b.Prog.tyPthreadSetspecific())
	return b.Call(fn, key, val)
}

// -----------------------------------------------------------------------------
