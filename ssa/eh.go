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
	"unsafe"

	"github.com/goplus/llvm"
)

// -----------------------------------------------------------------------------

// func setjmp(env unsafe.Pointer) c.Int
func (p Program) tySetjmp() *types.Signature {
	if p.setjmpTy == nil {
		paramPtr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		paramCInt := types.NewParam(token.NoPos, nil, "", p.CInt().raw.Type)
		params := types.NewTuple(paramPtr)
		results := types.NewTuple(paramCInt)
		p.setjmpTy = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.setjmpTy
}

// func longjmp(env unsafe.Pointer, retval c.Int)
func (p Program) tyLongjmp() *types.Signature {
	if p.longjmpTy == nil {
		paramPtr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		paramCInt := types.NewParam(token.NoPos, nil, "", p.CInt().raw.Type)
		params := types.NewTuple(paramPtr, paramCInt)
		p.longjmpTy = types.NewSignatureType(nil, nil, nil, params, nil, false)
	}
	return p.longjmpTy
}

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

// func() unsafe.Pointer
func (p Program) tyStacksave() *types.Signature {
	if p.stackSaveTy == nil {
		paramPtr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		params := types.NewTuple(paramPtr)
		p.stackSaveTy = types.NewSignatureType(nil, nil, nil, nil, params, false)
	}
	return p.stackSaveTy
}

func (b Builder) AllocaSigjmpBuf() Expr {
	prog := b.Prog
	sigjmpBufTy := prog.rtType("SigjmpBuf") // Get type from runtime (target architecture)
	n := prog.SizeOf(sigjmpBufTy)           // Get size for target architecture
	size := prog.IntVal(n, prog.Uintptr())
	return b.Alloca(size)
}

// declare ptr @llvm.stacksave.p0()
func (b Builder) StackSave() Expr {
	fn := b.Pkg.cFunc("llvm.stacksave", b.Prog.tyStacksave())
	return b.InlineCall(fn)
}

// addReturnsTwiceAttr adds the returns_twice attribute to a function.
// This attribute tells LLVM that the function returns twice (once directly, once via longjmp),
// ensuring that variables used across setjmp/longjmp boundaries are placed in
// callee-saved registers or spilled to stack, preventing them from becoming invalid
// after longjmp returns (e.g., the caller's DeferFrame pointer).
func (b Builder) addReturnsTwiceAttr(fn Expr) {
	ctx := b.Pkg.mod.Context()
	attr := ctx.CreateEnumAttribute(llvm.AttributeKindID("returns_twice"), 0)
	fn.impl.AddFunctionAttr(attr)
}

func (b Builder) Sigsetjmp(jb, savemask Expr) Expr {
	if b.Prog.target.GOARCH == "wasm" {
		return b.Setjmp(jb)
	}
	fname := "sigsetjmp"
	if b.Prog.target.GOOS == "linux" {
		fname = "__sigsetjmp"
	}
	fn := b.Pkg.cFunc(fname, b.Prog.tySigsetjmp())
	b.addReturnsTwiceAttr(fn)
	return b.Call(fn, jb, savemask)
}

func (b Builder) Siglongjmp(jb, retval Expr) {
	if b.Prog.target.GOARCH == "wasm" {
		b.Longjmp(jb, retval)
		return
	}
	fn := b.Pkg.cFunc("siglongjmp", b.Prog.tySiglongjmp()) // TODO(xsw): mark as noreturn
	b.Call(fn, jb, retval)
	// b.Unreachable()
}

func (b Builder) Setjmp(jb Expr) Expr {
	fn := b.Pkg.cFunc("setjmp", b.Prog.tySetjmp())
	b.addReturnsTwiceAttr(fn)
	return b.Call(fn, jb)
}

func (b Builder) Longjmp(jb, retval Expr) {
	fn := b.Pkg.cFunc("longjmp", b.Prog.tyLongjmp())
	b.Call(fn, jb, retval)
	// b.Unreachable()
}

// -----------------------------------------------------------------------------

func (p Function) deferInitBuilder() (b Builder, next BasicBlock) {
	b = p.NewBuilder()
	next = b.setBlockMoveLast(p.blks[0])
	p.blks[0].last = next.last
	return
}

type aDefer struct {
	nextBit   int          // next defer bit
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

		zero := prog.Val(uintptr(0))
		link := b.Call(b.Pkg.rtFunc("GetThreadDefer"))
		jb := b.AllocaSigjmpBuf()
		ptr := b.aggregateAllocU(prog.Defer(), jb.impl, zero.impl, link.impl, procBlk.Addr().impl)
		deferData := Expr{ptr, prog.DeferPtr()}
		b.Call(b.Pkg.rtFunc("SetThreadDefer"), deferData)
		bitsPtr := b.FieldAddr(deferData, deferBits)
		rethPtr := b.FieldAddr(deferData, deferRethrow)
		rundPtr := b.FieldAddr(deferData, deferRunDefers)
		argsPtr := b.FieldAddr(deferData, deferArgs)
		// Initialize the args list so later guards (e.g. DeferAlways/DeferInLoop)
		// can safely detect an empty chain without a prior push.
		b.Store(argsPtr, prog.Nil(prog.VoidPtr()))

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
	return b.Call(b.Pkg.rtFunc("GetThreadDefer"))
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
		if uintptr(next) >= unsafe.Sizeof(uintptr(0))*8 {
			panic("too many conditional defers")
		}
		self.nextBit++
		bits := b.Load(self.bitsPtr)
		nextbit = prog.Val(uintptr(1 << next))
		b.Store(self.bitsPtr, b.BinOp(token.OR, bits, nextbit))
	case DeferAlways:
		// nothing to do
	case DeferInLoop:
		// Loop defers rely on a dedicated drain loop inserted below.
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
		case DeferInLoop:
			prog := b.Prog
			condBlk := b.Func.MakeBlock()
			bodyBlk := b.Func.MakeBlock()
			exitBlk := b.Func.MakeBlock()
			// Control flow:
			//   condBlk: check argsPtr for non-nil to see if there's work to drain.
			//   bodyBlk: execute a single defer node, then jump back to condBlk.
			//   exitBlk: reached when the list is empty (argsPtr == nil).
			// This mirrors runtime's linked-list unwinding semantics for loop defers.

			// jump to condition check before executing
			b.Jump(condBlk)
			b.SetBlockEx(condBlk, AtEnd, true)
			list := b.Load(self.argsPtr)
			has := b.BinOp(token.NEQ, list, prog.Nil(prog.VoidPtr()))
			b.If(has, bodyBlk, exitBlk)

			b.SetBlockEx(bodyBlk, AtEnd, true)
			b.callDefer(self, typ, fn, args)
			b.Jump(condBlk)

			b.SetBlockEx(exitBlk, AtEnd, true)
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
	ptr := Expr{b.aggregateAllocU(typ, flds...), prog.VoidPtr()}
	b.Store(self.argsPtr, ptr)
	return typ
}

func (b Builder) callDefer(self *aDefer, typ Type, fn Expr, args []Expr) {
	if typ == nil {
		b.Call(fn, args...)
		return
	}
	prog := b.Prog
	zero := prog.Nil(prog.VoidPtr())
	list := b.Load(self.argsPtr)
	has := b.BinOp(token.NEQ, list, zero)
	// The guard is required because callDefer is reused by endDefer() after the
	// list has been drained. Without this check we would dereference a nil
	// pointer when no loop defers were recorded.
	b.IfThen(has, func() {
		ptr := b.Load(self.argsPtr)
		data := b.Load(Expr{ptr.impl, prog.Pointer(typ)})
		offset := 1
		b.Store(self.argsPtr, Expr{b.getField(data, 0).impl, prog.VoidPtr()})
		callFn := fn
		if callFn.kind == vkClosure {
			callFn = b.getField(data, 1)
			offset++
		}
		for i := 0; i < len(args); i++ {
			args[i] = b.getField(data, i+offset)
		}
		b.Call(callFn, args...)
		b.Call(b.Pkg.rtFunc("FreeDeferNode"), ptr)
	})
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
	b.Call(b.Pkg.rtFunc("SetThreadDefer"), link)
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
// Coroutine Defer Implementation
//
// In coroutine mode, defer uses a different mechanism than setjmp/longjmp:
// - Defers are stored in a linked list with an isCoro field
// - All defers execute at the exit block (before final suspend)
// - Panic sets the panic value and jumps to exit block
// - After defers, check if panic was recovered; if not, propagate
// - If defer function has suspend points (isCoro), await it
//
// Closure already has $isCoro field, so for closures we use that.
// For regular functions, we store isCoro in the node.
// -----------------------------------------------------------------------------

// aCoroDefer holds the defer state for coroutine mode.
type aCoroDefer struct {
	nextBit int             // next defer bit for conditional defers
	bitsPtr Expr            // pointer to defer bits (stack allocated)
	argsPtr Expr            // func and args links (stack allocated)
	stmts   []coroDeferStmt // deferred function metadata
}

// coroDeferStmt holds metadata for a single deferred call.
type coroDeferStmt struct {
	kind   DoAction
	typ    Type     // struct type for args storage (nil if no args)
	fn     Expr     // the function to call
	args   []Expr   // original args (for type info)
	isCoro bool     // whether fn has suspend points (for non-closure)
	bit    Expr     // bit mask for conditional defer
}

// getCoroDefer returns the coroutine defer state, creating it if needed.
func (b Builder) getCoroDefer() *aCoroDefer {
	self := b.Func
	if self.coroDefer == nil {
		prog := b.Prog

		// Allocate bits on stack
		zero := prog.Val(uintptr(0))
		bitsAlloca := b.AllocaT(prog.Uintptr())
		b.Store(bitsAlloca, zero)

		// Allocate args link on stack
		argsAlloca := b.AllocaT(prog.VoidPtr())
		b.Store(argsAlloca, prog.Nil(prog.VoidPtr()))

		self.coroDefer = &aCoroDefer{
			bitsPtr: bitsAlloca,
			argsPtr: argsAlloca,
		}
	}
	return self.coroDefer
}

// CoroDefer emits a defer instruction in coroutine mode.
// isCoro indicates whether the deferred function has suspend points.
// For closures, the $isCoro field is used instead.
func (b Builder) CoroDefer(kind DoAction, fn Expr, args []Expr, isCoro bool) {
	if debugInstr {
		logCall("CoroDefer", fn, args)
	}
	prog := b.Prog
	self := b.getCoroDefer()

	var bit Expr
	switch kind {
	case DeferInCond:
		next := self.nextBit
		if uintptr(next) >= 64 {
			panic("too many conditional defers")
		}
		self.nextBit++
		bits := b.Load(self.bitsPtr)
		bit = prog.Val(uintptr(1 << next))
		b.Store(self.bitsPtr, b.BinOp(token.OR, bits, bit))
	}

	// Save fn and args to linked list
	// For non-closure: {prev, isCoro, fn, args...}
	// For closure: {prev, closure, args...} - closure has $isCoro
	typ := b.saveCoroDeferArgs(self, fn, args, isCoro)

	// Record metadata for later execution
	self.stmts = append(self.stmts, coroDeferStmt{
		kind:   kind,
		typ:    typ,
		fn:     fn,
		args:   args,
		isCoro: isCoro,
		bit:    bit,
	})
}

// saveCoroDeferArgs saves deferred function and args to linked list.
func (b Builder) saveCoroDeferArgs(self *aCoroDefer, fn Expr, args []Expr, isCoro bool) Type {
	prog := b.Prog

	// Determine structure based on fn type
	isClosure := fn.kind == vkClosure

	// Calculate offset
	var offset int
	if isClosure {
		// {prev, closure, args...}
		offset = 2
	} else {
		// {prev, isCoro, fn, args...}
		offset = 3
	}

	typs := make([]Type, len(args)+offset)
	flds := make([]llvm.Value, len(args)+offset)

	// Field 0: prev pointer
	typs[0] = prog.VoidPtr()
	flds[0] = b.Load(self.argsPtr).impl

	if isClosure {
		// Field 1: closure (has $isCoro inside)
		typs[1] = fn.Type
		flds[1] = fn.impl
	} else {
		// Field 1: isCoro flag
		typs[1] = prog.Bool()
		flds[1] = prog.BoolVal(isCoro).impl
		// Field 2: fn
		typs[2] = fn.Type
		flds[2] = fn.impl
	}

	// Remaining fields: args
	for i, arg := range args {
		typs[i+offset] = arg.Type
		flds[i+offset] = arg.impl
	}

	typ := prog.Struct(typs...)
	ptr := Expr{b.aggregateAllocU(typ, flds...), prog.VoidPtr()}
	b.Store(self.argsPtr, ptr)
	return typ
}

// CoroRunDefers executes all deferred functions in coroutine mode.
// This is called at the exit block before final suspend.
// state is needed for await if defer function has suspend points.
func (b Builder) CoroRunDefers(state *CoroState) {
	self := b.Func.coroDefer
	if self == nil {
		return
	}
	stmts := self.stmts
	if len(stmts) == 0 {
		return
	}

	prog := b.Prog
	bits := b.Load(self.bitsPtr)

	// Execute defers in reverse order (LIFO)
	for i := len(stmts) - 1; i >= 0; i-- {
		stmt := stmts[i]
		switch stmt.kind {
		case DeferInCond:
			zero := prog.Val(uintptr(0))
			has := b.BinOp(token.NEQ, b.BinOp(token.AND, bits, stmt.bit), zero)
			b.IfThen(has, func() {
				b.execCoroDefer(self, stmt, state)
			})
		case DeferAlways:
			b.execCoroDefer(self, stmt, state)
		case DeferInLoop:
			// Drain the linked list
			condBlk := b.Func.MakeBlock()
			bodyBlk := b.Func.MakeBlock()
			exitBlk := b.Func.MakeBlock()

			b.Jump(condBlk)
			b.SetBlockEx(condBlk, AtEnd, true)
			list := b.Load(self.argsPtr)
			has := b.BinOp(token.NEQ, list, prog.Nil(prog.VoidPtr()))
			b.If(has, bodyBlk, exitBlk)

			b.SetBlockEx(bodyBlk, AtEnd, true)
			b.execCoroDefer(self, stmt, state)
			b.Jump(condBlk)

			b.SetBlockEx(exitBlk, AtEnd, true)
		}
	}
}

// execCoroDefer pops and executes a single deferred call.
func (b Builder) execCoroDefer(self *aCoroDefer, stmt coroDeferStmt, state *CoroState) {
	prog := b.Prog
	typ := stmt.typ
	isClosure := stmt.fn.kind == vkClosure

	if typ == nil {
		// No args stored, just call directly
		b.callCoroDeferFn(stmt.fn, stmt.args, stmt.isCoro, isClosure, state)
		return
	}

	zero := prog.Nil(prog.VoidPtr())
	list := b.Load(self.argsPtr)
	has := b.BinOp(token.NEQ, list, zero)

	b.IfThen(has, func() {
		ptr := b.Load(self.argsPtr)
		data := b.Load(Expr{ptr.impl, prog.Pointer(typ)})

		// Field 0: prev - update argsPtr
		b.Store(self.argsPtr, Expr{b.getField(data, 0).impl, prog.VoidPtr()})

		var callFn Expr
		var isCoro Expr
		var offset int
		args := make([]Expr, len(stmt.args))

		if isClosure {
			// {prev, closure, args...}
			// closure is {$f, $data, $isCoro}
			callFn = b.getField(data, 1) // the closure
			offset = 2
		} else {
			// {prev, isCoro, fn, args...}
			isCoro = b.getField(data, 1)
			callFn = b.getField(data, 2)
			offset = 3
		}

		for i := 0; i < len(stmt.args); i++ {
			args[i] = b.getField(data, i+offset)
		}

		// Call based on type
		if isClosure {
			// For closure, extract $isCoro from closure itself
			closureIsCoro := b.Field(callFn, 2)
			b.callCoroDeferWithCheck(callFn, args, closureIsCoro, true, state)
		} else {
			b.callCoroDeferWithCheck(callFn, args, isCoro, false, state)
		}

		// Free the node
		b.Call(b.Pkg.rtFunc("FreeDeferNode"), ptr)
	})
}

// callCoroDeferFn calls a deferred function directly (compile-time known isCoro).
func (b Builder) callCoroDeferFn(fn Expr, args []Expr, isCoro bool, isClosure bool, state *CoroState) {
	if !isCoro {
		// Direct call
		b.Call(fn, args...)
		return
	}

	// Has suspend points, need to await
	if isClosure {
		// Closure: use the stored $coro function pointer
		fnPtr := b.Field(fn, 0)
		ctx := b.Field(fn, 1)
		sig := fn.raw.Type.Underlying().(*types.Struct).Field(0).Type().(*types.Signature)
		allArgs := append([]Expr{ctx}, args...)
		handle := b.CallIndirectCoroWithSig(fnPtr, sig, true, allArgs...)
		b.CoroAwaitWithSuspend(handle, state)
	} else {
		// Regular function - should already be $coro version
		handle := b.Call(fn, args...)
		b.CoroAwaitWithSuspend(handle, state)
	}
}

// callCoroDeferWithCheck calls deferred function with runtime isCoro check.
func (b Builder) callCoroDeferWithCheck(fn Expr, args []Expr, isCoro Expr, isClosure bool, state *CoroState) {
	f := b.Func

	coroBlk := f.MakeBlock()
	syncBlk := f.MakeBlock()
	doneBlk := f.MakeBlock()

	b.If(isCoro, coroBlk, syncBlk)

	// Coro path: call $coro version and await
	b.SetBlock(coroBlk)
	if isClosure {
		fnPtr := b.Field(fn, 0)
		ctx := b.Field(fn, 1)
		sig := fn.raw.Type.Underlying().(*types.Struct).Field(0).Type().(*types.Signature)
		allArgs := append([]Expr{ctx}, args...)
		handle := b.CallIndirectCoroWithSig(fnPtr, sig, true, allArgs...)
		b.CoroAwaitWithSuspend(handle, state)
	} else {
		// For regular functions in coro path, fn should be $coro version
		handle := b.Call(fn, args...)
		b.CoroAwaitWithSuspend(handle, state)
	}
	b.Jump(doneBlk)

	// Sync path: direct call
	b.SetBlock(syncBlk)
	b.Call(fn, args...)
	b.Jump(doneBlk)

	b.SetBlock(doneBlk)
}

// CoroPanic emits a panic instruction in coroutine mode.
// Sets the panic value and jumps to the exit block where defers will run.
func (b Builder) CoroPanic(v Expr, exitBlk BasicBlock) {
	b.Call(b.Pkg.rtFunc("CoroSetPanic"), v)
	b.Jump(exitBlk)
}

// CoroCheckPanic checks if there's an unrecovered panic after defers ran.
// In coro mode, panic propagates by returning normally from the coroutine.
// The caller will check CoroIsPanic() after resuming and continue propagation.
// This function is a no-op placeholder for now - panic state is checked by caller.
func (b Builder) CoroCheckPanic() {
	// No-op: panic state (coroPanicVal) is preserved and checked by caller
	// after the coroutine returns via final suspend.
}

// CoroRecover implements recover() in coroutine mode.
// Returns the panic value if in panic state, nil otherwise.
func (b Builder) CoroRecover() Expr {
	return b.Call(b.Pkg.rtFunc("CoroRecover"))
}

// -----------------------------------------------------------------------------
