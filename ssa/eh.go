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

// #include <setjmp.h>
import "C"

import (
	"go/token"
	"go/types"
	"log"
	"unsafe"

	"github.com/goplus/llvm"
)

// -----------------------------------------------------------------------------

type sigjmpbuf = C.sigjmp_buf

// func(env unsafe.Pointer, savemask c.Int) c.Int
func (p Program) tySigsetjmp() *types.Signature {
	if p.sigsetjmpTy == nil {
		paramPtr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		paramCInt := types.NewParam(token.NoPos, nil, "", p.CInt().raw.Type)
		params := types.NewTuple(paramPtr, paramCInt)
		results := types.NewTuple(paramCInt)
		p.sigsetjmpTy = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.sigsetjmpTy
}

// func(env unsafe.Pointer, retval c.Int)
func (p Program) tySiglongjmp() *types.Signature {
	if p.sigljmpTy == nil {
		paramPtr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		paramCInt := types.NewParam(token.NoPos, nil, "", p.CInt().raw.Type)
		params := types.NewTuple(paramPtr, paramCInt)
		p.sigljmpTy = types.NewSignatureType(nil, nil, nil, params, nil, false)
	}
	return p.sigljmpTy
}

func (b Builder) AllocaSigjmpBuf() Expr {
	prog := b.Prog
	n := unsafe.Sizeof(sigjmpbuf{})
	size := prog.IntVal(uint64(n), prog.Uintptr())
	return b.Alloca(size)
}

func (b Builder) Sigsetjmp(jb, savemask Expr) Expr {
	fn := b.Pkg.cFunc("sigsetjmp", b.Prog.tySigsetjmp())
	return b.Call(fn, jb, savemask)
}

func (b Builder) Siglongjmp(jb, retval Expr) {
	fn := b.Pkg.cFunc("siglongjmp", b.Prog.tySiglongjmp()) // TODO(xsw): mark as noreturn
	b.Call(fn, jb, retval)
	b.Unreachable()
}

// -----------------------------------------------------------------------------

const (
	deferKey = "__llgo_defer"
)

func (p Function) deferInitBuilder() (b Builder, next BasicBlock) {
	b = p.NewBuilder()
	next = b.setBlockMoveLast(p.blks[0])
	return
}

type aDefer struct {
	nextBit  int          // next defer bit
	key      Expr         // pthread TLS key
	data     Expr         // pointer to runtime.Defer
	bitsPtr  Expr         // pointer to defer bits
	rundPtr  Expr         // pointer to RunDefers index
	procBlk  BasicBlock   // deferProc block
	runsNext []BasicBlock // next blocks of RunDefers
	stmts    []func(bits Expr)
}

func (p Package) deferInit() {
	keyVar := p.VarOf(deferKey)
	if keyVar == nil {
		return
	}
	prog := p.Prog
	keyNil := prog.Null(prog.DeferPtrPtr())
	keyVar.Init(keyNil)
	keyVar.impl.SetLinkage(llvm.LinkOnceAnyLinkage)

	b := p.afterBuilder()
	eq := b.BinOp(token.EQL, b.Load(keyVar.Expr), keyNil)
	b.IfThen(eq, func() {
		b.pthreadKeyCreate(keyVar.Expr, prog.Null(prog.VoidPtr()))
	})
}

func (p Package) newDeferKey() Global {
	return p.NewVarEx(deferKey, p.Prog.DeferPtrPtr())
}

func (b Builder) deferKey() Expr {
	return b.Load(b.Pkg.newDeferKey().Expr)
}

func (b Builder) getDefer(kind DoAction) *aDefer {
	self := b.Func
	if self.defer_ == nil {
		// TODO(xsw): check if in pkg.init
		// 0: addr sigjmpbuf
		// 1: bits uintptr
		// 2: link *Defer
		// 3: rund int
		const (
			deferSigjmpbuf = iota
			deferBits
			deferLink
			deferRund
		)
		var next, rundBlk BasicBlock
		if kind != DeferAlways {
			b, next = self.deferInitBuilder()
		}
		prog := b.Prog
		key := b.deferKey()
		zero := prog.Val(uintptr(0))
		link := Expr{b.pthreadGetspecific(key).impl, prog.DeferPtr()}
		jb := b.AllocaSigjmpBuf()
		ptr := b.aggregateAlloca(prog.Defer(), jb.impl, zero.impl, link.impl)
		deferData := Expr{ptr, prog.DeferPtr()}
		b.pthreadSetspecific(key, deferData)
		blks := self.MakeBlocks(2)
		procBlk, throwBlk := blks[0], blks[1]
		bitsPtr := b.FieldAddr(deferData, deferBits)
		rundPtr := b.FieldAddr(deferData, deferRund)
		self.defer_ = &aDefer{
			key:      key,
			data:     deferData,
			bitsPtr:  bitsPtr,
			rundPtr:  rundPtr,
			procBlk:  procBlk,
			runsNext: []BasicBlock{throwBlk},
		}
		czero := prog.IntVal(0, prog.CInt())
		retval := b.Sigsetjmp(jb, czero)
		if kind != DeferAlways {
			rundBlk = self.MakeBlock()
		} else {
			blks = self.MakeBlocks(2)
			next, rundBlk = blks[0], blks[1]
		}
		b.If(b.BinOp(token.EQL, retval, czero), next, rundBlk)
		b.SetBlockEx(rundBlk, AtEnd, false) // exec runDefers and throw
		b.Store(rundPtr, prog.Val(0))
		b.Jump(procBlk)
		b.SetBlockEx(throwBlk, AtEnd, false) // throw
		linkJBPtr := b.FieldAddr(link, deferSigjmpbuf)
		b.Siglongjmp(b.Load(linkJBPtr), prog.IntVal(1, prog.CInt()))
		if kind == DeferAlways {
			b.SetBlockEx(next, AtEnd, false)
			b.blk.last = next.last
		}
	}
	return self.defer_
}

// Defer emits a defer instruction.
func (b Builder) Defer(kind DoAction, fn Expr, args ...Expr) {
	if debugInstr {
		logCall("Defer", fn, args)
	}
	var prog Program
	var nextbit Expr
	var self = b.getDefer(kind)
	switch kind {
	case DeferInCond:
		prog = b.Prog
		next := self.nextBit
		self.nextBit++
		bits := b.Load(self.bitsPtr)
		nextbit = prog.Val(uintptr(1 << next))
		b.Store(self.bitsPtr, b.BinOp(token.OR, bits, nextbit))
	case DeferAlways:
		// nothing to do
	default:
		panic("todo: DeferInLoop is not supported")
	}
	self.stmts = append(self.stmts, func(bits Expr) {
		switch kind {
		case DeferInCond:
			zero := prog.Val(uintptr(0))
			has := b.BinOp(token.NEQ, b.BinOp(token.AND, bits, nextbit), zero)
			b.IfThen(has, func() {
				b.Call(fn, args...)
			})
		case DeferAlways:
			b.Call(fn, args...)
		}
	})
}

// RunDefers emits instructions to run deferred instructions.
func (b Builder) RunDefers() {
	prog := b.Prog
	self := b.getDefer(DeferInCond)
	b.Store(self.rundPtr, prog.Val(len(self.runsNext)))
	b.Jump(self.procBlk)

	blk := b.Func.MakeBlock()
	self.runsNext = append(self.runsNext, blk)

	b.SetBlockEx(blk, AtEnd, false)
	b.blk.last = blk.last
}

func (p Function) endDefer(b Builder) {
	self := p.defer_
	if self == nil {
		return
	}
	nexts := self.runsNext
	if len(nexts) == 0 {
		return
	}
	b.SetBlockEx(self.procBlk, AtEnd, true)
	bits := b.Load(self.bitsPtr)
	stmts := self.stmts
	for i := len(stmts) - 1; i >= 0; i-- {
		stmts[i](bits)
	}

	link := b.getField(b.Load(self.data), 2)
	b.pthreadSetspecific(self.key, link)

	// rund := b.Load(self.rundPtr)
	b.IndirectJump(self.rundPtr, nexts)
}

// -----------------------------------------------------------------------------

/*
// Recover emits a recover instruction.
func (b Builder) Recover() (v Expr) {
	if debugInstr {
		log.Println("Recover")
	}
	prog := b.Prog
	return prog.Zero(prog.Eface())
}
*/

// Panic emits a panic instruction.
func (b Builder) Panic(v Expr) {
	if debugInstr {
		log.Printf("Panic %v\n", v.impl)
	}
	b.Call(b.Pkg.rtFunc("TracePanic"), v)
	b.impl.CreateUnreachable()
}

// Unreachable emits an unreachable instruction.
func (b Builder) Unreachable() {
	b.impl.CreateUnreachable()
}

// -----------------------------------------------------------------------------
