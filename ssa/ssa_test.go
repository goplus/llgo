//go:build !llgo
// +build !llgo

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
	"os"
	"strings"
	"testing"
	"unsafe"

	"github.com/goplus/gogen/packages"
	"github.com/goplus/llvm"
)

func TestEndDefer(t *testing.T) {
	prog := NewProgram(nil)
	pkg := prog.NewPackage("foo", "foo")
	fn := pkg.NewFunc("main", NoArgsNoRet, InC)
	b := fn.MakeBody(1)
	fn.defer_ = &aDefer{}
	fn.endDefer(b)
}

func TestUnsafeString(t *testing.T) {
	wd, err := os.Getwd()
	if err != nil {
		t.Fatal(err)
	}
	os.Chdir("../../runtime")
	defer os.Chdir(wd)
	prog := NewProgram(nil)
	prog.SetRuntime(func() *types.Package {
		fset := token.NewFileSet()
		imp := packages.NewImporter(fset)
		pkg, _ := imp.Import(PkgRuntime)
		return pkg
	})
	pkg := prog.NewPackage("foo", "foo")
	b := pkg.NewFunc("main", NoArgsNoRet, InC).MakeBody(1)
	b.Println(b.BuiltinCall("String", b.CStr("hello"), prog.Val(5)))
	b.Return()
}

func TestTooManyConditionalDefers(t *testing.T) {
	wd, err := os.Getwd()
	if err != nil {
		t.Fatal(err)
	}
	os.Chdir("../../runtime")
	defer os.Chdir(wd)

	prog := NewProgram(nil)
	prog.SetRuntime(func() *types.Package {
		fset := token.NewFileSet()
		imp := packages.NewImporter(fset)
		pkg, _ := imp.Import(PkgRuntime)
		return pkg
	})

	pkg := prog.NewPackage("foo", "foo")
	target := pkg.NewFunc("f", NoArgsNoRet, InGo)
	fn := pkg.NewFunc("main", NoArgsNoRet, InGo)
	fn.SetRecover(fn.MakeBlock())
	b := fn.MakeBody(1)

	defer func() {
		if r := recover(); r == nil {
			t.Fatal("expected panic: too many conditional defers")
		} else if r != "too many conditional defers" {
			t.Fatalf("unexpected panic: %v", r)
		}
	}()

	b.Return()
	for i := 0; i < 65; i++ {
		b.Defer(DeferInCond, target.Expr)
	}
}

func TestPointerSize(t *testing.T) {
	expected := unsafe.Sizeof(uintptr(0))
	if size := NewProgram(nil).PointerSize(); size != int(expected) {
		t.Fatal("bad PointerSize:", size)
	}
}

func TestSetBlock(t *testing.T) {
	defer func() {
		if r := recover(); r == nil {
			t.Log("SetBlock: no error?")
		}
	}()
	fn := &aFunction{}
	b := &aBuilder{Func: fn}
	b.SetBlock(&aBasicBlock{})
}

func TestSetBlockEx(t *testing.T) {
	defer func() {
		if r := recover(); r == nil {
			t.Log("SetBlockEx: no error?")
		}
	}()
	fn := &aFunction{}
	b := &aBuilder{Func: fn}
	b.SetBlockEx(&aBasicBlock{fn: fn}, -1, false)
}

func TestSetPython(t *testing.T) {
	prog := NewProgram(nil)
	typ := types.NewPackage("foo", "foo")
	prog.SetPython(typ)
}

func TestClosureCtx(t *testing.T) {
	defer func() {
		if r := recover(); r == nil {
			t.Log("closureCtx: no error?")
		}
	}()
	var f aFunction
	f.closureCtx(nil)
}

func TestClosureNoCtxValue(t *testing.T) {
	prog := NewProgram(&Target{GOARCH: "amd64"})
	pkg := prog.NewPackage("bar", "foo/bar")
	params := types.NewTuple(types.NewVar(0, nil, "x", types.Typ[types.Int]))
	rets := types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Int]))
	sig := types.NewSignatureType(nil, nil, nil, params, rets, false)
	fn := pkg.NewFunc("fn", sig, InGo)
	b := fn.MakeBody(1)
	b.Return(fn.Param(0))

	holderSig := types.NewSignatureType(nil, nil, nil, nil, nil, false)
	holder := pkg.NewFunc("holder", holderSig, InGo)
	hb := holder.MakeBody(1)
	closureT := prog.Closure(sig)
	ptr := hb.AllocaT(closureT)
	hb.Store(ptr, fn.Expr)
	hb.Return()

	// In register-based ctx mode, no stub wrapper is generated.
	// The function pointer is stored directly with nil data.
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

define i64 @fn(i64 %0) {
_llgo_0:
  ret i64 %0
}

define void @holder() {
_llgo_0:
  %0 = alloca { ptr, ptr }, align 8
  store { ptr, ptr } { ptr @fn, ptr null }, ptr %0, align 8
  ret void
}
`)
}

func TestClosureFuncPtrValue(t *testing.T) {
	prog := NewProgram(&Target{GOARCH: "amd64"})
	pkg := prog.NewPackage("bar", "foo/bar")

	params := types.NewTuple(types.NewVar(0, nil, "x", types.Typ[types.Int]))
	rets := types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Int]))
	sig := types.NewSignatureType(nil, nil, nil, params, rets, false)
	fn := pkg.NewFunc("fn", sig, InGo)
	b := fn.MakeBody(1)
	b.Return(fn.Param(0))

	holderSig := types.NewSignatureType(nil, nil, nil, nil, nil, false)
	holder := pkg.NewFunc("holder", holderSig, InGo)
	hb := holder.MakeBody(1)
	closureT := prog.Closure(sig)
	ptr := hb.AllocaT(closureT)
	fnPtrType := prog.rawType(sig)
	fnPtr := hb.ChangeType(fnPtrType, fn.Expr)
	hb.Store(ptr, fnPtr)
	hb.Return()

	// In register-based ctx mode, function pointer is stored directly with nil data.
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

define i64 @fn(i64 %0) {
_llgo_0:
  ret i64 %0
}

define void @holder() {
_llgo_0:
  %0 = alloca { ptr, ptr }, align 8
  store { ptr, ptr } { ptr @fn, ptr null }, ptr %0, align 8
  ret void
}
`)
}

