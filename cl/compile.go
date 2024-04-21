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

package cl

import (
	"fmt"
	"log"
	"sort"

	llssa "github.com/goplus/llgo/ssa"
	"golang.org/x/tools/go/ssa"
)

// -----------------------------------------------------------------------------

type dbgFlags = int

const (
	DbgFlagInstruction dbgFlags = 1 << iota

	DbgFlagAll = DbgFlagInstruction
)

var (
	debugInstr bool
)

// SetDebug sets debug flags.
func SetDebug(dbgFlags dbgFlags) {
	debugInstr = (dbgFlags & DbgFlagInstruction) != 0
}

// -----------------------------------------------------------------------------

type instrAndValue interface {
	ssa.Instruction
	ssa.Value
}

type context struct {
	prog  llssa.Program
	pkg   llssa.Package
	fn    llssa.Function
	bvals map[ssa.Value]llssa.Expr // block values
	inits []func()
}

func (p *context) compileType(pkg llssa.Package, member *ssa.Type) {
	panic("todo")
}

// Global variable.
func (p *context) compileGlobal(pkg llssa.Package, gbl *ssa.Global) {
	name, typ := gbl.Name(), gbl.Type()
	if debugInstr {
		log.Println("==> NewVar", name, typ)
	}
	g := pkg.NewVar(name, typ)
	g.Init(p.prog.Null(g.Type))
}

func (p *context) compileFunc(pkg llssa.Package, f *ssa.Function) {
	name := f.Name()
	if debugInstr {
		log.Println("==> NewFunc", name)
	}
	fn := pkg.NewFunc(name, f.Signature)
	p.inits = append(p.inits, func() {
		p.fn = fn
		defer func() {
			p.fn = nil
		}()
		nblk := len(f.Blocks)
		if nblk == 0 { // external function
			return
		}
		if debugInstr {
			log.Println("==> FuncBody", name)
		}
		fn.MakeBlocks(nblk)
		b := fn.NewBuilder()
		for _, block := range f.Blocks {
			p.compileBlock(b, block)
		}
	})
}

func (p *context) compileBlock(b llssa.Builder, block *ssa.BasicBlock) llssa.BasicBlock {
	ret := p.fn.Block(block.Index)
	b.SetBlock(ret)
	p.bvals = make(map[ssa.Value]llssa.Expr)
	for _, instr := range block.Instrs {
		p.compileInstr(b, instr)
	}
	return ret
}

func (p *context) compileInstrAndValue(b llssa.Builder, iv instrAndValue) (ret llssa.Expr) {
	if v, ok := p.bvals[iv]; ok {
		return v
	}
	switch v := iv.(type) {
	case *ssa.Call:
		call := v.Call
		fn := p.compileValue(b, call.Value)
		args := p.compileValues(b, call.Args)
		ret = b.Call(fn, args...)
	case *ssa.BinOp:
		x := p.compileValue(b, v.X)
		y := p.compileValue(b, v.Y)
		ret = b.BinOp(v.Op, x, y)
	case *ssa.UnOp:
		x := p.compileValue(b, v.X)
		ret = b.UnOp(v.Op, x)
	case *ssa.IndexAddr:
		x := p.compileValue(b, v.X)
		idx := p.compileValue(b, v.Index)
		ret = b.IndexAddr(x, idx)
	case *ssa.Alloc:
		t := v.Type()
		ret = b.Alloc(p.prog.Type(t), v.Heap)
	default:
		panic(fmt.Sprintf("compileInstrAndValue: unknown instr - %T\n", iv))
	}
	p.bvals[iv] = ret
	return ret
}

func (p *context) compileInstr(b llssa.Builder, instr ssa.Instruction) {
	if iv, ok := instr.(instrAndValue); ok {
		p.compileInstrAndValue(b, iv)
		return
	}
	switch v := instr.(type) {
	case *ssa.Store:
		ptr := p.compileValue(b, v.Addr)
		val := p.compileValue(b, v.Val)
		b.Store(ptr, val)
	case *ssa.Jump:
		fn := p.fn
		succs := v.Block().Succs
		jmpb := fn.Block(succs[0].Index)
		b.Jump(jmpb)
	case *ssa.Return:
		var results []llssa.Expr
		if n := len(v.Results); n > 0 {
			results = make([]llssa.Expr, n)
			for i, r := range v.Results {
				results[i] = p.compileValue(b, r)
			}
		}
		b.Return(results...)
	case *ssa.If:
		fn := p.fn
		cond := p.compileValue(b, v.Cond)
		succs := v.Block().Succs
		thenb := fn.Block(succs[0].Index)
		elseb := fn.Block(succs[1].Index)
		b.If(cond, thenb, elseb)
	default:
		panic(fmt.Sprintf("compileInstr: unknown instr - %T\n", instr))
	}
}

func (p *context) compileValue(b llssa.Builder, v ssa.Value) llssa.Expr {
	if iv, ok := v.(instrAndValue); ok {
		return p.compileInstrAndValue(b, iv)
	}
	switch v := v.(type) {
	case *ssa.Parameter:
		fn := v.Parent()
		for idx, param := range fn.Params {
			if param == v {
				return p.fn.Param(idx)
			}
		}
	case *ssa.Function:
		fn := p.pkg.FuncOf(v.Name())
		return fn.Expr
	case *ssa.Global:
		g := p.pkg.VarOf(v.Name())
		return g.Expr
	case *ssa.Const:
		t := v.Type()
		return b.Const(v.Value, p.prog.Type(t))
	}
	panic(fmt.Sprintf("compileValue: unknown value - %T\n", v))
}

func (p *context) compileValues(b llssa.Builder, vals []ssa.Value) []llssa.Expr {
	ret := make([]llssa.Expr, len(vals))
	for i, v := range vals {
		ret[i] = p.compileValue(b, v)
	}
	return ret
}

// -----------------------------------------------------------------------------

type Config struct {
}

// NewPackage compiles a Go package to LLVM IR package.
func NewPackage(prog llssa.Program, pkg *ssa.Package, conf *Config) (ret llssa.Package, err error) {
	type namedMember struct {
		name string
		val  ssa.Member
	}

	// Sort by position, so that the order of the functions in the IR matches
	// the order of functions in the source file. This is useful for testing,
	// for example.
	var members []*namedMember
	for name, v := range pkg.Members {
		members = append(members, &namedMember{name, v})
	}
	sort.Slice(members, func(i, j int) bool {
		iPos := members[i].val.Pos()
		jPos := members[j].val.Pos()
		return iPos < jPos
	})

	pkgTypes := pkg.Pkg
	ret = prog.NewPackage(pkgTypes.Name(), pkgTypes.Path())

	ctx := &context{
		prog: prog,
		pkg:  ret,
	}
	for _, m := range members {
		member := m.val
		switch member := member.(type) {
		case *ssa.Function:
			if member.TypeParams() != nil {
				// Do not try to build generic (non-instantiated) functions.
				continue
			}
			ctx.compileFunc(ret, member)
		case *ssa.Type:
			ctx.compileType(ret, member)
		case *ssa.Global:
			ctx.compileGlobal(ret, member)
		}
	}
	for _, ini := range ctx.inits {
		ini()
	}
	return
}

// -----------------------------------------------------------------------------
