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
	"go/constant"
	"go/token"
	"go/types"
	"testing"
)

func init() {
	Initialize(InitAll)
}

func assertPkg(t *testing.T, p Package, expected string) {
	t.Helper()
	if v := p.String(); v != expected {
		t.Fatalf("\n==> got:\n%s\n==> expected:\n%s\n", v, expected)
	}
}

func TestVar(t *testing.T) {
	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")
	pkg.NewVar("a", types.Typ[types.Int])
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

@a = external global i64
`)
}

func TestConst(t *testing.T) {
	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")
	rets := types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Bool]))
	sig := types.NewSignatureType(nil, nil, nil, nil, rets, false)
	b := pkg.NewFunc("fn", sig).MakeBody(1)
	b.Return(b.Const(constant.MakeBool(true), types.Typ[types.Bool]))
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

define i1 @fn() {
_llgo_0:
  ret i1 true
}
`)
}

func TestStruct(t *testing.T) {
	empty := types.NewStruct(nil, nil)

	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")
	pkg.NewVar("a", empty)
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

@a = external global {}
`)
}

func TestNamedStruct(t *testing.T) {
	src := types.NewPackage("bar", "foo/bar")
	empty := types.NewNamed(types.NewTypeName(0, src, "Empty", nil), types.NewStruct(nil, nil), nil)

	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")
	pkg.NewVar("a", empty)
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

%Empty = type {}

@a = external global %Empty
`)
}

func TestDeclFunc(t *testing.T) {
	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")
	params := types.NewTuple(types.NewVar(0, nil, "a", types.Typ[types.Int]))
	sig := types.NewSignatureType(nil, nil, nil, params, nil, false)
	pkg.NewFunc("fn", sig)
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

declare void @fn(i64)
`)
}

func TestBasicFunc(t *testing.T) {
	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")
	params := types.NewTuple(
		types.NewVar(0, nil, "a", types.Typ[types.Int]),
		types.NewVar(0, nil, "b", types.Typ[types.Float64]))
	rets := types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Int]))
	sig := types.NewSignatureType(nil, nil, nil, params, rets, false)
	pkg.NewFunc("fn", sig).MakeBody(1).
		Return(prog.Val(1))
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

define i64 @fn(i64 %0, double %1) {
_llgo_0:
  ret i64 1
}
`)
}

func TestFuncParam(t *testing.T) {
	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")
	params := types.NewTuple(
		types.NewVar(0, nil, "a", types.Typ[types.Int]),
		types.NewVar(0, nil, "b", types.Typ[types.Float64]))
	rets := types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Int]))
	sig := types.NewSignatureType(nil, nil, nil, params, rets, false)
	fn := pkg.NewFunc("fn", sig)
	fn.MakeBody(1).Return(fn.Param(0))
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

define i64 @fn(i64 %0, double %1) {
_llgo_0:
  ret i64 %0
}
`)
}

func TestFuncCall(t *testing.T) {
	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")

	params := types.NewTuple(
		types.NewVar(0, nil, "a", types.Typ[types.Int]),
		types.NewVar(0, nil, "b", types.Typ[types.Float64]))
	rets := types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Int]))
	sig := types.NewSignatureType(nil, nil, nil, params, rets, false)
	fn := pkg.NewFunc("fn", sig)
	fn.MakeBody(1).
		Return(prog.Val(1))

	sigMain := types.NewSignatureType(nil, nil, nil, nil, nil, false)
	b := pkg.NewFunc("main", sigMain).MakeBody(1)
	b.Call(fn.Expr, prog.Val(1), prog.Val(1.2))
	b.Return()

	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

define i64 @fn(i64 %0, double %1) {
_llgo_0:
  ret i64 1
}

define void @main() {
_llgo_0:
  %0 = call i64 @fn(i64 1, double 1.200000e+00)
  ret void
}
`)
}

