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
	"bytes"
	"fmt"
	"go/token"
	"go/types"
	"log"
	"strings"

	"github.com/goplus/llvm"
)

// -----------------------------------------------------------------------------

type aBasicBlock struct {
	first llvm.BasicBlock // a Go SSA basic block may have multiple LLVM basic blocks
	last  llvm.BasicBlock
	fn    Function
	idx   int
}

// BasicBlock represents a basic block in a function.
type BasicBlock = *aBasicBlock

// Parent returns the function to which the basic block belongs.
func (p BasicBlock) Parent() Function {
	return p.fn
}

// Index returns the index of the basic block in the parent function.
func (p BasicBlock) Index() int {
	return p.idx
}

// -----------------------------------------------------------------------------

type aBuilder struct {
	impl llvm.Builder
	blk  BasicBlock
	Func Function
	Pkg  Package
	Prog Program
}

// Builder represents a builder for creating instructions in a function.
type Builder = *aBuilder

// EndBuild ends the build process of a function.
func (b Builder) EndBuild() {
	b.Func.endDefer(b)
}

// Dispose disposes of the builder.
func (b Builder) Dispose() {
	b.impl.Dispose()
}

// SetBlock means SetBlockEx(blk, AtEnd, true).
func (b Builder) SetBlock(blk BasicBlock) Builder {
	if debugInstr {
		log.Printf("Block _llgo_%v:\n", blk.idx)
	}
	b.SetBlockEx(blk, AtEnd, true)
	return b
}

type InsertPoint int

const (
	AtEnd InsertPoint = iota
	AtStart
	BeforeLast
	afterInit
)

// SetBlockEx sets blk as current basic block and pos as its insert point.
func (b Builder) SetBlockEx(blk BasicBlock, pos InsertPoint, setBlk bool) Builder {
	if b.Func != blk.fn {
		panic("mismatched function")
	}
	switch pos {
	case AtEnd:
		b.impl.SetInsertPointAtEnd(blk.last)
	case AtStart:
		b.impl.SetInsertPointBefore(blk.first.FirstInstruction())
	case BeforeLast:
		b.impl.SetInsertPointBefore(blk.last.LastInstruction())
	case afterInit:
		b.impl.SetInsertPointBefore(instrAfterInit(blk.first))
	default:
		panic("SetBlockEx: invalid pos")
	}
	if setBlk {
		b.blk = blk
	}
	return b
}

func instrAfterInit(blk llvm.BasicBlock) llvm.Value {
	instr := blk.FirstInstruction()
	for {
		instr = llvm.NextInstruction(instr)
		if notInit(instr) {
			return instr
		}
	}
}

func notInit(instr llvm.Value) bool {
	switch op := instr.InstructionOpcode(); op {
	case llvm.Call:
		if n := instr.OperandsCount(); n == 1 {
			fn := instr.Operand(0)
			return !strings.HasSuffix(fn.Name(), ".init")
		}
	}
	return true
}

// -----------------------------------------------------------------------------

const (
	deferKey = "__llgo_defer"
)

type aDefer struct {
	nextBit  int        // next defer bit
	key      Expr       // pthread TLS key
	data     Expr       // pointer to runtime.Defer
	bitsPtr  Expr       // pointer to defer bits
	rundPtr  Expr       // pointer to RunDefers index
	procBlk  BasicBlock // deferProc block
	stmts    []func(bits Expr)
	runsNext []BasicBlock // next blocks of RunDefers
}

/*
// func(uintptr)
func (p Program) tyDeferFunc() *types.Signature {
	if p.deferFnTy == nil {
		paramUintptr := types.NewParam(token.NoPos, nil, "", p.Uintptr().raw.Type)
		params := types.NewTuple(paramUintptr)
		p.deferFnTy = types.NewSignatureType(nil, nil, nil, params, nil, false)
	}
	return p.deferFnTy
}
*/

