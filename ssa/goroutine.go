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

// func(pthread *Thread, attr *Attr, routine func(c.Pointer) c.Pointer, arg c.Pointer) c.Int
func (p Program) tyPthreadCreate() *types.Signature {
	if p.createThdTy == nil {
		paramPPtr := types.NewParam(token.NoPos, nil, "", p.VoidPtrPtr().raw.Type)
		paramPtr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		paramRoutine := types.NewParam(token.NoPos, nil, "", p.tyRoutine())
		paramCInt := types.NewParam(token.NoPos, nil, "", p.CInt().raw.Type)
		params := types.NewTuple(paramPPtr, paramPtr, paramRoutine, paramPtr)
		results := types.NewTuple(paramCInt)
		p.createThdTy = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.createThdTy
}

func (b Builder) createThread(pp, attr, routine, arg Expr) Expr {
	fn := b.Pkg.cFunc("pthread_create", b.Prog.tyPthreadCreate())
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

	prog := b.Prog
	pkg := b.Pkg

	typs := make([]Type, len(args)+1)
	flds := make([]llvm.Value, len(args)+1)
	typs[0] = fn.Type
	flds[0] = fn.impl
	for i, arg := range args {
		typs[i+1] = arg.Type
		flds[i+1] = arg.impl
	}
	t := prog.Struct(typs...)
	voidPtr := prog.VoidPtr()
	data := Expr{b.aggregateMalloc(t, flds...), voidPtr}
	size := prog.SizeOf(voidPtr)
	pthd := b.Alloca(prog.IntVal(uint64(size), prog.Uintptr()))
	b.createThread(pthd, prog.Null(voidPtr), pkg.routine(t, len(args)), data)
}

func (p Package) routineName() string {
	p.iRoutine++
	return p.Path() + "._llgo_routine$" + strconv.Itoa(p.iRoutine)
}

func (p Package) routine(t Type, n int) Expr {
	prog := p.Prog
	routine := p.NewFunc(p.routineName(), prog.tyRoutine(), InC)
	b := routine.MakeBody(1)
	param := routine.Param(0)
	data := Expr{llvm.CreateLoad(b.impl, t.ll, param.impl), t}
	args := make([]Expr, n)
	fn := b.getField(data, 0)
	for i := 0; i < n; i++ {
		args[i] = b.getField(data, i+1)
	}
	b.Call(fn, args...)
	b.free(param)
	b.Return(prog.Null(prog.VoidPtr()))
	return routine.Expr
}

// -----------------------------------------------------------------------------
