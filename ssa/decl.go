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
	"go/types"

	"github.com/goplus/llvm"
)

// -----------------------------------------------------------------------------

// A NamedConst is a Member of a Package representing a package-level
// named constant.
//
// Pos() returns the position of the declaring ast.ValueSpec.Names[*]
// identifier.
//
// NB: a NamedConst is not a Value; it contains a constant Value, which
// it augments with the name and position of its 'const' declaration.
type aNamedConst struct {
}

type NamedConst = *aNamedConst

// -----------------------------------------------------------------------------

// A Global is a named Value holding the address of a package-level
// variable.
//
// Pos() returns the position of the ast.ValueSpec.Names[*]
// identifier.
type aGlobal struct {
	impl llvm.Value
	Type
}

type Global = *aGlobal

// -----------------------------------------------------------------------------

// Function represents the parameters, results, and code of a function
// or method.
//
// If Blocks is nil, this indicates an external function for which no
// Go source code is available.  In this case, FreeVars, Locals, and
// Params are nil too.  Clients performing whole-program analysis must
// handle external functions specially.
//
// Blocks contains the function's control-flow graph (CFG).
// Blocks[0] is the function entry point; block order is not otherwise
// semantically significant, though it may affect the readability of
// the disassembly.
// To iterate over the blocks in dominance order, use DomPreorder().
//
// Recover is an optional second entry point to which control resumes
// after a recovered panic.  The Recover block may contain only a return
// statement, preceded by a load of the function's named return
// parameters, if any.
//
// A nested function (Parent()!=nil) that refers to one or more
// lexically enclosing local variables ("free variables") has FreeVars.
// Such functions cannot be called directly but require a
// value created by MakeClosure which, via its Bindings, supplies
// values for these parameters.
//
// If the function is a method (Signature.Recv() != nil) then the first
// element of Params is the receiver parameter.
//
// A Go package may declare many functions called "init".
// For each one, Object().Name() returns "init" but Name() returns
// "init#1", etc, in declaration order.
//
// Pos() returns the declaring ast.FuncLit.Type.Func or the position
// of the ast.FuncDecl.Name, if the function was explicit in the
// source.  Synthetic wrappers, for which Synthetic != "", may share
// the same position as the function they wrap.
// Syntax.Pos() always returns the position of the declaring "func" token.
//
// Type() returns the function's Signature.
//
// A generic function is a function or method that has uninstantiated type
// parameters (TypeParams() != nil). Consider a hypothetical generic
// method, (*Map[K,V]).Get. It may be instantiated with all ground
// (non-parameterized) types as (*Map[string,int]).Get or with
// parameterized types as (*Map[string,U]).Get, where U is a type parameter.
// In both instantiations, Origin() refers to the instantiated generic
// method, (*Map[K,V]).Get, TypeParams() refers to the parameters [K,V] of
// the generic method. TypeArgs() refers to [string,U] or [string,int],
// respectively, and is nil in the generic method.
type aFunction struct {
	Expr
	prog Program

	params []Type
}

type Function = *aFunction

func newFunction(fn llvm.Value, t Type, prog Program) Function {
	return &aFunction{Expr{fn, t}, prog, newParams(t, prog)}
}

func newParams(fn Type, prog Program) (params []Type) {
	sig := fn.t.(*types.Signature)
	in := sig.Params()
	if n := in.Len(); n > 0 {
		params = make([]Type, n)
		for i := 0; i < n; i++ {
			params[i] = prog.llvmType(in.At(i).Type())
		}
	}
	return
}

func (p Function) Param(i int) Expr {
	return Expr{p.impl.Param(i), p.params[i]}
}

func (p Function) MakeBody(label string) Builder {
	body := llvm.AddBasicBlock(p.impl, label)
	prog := p.prog
	b := prog.ctx.NewBuilder()
	b.Finalize()
	b.SetInsertPointAtEnd(body)
	return &aBuilder{b, prog}
}

// -----------------------------------------------------------------------------
