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
	"sort"

	llssa "github.com/goplus/llgo/ssa"
	"golang.org/x/tools/go/ssa"
)

type Config struct {
}

// -----------------------------------------------------------------------------

type instrAndValue interface {
	ssa.Instruction
	ssa.Value
}

type context struct {
	prog llssa.Program
	pkg  llssa.Package
	fn   llssa.Function
	glbs map[*ssa.Global]llssa.Global
}

// Global variable.
func (p *context) compileGlobal(pkg llssa.Package, gbl *ssa.Global) llssa.Global {
	if g, ok := p.glbs[gbl]; ok {
		return g
	}
	g := pkg.NewVar(gbl.Name(), gbl.Type())
	p.glbs[gbl] = g
	return g
}

func (p *context) compileType(pkg llssa.Package, member *ssa.Type) {
	panic("todo")
}

func (p *context) compileFunc(pkg llssa.Package, f *ssa.Function) {
	fn := pkg.NewFunc(f.Name(), f.Signature)
	p.fn = fn
	defer func() {
		p.fn = nil
	}()
	if f.Blocks == nil { // external function
		return
	}
	b := fn.MakeBody("")
	for _, block := range f.Blocks {
		p.compileBlock(b, block)
	}
}

func (p *context) compileBlock(b llssa.Builder, block *ssa.BasicBlock) {
	_ = block.Index
	for _, instr := range block.Instrs {
		p.compileInstr(b, instr)
	}
}

func (p *context) compileInstrAndValue(b llssa.Builder, iv instrAndValue) llssa.Expr {
	switch v := iv.(type) {
	case *ssa.UnOp:
		x := p.compileValue(b, v.X)
		return b.UnOp(v.Op, x)
	}
	panic(fmt.Sprintf("compileInstrAndValue: unknown instr - %T\n", iv))
}

func (p *context) compileInstr(b llssa.Builder, instr ssa.Instruction) {
	if iv, ok := instr.(instrAndValue); ok {
		p.compileInstrAndValue(b, iv)
		return
	}
	switch v := instr.(type) {
	case *ssa.If:
		p.compileValue(b, v.Cond)
		return
	}
	panic(fmt.Sprintf("compileInstr: unknown instr - %T\n", instr))
}

func (p *context) compileValue(b llssa.Builder, v ssa.Value) llssa.Expr {
	if iv, ok := v.(instrAndValue); ok {
		return p.compileInstrAndValue(b, iv)
	}
	switch v := v.(type) {
	case *ssa.Global:
		g := p.compileGlobal(p.pkg, v)
		return g.Expr
	}
	panic(fmt.Sprintf("compileValue: unknown value - %T\n", v))
}

// -----------------------------------------------------------------------------

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
		glbs: make(map[*ssa.Global]llssa.Global),
	}
	for _, m := range members {
		member := m.val
		switch member := member.(type) {
		case *ssa.Function:
			if member.TypeParams() != nil {
				// Do not try to build generic (non-instantiated) functions.
				continue
			}
			if false {
				ctx.compileFunc(ret, member)
			}
		case *ssa.Type:
			ctx.compileType(ret, member)
		case *ssa.Global:
			ctx.compileGlobal(ret, member)
		}
	}
	return
}

// -----------------------------------------------------------------------------
