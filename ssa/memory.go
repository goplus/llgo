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
	"log"

	"github.com/goplus/llvm"
)

// -----------------------------------------------------------------------------

// Advance returns the pointer ptr advanced by offset.
func (b Builder) Advance(ptr Expr, offset Expr) Expr {
	if debugInstr {
		log.Printf("Advance %v, %v\n", ptr.impl, offset.impl)
	}
	var elem llvm.Type
	var prog = b.Prog
	switch t := ptr.raw.Type.(type) {
	case *types.Basic: // void
		elem = prog.tyInt8()
	default:
		elem = prog.rawType(t.(*types.Pointer).Elem()).ll
	}
	ret := llvm.CreateGEP(b.impl, elem, ptr.impl, []llvm.Value{offset.impl})
	return Expr{ret, ptr.Type}
}

// Load returns the value at the pointer ptr.
func (b Builder) Load(ptr Expr) Expr {
	if debugInstr {
		log.Printf("Load %v\n", ptr.impl)
	}
	if ptr.kind == vkPyVarRef {
		return b.pyLoad(ptr)
	}
	telem := b.Prog.Elem(ptr.Type)
	return Expr{llvm.CreateLoad(b.impl, telem.ll, ptr.impl), telem}
}

// Store stores val at the pointer ptr.
func (b Builder) Store(ptr, val Expr) Builder {
	raw := ptr.raw.Type
	if debugInstr {
		log.Printf("Store %v, %v, %v\n", raw, ptr.impl, val.impl)
	}
	val = checkExpr(val, raw.(*types.Pointer).Elem(), b)
	b.impl.CreateStore(val.impl, ptr.impl)
	return b
}

func (b Builder) aggregateAllocU(t Type, flds ...llvm.Value) llvm.Value {
	prog := b.Prog
	size := prog.SizeOf(t)
	ptr := b.allocUninited(prog.IntVal(size, prog.Uintptr())).impl
	aggregateInit(b.impl, ptr, t.ll, flds...)
	return ptr
}

func (b Builder) aggregateAlloca(t Type, flds ...llvm.Value) llvm.Value {
	prog := b.Prog
	size := prog.SizeOf(t)
	ptr := b.Alloca(prog.IntVal(size, prog.Uintptr())).impl
	aggregateInit(b.impl, ptr, t.ll, flds...)
	return ptr
}

func (b Builder) aggregateMalloc(t Type, flds ...llvm.Value) llvm.Value {
	prog := b.Prog
	size := prog.SizeOf(t)
	ptr := b.malloc(prog.IntVal(size, prog.Uintptr())).impl
	aggregateInit(b.impl, ptr, t.ll, flds...)
	return ptr
}

// aggregateValue yields the value of the aggregate X with the fields
func (b Builder) aggregateValue(t Type, flds ...llvm.Value) Expr {
	return Expr{aggregateValue(b.impl, t.ll, flds...), t}
}

func aggregateValue(b llvm.Builder, tll llvm.Type, flds ...llvm.Value) llvm.Value {
	ptr := llvm.CreateAlloca(b, tll)
	aggregateInit(b, ptr, tll, flds...)
	return llvm.CreateLoad(b, tll, ptr)
}

func aggregateInit(b llvm.Builder, ptr llvm.Value, tll llvm.Type, flds ...llvm.Value) {
	for i, fld := range flds {
		b.CreateStore(fld, llvm.CreateStructGEP(b, tll, ptr, i))
	}
}

/*
func (b Builder) dupMalloc(v Expr) Expr {
	prog := b.Prog
	n := prog.SizeOf(v.Type)
	tptr := prog.Pointer(v.Type)
	ptr := b.malloc(prog.Val(uintptr(n))).impl
	b.Store(Expr{ptr, tptr}, v)
	return Expr{ptr, tptr}
}
*/

// -----------------------------------------------------------------------------