func TestCallClosureDynamic(t *testing.T) {
	prog := NewProgram(&Target{GOARCH: "amd64"})
	pkg := prog.NewPackage("bar", "foo/bar")

	params := types.NewTuple(types.NewVar(0, nil, "x", types.Typ[types.Int]))
	rets := types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Int]))
	sig := types.NewSignatureType(nil, nil, nil, params, rets, false)
	callerParams := types.NewTuple(
		types.NewVar(0, nil, "f", sig),
		types.NewVar(0, nil, "x", types.Typ[types.Int]),
	)
	callerSig := types.NewSignatureType(nil, nil, nil, callerParams, rets, false)
	caller := pkg.NewFunc("caller", callerSig, InGo)
	b := caller.MakeBody(1)
	b.Return(b.Call(caller.Param(0), caller.Param(1)))

	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

define i64 @caller({ ptr, ptr } %0, i64 %1) {
_llgo_0:
  %2 = extractvalue { ptr, ptr } %0, 1
  %3 = extractvalue { ptr, ptr } %0, 0
  call void asm sideeffect "", "{r12}"(ptr %2)
  %4 = call i64 %3(i64 %1)
  ret i64 %4
}
`)
}

func TestMakeClosureWithBindings(t *testing.T) {
	prog := NewProgram(&Target{GOARCH: "amd64"})
	prog.SetRuntime(func() *types.Package {
		fset := token.NewFileSet()
		imp := packages.NewImporter(fset)
		pkg, _ := imp.Import(PkgRuntime)
		return pkg
	})
	pkg := prog.NewPackage("bar", "foo/bar")

	// inner function: func(y int) int - no ctx param in signature
	innerParams := types.NewTuple(types.NewVar(0, nil, "y", types.Typ[types.Int]))
	innerRets := types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Int]))
	innerSig := types.NewSignatureType(nil, nil, nil, innerParams, innerRets, false)
	inner := pkg.NewFunc("inner", innerSig, InGo)
	ib := inner.MakeBody(1)
	ib.Return(inner.Param(0))

	// outer function returns a closure that captures x
	outerParams := types.NewTuple(types.NewVar(0, nil, "x", types.Typ[types.Int]))
	outerRetSig := types.NewSignatureType(nil, nil, nil,
		types.NewTuple(types.NewVar(0, nil, "y", types.Typ[types.Int])),
		innerRets, false)
	outerSig := types.NewSignatureType(nil, nil, nil, outerParams,
		types.NewTuple(types.NewVar(0, nil, "", outerRetSig)), false)
	outer := pkg.NewFunc("outer", outerSig, InGo)
	ob := outer.MakeBody(1)
	closure := ob.MakeClosure(inner.Expr, []Expr{outer.Param(0)})
	ob.Return(closure)

	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

define i64 @inner(i64 %0) {
_llgo_0:
  ret i64 %0
}

define { ptr, ptr } @outer(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { i64 }, ptr %1, i32 0, i32 0
  store i64 %0, ptr %2, align 4
  %3 = insertvalue { ptr, ptr } { ptr @inner, ptr undef }, ptr %1, 1
  ret { ptr, ptr } %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)
`)
}

func TestCvtClosureDropsRecv(t *testing.T) {
	prog := NewProgram(nil)
	pkg := types.NewPackage("foo", "foo")
	iface := types.NewInterfaceType(nil, nil)
	namedIface := types.NewNamed(types.NewTypeName(0, pkg, "IFmt", nil), iface, nil)
	recv := types.NewVar(0, pkg, "recv", namedIface)
	params := types.NewTuple(VArg())
	rets := types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Int]))
	sig := types.NewSignatureType(recv, nil, nil, params, rets, true)

	st := prog.gocvt.cvtClosure(sig)
	fnSig, ok := st.Field(0).Type().(*types.Signature)
	if !ok {
		t.Fatalf("closure field[0] not signature: %T", st.Field(0).Type())
	}
	if fnSig.Recv() != nil {
		t.Fatalf("closure signature should not keep recv: %v", fnSig.Recv())
	}
	if !fnSig.Variadic() {
		t.Fatal("closure signature should be variadic")
	}
	if fnSig.Params().Len() != 1 {
		t.Fatalf("closure signature should have 1 param for variadic, got %d", fnSig.Params().Len())
	}
	if fnSig.Params().At(0).Name() != NameValist {
		t.Fatalf("closure signature param name mismatch: got %q, want %q",
			fnSig.Params().At(0).Name(), NameValist)
	}
}