func TestFuncMultiRet(t *testing.T) {
	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")
	params := types.NewTuple(
		types.NewVar(0, nil, "b", types.Typ[types.Float64]))
	rets := types.NewTuple(
		types.NewVar(0, nil, "c", types.Typ[types.Int]),
		types.NewVar(0, nil, "d", types.Typ[types.Float64]))
	sig := types.NewSignatureType(nil, nil, nil, params, rets, false)
	a := pkg.NewVar("a", types.Typ[types.Int])
	fn := pkg.NewFunc("fn", sig)
	b := fn.MakeBody(1)
	b.Return(a.Expr, fn.Param(0))
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

@a = external global i64

define { i64, double } @fn(double %0) {
_llgo_0:
  %mrv = insertvalue { i64, double } { ptr @a, double poison }, double %0, 1
  ret { i64, double } %mrv
}
`)
}

func TestJump(t *testing.T) {
	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")
	sig := types.NewSignatureType(nil, nil, nil, nil, nil, false)
	fn := pkg.NewFunc("loop", sig)
	b := fn.MakeBody(1)
	b.Jump(fn.Block(0))
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

define void @loop() {
_llgo_0:
  br label %_llgo_0
}
`)
}

func TestIf(t *testing.T) {
	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")
	params := types.NewTuple(types.NewVar(0, nil, "a", types.Typ[types.Int]))
	rets := types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Int]))
	sig := types.NewSignatureType(nil, nil, nil, params, rets, false)
	fn := pkg.NewFunc("fn", sig)
	b := fn.MakeBody(3)
	iftrue := fn.Block(1)
	iffalse := fn.Block(2)
	if iftrue.Index() != 1 || iftrue.Parent() != fn {
		t.Fatal("iftrue")
	}
	cond := b.BinOp(token.GTR, fn.Param(0), prog.Val(0))
	b.If(cond, iftrue, iffalse)
	b.SetBlock(iftrue).Return(prog.Val(1))
	b.SetBlock(iffalse).Return(prog.Val(0))
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

define i64 @fn(i64 %0) {
_llgo_0:
  %1 = icmp sgt i64 %0, 0
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret i64 1

_llgo_2:                                          ; preds = %_llgo_0
  ret i64 0
}
`)
}

func TestPrintf(t *testing.T) {
	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")
	pchar := types.NewPointer(types.Typ[types.Int8])
	params := types.NewTuple(types.NewVar(0, nil, "format", pchar), VArg())
	rets := types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Int32]))
	sig := types.NewSignatureType(nil, nil, nil, params, rets, false)
	pkg.NewFunc("printf", sig)
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

declare i32 @printf(ptr, ...)
`)
}

func TestBinOp(t *testing.T) {
	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")
	params := types.NewTuple(
		types.NewVar(0, nil, "a", types.Typ[types.Int]),
		types.NewVar(0, nil, "b", types.Typ[types.Float64]))
	rets := types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Int]))
	sig := types.NewSignatureType(nil, nil, nil, params, rets, false)
	fn := pkg.NewFunc("fn", sig)
	b := fn.MakeBody(1)
	ret := b.BinOp(token.ADD, fn.Param(0), prog.Val(1))
	b.Return(ret)
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

define i64 @fn(i64 %0, double %1) {
_llgo_0:
  %2 = add i64 %0, 1
  ret i64 %2
}
`)
}

func TestUnOp(t *testing.T) {
	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")
	params := types.NewTuple(
		types.NewVar(0, nil, "p", types.NewPointer(types.Typ[types.Int])),
	)
	rets := types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Int]))
	sig := types.NewSignatureType(nil, nil, nil, params, rets, false)
	fn := pkg.NewFunc("fn", sig)
	b := fn.MakeBody(1)
	ptr := fn.Param(0)
	val := b.UnOp(token.MUL, ptr)
	val2 := b.BinOp(token.SHR, val, prog.Val(1))
	b.Store(ptr, val2)
	b.Return(val2)
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

define i64 @fn(ptr %0) {
_llgo_0:
  %1 = load i64, ptr %0, align 4
  %2 = ashr i64 %1, 1
  store i64 %2, ptr %0, align 4
  ret i64 %2
}
`)
}