// The Alloc instruction reserves space for a variable of the given type,
// zero-initializes it, and yields its address.
//
// If heap is false, Alloc zero-initializes the same local variable in
// the call frame and returns its address; in this case the Alloc must
// be present in Function.Locals. We call this a "local" alloc.
//
// If heap is true, Alloc allocates a new zero-initialized variable
// each time the instruction is executed. We call this a "new" alloc.
//
// When Alloc is applied to a channel, map or slice type, it returns
// the address of an uninitialized (nil) reference of that kind; store
// the result of MakeSlice, MakeMap or MakeChan in that location to
// instantiate these types.
//
// Example printed form:
//
//	t0 = local int
//	t1 = new int
func (b Builder) Alloc(elem Type, heap bool) (ret Expr) {
	if debugInstr {
		log.Printf("Alloc %v, %v\n", elem.RawType(), heap)
	}
	prog := b.Prog
	pkg := b.Pkg
	size := SizeOf(prog, elem)
	if heap {
		ret = b.InlineCall(pkg.rtFunc("AllocZ"), size)
	} else {
		ret = Expr{llvm.CreateAlloca(b.impl, elem.ll), prog.VoidPtr()}
		ret.impl = b.InlineCall(pkg.rtFunc("Zeroinit"), ret, size).impl
	}
	ret.Type = prog.Pointer(elem)
	return
}

// AllocU allocates uninitialized space for n*sizeof(elem) bytes.
func (b Builder) AllocU(elem Type, n ...int64) (ret Expr) {
	prog := b.Prog
	size := SizeOf(prog, elem, n...)
	return Expr{b.allocUninited(size).impl, prog.Pointer(elem)}
}

func (b Builder) allocUninited(size Expr) (ret Expr) {
	return b.InlineCall(b.Pkg.rtFunc("AllocU"), size)
}

// AllocZ allocates zero initialized space for n bytes.
func (b Builder) AllocZ(n Expr) (ret Expr) {
	return b.InlineCall(b.Pkg.rtFunc("AllocZ"), n)
}

// Alloca allocates uninitialized space for n bytes.
func (b Builder) Alloca(n Expr) (ret Expr) {
	if debugInstr {
		log.Printf("Alloca %v\n", n.impl)
	}
	prog := b.Prog
	telem := prog.tyInt8()
	ret.impl = llvm.CreateArrayAlloca(b.impl, telem, n.impl)
	ret.Type = prog.VoidPtr()
	return
}

// AllocaCStr allocates space for copy it from a Go string.
func (b Builder) AllocaCStr(gostr Expr) (ret Expr) {
	if debugInstr {
		log.Printf("AllocaCStr %v\n", gostr.impl)
	}
	n := b.StringLen(gostr)
	n1 := b.BinOp(token.ADD, n, b.Prog.Val(1))
	cstr := b.Alloca(n1)
	return b.InlineCall(b.Pkg.rtFunc("CStrCopy"), cstr, gostr)
}

// -----------------------------------------------------------------------------

func (p Program) tyMalloc() *types.Signature {
	if p.mallocTy == nil {
		paramSize := types.NewParam(token.NoPos, nil, "", p.Uintptr().raw.Type)
		paramPtr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		params := types.NewTuple(paramSize)
		results := types.NewTuple(paramPtr)
		p.mallocTy = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.mallocTy
}

func (p Program) tyFree() *types.Signature {
	if p.freeTy == nil {
		paramPtr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		params := types.NewTuple(paramPtr)
		p.freeTy = types.NewSignatureType(nil, nil, nil, params, nil, false)
	}
	return p.freeTy
}

func (b Builder) malloc(size Expr) Expr {
	fn := b.Pkg.cFunc("malloc", b.Prog.tyMalloc())
	return b.Call(fn, size)
}

func (b Builder) free(ptr Expr) Expr {
	fn := b.Pkg.cFunc("free", b.Prog.tyFree())
	return b.Call(fn, ptr)
}

// -----------------------------------------------------------------------------

/*
// ArrayAlloca reserves space for an array of n elements of type telem.
func (b Builder) ArrayAlloca(telem Type, n Expr) (ret Expr) {
	if debugInstr {
		log.Printf("ArrayAlloca %v, %v\n", telem.t, n.impl)
	}
	ret.impl = llvm.CreateArrayAlloca(b.impl, telem.ll, n.impl)
	ret.Type = b.Prog.Pointer(telem)
	return
}
*/

// ArrayAlloc allocates zero initialized space for an array of n elements of type telem.
func (b Builder) ArrayAlloc(telem Type, n Expr) (ret Expr) {
	prog := b.Prog
	elemSize := SizeOf(prog, telem)
	size := b.BinOp(token.MUL, n, elemSize)
	ret.impl = b.AllocZ(size).impl
	ret.Type = prog.Pointer(telem)
	return
}

// -----------------------------------------------------------------------------