func TestIfaceMethodClosureCallIR(t *testing.T) {
	prog := NewProgram(&Target{GOARCH: "amd64"})
	prog.SetRuntime(func() *types.Package {
		fset := token.NewFileSet()
		imp := packages.NewImporter(fset)
		pkg, _ := imp.Import(PkgRuntime)
		return pkg
	})
	pkgTypes := types.NewPackage("foo/bar", "bar")
	rawSig := types.NewSignatureType(nil, nil, nil, types.NewTuple(VArg()),
		types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Int])), true)
	rawMeth := types.NewFunc(0, pkgTypes, "Printf", rawSig)
	rawIface := types.NewInterfaceType([]*types.Func{rawMeth}, nil)
	rawIface.Complete()
	namedIface := types.NewNamed(types.NewTypeName(0, pkgTypes, "IFmt", nil), rawIface, nil)
	recv := types.NewVar(0, pkgTypes, "recv", namedIface)
	recvSig := types.NewSignatureType(recv, nil, nil, types.NewTuple(VArg()),
		types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Int])), true)
	recvMeth := types.NewFunc(0, pkgTypes, "Printf", recvSig)

	pkg := prog.NewPackage("bar", "foo/bar")
	callerSig := types.NewSignatureType(nil, nil, nil,
		types.NewTuple(types.NewVar(0, pkgTypes, "i", namedIface)),
		types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Int])), false)
	caller := pkg.NewFunc("caller", callerSig, InGo)
	b := caller.MakeBody(1)
	closure := b.Imethod(caller.Param(0), recvMeth)
	ret := b.Call(closure, prog.Val(100), prog.Val(200))
	b.Return(ret)

	// Interface method values remain vkClosure-like but should pass receiver as
	// an explicit parameter instead of using the ctx register.
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

