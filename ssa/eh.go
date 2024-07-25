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
	// b.Unreachable()
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
	stmtPtr  Expr         // pointer to stmt index
	procBlk  BasicBlock   // deferProc block
	runsNext []BasicBlock // next blocks of RunDefers
	stmts    []func(bits Expr)
}

func (p Package) keyInit(name string) {
	keyVar := p.VarOf(name)
	if keyVar == nil {
		return
	}
	prog := p.Prog
	keyVar.InitNil()
	keyVar.impl.SetLinkage(llvm.LinkOnceAnyLinkage)

	b := p.afterBuilder()
	eq := b.BinOp(token.EQL, b.Load(keyVar.Expr), prog.IntVal(0, prog.CInt()))
	b.IfThen(eq, func() {
		b.pthreadKeyCreate(keyVar.Expr, prog.Nil(prog.VoidPtr()))
	})
}

func (p Package) newKey(name string) Global {
	return p.NewVarEx(name, p.Prog.CIntPtr())
}

func (b Builder) deferKey() Expr {
	return b.Load(b.Pkg.newKey(deferKey).Expr)
}

const (
	// 0: addr sigjmpbuf
	// 1: bits uintptr
	// 2: link *Defer
	// 3: rund voidptr
	// 4: stmt index
	deferSigjmpbuf = iota
	deferBits
	deferLink
	deferRund
	deferStmt
)

func (b Builder) getDefer(kind DoAction) *aDefer {
	self := b.Func
	if self.defer_ == nil {
		// TODO(xsw): check if in pkg.init
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
		procBlk, rethrowBlk := blks[0], blks[1]
		bitsPtr := b.FieldAddr(deferData, deferBits)
		rundPtr := b.FieldAddr(deferData, deferRund)
		stmtPtr := b.FieldAddr(deferData, deferStmt)
		self.defer_ = &aDefer{
			key:      key,
			data:     deferData,
			bitsPtr:  bitsPtr,
			rundPtr:  rundPtr,
			stmtPtr:  stmtPtr,
			procBlk:  procBlk,
			runsNext: []BasicBlock{rethrowBlk},
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
		b.SetBlockEx(rundBlk, AtEnd, false) // exec runDefers and rethrow
		b.Store(rundPtr, rethrowBlk.Addr())
		b.Jump(procBlk)

		b.SetBlockEx(rethrowBlk, AtEnd, false) // rethrow
		b.Call(b.Pkg.rtFunc("Rethrow"), link)
		b.Jump(self.recov)

		if kind == DeferAlways {
			b.SetBlockEx(next, AtEnd, false)
			b.blk.last = next.last
		}
	}
	return self.defer_
}

// DeferData returns the defer data (*runtime.Defer).
func (b Builder) DeferData() Expr {
	key := b.deferKey()
	return Expr{b.pthreadGetspecific(key).impl, b.Prog.DeferPtr()}
}

// SetDeferData set the defer data (*runtime.Defer).
func (b Builder) SetDeferData(val Expr) {
	key := b.deferKey()
	b.pthreadSetspecific(key, val)
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
	self := b.getDefer(DeferInCond)
	blk := b.Func.MakeBlock()
	self.runsNext = append(self.runsNext, blk)

	b.Store(self.rundPtr, blk.Addr())
	b.Jump(self.procBlk)

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
	// TODO b.Load(self.stmtPtr)
	for i := len(stmts) - 1; i >= 0; i-- {
		b.Store(self.stmtPtr, b.Prog.Val(i))
		stmts[i](bits)
	}

	link := b.getField(b.Load(self.data), deferLink)
	b.pthreadSetspecific(self.key, link)
	b.IndirectJump(b.Load(self.rundPtr), nexts)
}

// -----------------------------------------------------------------------------

// Unreachable emits an unreachable instruction.
func (b Builder) Unreachable() {
	b.impl.CreateUnreachable()
}

// Recover emits a recover instruction.
func (b Builder) Recover() Expr {
	if debugInstr {
		log.Println("Recover")
	}
	// TODO(xsw): recover can't be a function call in Go
	return b.Call(b.Pkg.rtFunc("Recover"))
}

// Panic emits a panic instruction.
func (b Builder) Panic(v Expr) {
	b.Call(b.Pkg.rtFunc("Panic"), v)
	b.Unreachable() // TODO: func supports noreturn attribute
}

// -----------------------------------------------------------------------------
