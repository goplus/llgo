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

package cl_test

import (
	"testing"

	"github.com/goplus/llgo/cl"
	"github.com/goplus/llgo/cl/cltest"
	"github.com/goplus/llgo/internal/build"
	"github.com/goplus/llgo/ssa"
)

func testCompile(t *testing.T, src, expected string) {
	t.Helper()
	cltest.TestCompileEx(t, src, "foo.go", expected)
}

func TestFromTestgo(t *testing.T) {
	cltest.FromDir(t, "", "./_testgo", false)
}

func TestFromTestpy(t *testing.T) {
	cltest.FromDir(t, "", "./_testpy", false)
}

func TestFromTestlibgo(t *testing.T) {
	cltest.FromDir(t, "", "./_testlibgo", true)
}

func TestFromTestlibc(t *testing.T) {
	cltest.FromDir(t, "", "./_testlibc", true)
}

func TestFromTestrt(t *testing.T) {
	cl.SetDebug(cl.DbgFlagAll)
	cltest.FromDir(t, "", "./_testrt", true)
	cl.SetDebug(0)
}

func TestFromTestdata(t *testing.T) {
	cltest.FromDir(t, "", "./_testdata", false)
}

func TestFromTestpymath(t *testing.T) {
	cltest.Pkg(t, ssa.PkgPython+"/math", "../py/math/llgo_autogen.ll")
}

func TestPython(t *testing.T) {
	cltest.Pkg(t, ssa.PkgPython, "../py/llgo_autogen.ll")
}

func TestGoPkgMath(t *testing.T) {
	conf := build.NewDefaultConf(build.ModeInstall)
	build.Do([]string{"math"}, conf)
}

func TestVar(t *testing.T) {
	testCompile(t, `package foo

var a int
`, `; ModuleID = 'foo'
source_filename = "foo"

@foo.a = global i64 0, align 8
@"foo.init$guard" = global i1 false, align 1

define void @foo.init() {
_llgo_0:
  %0 = load i1, ptr @"foo.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"foo.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}
`)
}

func TestBasicFunc(t *testing.T) {
	testCompile(t, `package foo

func fn(a int, b float64) int {
	return 1
}
`, `; ModuleID = 'foo'
source_filename = "foo"

@"foo.init$guard" = global i1 false, align 1

define i64 @foo.fn(i64 %0, double %1) {
_llgo_0:
  ret i64 1
}

define void @foo.init() {
_llgo_0:
  %0 = load i1, ptr @"foo.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"foo.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}
`)
}