define i64 @caller(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %3 = getelementptr ptr, ptr %2, i64 3
  %4 = load ptr, ptr %3, align 8
  %5 = insertvalue { ptr, ptr } undef, ptr %4, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %1, 1
  %7 = extractvalue { ptr, ptr } %6, 1
  %8 = extractvalue { ptr, ptr } %6, 0
  %9 = call i64 (ptr, ...) %8(ptr %7, i64 100, i64 200)
  ret i64 %9
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")
`)
}

func TestMakeInterfaceKinds(t *testing.T) {
	prog := NewProgram(nil)
	prog.SetRuntime(func() *types.Package {
		fset := token.NewFileSet()
		imp := packages.NewImporter(fset)
		pkg, _ := imp.Import(PkgRuntime)
		return pkg
	})
	pkg := prog.NewPackage("bar", "foo/bar")

	emptyIface := types.NewInterfaceType(nil, nil)
	emptyIface.Complete()
	emptyType := prog.Type(emptyIface, InGo)

	makeFn := func(name string, x Expr) {
		sig := types.NewSignatureType(nil, nil, nil, nil, types.NewTuple(types.NewVar(0, nil, "", emptyIface)), false)
		fn := pkg.NewFunc(name, sig, InGo)
		b := fn.MakeBody(1)
		iface := b.MakeInterface(emptyType, x)
		b.Return(iface)
	}

	makeFn("intIface", prog.Val(1))
	makeFn("ptrIface", prog.Nil(prog.VoidPtr()))
	makeFn("floatIface", prog.FloatVal(3.5, prog.Float32()))

	st := types.NewStruct([]*types.Var{
		types.NewVar(0, nil, "a", types.Typ[types.Int]),
		types.NewVar(0, nil, "b", types.Typ[types.Int]),
	}, nil)
	makeFn("structIface", prog.Zero(prog.Type(st, InGo)))

	single := types.NewStruct([]*types.Var{
		types.NewVar(0, nil, "v", types.Typ[types.Int]),
	}, nil)
	makeFn("singleFieldIface", prog.Zero(prog.Type(single, InGo)))

	pkgTypes := types.NewPackage("foo/bar", "bar")
	rawSig := types.NewSignatureType(nil, nil, nil, nil, nil, false)
	rawMeth := types.NewFunc(0, pkgTypes, "M", rawSig)
	nonEmpty := types.NewInterfaceType([]*types.Func{rawMeth}, nil)
	nonEmpty.Complete()
	nonEmptyType := prog.Type(nonEmpty, InGo)
	sigNE := types.NewSignatureType(nil, nil, nil, nil, types.NewTuple(types.NewVar(0, nil, "", nonEmpty)), false)
	fnNE := pkg.NewFunc("nonEmptyIface", sigNE, InGo)
	bNE := fnNE.MakeBody(1)
	bNE.Return(bNE.MakeInterface(nonEmptyType, prog.Val(7)))
}

func TestInterfaceHelpers(t *testing.T) {
	rawSig := types.NewSignatureType(nil, nil, nil, nil, nil, false)
	rawMeth := types.NewFunc(0, nil, "M", rawSig)
	rawIface := types.NewInterfaceType([]*types.Func{rawMeth}, nil)
	rawIface.Complete()

	if got := iMethodOf(rawIface, "missing"); got != -1 {
		t.Fatalf("iMethodOf missing: got %d", got)
	}

	prog := NewProgram(nil)
	prog.SetRuntime(func() *types.Package {
		fset := token.NewFileSet()
		imp := packages.NewImporter(fset)
		pkg, _ := imp.Import(PkgRuntime)
		return pkg
	})
	pkg := prog.NewPackage("bar", "foo/bar")
	intfType := prog.Type(rawIface, InGo)
	fn := pkg.NewFunc("call", types.NewSignatureType(nil, nil, nil,
		types.NewTuple(types.NewVar(0, nil, "i", rawIface)), nil, false), InGo)
	b := fn.MakeBody(1)

	// Method signature with first param being the interface itself.
	params := types.NewTuple(types.NewVar(0, nil, "self", rawIface),
		types.NewVar(0, nil, "x", types.Typ[types.Int]))
	sig := types.NewSignatureType(nil, nil, nil, params,
		types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Int])), false)
	method := types.NewFunc(0, nil, "M", sig)
	closure := b.Imethod(fn.Param(0), method)
	if got := closure.raw.Type.(*types.Struct).Field(0).Type().(*types.Signature).Params().Len(); got != 1 {
		t.Fatalf("Imethod should drop interface param: got %d params", got)
	}
	_ = intfType
}

func TestValFromDataKinds(t *testing.T) {
	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")
	sig := types.NewSignatureType(nil, nil, nil, nil, nil, false)
	fn := pkg.NewFunc("caller", sig, InGo)
	b := fn.MakeBody(1)
	data := prog.Nil(prog.VoidPtr()).impl

	b.valFromData(prog.Int(), data)
	b.valFromData(prog.Float32(), data)
	b.valFromData(prog.Type(types.NewPointer(types.Typ[types.Int]), InGo), data)

	st := types.NewStruct([]*types.Var{
		types.NewVar(0, nil, "a", types.Typ[types.Int]),
		types.NewVar(0, nil, "b", types.Typ[types.Int]),
	}, nil)
	b.valFromData(prog.Type(st, InGo), data)

	single := types.NewStruct([]*types.Var{
		types.NewVar(0, nil, "v", types.Typ[types.Int]),
	}, nil)
	b.valFromData(prog.Type(single, InGo), data)

	arr := types.NewArray(types.Typ[types.Int], 1)
	b.valFromData(prog.Type(arr, InGo), data)

	b.Return()
}

func TestCtxRegisterDefinitions(t *testing.T) {
	tests := []struct {
		goarch     string
		wantName   string
		wantConstr string
	}{
		{"amd64", "r12", "{r12}"},
		{"arm64", "x26", "{x26}"},
		{"arm", "", ""}, // arm32 uses global fallback (r8 not usable)
		{"386", "esi", "{esi}"},
		{"riscv64", "x27", "{x27}"},
		{"wasm", "", ""},
	}
	for _, tt := range tests {
		tgt := &Target{GOARCH: tt.goarch}
		reg := tgt.CtxRegister()
		if reg.Name != tt.wantName {
			t.Errorf("CtxRegister(%q).Name = %q, want %q", tt.goarch, reg.Name, tt.wantName)
		}
		if reg.Constraint != tt.wantConstr {
			t.Errorf("CtxRegister(%q).Constraint = %q, want %q", tt.goarch, reg.Constraint, tt.wantConstr)
		}
	}
}

func TestCtxRegisterFallback(t *testing.T) {
	tests := []string{"wasm", "riscv32"}
	for _, goarch := range tests {
		reg := (&Target{GOARCH: goarch}).CtxRegister()
		if reg.Name != "" || reg.Constraint != "" {
			t.Fatalf("CtxRegister(%q) expected empty fallback, got %q/%q", goarch, reg.Name, reg.Constraint)
		}
	}
}

func TestWriteReadCtxRegIR(t *testing.T) {
	prog := NewProgram(&Target{GOARCH: "amd64"})
	pkg := prog.NewPackage("test", "test")
	fn := pkg.NewFunc("test_ctx_reg", NoArgsNoRet, InGo)
	b := fn.MakeBody(1)

	// Write a value to ctx register (use nil pointer for simplicity)
	ptr := prog.Nil(prog.VoidPtr())
	b.WriteCtxReg(ptr)

	// Read from ctx register
	read := b.ReadCtxReg()
	_ = read
	b.Return()

	assertPkg(t, pkg, `; ModuleID = 'test'
source_filename = "test"

define void @test_ctx_reg() {
_llgo_0:
  call void asm sideeffect "", "{r12}"(ptr null)
  %0 = call ptr asm sideeffect "", "={r12}"()
  ret void
}
`)
}

func TestCallClosureViaRegister(t *testing.T) {
	prog := NewProgram(&Target{GOARCH: "amd64"})
	pkg := prog.NewPackage("bar", "foo/bar")

	// Create a closure type: func(int) int
	params := types.NewTuple(types.NewVar(0, nil, "x", types.Typ[types.Int]))
	rets := types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Int]))
	sig := types.NewSignatureType(nil, nil, nil, params, rets, false)

	// Create a caller that takes a closure and calls it
	callerParams := types.NewTuple(
		types.NewVar(0, nil, "f", sig),
		types.NewVar(0, nil, "x", types.Typ[types.Int]),
	)
	callerSig := types.NewSignatureType(nil, nil, nil, callerParams, rets, false)
	caller := pkg.NewFunc("caller", callerSig, InGo)
	b := caller.MakeBody(1)
	b.Return(b.Call(caller.Param(0), caller.Param(1)))

	ir := pkg.String()
	// Verify the IR:
	// 1. Uses inline asm to write to ctx register before call
	// 2. The function call does NOT have ctx as first parameter
	if !strings.Contains(ir, `asm sideeffect "", "{r12}"`) {
		t.Errorf("Expected ctx register write before closure call:\n%s", ir)
	}
	// The call should use the function directly, no ctx param
	if strings.Contains(ir, "__llgo_ctx") {
		t.Errorf("Expected no __llgo_ctx in closure call:\n%s", ir)
	}
}

func TestClosureFunctionReadsCtxFromReg(t *testing.T) {
	prog := NewProgram(&Target{GOARCH: "amd64"})
	prog.SetRuntime(func() *types.Package {
		fset := token.NewFileSet()
		imp := packages.NewImporter(fset)
		pkg, _ := imp.Import(PkgRuntime)
		return pkg
	})
	pkg := prog.NewPackage("bar", "foo/bar")

	// Create a closure function that has free variables (hasFreeVars=true)
	innerParams := types.NewTuple(types.NewVar(0, nil, "y", types.Typ[types.Int]))
	innerRets := types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Int]))
	innerSig := types.NewSignatureType(nil, nil, nil, innerParams, innerRets, false)
	// Use NewFuncEx with hasFreeVars=true
	inner := pkg.NewFuncEx("inner", innerSig, InGo, true, false)

	// Set the context type (struct with one int field for captured variable x)
	ctxFields := []*types.Var{types.NewField(0, nil, "x", types.Typ[types.Int], false)}
	ctxStruct := types.NewStruct(ctxFields, nil)
	inner.SetCtxType(prog.Type(ctxStruct, InGo))

	ib := inner.MakeBody(1)
	// Access free variable at index 0
	freeVar := inner.FreeVar(ib, 0)
	result := ib.BinOp(token.ADD, freeVar, inner.Param(0))
	ib.Return(result)

	ir := pkg.String()
	// Verify that the function reads ctx from register (inline asm with ={r12})
	if !strings.Contains(ir, `asm sideeffect "", "={r12}"`) {
		t.Errorf("Expected ctx register read in closure function:\n%s", ir)
	}
	// Verify no ctx parameter in function signature
	if strings.Contains(ir, "define i64 @inner(ptr") {
		t.Errorf("Expected no ctx parameter in function signature:\n%s", ir)
	}
}

func TestSupportsTLS(t *testing.T) {
	tests := []struct {
		goos    string
		goarch  string
		wantTLS bool
	}{
		// Standard OS platforms support TLS
		{"linux", "amd64", true},
		{"darwin", "arm64", true},
		{"windows", "amd64", true},
		{"freebsd", "amd64", true},
		{"android", "arm64", true},
		{"ios", "arm64", true},
		// wasm/js platforms do NOT support TLS
		{"js", "wasm", false},
		{"wasip1", "wasm", false},
		// Bare-metal / embedded do NOT support TLS
		{"", "arm", false},         // empty GOOS (bare-metal)
		{"nuttx", "arm", false},    // RTOS
		{"none", "riscv32", false}, // bare-metal
		{"unknown", "mips", false}, // unknown platform
	}
	for _, tt := range tests {
		tgt := &Target{GOOS: tt.goos, GOARCH: tt.goarch}
		if got := tgt.SupportsTLS(); got != tt.wantTLS {
			t.Errorf("SupportsTLS(GOOS=%q, GOARCH=%q) = %v, want %v",
				tt.goos, tt.goarch, got, tt.wantTLS)
		}
	}
}

func TestWriteReadCtxRegUnsupported(t *testing.T) {
	prog := NewProgram(&Target{GOOS: "js", GOARCH: "wasm"})
	pkg := prog.NewPackage("test", "test")
	fn := pkg.NewFunc("test_no_ctx", NoArgsNoRet, InGo)
	b := fn.MakeBody(1)
	ptr := prog.Nil(prog.VoidPtr())
	b.WriteCtxReg(ptr)
	_ = b.ReadCtxReg()
	b.Return()
	ir := pkg.String()
	if strings.Contains(ir, "asm sideeffect") {
		t.Fatalf("unexpected inline asm for wasm fallback:\n%s", ir)
	}
	if !strings.Contains(ir, ctxGlobalName) {
		t.Fatalf("expected fallback global %q in IR:\n%s", ctxGlobalName, ir)
	}
	// wasm should NOT use thread_local
	if strings.Contains(ir, "thread_local") {
		t.Fatalf("wasm should not use thread_local:\n%s", ir)
	}
}

// TestCtxGlobalTLS verifies that platforms with TLS support (but no ctx register) get thread_local.
func TestCtxGlobalTLS(t *testing.T) {
	// Use Linux with an arch that has no ctx register defined (falls back to global)
	prog := NewProgram(&Target{GOOS: "linux", GOARCH: "mips64"})
	pkg := prog.NewPackage("test", "test")
	fn := pkg.NewFunc("test_tls", NoArgsNoRet, InGo)
	b := fn.MakeBody(1)
	ptr := prog.Nil(prog.VoidPtr())
	b.WriteCtxReg(ptr)
	_ = b.ReadCtxReg()
	b.Return()
	ir := pkg.String()
	if !strings.Contains(ir, ctxGlobalName) {
		t.Fatalf("expected fallback global %q in IR:\n%s", ctxGlobalName, ir)
	}
	// Standard OS (linux) should use thread_local
	if !strings.Contains(ir, "thread_local") {
		t.Fatalf("linux fallback should use thread_local:\n%s", ir)
	}
}

func TestPackageCoverageHelpers(t *testing.T) {
	if !is32Bits("386") {
		t.Fatal("is32Bits should return true for 386")
	}
	if is32Bits("amd64") {
		t.Fatal("is32Bits should return false for amd64")
	}
	prog := NewProgram(nil)
	_ = prog.CIntPtr()
	pkg := prog.NewPackage("bar", "foo/bar")
	if len(pkg.ExportFuncs()) != 0 {
		t.Fatal("ExportFuncs should be empty for new package")
	}
}

func TestExprCoverageHelpers(t *testing.T) {
	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")
	sig := types.NewSignatureType(nil, nil, nil, nil, nil, false)
	fn := pkg.NewFunc("fn", sig, InGo)
	b := fn.MakeBody(1)

	// SetName coverage
	tmp := b.AllocaT(prog.Int())
	tmp.SetName("tmp0")

	// Printf / tyPrintf coverage
	b.Printf("value=%d", prog.Val(1))
	b.Return()
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
	params := types.NewTuple(types.NewParam(0, nil, "", NoArgsNoRet))
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
	c := &pyVarTy{}
	b := &builtinTy{}
	_ = c.String()
	_ = b.String()
	test := func(a types.Type) {
		defer func() {
			if r := recover(); r == nil {
				t.Log("TestUserdefExpr: no error?")
			}
		}()
		a.Underlying()
	}
	test(c)
	test(b)
}

func TestAny(t *testing.T) {
	prog := NewProgram(nil)
	prog.SetRuntime(func() *types.Package {
		ret := types.NewPackage("runtime", "runtime")
		scope := ret.Scope()
		name := types.NewTypeName(0, ret, "Eface", nil)
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

func TestPyFunc(t *testing.T) {
	prog := NewProgram(nil)
	py := types.NewPackage("foo", "foo")
	o := types.NewTypeName(0, py, "Object", nil)
	types.NewNamed(o, types.Typ[types.Int], nil)
	py.Scope().Insert(o)
	prog.SetPython(py)
	pkg := prog.NewPackage("bar", "foo/bar")
	a := pkg.PyNewFunc("a", NoArgsNoRet, false)
	if pkg.PyNewFunc("a", NoArgsNoRet, false) != a {
		t.Fatal("NewPyFunc(a) failed")
	}
	foo := pkg.PyNewModVar("foo", false)
	if pkg.PyNewModVar("foo", false) != foo {
		t.Fatal("NewPyModVar(foo) failed")
	}
}

func TestVar(t *testing.T) {
	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")
	typ := types.NewPointer(types.Typ[types.Int])
	a := pkg.NewVar("a", typ, InGo)
	if pkg.NewVar("a", typ, InGo) != a {
		t.Fatal("NewVar(a) failed")
	}
	pkg.NewVarEx("a", prog.Type(typ, InGo))
	a.Init(prog.Val(100))
	b := pkg.NewVar("b", typ, InGo)
	b.Init(a.Expr)
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

@a = global i64 100, align 8
@b = global i64 @a, align 8
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
	pkg.NewVar("a", types.NewPointer(empty), InGo)
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

@a = external global {}, align 1
`)
	if pkg.NeedRuntime {
		t.Fatal("NeedRuntime?")
	}
}

