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

func TestAsyncFunc(t *testing.T) {
	testCompile(t, `package foo

import "github.com/goplus/llgo/x/async"

func GenInts() (co *async.Promise[int]) {
  co.Yield(1)
  co.Yield(2)
  return
}
`, `; ModuleID = 'foo'
source_filename = "foo"

@"foo.init$guard" = global i1 false, align 1

define ptr @foo.GenInts() presplitcoroutine {
entry:
  %promise = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %id = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %need.dyn.alloc = call i1 @llvm.coro.alloc(token %id)
  br i1 %need.dyn.alloc, label %alloc, label %_llgo_5

alloc:                                            ; preds = %entry
  %frame.size = call i64 @llvm.coro.size.i64()
  %frame = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 %frame.size)
  br label %_llgo_5

clean:                                            ; preds = %_llgo_7, %_llgo_6, %_llgo_5
  %0 = call ptr @llvm.coro.free(token %id, ptr %hdl)
  br label %suspend

suspend:                                          ; preds = %_llgo_7, %_llgo_6, %_llgo_5, %clean
  %1 = call i1 @llvm.coro.end(ptr %hdl, i1 false, token none)
  ret ptr %promise

trap:                                             ; preds = %_llgo_7
  call void @llvm.trap()
  unreachable

_llgo_5:                                          ; preds = %alloc, %entry
  %frame1 = phi ptr [ null, %entry ], [ %frame, %alloc ]
  %hdl = call ptr @llvm.coro.begin(token %id, ptr %frame1)
  store ptr %hdl, ptr %promise, align 8
  call void @"github.com/goplus/llgo/x/async.(*Promise).setValue[int]"(ptr %promise, i64 1)
  %2 = call i8 @llvm.coro.suspend(token %id, i1 false)
  switch i8 %2, label %suspend [
    i8 0, label %_llgo_6
    i8 1, label %clean
  ]

_llgo_6:                                          ; preds = %_llgo_5
  call void @"github.com/goplus/llgo/x/async.(*Promise).setValue[int]"(ptr %promise, i64 2)
  %3 = call i8 @llvm.coro.suspend(token %id, i1 false)
  switch i8 %3, label %suspend [
    i8 0, label %_llgo_7
    i8 1, label %clean
  ]

_llgo_7:                                          ; preds = %_llgo_6
  %4 = call i8 @llvm.coro.suspend(token %id, i1 true)
  switch i8 %4, label %suspend [
    i8 0, label %trap
    i8 1, label %clean
  ]
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

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare token @llvm.coro.id(i32, ptr readnone, ptr nocapture readonly, ptr)

; Function Attrs: nounwind
declare i1 @llvm.coro.alloc(token)

; Function Attrs: nounwind memory(none)
declare i64 @llvm.coro.size.i64()

; Function Attrs: nounwind
declare ptr @llvm.coro.begin(token, ptr writeonly)

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly)

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token)

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap()

declare void @"github.com/goplus/llgo/x/async.(*Promise).setValue[int]"(ptr, i64)

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1)

`)
}
