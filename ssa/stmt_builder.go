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

// Addr returns the address of the basic block.
func (p BasicBlock) Addr() Expr {
	fn := p.fn
	return Expr{llvm.BlockAddress(fn.impl, p.first), fn.Prog.VoidPtr()}
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

func (b Builder) setBlockMoveLast(blk BasicBlock) (next BasicBlock) {
	blkLast := blk.last
	last := blkLast.LastInstruction()
	last.RemoveFromParentAsInstruction()

	impl := b.impl

	next = b.Func.MakeBlock()
	impl.SetInsertPointAtEnd(next.last)
	impl.Insert(last)

	impl.SetInsertPointAtEnd(blkLast)
	return
}

type InsertPoint int

const (
	AtEnd InsertPoint = iota
	AtStart
	BeforeLast
	afterInit
)

// SetBlockEx sets blk as current basic block and pos as its insert point.
func (b Builder) SetBlockEx(blk BasicBlock, pos InsertPoint, setBlk bool) {
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

// IndirectJump emits an indirect jump instruction.
func (b Builder) IndirectJump(addr Expr, dests []BasicBlock) {
	if debugInstr {
		log.Printf("IndirectJump %v\n", addr.impl)
	}
	ibr := b.impl.CreateIndirectBr(addr.impl, len(dests))
	for _, dest := range dests {
		ibr.AddDest(dest.first)
	}
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
/*
type caseStmt struct {
	v   llvm.Value
	blk llvm.BasicBlock
}

type aSwitch struct {
	v     llvm.Value
	def   llvm.BasicBlock
	cases []caseStmt
}

// Switch represents a switch statement.
type Switch = *aSwitch

// Case emits a case instruction.
func (p Switch) Case(v Expr, blk BasicBlock) {
	if debugInstr {
		log.Printf("Case %v, _llgo_%v\n", v.impl, blk.idx)
	}
	p.cases = append(p.cases, caseStmt{v.impl, blk.first})
}

// End ends a switch statement.
func (p Switch) End(b Builder) {
	sw := b.impl.CreateSwitch(p.v, p.def, len(p.cases))
	for _, c := range p.cases {
		sw.AddCase(c.v, c.blk)
	}
}

// Switch starts a switch statement.
func (b Builder) Switch(v Expr, defb BasicBlock) Switch {
	if debugInstr {
		log.Printf("Switch %v, _llgo_%v\n", v.impl, defb.idx)
	}
	return &aSwitch{v.impl, defb.first, nil}
}
*/
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