func TestNamedStruct(t *testing.T) {
	src := types.NewPackage("bar", "foo/bar")
	empty := types.NewNamed(types.NewTypeName(0, src, "Empty", nil), types.NewStruct(nil, nil), nil)

	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")
	pkg.NewVar("a", types.NewPointer(empty), InGo)
	if pkg.VarOf("a") == nil {
		t.Fatal("VarOf failed")
	}
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

%bar.Empty = type {}

@a = external global %bar.Empty, align 1
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

	b := pkg.NewFunc("main", NoArgsNoRet, InGo).MakeBody(1)
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
	a := pkg.NewVar("a", types.NewPointer(types.Typ[types.Int]), InGo)
	fn := pkg.NewFunc("fn", sig, InGo)
	b := fn.MakeBody(1)
	b.Return(a.Expr, fn.Param(0))
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

@a = external global i64, align 8

define { i64, double } @fn(double %0) {
_llgo_0:
  %1 = insertvalue { i64, double } { ptr @a, double undef }, double %0, 1
  ret { i64, double } %1
}
`)
}

func TestJump(t *testing.T) {
	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")
	fn := pkg.NewFunc("loop", NoArgsNoRet, InGo)
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
	sig := types.NewSignatureType(nil, nil, nil, params, rets, true)
	pkg.NewFunc("printf", sig, InC)
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
	val2 := b.BinOp(token.XOR, val, prog.Val(1))
	b.Store(ptr, val2)
	b.Return(val2)
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

define i64 @fn(ptr %0) {
_llgo_0:
  %1 = load i64, ptr %0, align 4
  %2 = xor i64 %1, 1
  store i64 %2, ptr %0, align 4
  ret i64 %2
}
`)
}