func TestDebugInfo(t *testing.T) {
	cl.EnableDebugSymbols()
	defer cl.DisableDebugSymbols()

	testCompile(t, `package foo

type IFoo interface {
  Foo(a []int, b string) int
}

type Foo struct{
  nexy *Foo
  data map[string]uint64
}

func (Foo) Foo(a []int, b string) int {
  return 1
}

func fn(a int, b float64) int {
  return 1
}

func fn1(fn func(int, float64) int) {
	fn(1, 1.0)
}

func fn2() {
	fn1(fn)
	ch := make(chan int)
	go func() {
		ch <- 1
	}()
	<-ch

  f := Foo{}
  var foo IFoo = f
  foo.Foo(nil, "")
}
`, `; ModuleID = 'foo'
source_filename = "foo"

%foo.Foo = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/c/pthread.RoutineFunc" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/abi.Method" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/internal/abi.Imethod" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr }

@"foo.init$guard" = global i1 false, align 1
@_llgo_foo.Foo = linkonce global ptr null, align 8
@"foo.struct$sUOINQ1FDCN7y-nzX20cgAVFoHXQ1pkjKP9R_Z6Irsk" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [4 x i8] c"nexy", align 1
@1 = private unnamed_addr constant [4 x i8] c"data", align 1
@2 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@3 = private unnamed_addr constant [4 x i8] c"keys", align 1
@4 = private unnamed_addr constant [5 x i8] c"elems", align 1
@5 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@6 = private unnamed_addr constant [3 x i8] c"foo", align 1
@7 = private unnamed_addr constant [3 x i8] c"Foo", align 1
@"_llgo_func$w7i25ru9Alz5aegActeASLLTXdwBqJ6Wc6FdpkIn_cs" = linkonce global ptr null, align 8
@"[]_llgo_int" = linkonce global ptr null, align 8
@_llgo_string = linkonce global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@"_llgo_iface$opv3stH14p-JT6UN0WEYD-Tr6bHK3MHpC4KSk10pjNU" = linkonce global ptr null, align 8

define i64 @foo.Foo.Foo(%foo.Foo %0, %"github.com/goplus/llgo/internal/runtime.Slice" %1, %"github.com/goplus/llgo/internal/runtime.String" %2) !dbg !4 {
_llgo_0:
  call void @llvm.dbg.declare(metadata %foo.Foo %0, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata %"github.com/goplus/llgo/internal/runtime.Slice" %1, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata %"github.com/goplus/llgo/internal/runtime.String" %2, metadata !20, metadata !DIExpression()), !dbg !21
  ret i64 1, !dbg !22
}

define i64 @"foo.(*Foo).Foo"(ptr %0, %"github.com/goplus/llgo/internal/runtime.Slice" %1, %"github.com/goplus/llgo/internal/runtime.String" %2) !dbg !23 {
_llgo_0:
  call void @llvm.dbg.declare(metadata ptr %0, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata %"github.com/goplus/llgo/internal/runtime.Slice" %1, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata %"github.com/goplus/llgo/internal/runtime.String" %2, metadata !30, metadata !DIExpression()), !dbg !31
  %3 = load %foo.Foo, ptr %0, align 8, !dbg !32
  %4 = call i64 @foo.Foo.Foo(%foo.Foo %3, %"github.com/goplus/llgo/internal/runtime.Slice" %1, %"github.com/goplus/llgo/internal/runtime.String" %2), !dbg !32
  ret i64 %4, !dbg !32
}

define i64 @foo.fn(i64 %0, double %1) !dbg !33 {
_llgo_0:
  call void @llvm.dbg.declare(metadata i64 %0, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata double %1, metadata !40, metadata !DIExpression()), !dbg !41
  ret i64 1, !dbg !42
}

define void @foo.fn1({ ptr, ptr } %0) !dbg !43 {
_llgo_0:
  call void @llvm.dbg.declare(metadata { ptr, ptr } %0, metadata !55, metadata !DIExpression()), !dbg !56
  %1 = extractvalue { ptr, ptr } %0, 1, !dbg !57
  %2 = extractvalue { ptr, ptr } %0, 0, !dbg !57
  %3 = call i64 %2(ptr %1, i64 1, double 1.000000e+00), !dbg !57
  ret void, !dbg !57
}

define void @foo.fn2() !dbg !58 {
_llgo_0:
  %0 = alloca { ptr, ptr }, align 8, !dbg !61
  %1 = getelementptr inbounds { ptr, ptr }, ptr %0, i32 0, i32 0, !dbg !61
  store ptr @__llgo_stub.foo.fn, ptr %1, align 8, !dbg !61
  %2 = getelementptr inbounds { ptr, ptr }, ptr %0, i32 0, i32 1, !dbg !61
  store ptr null, ptr %2, align 8, !dbg !61
  %3 = load { ptr, ptr }, ptr %0, align 8, !dbg !61
  call void @foo.fn1({ ptr, ptr } %3), !dbg !61
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8), !dbg !62
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.NewChan"(i64 8, i64 0), !dbg !63
  store ptr %5, ptr %4, align 8, !dbg !63
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8), !dbg !64
  %7 = getelementptr inbounds { ptr }, ptr %6, i32 0, i32 0, !dbg !64
  store ptr %4, ptr %7, align 8, !dbg !64
  %8 = alloca { ptr, ptr }, align 8, !dbg !64
  %9 = getelementptr inbounds { ptr, ptr }, ptr %8, i32 0, i32 0, !dbg !64
  store ptr @"foo.fn2$1", ptr %9, align 8, !dbg !64
  %10 = getelementptr inbounds { ptr, ptr }, ptr %8, i32 0, i32 1, !dbg !64
  store ptr %6, ptr %10, align 8, !dbg !64
  %11 = load { ptr, ptr }, ptr %8, align 8, !dbg !64
  %12 = call ptr @malloc(i64 16), !dbg !64
  %13 = getelementptr inbounds { { ptr, ptr } }, ptr %12, i32 0, i32 0, !dbg !64
  store { ptr, ptr } %11, ptr %13, align 8, !dbg !64
  %14 = alloca i8, i64 8, align 1, !dbg !64
  %15 = alloca %"github.com/goplus/llgo/c/pthread.RoutineFunc", align 8, !dbg !64
  %16 = getelementptr inbounds %"github.com/goplus/llgo/c/pthread.RoutineFunc", ptr %15, i32 0, i32 0, !dbg !64
  store ptr @"__llgo_stub.foo._llgo_routine$1", ptr %16, align 8, !dbg !64
  %17 = getelementptr inbounds %"github.com/goplus/llgo/c/pthread.RoutineFunc", ptr %15, i32 0, i32 1, !dbg !64
  store ptr null, ptr %17, align 8, !dbg !64
  %18 = load %"github.com/goplus/llgo/c/pthread.RoutineFunc", ptr %15, align 8, !dbg !64
  %19 = call i32 @"github.com/goplus/llgo/internal/runtime.CreateThread"(ptr %14, ptr null, %"github.com/goplus/llgo/c/pthread.RoutineFunc" %18, ptr %12), !dbg !64
  %20 = load ptr, ptr %4, align 8, !dbg !65
  %21 = alloca i64, align 8, !dbg !66
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %21, i64 8), !dbg !66
  %23 = call i1 @"github.com/goplus/llgo/internal/runtime.ChanRecv"(ptr %20, ptr %22, i64 8), !dbg !66
  %24 = load i64, ptr %22, align 4, !dbg !66
  %25 = load ptr, ptr @_llgo_foo.Foo, align 8, !dbg !64
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16), !dbg !64
  store %foo.Foo zeroinitializer, ptr %26, align 8, !dbg !64
  %27 = load ptr, ptr @"_llgo_iface$opv3stH14p-JT6UN0WEYD-Tr6bHK3MHpC4KSk10pjNU", align 8, !dbg !64
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %27, ptr %25), !dbg !64
  %29 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8, !dbg !64
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %29, i32 0, i32 0, !dbg !64
  store ptr %28, ptr %30, align 8, !dbg !64
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %29, i32 0, i32 1, !dbg !64
  store ptr %26, ptr %31, align 8, !dbg !64
  %32 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %29, align 8, !dbg !64
  %33 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %32), !dbg !67
  %34 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %32, 0, !dbg !67
  %35 = getelementptr ptr, ptr %34, i64 3, !dbg !67
  %36 = load ptr, ptr %35, align 8, !dbg !67
  %37 = alloca { ptr, ptr }, align 8, !dbg !67
  %38 = getelementptr inbounds { ptr, ptr }, ptr %37, i32 0, i32 0, !dbg !67
  store ptr %36, ptr %38, align 8, !dbg !67
  %39 = getelementptr inbounds { ptr, ptr }, ptr %37, i32 0, i32 1, !dbg !67
  store ptr %33, ptr %39, align 8, !dbg !67
  %40 = load { ptr, ptr }, ptr %37, align 8, !dbg !67
  %41 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8, !dbg !67
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %41, i32 0, i32 0, !dbg !67
  store ptr null, ptr %42, align 8, !dbg !67
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %41, i32 0, i32 1, !dbg !67
  store i64 0, ptr %43, align 4, !dbg !67
  %44 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %41, align 8, !dbg !67
  %45 = extractvalue { ptr, ptr } %40, 1, !dbg !67
  %46 = extractvalue { ptr, ptr } %40, 0, !dbg !67
  %47 = call i64 %46(ptr %45, %"github.com/goplus/llgo/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/internal/runtime.String" %44), !dbg !67
  ret void, !dbg !67
}

define void @"foo.fn2$1"(ptr %0) !dbg !68 {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8, !dbg !77
  %2 = extractvalue { ptr } %1, 0, !dbg !77
  %3 = load ptr, ptr %2, align 8, !dbg !77
  %4 = alloca i64, align 8, !dbg !77
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %4, i64 8), !dbg !77
  store i64 1, ptr %5, align 4, !dbg !77
  %6 = call i1 @"github.com/goplus/llgo/internal/runtime.ChanSend"(ptr %3, ptr %5, i64 8), !dbg !77
  ret void, !dbg !77
}

define void @foo.init() !dbg !78 {
_llgo_0:
  %0 = load i1, ptr @"foo.init$guard", align 1, !dbg !80
  br i1 %0, label %_llgo_2, label %_llgo_1, !dbg !80

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"foo.init$guard", align 1, !dbg !80
  call void @"foo.init$after"(), !dbg !80
  br label %_llgo_2, !dbg !80

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void, !dbg !80
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

define linkonce i64 @__llgo_stub.foo.fn(ptr %0, i64 %1, double %2) {
_llgo_0:
  %3 = tail call i64 @foo.fn(i64 %1, double %2)
  ret i64 %3
}

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewChan"(i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare ptr @malloc(i64)

define ptr @"foo._llgo_routine$1"(ptr %0) {
_llgo_0:
  %1 = load { { ptr, ptr } }, ptr %0, align 8
  %2 = extractvalue { { ptr, ptr } } %1, 0
  %3 = extractvalue { ptr, ptr } %2, 1
  %4 = extractvalue { ptr, ptr } %2, 0
  call void %4(ptr %3)
  call void @free(ptr %0)
  ret ptr null
}

declare void @free(ptr)

declare i32 @"github.com/goplus/llgo/internal/runtime.CreateThread"(ptr, ptr, %"github.com/goplus/llgo/c/pthread.RoutineFunc", ptr)

define linkonce ptr @"__llgo_stub.foo._llgo_routine$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = tail call ptr @"foo._llgo_routine$1"(ptr %1)
  ret ptr %2
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)

declare i1 @"github.com/goplus/llgo/internal/runtime.ChanRecv"(ptr, ptr, i64)

define void @"foo.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 16, i64 1, i64 1)
  %1 = load ptr, ptr @_llgo_foo.Foo, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %0, ptr @_llgo_foo.Foo, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 0
  store ptr @0, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 1
  store i64 4, ptr %5, align 4
  %6 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3, align 8
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 0
  store ptr null, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 1
  store i64 0, ptr %9, align 4
  %10 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %7, align 8
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %0)
  %12 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %6, ptr %11, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %10, i1 false)
  %13 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %13, i32 0, i32 0
  store ptr @1, ptr %14, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %13, i32 0, i32 1
  store i64 4, ptr %15, align 4
  %16 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %13, align 8
  %17 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %17, i32 0, i32 0
  store ptr null, ptr %18, align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %17, i32 0, i32 1
  store i64 0, ptr %19, align 4
  %20 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %17, align 8
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 43)
  %23 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %23, i32 0, i32 0
  store ptr @2, ptr %24, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %23, i32 0, i32 1
  store i64 7, ptr %25, align 4
  %26 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %23, align 8
  %27 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %27, i32 0, i32 0
  store ptr null, ptr %28, align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %27, i32 0, i32 1
  store i64 0, ptr %29, align 4
  %30 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %27, align 8
  %31 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %32 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %31)
  %33 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %26, ptr %32, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %30, i1 false)
  %34 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 0
  store ptr @3, ptr %35, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 1
  store i64 4, ptr %36, align 4
  %37 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %34, align 8
  %38 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %38, i32 0, i32 0
  store ptr null, ptr %39, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %38, i32 0, i32 1
  store i64 0, ptr %40, align 4
  %41 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %38, align 8
  %42 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %43 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %42)
  %44 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %37, ptr %43, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %41, i1 false)
  %45 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %45, i32 0, i32 0
  store ptr @4, ptr %46, align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %45, i32 0, i32 1
  store i64 5, ptr %47, align 4
  %48 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %45, align 8
  %49 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %49, i32 0, i32 0
  store ptr null, ptr %50, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %49, i32 0, i32 1
  store i64 0, ptr %51, align 4
  %52 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %49, align 8
  %53 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 43)
  %54 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %53)
  %55 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %48, ptr %54, i64 136, %"github.com/goplus/llgo/internal/runtime.String" %52, i1 false)
  %56 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %56, i32 0, i32 0
  store ptr @5, ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %56, i32 0, i32 1
  store i64 8, ptr %58, align 4
  %59 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %56, align 8
  %60 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %60, i32 0, i32 0
  store ptr null, ptr %61, align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %60, i32 0, i32 1
  store i64 0, ptr %62, align 4
  %63 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %60, align 8
  %64 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %65 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %59, ptr %64, i64 200, %"github.com/goplus/llgo/internal/runtime.String" %63, i1 false)
  %66 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %66, i32 0, i32 0
  store ptr @6, ptr %67, align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %66, i32 0, i32 1
  store i64 3, ptr %68, align 4
  %69 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %66, align 8
  %70 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %71 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %70, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %33, ptr %71, align 8
  %72 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %70, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %44, ptr %72, align 8
  %73 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %70, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %55, ptr %73, align 8
  %74 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %70, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %65, ptr %74, align 8
  %75 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %75, i32 0, i32 0
  store ptr %70, ptr %76, align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %75, i32 0, i32 1
  store i64 4, ptr %77, align 4
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %75, i32 0, i32 2
  store i64 4, ptr %78, align 4
  %79 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %75, align 8
  %80 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %69, i64 208, %"github.com/goplus/llgo/internal/runtime.Slice" %79)
  %81 = call ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr %21, ptr %22, ptr %80, i64 12)
  %82 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %16, ptr %81, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %20, i1 false)
  %83 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %83, i32 0, i32 0
  store ptr @6, ptr %84, align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %83, i32 0, i32 1
  store i64 3, ptr %85, align 4
  %86 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %83, align 8
  %87 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %88 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %87, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %12, ptr %88, align 8
  %89 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %87, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %82, ptr %89, align 8
  %90 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %90, i32 0, i32 0
  store ptr %87, ptr %91, align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %90, i32 0, i32 1
  store i64 2, ptr %92, align 4
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %90, i32 0, i32 2
  store i64 2, ptr %93, align 4
  %94 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %90, align 8
  %95 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %86, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %94)
  store ptr %95, ptr @"foo.struct$sUOINQ1FDCN7y-nzX20cgAVFoHXQ1pkjKP9R_Z6Irsk", align 8
  %96 = load ptr, ptr @"foo.struct$sUOINQ1FDCN7y-nzX20cgAVFoHXQ1pkjKP9R_Z6Irsk", align 8
  br i1 %2, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %97 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %97, i32 0, i32 0
  store ptr @7, ptr %98, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %97, i32 0, i32 1
  store i64 3, ptr %99, align 4
  %100 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %97, align 8
  %101 = load ptr, ptr @"[]_llgo_int", align 8
  %102 = icmp eq ptr %101, null
  br i1 %102, label %_llgo_5, label %_llgo_6

_llgo_4:                                          ; preds = %_llgo_12, %_llgo_2
  %103 = load ptr, ptr @"_llgo_func$w7i25ru9Alz5aegActeASLLTXdwBqJ6Wc6FdpkIn_cs", align 8
  %104 = load ptr, ptr @"_llgo_iface$opv3stH14p-JT6UN0WEYD-Tr6bHK3MHpC4KSk10pjNU", align 8
  %105 = icmp eq ptr %104, null
  br i1 %105, label %_llgo_13, label %_llgo_14

_llgo_5:                                          ; preds = %_llgo_3
  %106 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %107 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %106)
  store ptr %107, ptr @"[]_llgo_int", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_3
  %108 = load ptr, ptr @"[]_llgo_int", align 8
  %109 = load ptr, ptr @_llgo_string, align 8
  %110 = icmp eq ptr %109, null
  br i1 %110, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %111 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %111, ptr @_llgo_string, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %112 = load ptr, ptr @_llgo_string, align 8
  %113 = load ptr, ptr @_llgo_int, align 8
  %114 = icmp eq ptr %113, null
  br i1 %114, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %115 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  store ptr %115, ptr @_llgo_int, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %116 = load ptr, ptr @_llgo_int, align 8
  %117 = load ptr, ptr @"_llgo_func$w7i25ru9Alz5aegActeASLLTXdwBqJ6Wc6FdpkIn_cs", align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %119 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %120 = getelementptr ptr, ptr %119, i64 0
  store ptr %108, ptr %120, align 8
  %121 = getelementptr ptr, ptr %119, i64 1
  store ptr %112, ptr %121, align 8
  %122 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %123 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %122, i32 0, i32 0
  store ptr %119, ptr %123, align 8
  %124 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %122, i32 0, i32 1
  store i64 2, ptr %124, align 4
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %122, i32 0, i32 2
  store i64 2, ptr %125, align 4
  %126 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %122, align 8
  %127 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %128 = getelementptr ptr, ptr %127, i64 0
  store ptr %116, ptr %128, align 8
  %129 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %129, i32 0, i32 0
  store ptr %127, ptr %130, align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %129, i32 0, i32 1
  store i64 1, ptr %131, align 4
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %129, i32 0, i32 2
  store i64 1, ptr %132, align 4
  %133 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %129, align 8
  %134 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %126, %"github.com/goplus/llgo/internal/runtime.Slice" %133, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %134)
  store ptr %134, ptr @"_llgo_func$w7i25ru9Alz5aegActeASLLTXdwBqJ6Wc6FdpkIn_cs", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %135 = load ptr, ptr @"_llgo_func$w7i25ru9Alz5aegActeASLLTXdwBqJ6Wc6FdpkIn_cs", align 8
  %136 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %136, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %100, ptr %137, align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %136, i32 0, i32 1
  store ptr %135, ptr %138, align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %136, i32 0, i32 2
  store ptr @"foo.(*Foo).Foo", ptr %139, align 8
  %140 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %136, i32 0, i32 3
  store ptr @"foo.(*Foo).Foo", ptr %140, align 8
  %141 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %136, align 8
  %142 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %143 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %142, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %100, ptr %143, align 8
  %144 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %142, i32 0, i32 1
  store ptr %135, ptr %144, align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %142, i32 0, i32 2
  store ptr @"foo.(*Foo).Foo", ptr %145, align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %142, i32 0, i32 3
  store ptr @foo.Foo.Foo, ptr %146, align 8
  %147 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %142, align 8
  %148 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %149 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %148, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %147, ptr %149, align 8
  %150 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %150, i32 0, i32 0
  store ptr %148, ptr %151, align 8
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %150, i32 0, i32 1
  store i64 1, ptr %152, align 4
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %150, i32 0, i32 2
  store i64 1, ptr %153, align 4
  %154 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %150, align 8
  %155 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %156 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %155, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %141, ptr %156, align 8
  %157 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %157, i32 0, i32 0
  store ptr %155, ptr %158, align 8
  %159 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %157, i32 0, i32 1
  store i64 1, ptr %159, align 4
  %160 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %157, i32 0, i32 2
  store i64 1, ptr %160, align 4
  %161 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %157, align 8
  %162 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %163 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %162, i32 0, i32 0
  store ptr @6, ptr %163, align 8
  %164 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %162, i32 0, i32 1
  store i64 3, ptr %164, align 4
  %165 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %162, align 8
  %166 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %166, i32 0, i32 0
  store ptr @7, ptr %167, align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %166, i32 0, i32 1
  store i64 3, ptr %168, align 4
  %169 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %166, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %0, %"github.com/goplus/llgo/internal/runtime.String" %165, %"github.com/goplus/llgo/internal/runtime.String" %169, ptr %96, %"github.com/goplus/llgo/internal/runtime.Slice" %154, %"github.com/goplus/llgo/internal/runtime.Slice" %161)
  br label %_llgo_4

_llgo_13:                                         ; preds = %_llgo_4
  %170 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %171 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %170, i32 0, i32 0
  store ptr @7, ptr %171, align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %170, i32 0, i32 1
  store i64 3, ptr %172, align 4
  %173 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %170, align 8
  %174 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %175 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %174, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %173, ptr %175, align 8
  %176 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %174, i32 0, i32 1
  store ptr %103, ptr %176, align 8
  %177 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %174, align 8
  %178 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %179 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %178, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %177, ptr %179, align 8
  %180 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %180, i32 0, i32 0
  store ptr %178, ptr %181, align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %180, i32 0, i32 1
  store i64 1, ptr %182, align 4
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %180, i32 0, i32 2
  store i64 1, ptr %183, align 4
  %184 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %180, align 8
  %185 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %185, i32 0, i32 0
  store ptr @6, ptr %186, align 8
  %187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %185, i32 0, i32 1
  store i64 3, ptr %187, align 4
  %188 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %185, align 8
  %189 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %190 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %189, i32 0, i32 0
  store ptr null, ptr %190, align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %189, i32 0, i32 1
  store i64 0, ptr %191, align 4
  %192 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %189, align 8
  %193 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %188, %"github.com/goplus/llgo/internal/runtime.String" %192, %"github.com/goplus/llgo/internal/runtime.Slice" %184)
  store ptr %193, ptr @"_llgo_iface$opv3stH14p-JT6UN0WEYD-Tr6bHK3MHpC4KSk10pjNU", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_4
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr, ptr, ptr, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/internal/runtime.ChanSend"(ptr, ptr, i64)

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.dbg.cu = !{!2}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = distinct !DICompileUnit(language: DW_LANG_Go, file: !3, producer: "LLGo", isOptimized: true, runtimeVersion: 1, emissionKind: FullDebug)
!3 = !DIFile(filename: "foo", directory: "foo")
!4 = distinct !DISubprogram(name: "foo.Foo.Foo", linkageName: "foo.Foo.Foo", scope: null, file: !5, line: 12, type: !6, spFlags: DISPFlagDefinition, unit: !2)
!5 = !DIFile(filename: "foo.go", directory: "")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !14, !15}
!8 = !DICompositeType(tag: DW_TAG_structure_type, name: "struct{nexy *foo.Foo; data map[string]uint64}", scope: !5, file: !5, line: 12, size: 128, align: 64, elements: !9)
!9 = !{!10, !12}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "nexy", scope: !5, file: !5, line: 12, baseType: !11, size: 64, align: 8)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 128, align: 64, dwarfAddressSpace: 0)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5, file: !5, line: 12, baseType: !13, size: 64, align: 8, offset: 64)
!13 = !DIBasicType(name: "map[string]uint64", size: 64, encoding: DW_ATE_unsigned)
!14 = !DIBasicType(name: "[]int", size: 192, encoding: DW_ATE_unsigned)
!15 = !DIBasicType(name: "string", size: 128, encoding: DW_ATE_unsigned_char)
!16 = !DILocalVariable(name: "arg0", arg: 1, scope: !4, file: !5, line: 12, type: !8)
!17 = !DILocation(line: 12, column: 7, scope: !4)
!18 = !DILocalVariable(name: "a", arg: 2, scope: !4, file: !5, line: 12, type: !14)
!19 = !DILocation(line: 12, column: 16, scope: !4)
!20 = !DILocalVariable(name: "b", arg: 3, scope: !4, file: !5, line: 12, type: !15)
!21 = !DILocation(line: 12, column: 25, scope: !4)
!22 = !DILocation(line: 12, column: 12, scope: !4)
!23 = distinct !DISubprogram(name: "foo.(*Foo).Foo", linkageName: "foo.(*Foo).Foo", scope: null, file: !5, line: 12, type: !24, spFlags: DISPFlagDefinition, unit: !2)
!24 = !DISubroutineType(types: !25)
!25 = !{!11, !14, !15}
!26 = !DILocalVariable(name: "arg0", arg: 1, scope: !23, file: !5, line: 12, type: !11)
!27 = !DILocation(line: 12, column: 7, scope: !23)
!28 = !DILocalVariable(name: "a", arg: 2, scope: !23, file: !5, line: 12, type: !14)
!29 = !DILocation(line: 12, column: 16, scope: !23)
!30 = !DILocalVariable(name: "b", arg: 3, scope: !23, file: !5, line: 12, type: !15)
!31 = !DILocation(line: 12, column: 25, scope: !23)
!32 = !DILocation(line: 0, scope: !23)
!33 = distinct !DISubprogram(name: "foo.fn", linkageName: "foo.fn", scope: null, file: !5, line: 16, type: !34, spFlags: DISPFlagDefinition, unit: !2)
!34 = !DISubroutineType(types: !35)
!35 = !{!36, !37}
!36 = !DIBasicType(name: "int", size: 64, encoding: DW_ATE_signed)
!37 = !DIBasicType(name: "float64", size: 64, encoding: DW_ATE_float)
!38 = !DILocalVariable(name: "a", arg: 1, scope: !33, file: !5, line: 16, type: !36)
!39 = !DILocation(line: 16, column: 9, scope: !33)
!40 = !DILocalVariable(name: "b", arg: 2, scope: !33, file: !5, line: 16, type: !37)
!41 = !DILocation(line: 16, column: 16, scope: !33)
!42 = !DILocation(line: 16, column: 6, scope: !33)
!43 = distinct !DISubprogram(name: "foo.fn1", linkageName: "foo.fn1", scope: null, file: !5, line: 20, type: !44, spFlags: DISPFlagDefinition, unit: !2)
!44 = !DISubroutineType(types: !45)
!45 = !{!46}
!46 = !DICompositeType(tag: DW_TAG_structure_type, name: "struct{f func(__llgo_ctx unsafe.Pointer, int, float64) int; data unsafe.Pointer}", scope: !5, file: !5, line: 20, size: 128, align: 64, elements: !47)
!47 = !{!48, !54}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !5, file: !5, line: 20, baseType: !49, size: 64, align: 8)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 8, dwarfAddressSpace: 0)
!50 = !DISubroutineType(types: !51)
!51 = !{!52, !53, !36, !37}
!52 = !DIBasicType(name: "(int)", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "unsafe.Pointer", baseType: null, size: 64, align: 64, dwarfAddressSpace: 0)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5, file: !5, line: 20, baseType: !53, size: 64, align: 8, offset: 64)
!55 = !DILocalVariable(name: "fn", arg: 1, scope: !43, file: !5, line: 20, type: !46)
!56 = !DILocation(line: 20, column: 10, scope: !43)
!57 = !DILocation(line: 21, column: 4, scope: !43)
!58 = distinct !DISubprogram(name: "foo.fn2", linkageName: "foo.fn2", scope: null, file: !5, line: 24, type: !59, spFlags: DISPFlagDefinition, unit: !2)
!59 = !DISubroutineType(types: !60)
!60 = !{}
!61 = !DILocation(line: 25, column: 5, scope: !58)
!62 = !DILocation(line: 26, column: 2, scope: !58)
!63 = !DILocation(line: 26, column: 12, scope: !58)
!64 = !DILocation(line: 0, scope: !58)
!65 = !DILocation(line: 30, column: 4, scope: !58)
!66 = !DILocation(line: 30, column: 2, scope: !58)
!67 = !DILocation(line: 34, column: 10, scope: !58)
!68 = distinct !DISubprogram(name: "foo.fn2$1", linkageName: "foo.fn2$1", scope: null, file: !5, line: 27, type: !69, spFlags: DISPFlagDefinition, unit: !2)
!69 = !DISubroutineType(types: !70)
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64, dwarfAddressSpace: 0)
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "struct{ch *chan int}", scope: !5, file: !5, line: 27, size: 64, align: 64, elements: !73)
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !5, file: !5, line: 27, baseType: !75, size: 64, align: 8)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64, dwarfAddressSpace: 0)
!76 = !DIBasicType(name: "chan int", size: 64, encoding: DW_ATE_unsigned)
!77 = !DILocation(line: 28, column: 3, scope: !68)
!78 = distinct !DISubprogram(name: "foo.init", linkageName: "foo.init", scope: null, file: !79, type: !59, spFlags: DISPFlagDefinition, unit: !2)
!79 = !DIFile(filename: "", directory: "")
!80 = !DILocation(line: 0, scope: !78)
`)
}
