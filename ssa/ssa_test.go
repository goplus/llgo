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

	"github.com/goplus/llvm"
)

func TestClosureCtx(t *testing.T) {
	defer func() {
		if r := recover(); r == nil {
			t.Log("closureCtx: no error?")
		}
	}()
	var f aFunction
	f.closureCtx(nil)
}

func TestTypes(t *testing.T) {
	ctx := llvm.NewContext()
	llvmIntType(ctx, 4)

	intT := types.NewVar(0, nil, "", types.Typ[types.Int])
	ret := types.NewTuple(intT, intT)
	sig := types.NewSignatureType(nil, nil, nil, nil, ret, false)
	prog := NewProgram(nil)
	prog.retType(sig)
}

func TestIndexType(t *testing.T) {
	defer func() {
		if r := recover(); r == nil {
			t.Log("indexType: no error?")
		}
	}()
	indexType(types.Typ[types.Int])
}

func TestCvtType(t *testing.T) {
	gt := newGoTypes()
	callback := types.NewSignatureType(nil, nil, nil, nil, nil, false)
	params := types.NewTuple(types.NewParam(0, nil, "", callback))
	sig := types.NewSignatureType(nil, nil, nil, params, nil, false)
	ret1 := gt.cvtFunc(sig, nil)
	if ret1 == sig {
		t.Fatal("cvtFunc failed")
	}
	defer func() {
		if r := recover(); r == nil {
			t.Log("cvtType: no error?")
		}
	}()
	gt.cvtType(nil)
}

func TestUserdefExpr(t *testing.T) {
	b := &phisExprTy{}
	_ = b.String()
	test := func(a types.Type) {
		defer func() {
			if r := recover(); r == nil {
				t.Log("TestUserdefExpr: no error?")
			}
		}()
		a.Underlying()
	}
	test(b)
}

func TestAny(t *testing.T) {
	prog := NewProgram(nil)
	prog.SetRuntime(func() *types.Package {
		ret := types.NewPackage("runtime", "runtime")
		scope := ret.Scope()
		name := types.NewTypeName(0, ret, "Interface", nil)
		types.NewNamed(name, types.NewStruct(nil, nil), nil)
		scope.Insert(name)
		return ret
	})
	prog.Any()
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
	a := pkg.NewVar("a", types.Typ[types.Int], InGo)
	a.Init(prog.Val(100))
	b := pkg.NewVar("b", types.Typ[types.Int], InGo)
	b.Init(a.Expr)
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

@a = global i64 100
@b = global i64 @a
`)
}

func TestConst(t *testing.T) {
	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")
	rets := types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Bool]))
	sig := types.NewSignatureType(nil, nil, nil, nil, rets, false)
	b := pkg.NewFunc("fn", sig, InGo).MakeBody(1)
	b.Return(b.Const(constant.MakeBool(true), prog.Bool()))
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
	pkg.NewVar("a", empty, InGo)
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

@a = external global {}
`)
	if prog.NeedRuntime() {
		t.Fatal("NeedRuntime?")
	}
}

func TestNamedStruct(t *testing.T) {
	src := types.NewPackage("bar", "foo/bar")
	empty := types.NewNamed(types.NewTypeName(0, src, "Empty", nil), types.NewStruct(nil, nil), nil)

	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")
	pkg.NewVar("a", empty, InGo)
	if pkg.VarOf("a") == nil {
		t.Fatal("VarOf failed")
	}
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

%bar.Empty = type {}

@a = external global %bar.Empty
`)
}

func TestDeclFunc(t *testing.T) {
	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")
	params := types.NewTuple(types.NewVar(0, nil, "a", types.Typ[types.Int]))
	sig := types.NewSignatureType(nil, nil, nil, params, nil, false)
	pkg.NewFunc("fn", sig, InGo)
	if pkg.FuncOf("fn") == nil {
		t.Fatal("FuncOf failed")
	}
	if prog.retType(sig) != prog.Void() {
		t.Fatal("retType failed")
	}
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
	pkg.NewFunc("fn", sig, InGo).MakeBody(1).
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
	fn := pkg.NewFunc("fn", sig, InGo)
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
	fn := pkg.NewFunc("fn", sig, InGo)
	fn.MakeBody(1).
		Return(prog.Val(1))

	sigMain := types.NewSignatureType(nil, nil, nil, nil, nil, false)
	b := pkg.NewFunc("main", sigMain, InGo).MakeBody(1)
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
	a := pkg.NewVar("a", types.Typ[types.Int], InGo)
	fn := pkg.NewFunc("fn", sig, InGo)
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
	fn := pkg.NewFunc("loop", sig, InGo)
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
	fn := pkg.NewFunc("fn", sig, InGo)
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
	pkg.NewFunc("printf", sig, InGo)
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
	fn := pkg.NewFunc("fn", sig, InGo)
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
	fn := pkg.NewFunc("fn", sig, InGo)
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