func TestBasicType(t *testing.T) {
	type typeInfo struct {
		typ  Type
		kind types.BasicKind
	}
	prog := NewProgram(nil)
	infos := []*typeInfo{
		{prog.Bool(), types.Bool},
		{prog.Byte(), types.Byte},
		{prog.Int(), types.Int},
		{prog.Uint(), types.Uint},
		{prog.Int32(), types.Int32},
		{prog.Int64(), types.Int64},
		{prog.Uint32(), types.Uint32},
		{prog.Uint64(), types.Uint64},
		{prog.Uintptr(), types.Uintptr},
		{prog.VoidPtr(), types.UnsafePointer},
	}
	for _, info := range infos {
		if info.typ.RawType() != types.Typ[info.kind] {
			t.Fatal("bad type", info)
		}
	}
}

func TestCompareSelect(t *testing.T) {
	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")

	params := types.NewTuple(
		types.NewVar(0, nil, "a", types.Typ[types.Int]),
		types.NewVar(0, nil, "b", types.Typ[types.Int]),
		types.NewVar(0, nil, "c", types.Typ[types.Int]),
	)
	rets := types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Int]))
	sig := types.NewSignatureType(nil, nil, nil, params, rets, false)
	fn := pkg.NewFunc("fn", sig, InGo)

	b := fn.MakeBody(1)
	result := b.compareSelect(token.GTR, fn.Param(0), fn.Param(1), fn.Param(2))
	b.Return(result)

	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

