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
	ty := prog.rtType("SigjmpBuf")
	return b.AllocaT(ty)
}

func (b Builder) Sigsetjmp(jb, savemask Expr) Expr {
	fname := "sigsetjmp"
	if b.Prog.target.GOOS == "linux" {
		fname = "__sigsetjmp"
	}
	fn := b.Pkg.cFunc(fname, b.Prog.tySigsetjmp())
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
	p.blks[0].last = next.last
	return
}

type aDefer struct {
	nextBit   int          // next defer bit
	key       Expr         // pthread TLS key
	data      Expr         // pointer to runtime.Defer
	bitsPtr   Expr         // pointer to defer bits
	rethPtr   Expr         // next block of Rethrow
	rundPtr   Expr         // next block of RunDefers
	argsPtr   Expr         // func and args links
	procBlk   BasicBlock   // deferProc block
	panicBlk  BasicBlock   // panic block (runDefers and rethrow)
	rundsNext []BasicBlock // next blocks of RunDefers
	stmts     []func(bits Expr)
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
	// 3: reth voidptr: block address after Rethrow
	// 4: rund voidptr: block address after RunDefers
	// 5: func and args links
	deferSigjmpbuf = iota
	deferBits
	deferLink
	deferRethrow
	deferRunDefers
	deferArgs
)

func (b Builder) getDefer(kind DoAction) *aDefer {
	if b.Func.recov == nil {
		// b.Func.recov maybe nil in ssa.NaiveForm
		return nil
	}
	self := b.Func
	if self.defer_ == nil {
		// TODO(xsw): check if in pkg.init
		var next, panicBlk BasicBlock
		if kind != DeferAlways {
			b, next = self.deferInitBuilder()
		}

		prog := b.Prog
		blks := self.MakeBlocks(2)
		procBlk, rethrowBlk := blks[0], blks[1]

		key := b.deferKey()
		zero := prog.Val(uintptr(0))
		link := Expr{b.pthreadGetspecific(key).impl, prog.DeferPtr()}
		jb := b.AllocaSigjmpBuf()
		ptr := b.aggregateAlloca(prog.Defer(), jb.impl, zero.impl, link.impl, procBlk.Addr().impl)
		deferData := Expr{ptr, prog.DeferPtr()}
		b.pthreadSetspecific(key, deferData)
		bitsPtr := b.FieldAddr(deferData, deferBits)
		rethPtr := b.FieldAddr(deferData, deferRethrow)
		rundPtr := b.FieldAddr(deferData, deferRunDefers)
		argsPtr := b.FieldAddr(deferData, deferArgs)

		czero := prog.IntVal(0, prog.CInt())
		retval := b.Sigsetjmp(jb, czero)
		if kind != DeferAlways {
			panicBlk = self.MakeBlock()
		} else {
			blks = self.MakeBlocks(2)
			next, panicBlk = blks[0], blks[1]
		}
		b.If(b.BinOp(token.EQL, retval, czero), next, panicBlk)

		self.defer_ = &aDefer{
			key:       key,
			data:      deferData,
			bitsPtr:   bitsPtr,
			rethPtr:   rethPtr,
			rundPtr:   rundPtr,
			argsPtr:   argsPtr,
			procBlk:   procBlk,
			panicBlk:  panicBlk,
			rundsNext: []BasicBlock{rethrowBlk},
		}

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
		panic("todo: DeferInLoop is not supported - " + b.Func.Name())
	}
	typ := b.saveDeferArgs(self, fn, args)
	self.stmts = append(self.stmts, func(bits Expr) {
		switch kind {
		case DeferInCond:
			zero := prog.Val(uintptr(0))
			has := b.BinOp(token.NEQ, b.BinOp(token.AND, bits, nextbit), zero)
			b.IfThen(has, func() {
				b.callDefer(self, typ, fn, args)
			})
		case DeferAlways:
			b.callDefer(self, typ, fn, args)
		}
	})
}

/*
type node struct {
	prev *node
	fn   func()
	args ...
}
// push
defer.Args = &node{defer.Args,fn,args...}
// pop
node := defer.Args
defer.Args = node.prev
free(node)
*/

func (b Builder) saveDeferArgs(self *aDefer, fn Expr, args []Expr) Type {
	if fn.kind != vkClosure && len(args) == 0 {
		return nil
	}
	prog := b.Prog
	offset := 1
	if fn.kind == vkClosure {
		offset++
	}
	typs := make([]Type, len(args)+offset)
	flds := make([]llvm.Value, len(args)+offset)
	typs[0] = prog.VoidPtr()
	flds[0] = b.Load(self.argsPtr).impl
	if offset == 2 {
		typs[1] = fn.Type
		flds[1] = fn.impl
	}
	for i, arg := range args {
		typs[i+offset] = arg.Type
		flds[i+offset] = arg.impl
	}
	typ := prog.Struct(typs...)
	ptr := Expr{b.aggregateMalloc(typ, flds...), prog.VoidPtr()}
	b.Store(self.argsPtr, ptr)
	return typ
}

func (b Builder) callDefer(self *aDefer, typ Type, fn Expr, args []Expr) {
	if typ == nil {
		b.Call(fn, args...)
		return
	}
	prog := b.Prog
	ptr := b.Load(self.argsPtr)
	data := b.Load(Expr{ptr.impl, prog.Pointer(typ)})
	offset := 1
	b.Store(self.argsPtr, Expr{b.getField(data, 0).impl, prog.VoidPtr()})
	if fn.kind == vkClosure {
		fn = b.getField(data, 1)
		offset++
	}
	for i := 0; i < len(args); i++ {
		args[i] = b.getField(data, i+offset)
	}
	b.Call(fn, args...)
	b.free(ptr)
}

// RunDefers emits instructions to run deferred instructions.
func (b Builder) RunDefers() {
	self := b.getDefer(DeferInCond)
	if self == nil {
		return
	}
	blk := b.Func.MakeBlock()
	self.rundsNext = append(self.rundsNext, blk)

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
	nexts := self.rundsNext
	if len(nexts) == 0 {
		return
	}

	rethrowBlk := nexts[0]
	procBlk := self.procBlk
	panicBlk := self.panicBlk
	rethPtr := self.rethPtr
	rundPtr := self.rundPtr
	bitsPtr := self.bitsPtr

	stmts := self.stmts
	n := len(stmts)
	rethsNext := make([]BasicBlock, n+1)
	blks := p.MakeBlocks(n - 1)
	copy(rethsNext[1:], blks)
	rethsNext[0] = rethrowBlk
	rethsNext[n] = procBlk

	for i := n - 1; i >= 0; i-- {
		rethNext := rethsNext[i]
		b.SetBlockEx(rethsNext[i+1], AtEnd, true)
		b.Store(rethPtr, rethNext.Addr())
		stmts[i](b.Load(bitsPtr))
		if i != 0 {
			b.Jump(rethNext)
		}
	}
	link := b.getField(b.Load(self.data), deferLink)
	b.pthreadSetspecific(self.key, link)
	b.IndirectJump(b.Load(rundPtr), nexts)

	b.SetBlockEx(panicBlk, AtEnd, false) // panicBlk: exec runDefers and rethrow
	b.Store(rundPtr, rethrowBlk.Addr())
	b.IndirectJump(b.Load(rethPtr), rethsNext)
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
