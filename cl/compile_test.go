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

func fn(a int, b float64) int {
  return 1
}
`, `; ModuleID = 'foo'
source_filename = "foo"

@"foo.init$guard" = global i1 false, align 1

define i64 @foo.fn(i64 %0, double %1) !dbg !4 {
_llgo_0:
  call void @llvm.dbg.value(metadata i64 %0, metadata !10, metadata !DIExpression()), !dbg !11
  call void @llvm.dbg.value(metadata double %1, metadata !12, metadata !DIExpression()), !dbg !13
  ret i64 1, !dbg !14
}

define void @foo.init() !dbg !15 {
_llgo_0:
  %0 = load i1, ptr @"foo.init$guard", align 1, !dbg !19
  br i1 %0, label %_llgo_2, label %_llgo_1, !dbg !19

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"foo.init$guard", align 1, !dbg !19
  br label %_llgo_2, !dbg !19

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void, !dbg !19
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #0

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.dbg.cu = !{!2}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = distinct !DICompileUnit(language: DW_LANG_Modula3, file: !3, producer: "LLGo", isOptimized: true, runtimeVersion: 1, emissionKind: FullDebug)
!3 = !DIFile(filename: "foo", directory: "foo")
!4 = distinct !DISubprogram(name: "foo.fn", linkageName: "foo.fn", scope: null, file: !5, line: 3, type: !6, spFlags: DISPFlagDefinition, unit: !2)
!5 = !DIFile(filename: "foo.go", directory: "")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !9}
!8 = !DIBasicType(name: "int", size: 64, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "float64", size: 64, encoding: DW_ATE_float)
!10 = !DILocalVariable(name: "a", scope: !4, file: !5, line: 3, type: !8)
!11 = !DILocation(line: 3, column: 9, scope: !4)
!12 = !DILocalVariable(name: "b", arg: 1, scope: !4, file: !5, line: 3, type: !9)
!13 = !DILocation(line: 3, column: 16, scope: !4)
!14 = !DILocation(line: 3, column: 6, scope: !4)
!15 = distinct !DISubprogram(name: "foo.init", linkageName: "foo.init", scope: null, file: !16, type: !17, spFlags: DISPFlagDefinition, unit: !2)
!16 = !DIFile(filename: "", directory: "")
!17 = !DISubroutineType(types: !18)
!18 = !{}
!19 = !DILocation(line: 0, scope: !15)
`)
}