define i64 @fn(i64 %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = icmp sgt i64 %0, %1
  %4 = select i1 %3, i64 %0, i64 %1
  %5 = icmp sgt i64 %4, %2
  %6 = select i1 %5, i64 %4, i64 %2
  ret i64 %6
}
`)
}

func TestGlobalStrings(t *testing.T) {
	prog := NewProgram(nil)
	prog.SetRuntime(func() *types.Package {
		fset := token.NewFileSet()
		imp := packages.NewImporter(fset)
		pkg, _ := imp.Import(PkgRuntime)
		return pkg
	})
	pkg := prog.NewPackage("bar", "foo/bar")
	typ := types.NewPointer(types.Typ[types.String])
	a := pkg.NewVar("foo/bar.a", typ, InGo)
	if pkg.NewVar("foo/bar.a", typ, InGo) != a {
		t.Fatal("NewVar(a) failed")
	}
	a.InitNil()
	pkg.NewVarEx("foo/bar.a", prog.Type(typ, InGo))
	b := pkg.NewVar("foo/bar.b", typ, InGo)
	b.InitNil()
	c := pkg.NewVar("foo/bar.c", types.NewPointer(types.Typ[types.Int]), InGo)
	c.Init(prog.Val(100))
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"foo/bar.a" = global %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, align 8
@"foo/bar.b" = global %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, align 8
@"foo/bar.c" = global i64 100, align 8
`)
	err := pkg.Undefined("foo/bar.a", "foo/bar.b")
	if err != nil {
		t.Fatal(err)
	}
	pkg.Undefined("foo.bar.d")
	err = pkg.Undefined("foo/bar.c")
	if err == nil {
		t.Fatal("must err")
	}
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"foo/bar.c" = global i64 100, align 8
@"foo/bar.a" = external global %"github.com/goplus/llgo/runtime/internal/runtime.String"
@"foo/bar.b" = external global %"github.com/goplus/llgo/runtime/internal/runtime.String"
`)
	global := prog.NewPackage("", "global")
	global.AddGlobalString("foo/bar.a", "1.0")
	global.AddGlobalString("foo/bar.b", "info")
	assertPkg(t, global, `; ModuleID = 'global'
source_filename = "global"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@0 = private unnamed_addr constant [3 x i8] c"1.0", align 1
@"foo/bar.a" = global %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 }, align 8
@1 = private unnamed_addr constant [4 x i8] c"info", align 1
@"foo/bar.b" = global %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, align 8
`)
}

// TestClosureIIFEIR verifies IR for immediately invoked function expression (IIFE).
func TestClosureIIFEIR(t *testing.T) {
	prog := NewProgram(&Target{GOARCH: "amd64"})
	prog.SetRuntime(func() *types.Package {
		fset := token.NewFileSet()
		imp := packages.NewImporter(fset)
		pkg, _ := imp.Import(PkgRuntime)
		return pkg
	})
	pkg := prog.NewPackage("test", "test")

	// IIFE that captures x: func(y int) int { return x + y }(5)
	innerParams := types.NewTuple(types.NewVar(0, nil, "y", types.Typ[types.Int]))
	innerRets := types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Int]))
	innerSig := types.NewSignatureType(nil, nil, nil, innerParams, innerRets, false)
	inner := pkg.NewFuncEx("iife_inner", innerSig, InGo, true, false)

	ctxFields := []*types.Var{types.NewField(0, nil, "x", types.Typ[types.Int], false)}
	ctxStruct := types.NewStruct(ctxFields, nil)
	inner.SetCtxType(prog.Type(ctxStruct, InGo))

	ib := inner.MakeBody(1)
	x := inner.FreeVar(ib, 0)
	result := ib.BinOp(token.ADD, x, inner.Param(0))
	ib.Return(result)

	// Caller builds and calls closure immediately
	callerSig := types.NewSignatureType(nil, nil, nil,
		types.NewTuple(types.NewVar(0, nil, "x", types.Typ[types.Int])),
		innerRets, false)
	caller := pkg.NewFunc("test_iife", callerSig, InGo)
	cb := caller.MakeBody(1)
	closure := cb.MakeClosure(inner.Expr, []Expr{caller.Param(0)})
	ret := cb.Call(closure, prog.Val(5))
	cb.Return(ret)

	assertPkg(t, pkg, `; ModuleID = 'test'
source_filename = "test"

define i64 @iife_inner(i64 %0) {
_llgo_0:
  %1 = call ptr asm sideeffect "", "={r12}"()
  %2 = load { i64 }, ptr %1, align 4
  %3 = extractvalue { i64 } %2, 0
  %4 = add i64 %3, %0
  ret i64 %4
}

define i64 @test_iife(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { i64 }, ptr %1, i32 0, i32 0
  store i64 %0, ptr %2, align 4
  %3 = insertvalue { ptr, ptr } { ptr @iife_inner, ptr undef }, ptr %1, 1
  %4 = extractvalue { ptr, ptr } %3, 1
  %5 = extractvalue { ptr, ptr } %3, 0
  call void asm sideeffect "", "{r12}"(ptr %4)
  %6 = call i64 %5(i64 5)
  ret i64 %6
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)
`)
}

// TestClosureAsParamIR verifies IR for closure passed as function parameter.
func TestClosureAsParamIR(t *testing.T) {
	prog := NewProgram(&Target{GOARCH: "amd64"})
	pkg := prog.NewPackage("test", "test")

	// Closure type: func(int) int
	closureParams := types.NewTuple(types.NewVar(0, nil, "n", types.Typ[types.Int]))
	closureRets := types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Int]))
	closureSig := types.NewSignatureType(nil, nil, nil, closureParams, closureRets, false)

	// Higher-order function: applyTwice(f func(int) int, x int) int
	params := types.NewTuple(
		types.NewVar(0, nil, "f", closureSig),
		types.NewVar(0, nil, "x", types.Typ[types.Int]),
	)
	sig := types.NewSignatureType(nil, nil, nil, params, closureRets, false)
	fn := pkg.NewFunc("applyTwice", sig, InGo)
	b := fn.MakeBody(1)
	first := b.Call(fn.Param(0), fn.Param(1))
	second := b.Call(fn.Param(0), first)
	b.Return(second)

	assertPkg(t, pkg, `; ModuleID = 'test'