func (p Package) deferInit(b Builder) {
	keyVar := p.VarOf(deferKey)
	if keyVar == nil {
		return
	}
	prog := p.Prog
	keyNil := prog.Null(prog.DeferPtrPtr())
	keyVar.Init(keyNil)
	keyVar.impl.SetLinkage(llvm.LinkOnceAnyLinkage)

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

func (b Builder) getDefer() *aDefer {
	self := b.Func
	if self.defer_ == nil {
		// TODO(xsw): move to funtion start
		// 0: proc func(uintptr)
		// 1: bits uintptr
		// 2: link *Defer
		// 3: rund int
		prog := b.Prog
		key := b.deferKey()
		deferfn := prog.Null(prog.VoidPtr())
		zero := prog.Val(uintptr(0))
		link := b.pthreadGetspecific(key)
		ptr := b.aggregateAlloca(prog.Defer(), deferfn.impl, zero.impl, link.impl)
		deferData := Expr{ptr, prog.DeferPtr()}
		b.pthreadSetspecific(key, deferData)
		self.defer_ = &aDefer{
			key:     key,
			data:    deferData,
			bitsPtr: b.FieldAddr(deferData, 1),
			rundPtr: b.FieldAddr(deferData, 3),
			procBlk: self.MakeBlock(),
		}
	}
	return self.defer_
}

// Defer emits a defer instruction.
func (b Builder) Defer(fn Expr, args ...Expr) {
	if debugInstr {
		logCall("Defer", fn, args)
	}
	prog := b.Prog
	self := b.getDefer()
	next := self.nextBit
	self.nextBit++
	bits := b.Load(self.bitsPtr)
	nextbit := prog.Val(uintptr(1 << next))
	b.Store(self.bitsPtr, b.BinOp(token.OR, bits, nextbit))

	self.stmts = append(self.stmts, func(bits Expr) {
		zero := prog.Val(uintptr(0))
		has := b.BinOp(token.NEQ, b.BinOp(token.AND, bits, nextbit), zero)
		b.IfThen(has, func() {
			b.Call(fn, args...)
		})
	})
}

// RunDefers emits instructions to run deferred instructions.
func (b Builder) RunDefers() {
	prog := b.Prog
	self := b.getDefer()
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
	n := len(nexts)
	if n == 0 {
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

	prog := b.Prog
	rund := b.Load(self.rundPtr)
	sw := b.impl.CreateSwitch(rund.impl, nexts[0].first, n-1)
	for i := 1; i < n; i++ {
		sw.AddCase(prog.Val(i).impl, nexts[i].first)
	}
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

// Return emits a return instruction.
func (b Builder) Return(results ...Expr) {
	if debugInstr {
		var b bytes.Buffer
		fmt.Fprint(&b, "Return ")
		for i, arg := range results {
			if i > 0 {
				fmt.Fprint(&b, ", ")
			}
			fmt.Fprint(&b, arg.impl)
		}
		log.Println(b.String())
	}
	switch n := len(results); n {
	case 0:
		b.impl.CreateRetVoid()
	case 1:
		raw := b.Func.raw.Type.(*types.Signature).Results().At(0).Type()
		ret := checkExpr(results[0], raw, b)
		b.impl.CreateRet(ret.impl)
	default:
		tret := b.Func.raw.Type.(*types.Signature).Results()
		b.impl.CreateAggregateRet(llvmParams(0, results, tret, b))
	}
}

// The Extract instruction yields component Index of Tuple.
//
// This is used to access the results of instructions with multiple
// return values, such as Call, TypeAssert, Next, UnOp(ARROW) and
// IndexExpr(Map).
//
// Example printed form:
//
//	t1 = extract t0 #1
func (b Builder) Extract(x Expr, i int) (ret Expr) {
	if debugInstr {
		log.Printf("Extract %v, %d\n", x.impl, i)
	}
	return b.getField(x, i)
}

// Jump emits a jump instruction.
func (b Builder) Jump(jmpb BasicBlock) {
	if b.Func != jmpb.fn {
		panic("mismatched function")
	}
	if debugInstr {
		log.Printf("Jump _llgo_%v\n", jmpb.idx)
	}
	b.impl.CreateBr(jmpb.first)
}

// If emits an if instruction.
func (b Builder) If(cond Expr, thenb, elseb BasicBlock) {
	if b.Func != thenb.fn || b.Func != elseb.fn {
		panic("mismatched function")
	}
	if debugInstr {
		log.Printf("If %v, _llgo_%v, _llgo_%v\n", cond.impl, thenb.idx, elseb.idx)
	}
	b.impl.CreateCondBr(cond.impl, thenb.first, elseb.first)
}

// IfThen emits an if-then instruction.
func (b Builder) IfThen(cond Expr, then func()) {
	blks := b.Func.MakeBlocks(2)
	b.If(cond, blks[0], blks[1])
	b.SetBlockEx(blks[0], AtEnd, false)
	then()
	b.Jump(blks[1])
	b.SetBlockEx(blks[1], AtEnd, false)
	b.blk.last = blks[1].last
}

// -----------------------------------------------------------------------------

// Phi represents a phi node.
type Phi struct {
	Expr
}

// AddIncoming adds incoming values to a phi node.
func (p Phi) AddIncoming(b Builder, preds []BasicBlock, f func(i int, blk BasicBlock) Expr) {
	bs := llvmPredBlocks(preds)
	vals := make([]llvm.Value, len(preds))
	for iblk, blk := range preds {
		vals[iblk] = f(iblk, blk).impl
	}
	p.impl.AddIncoming(vals, bs)
}

func llvmPredBlocks(preds []BasicBlock) []llvm.BasicBlock {
	ret := make([]llvm.BasicBlock, len(preds))
	for i, v := range preds {
		ret[i] = v.last
	}
	return ret
}

// Phi returns a phi node.
func (b Builder) Phi(t Type) Phi {
	phi := llvm.CreatePHI(b.impl, t.ll)
	return Phi{Expr{phi, t}}
}

// -----------------------------------------------------------------------------