source_filename = "test"

define i64 @applyTwice({ ptr, ptr } %0, i64 %1) {
_llgo_0:
  %2 = extractvalue { ptr, ptr } %0, 1
  %3 = extractvalue { ptr, ptr } %0, 0
  call void asm sideeffect "", "{r12}"(ptr %2)
  %4 = call i64 %3(i64 %1)
  %5 = extractvalue { ptr, ptr } %0, 1
  %6 = extractvalue { ptr, ptr } %0, 0
  call void asm sideeffect "", "{r12}"(ptr %5)
  %7 = call i64 %6(i64 %4)
  ret i64 %7
}
`)
}

// TestDeferClosureIR verifies that closure passed to defer reads ctx from register.
func TestDeferClosureIR(t *testing.T) {
	prog := NewProgram(&Target{GOARCH: "amd64"})
	prog.SetRuntime(func() *types.Package {
		fset := token.NewFileSet()
		imp := packages.NewImporter(fset)
		pkg, _ := imp.Import(PkgRuntime)
		return pkg
	})
	pkg := prog.NewPackage("test", "test")

	// Closure function that captures x (simulate defer body)
	innerSig := types.NewSignatureType(nil, nil, nil, nil, nil, false)
	inner := pkg.NewFuncEx("defer_body", innerSig, InGo, true, false)
	ctxFields := []*types.Var{types.NewField(0, nil, "x", types.Typ[types.Int], false)}
	ctxStruct := types.NewStruct(ctxFields, nil)
	inner.SetCtxType(prog.Type(ctxStruct, InGo))

	ib := inner.MakeBody(1)
	_ = inner.FreeVar(ib, 0) // access captured x
	ib.Return()

	// Verify the closure body reads from ctx register
	assertPkg(t, pkg, `; ModuleID = 'test'
source_filename = "test"

define void @defer_body() {
_llgo_0:
  %0 = call ptr asm sideeffect "", "={r12}"()
  %1 = load { i64 }, ptr %0, align 4
  %2 = extractvalue { i64 } %1, 0
  ret void
}
`)
}

// TestGoClosureIR verifies that closure for go statement reads ctx from register.
func TestGoClosureIR(t *testing.T) {
	prog := NewProgram(&Target{GOARCH: "amd64"})
	prog.SetRuntime(func() *types.Package {
		fset := token.NewFileSet()
		imp := packages.NewImporter(fset)
		pkg, _ := imp.Import(PkgRuntime)
		return pkg
	})
	pkg := prog.NewPackage("test", "test")

	// Closure that would run in goroutine, captures x
	innerSig := types.NewSignatureType(nil, nil, nil, nil, nil, false)
	inner := pkg.NewFuncEx("goroutine_body", innerSig, InGo, true, false)
	ctxFields := []*types.Var{types.NewField(0, nil, "x", types.Typ[types.Int], false)}
	ctxStruct := types.NewStruct(ctxFields, nil)
	inner.SetCtxType(prog.Type(ctxStruct, InGo))

	ib := inner.MakeBody(1)
	_ = inner.FreeVar(ib, 0) // access captured x
	ib.Return()

	// Verify closure body reads from ctx register
	assertPkg(t, pkg, `; ModuleID = 'test'
source_filename = "test"

define void @goroutine_body() {
_llgo_0:
  %0 = call ptr asm sideeffect "", "={r12}"()
  %1 = load { i64 }, ptr %0, align 4
  %2 = extractvalue { i64 } %1, 0
  ret void
}
`)
}

// TestNestedClosureIR verifies IR for closure with multi-field capture (nested scenario).
func TestNestedClosureIR(t *testing.T) {
	prog := NewProgram(&Target{GOARCH: "amd64"})
	prog.SetRuntime(func() *types.Package {
		fset := token.NewFileSet()
		imp := packages.NewImporter(fset)
		pkg, _ := imp.Import(PkgRuntime)
		return pkg
	})
	pkg := prog.NewPackage("test", "test")

	// Inner closure: captures both a and b (simulates nested closure scenario)
	innerRets := types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Int]))
	innerSig := types.NewSignatureType(nil, nil, nil, nil, innerRets, false)
	inner := pkg.NewFuncEx("nested_inner", innerSig, InGo, true, false)
	innerCtxFields := []*types.Var{
		types.NewField(0, nil, "a", types.Typ[types.Int], false),
		types.NewField(0, nil, "b", types.Typ[types.Int], false),
	}
	innerCtxStruct := types.NewStruct(innerCtxFields, nil)
	inner.SetCtxType(prog.Type(innerCtxStruct, InGo))

	ib := inner.MakeBody(1)
	a := inner.FreeVar(ib, 0)
	b := inner.FreeVar(ib, 1)
	result := ib.BinOp(token.ADD, a, b)
	ib.Return(result)

	assertPkg(t, pkg, `; ModuleID = 'test'
source_filename = "test"

define i64 @nested_inner() {
_llgo_0:
  %0 = call ptr asm sideeffect "", "={r12}"()
  %1 = load { i64, i64 }, ptr %0, align 4
  %2 = extractvalue { i64, i64 } %1, 0
  %3 = extractvalue { i64, i64 } %1, 1
  %4 = add i64 %2, %3
  ret i64 %4
}
`)
}
