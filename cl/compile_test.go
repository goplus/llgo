//go:build !llgo
// +build !llgo

/*
 * Copyright (c) 2024 The XGo Authors (xgo.dev). All rights reserved.
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
	"go/ast"
	"go/parser"
	"go/token"
	"go/types"
	"os"
	"runtime"
	"strings"
	"testing"

	"github.com/goplus/gogen/packages"
	"github.com/goplus/llgo/cl"
	"github.com/goplus/llgo/cl/cltest"
	"github.com/goplus/llgo/internal/build"
	"github.com/goplus/llgo/internal/llgen"
	"github.com/goplus/llgo/ssa/ssatest"
	"golang.org/x/tools/go/ssa"
	"golang.org/x/tools/go/ssa/ssautil"
)

func testCompile(t *testing.T, src, expected string) {
	t.Helper()
	cltest.TestCompileEx(t, src, "foo.go", expected, false)
}

func compileIR(t *testing.T, src string) string {
	t.Helper()
	fset := token.NewFileSet()
	f, err := parser.ParseFile(fset, "foo.go", src, parser.ParseComments)
	if err != nil {
		t.Fatal("ParseFile failed:", err)
	}
	files := []*ast.File{f}
	pkg := types.NewPackage(f.Name.Name, f.Name.Name)
	imp := packages.NewImporter(fset)
	foo, _, err := ssautil.BuildPackage(
		&types.Config{Importer: imp}, fset, pkg, files, ssa.SanityCheckFunctions|ssa.InstantiateGenerics)
	if err != nil {
		t.Fatal("BuildPackage failed:", err)
	}
	prog := ssatest.NewProgramEx(t, nil, imp)
	prog.TypeSizes(types.SizesFor("gc", runtime.GOARCH))
	ret, err := cl.NewPackage(prog, foo, files)
	if err != nil {
		t.Fatal("cl.NewPackage failed:", err)
	}
	return ret.String()
}

func functionBody(t *testing.T, ir, name string) string {
	t.Helper()
	marker := ""
	for _, line := range strings.Split(ir, "\n") {
		if !strings.HasPrefix(line, "define ") {
			continue
		}
		if strings.Contains(line, "@"+name+"(") ||
			strings.Contains(line, `@"`+name+`"`) ||
			(!strings.Contains(name, ".") && (strings.Contains(line, "."+name+"(") || strings.Contains(line, "."+name+`"`))) {
			marker = line
			break
		}
	}
	start := -1
	if marker != "" {
		start = strings.Index(ir, marker)
	}
	if start < 0 {
		t.Fatalf("function %s not found in IR", name)
	}
	rest := ir[start:]
	if next := strings.Index(rest[len(marker):], "\ndefine "); next >= 0 {
		return rest[:len(marker)+next]
	}
	return rest
}

func requireEmbedTest(t *testing.T) {
	t.Helper()
	if os.Getenv("LLGO_EMBED_TESTS") != "1" {
		t.Skip("Skipping embedded emulator tests; set LLGO_EMBED_TESTS=1 to run")
	}
}

type embedTestSuite struct {
	name   string
	relDir string
}

type embedTargetConfig struct {
	target      string
	ignoreByDir map[string][]string
}

var embedTestSuites = []embedTestSuite{
	{name: "testgo", relDir: "./_testgo"},
	{name: "testlibc", relDir: "./_testlibc"},
	{name: "testrt", relDir: "./_testrt"},
	{name: "testdata", relDir: "./_testdata"},
}

var embedTargetConfigs = []embedTargetConfig{
	{
		target: "esp32c3-basic",
		ignoreByDir: map[string][]string{
			"./_testgo": {
				"./_testgo/abimethod",   // llgo panic: unsatisfied import internal/runtime/sys
				"./_testgo/cgobasic",    // fast fail: build constraints exclude all Go files (cgo)
				"./_testgo/cgocfiles",   // fast fail: build constraints exclude all Go files (cgo)
				"./_testgo/cgodefer",    // fast fail: build constraints exclude all Go files (cgo)
				"./_testgo/cgofull",     // fast fail: build constraints exclude all Go files (cgo)
				"./_testgo/cgomacro",    // fast fail: build constraints exclude all Go files (cgo)
				"./_testgo/cgopython",   // fast fail: build constraints exclude all Go files (cgo)
				"./_testgo/chan",        // timeout: emulator did not auto-exit
				"./_testgo/defer4",      // unexpected output: got "fatal error", expected "recover: panic message"
				"./_testgo/goexit",      // llgo panic: unsatisfied import internal/runtime/sys
				"./_testgo/indexerr",    // unexpected output: len(dst)=12, len(src)=0 (got "fatal error")
				"./_testgo/invoke",      // timeout: emulator did not auto-exit
				"./_testgo/makeslice",   // unexpected output: len(dst)=23, len(src)=0 (got "fatal error\\nmust error")
				"./_testgo/reflect",     // llgo panic: unsatisfied import internal/runtime/sys
				"./_testgo/reflectconv", // llgo panic: unsatisfied import internal/sync
				"./_testgo/reflectfn",   // llgo panic: unsatisfied import internal/runtime/sys
				"./_testgo/reflectmkfn", // llgo panic: unsatisfied import internal/runtime/sys
				"./_testgo/rewrite",     // llgo panic: unsatisfied import internal/sync
				"./_testgo/select",      // timeout: emulator did not auto-exit
				"./_testgo/selects",     // timeout: emulator did not auto-exit
				"./_testgo/sigsegv",     // unexpected output: got "0/main", expected recover nil-pointer message
				"./_testgo/syncmap",     // llgo panic: unsatisfied import internal/runtime/sys
			},
			"./_testlibc": {
				"./_testlibc/argv",     // timeout: emulator panic (Load access fault), no auto-exit
				"./_testlibc/atomic",   // link error: ld.lld: error: undefined symbol: __atomic_store
				"./_testlibc/complex",  // link error: ld.lld: error: undefined symbol: cabsf
				"./_testlibc/demangle", // link error: ld.lld: error: unknown argument '-Wl,-search_paths_first'
				"./_testlibc/once",     // fast fail: build constraints exclude all Go files (pthread/sync)
				"./_testlibc/setjmp",   // link error: ld.lld: error: undefined symbol: stderr
				"./_testlibc/sqlite",   // link error: ld.lld: error: unable to find library -lsqlite3
			},
			"./_testrt": {
				"./_testrt/asmfull",     // compile/asm error: unrecognized instruction mnemonic
				"./_testrt/fprintf",     // link error: ld.lld: error: undefined symbol: __stderrp
				"./_testrt/hello",       // fast fail: build constraints exclude all Go files
				"./_testrt/linkname",    // unexpected output: line order mismatch ("hello" appears first)
				"./_testrt/makemap",     // link error: ld.lld: error: undefined symbol: __atomic_fetch_or_4
				"./_testrt/strlen",      // fast fail: build constraints exclude all Go files
				"./_testrt/struct",      // fast fail: build constraints exclude all Go files
				"./_testrt/tpfunc",      // unexpected output: type size mismatch (got 8 4 4, expected 16 8 8)
				"./_testrt/typalias",    // fast fail: build constraints exclude all Go files
				"./_testrt/unreachable", // timeout: emulator panic (Instruction access fault), no auto-exit
			},
			"./_testdata": {
				"./_testdata/debug", // llgo panic: unsatisfied import internal/runtime/sys
			},
		},
	},
}

func runEmbedTargetSuite(t *testing.T, target, relDir string, ignore []string) {
	t.Helper()
	conf := build.NewDefaultConf(build.ModeRun)
	conf.Target = target
	conf.Emulator = true
	conf.ForceRebuild = true
	cltest.RunFromDir(t, "", relDir, ignore,
		cltest.WithRunConfig(conf),
		cltest.WithOutputFilter(cltest.FilterEmulatorOutput),
	)
}

func TestFromTestgo(t *testing.T) {
	cltest.FromDir(t, "", "./_testgo")
}

func TestRunFromTestgo(t *testing.T) {
	cltest.RunFromDir(t, "", "./_testgo", nil)
}

func TestFilterEmulatorOutput(t *testing.T) {
	tests := []struct {
		name     string
		input    string
		expected string
	}{
		{
			name: "ESP32C3 output",
			input: `Adding SPI flash device
ESP-ROM:esp32c3-api1-20210207
Build:Feb  7 2021
rst:0x1 (POWERON),boot:0x8 (SPI_FAST_FLASH_BOOT)
SPIWP:0xee
mode:DIO, clock div:1
load:0x3fc855b0,len:0xfc
load:0x3fc856ac,len:0x4
load:0x3fc856b0,len:0x44
load:0x40380000,len:0x1548
load:0x40381548,len:0x68
entry 0x40380000
Hello World!
`,
			expected: `Hello World!
`,
		},
		{
			name: "ESP32 output",
			input: `Adding SPI flash device
ESP-ROM:esp32-xxxx
entry 0x40080000
Hello World!
`,
			expected: `Hello World!
`,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got := cltest.FilterEmulatorOutput(tt.input)
			if got != tt.expected {
				t.Fatalf("filterEmulatorOutput() = %q, want %q", got, tt.expected)
			}
		})
	}
}

func TestRunEmbedEmulator(t *testing.T) {
	requireEmbedTest(t)
	for _, targetConf := range embedTargetConfigs {
		targetConf := targetConf
		t.Run(targetConf.target, func(t *testing.T) {
			for _, suite := range embedTestSuites {
				suite := suite
				t.Run(suite.name, func(t *testing.T) {
					runEmbedTargetSuite(t, targetConf.target, suite.relDir, targetConf.ignoreByDir[suite.relDir])
				})
			}
		})
	}
}

func TestFromTestpy(t *testing.T) {
	cltest.FromDir(t, "", "./_testpy")
}

func TestRunFromTestpy(t *testing.T) {
	cltest.RunFromDir(t, "", "./_testpy", nil)
}

func TestFromTestlibgo(t *testing.T) {
	cltest.FromDir(t, "", "./_testlibgo")
}

func TestRunFromTestlibgo(t *testing.T) {
	cltest.RunFromDir(t, "", "./_testlibgo", nil)
}

func TestFromTestlibc(t *testing.T) {
	cltest.FromDir(t, "", "./_testlibc")
}

func TestRunFromTestlibc(t *testing.T) {
	var ignore []string
	if runtime.GOOS == "linux" {
		ignore = []string{
			"./_testlibc/demangle", // Linux demangle symbol differs (itaniumDemangle linkage mismatch).
		}
	}
	cltest.RunFromDir(t, "", "./_testlibc", ignore)
}

func TestFromTestrt(t *testing.T) {
	cl.SetDebug(cl.DbgFlagAll)
	cltest.FromDir(t, "", "./_testrt")
	cl.SetDebug(0)
}

func TestRunFromTestrt(t *testing.T) {
	var ignore []string
	if runtime.GOOS == "linux" {
		ignore = []string{
			"./_testrt/asmfull", // Output is macOS-specific.
			"./_testrt/fprintf", // Linux uses different stderr symbol (no __stderrp).
		}
	}
	cltest.RunFromDir(t, "", "./_testrt", ignore)
}

func TestFromTestdata(t *testing.T) {
	cltest.FromDir(t, "", "./_testdata")
}

func TestRunFromTestdata(t *testing.T) {
	cltest.RunFromDir(t, "", "./_testdata", nil)
}

func TestCgofullGeneratesC2func(t *testing.T) {
	ir := llgen.GenFrom("./_testgo/cgofull")
	if !strings.Contains(ir, "_C2func_test_structs") {
		t.Fatal("missing _C2func_test_structs in cgofull IR")
	}
	if !strings.Contains(ir, "cliteErrno") {
		t.Fatal("missing cliteErrno call in cgofull IR")
	}
}

func TestMakeSliceAvoidsRedundantAlloc(t *testing.T) {
	ir := compileIR(t, `package foo

func fn(n int) []byte {
	return make([]byte, n)
}
`)
	if !strings.Contains(ir, `@"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"`) {
		t.Fatalf("missing MakeSlice call:\n%s", ir)
	}
	if strings.Contains(ir, `@"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"`) {
		t.Fatalf("unexpected redundant AllocZ for make([]byte, n):\n%s", ir)
	}
}

func TestSendMakeSliceUsesStackSlotHelper(t *testing.T) {
	ir := compileIR(t, `package foo

func fn(ch chan []byte, n int) {
	ch <- make([]byte, n)
}
`)
	if !strings.Contains(ir, `@"github.com/goplus/llgo/runtime/internal/runtime.MakeSliceTo"`) {
		t.Fatalf("missing MakeSliceTo helper for single-use send:\n%s", ir)
	}
	if strings.Contains(ir, `call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"`) {
		t.Fatalf("unexpected direct MakeSlice aggregate in send path:\n%s", ir)
	}
}

func TestCommaOkRecvDefersValueMaterialization(t *testing.T) {
	ir := compileIR(t, `package foo

func fn(ch chan []byte, start int64) {
	x, ok := <-ch
	if !ok {
		return
	}
	if start < 0 {
		println(x)
	}
	println([]byte(nil))
}
`)
	body := functionBody(t, ir, "fn")
	recvIdx := strings.Index(body, `@"github.com/goplus/llgo/runtime/internal/runtime.ChanRecv"`)
	if recvIdx < 0 {
		t.Fatalf("missing ChanRecv in fn:\n%s", body)
	}
	rest := body[recvIdx:]
	brIdx := strings.Index(rest, "br i1")
	if brIdx < 0 {
		t.Fatalf("missing ok branch after ChanRecv:\n%s", body)
	}
	loadIdx := strings.Index(rest, `load %"github.com/goplus/llgo/runtime/internal/runtime.Slice"`)
	if loadIdx >= 0 && loadIdx < brIdx {
		t.Fatalf("comma-ok recv value materialized before ok branch:\n%s", body)
	}
}

func TestStackAllocClearedAfterLastSameBlockUse(t *testing.T) {
	ir := compileIR(t, `package foo

type T struct{ p *int }

func g(*T) {}

func f() {
	var s T
	s.p = new(int)
	g(&s)
	println(0)
}
`)
	body := functionBody(t, ir, "foo.f")
	callIdx := strings.Index(body, "@foo.g(")
	hiddenBodyCallIdx := strings.Index(body, "@\"foo.g$hiddenparam\"(")
	hiddenCallIdx := strings.Index(body, "@\"foo.g$hiddencall\"(")
	if hiddenBodyCallIdx > callIdx {
		callIdx = hiddenBodyCallIdx
	}
	if hiddenCallIdx > callIdx {
		callIdx = hiddenCallIdx
	}
	if callIdx < 0 {
		t.Fatalf("missing foo.g call:\n%s", body)
	}
	rest := body[callIdx:]
	clearIdx := strings.Index(rest, `store %foo.T zeroinitializer`)
	if clearIdx < 0 {
		t.Fatalf("missing stack slot clear after last use:\n%s", body)
	}
}

func TestByValueParamClearedAfterLastUse(t *testing.T) {
	ir := compileIR(t, `package foo

type H struct{}
type S struct{ h *H }

var null S
var sink *H

func use(*S) {}
func wait() {}

func f(s S, b bool) {
	var p *S
	if b {
		p = &s
	} else {
		p = &null
	}
	use(p)
	sink = p.h
	sink = nil
	wait()
}
`)
	body := functionBody(t, ir, "foo.f")
	waitIdx := strings.Index(body, "@foo.wait(")
	if waitIdx < 0 {
		t.Fatalf("missing foo.wait call:\n%s", body)
	}
	window := body[:waitIdx]
	if !strings.Contains(window, `store %foo.S zeroinitializer`) &&
		!strings.Contains(window, `store i64 0, ptr`) {
		t.Fatalf("missing by-value param clear before foo.wait:\n%s", body)
	}
	if !strings.Contains(window, "@runtime.LoadHiddenPointerKey(") {
		t.Fatalf("missing hidden pointer load helper for p.h:\n%s", body)
	}
	if !strings.Contains(window, "@runtime.StoreHiddenPointerRoot(") {
		t.Fatalf("missing hidden root store helper for sink assignment:\n%s", body)
	}
	clobberIdx := strings.LastIndex(window, "@runtime.ClobberPointerRegs(")
	if clobberIdx < 0 {
		t.Fatalf("missing pointer clobber after by-value param clear:\n%s", body)
	}
}

func TestByValueParamClearsDeadBranchBeforeFirstGC(t *testing.T) {
	ir := compileIR(t, `package foo

import "runtime"

type H struct{}
type S struct{ h *H }

var null S
var sink *H

func use(*S) {}
func gc() { runtime.GC() }

func f(s S, b bool) {
	var p *S
	if b {
		p = &s
	} else {
		p = &null
	}
	use(p)
	gc()
	sink = p.h
	sink = nil
	gc()
}
`)
	body := functionBody(t, ir, "foo.f")
	firstGCIdx := strings.Index(body, "@foo.gc(")
	if firstGCIdx < 0 {
		t.Fatalf("missing first gc call:\n%s", body)
	}
	secondGCRel := strings.Index(body[firstGCIdx+1:], "@foo.gc(")
	if secondGCRel < 0 {
		t.Fatalf("missing second gc call:\n%s", body)
	}
	secondGCIdx := firstGCIdx + 1 + secondGCRel
	if strings.Count(body, `store %foo.S zeroinitializer`) < 2 {
		t.Fatalf("missing branch-sensitive by-value clears across both paths:\n%s", body)
	}
	if !strings.Contains(body[firstGCIdx:secondGCIdx], `store %foo.S zeroinitializer`) &&
		!strings.Contains(body[firstGCIdx:secondGCIdx], `store i64 0, ptr`) {
		t.Fatalf("missing late by-value clear before second gc:\n%s", body)
	}
}

func TestPointerKeepAliveUsesPointerHelper(t *testing.T) {
	ir := compileIR(t, `package foo

import "runtime"

type T struct{ p *int }

func g(s *T) {
	runtime.KeepAlive(s)
}
`)
	body := functionBody(t, ir, "foo.g")
	if !strings.Contains(body, "@runtime.KeepAlivePointer(") {
		t.Fatalf("missing pointer keepalive helper:\n%s", body)
	}
	if strings.Contains(body, `insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface"`) {
		t.Fatalf("unexpected eface materialization for pointer KeepAlive:\n%s", body)
	}
}

func TestStaticPointerParamClearedAfterLastUse(t *testing.T) {
	ir := compileIR(t, `package foo

import "runtime"

type T struct{ p *int }

func g(s *T) {
	runtime.KeepAlive(s)
}

func f() {
	var s T
	s.p = new(int)
	g(&s)
}
`)
	body := functionBody(t, ir, "foo.g")
	callIdx := strings.Index(body, "@runtime.KeepAlivePointer(")
	if callIdx < 0 {
		t.Fatalf("missing pointer keepalive helper:\n%s", body)
	}
	rest := body[callIdx:]
	clearIdx := strings.Index(rest, `store %foo.T zeroinitializer`)
	if clearIdx < 0 {
		t.Fatalf("missing pointee clear after final parameter use:\n%s", body)
	}
}

func TestPointerValueClearedBeforeLastCallUse(t *testing.T) {
	ir := compileIR(t, `package foo

type T struct{}

func mk() *T { return new(T) }
func use(*T) {}

func f() {
	x := mk()
	use(x)
	println(0)
}
`)
	body := functionBody(t, ir, "foo.f")
	callIdx := strings.Index(body, "@foo.use(")
	hiddenBodyCallIdx := strings.Index(body, "@\"foo.use$hiddenparam\"(")
	hiddenCallIdx := strings.Index(body, "@\"foo.use$hiddencall\"(")
	if hiddenBodyCallIdx > callIdx {
		callIdx = hiddenBodyCallIdx
	}
	if hiddenCallIdx > callIdx {
		callIdx = hiddenCallIdx
	}
	if callIdx < 0 {
		t.Fatalf("missing foo.use call:\n%s", body)
	}
	rest := body[:callIdx]
	loadIdx := strings.LastIndex(rest, "load ptr, ptr")
	hiddenLoadIdx := strings.LastIndex(rest, "load i64, ptr")
	if hiddenLoadIdx > loadIdx {
		loadIdx = hiddenLoadIdx
	}
	if loadIdx < 0 {
		t.Fatalf("missing pointer slot load before foo.use:\n%s", body)
	}
	clearIdx := strings.LastIndex(rest, "store ptr null, ptr")
	if hiddenLoadIdx >= 0 {
		if rel := strings.LastIndex(rest[hiddenLoadIdx:], "store i64 "); rel >= 0 {
			hiddenClearIdx := hiddenLoadIdx + rel
			if hiddenClearIdx > clearIdx {
				clearIdx = hiddenClearIdx
			}
		}
	}
	if clearIdx < 0 {
		t.Fatalf("missing pointer slot clear before foo.use:\n%s", body)
	}
	if clearIdx < loadIdx {
		t.Fatalf("pointer slot cleared before last-use load:\n%s", body)
	}
}

func TestParamValueClearClobbersPointerRegs(t *testing.T) {
	ir := compileIR(t, `package foo

type T struct{}

func use(*T) {}
func wait() {}

func f(x *T) {
	use(x)
	wait()
}
`)
	body := functionBody(t, ir, "foo.f")
	callIdx := strings.Index(body, "@foo.use(")
	hiddenBodyCallIdx := strings.Index(body, "@\"foo.use$hiddenparam\"(")
	hiddenCallIdx := strings.Index(body, "@\"foo.use$hiddencall\"(")
	if hiddenBodyCallIdx > callIdx {
		callIdx = hiddenBodyCallIdx
	}
	if hiddenCallIdx > callIdx {
		callIdx = hiddenCallIdx
	}
	if callIdx < 0 {
		t.Fatalf("missing foo.use call:\n%s", body)
	}
	waitIdx := strings.Index(body[callIdx:], "@foo.wait(")
	if waitIdx < 0 {
		t.Fatalf("missing foo.wait call:\n%s", body)
	}
	window := body[callIdx : callIdx+waitIdx]
	clearIdx := strings.Index(window, "store ptr null, ptr")
	if clearIdx < 0 {
		t.Fatalf("missing parameter slot clear after foo.use:\n%s", body)
	}
	clobberIdx := strings.Index(window, "@runtime.ClobberPointerRegs(")
	if clobberIdx < 0 {
		t.Fatalf("missing pointer clobber after parameter slot clear:\n%s", body)
	}
	if clobberIdx < clearIdx {
		t.Fatalf("pointer clobber ran before parameter slot clear:\n%s", body)
	}
}

func TestNilPointerStoreClobbersPointerRegs(t *testing.T) {
	ir := compileIR(t, `package foo

type T struct{}

var sink *T

func wait() {}

func f(x *T) {
	sink = x
	sink = nil
	wait()
}
`)
	body := functionBody(t, ir, "foo.f")
	waitIdx := strings.Index(body, "@foo.wait(")
	if waitIdx < 0 {
		t.Fatalf("missing foo.wait call:\n%s", body)
	}
	window := body[:waitIdx]
	clearIdx := strings.LastIndex(window, "store ptr null, ptr")
	if clearIdx < 0 {
		t.Fatalf("missing nil store before foo.wait:\n%s", body)
	}
	clobberIdx := strings.LastIndex(window, "@runtime.ClobberPointerRegs(")
	if clobberIdx < 0 {
		t.Fatalf("missing pointer clobber after nil store:\n%s", body)
	}
	if clobberIdx < clearIdx {
		t.Fatalf("pointer clobber ran before nil store:\n%s", body)
	}
}

func TestGcSensitivePointerParamUsesHiddenBody(t *testing.T) {
	ir := compileIR(t, `package foo

import "runtime"

type T struct{ p *int }

func gc() { runtime.GC() }
func g(s *T) {
	gc()
	runtime.KeepAlive(s)
	gc()
}
func f() {
	var s T
	s.p = new(int)
	g(&s)
}
`)
	body := functionBody(t, ir, "foo.f")
	if !strings.Contains(body, `@"foo.g$hiddenparam"(`) {
		t.Fatalf("missing hidden-param call for gc-sensitive pointer callee:\n%s", body)
	}
	if strings.Contains(body, `@"foo.g$hiddencall"(`) {
		t.Fatalf("unexpected caller-side hidden shim for gc-sensitive pointer callee:\n%s", body)
	}
	hiddenBody := functionBody(t, ir, `foo.g$hiddenparam`)
	keepAliveIdx := strings.Index(hiddenBody, "@runtime.KeepAlivePointer(")
	if keepAliveIdx < 0 {
		t.Fatalf("missing pointer keepalive helper in hidden body:\n%s", hiddenBody)
	}
	nextGCIdx := strings.Index(hiddenBody[keepAliveIdx:], "@foo.gc(")
	if nextGCIdx < 0 {
		t.Fatalf("missing trailing gc call in hidden body:\n%s", hiddenBody)
	}
	window := hiddenBody[keepAliveIdx : keepAliveIdx+nextGCIdx]
	if !strings.Contains(hiddenBody, "@runtime.ShadowCopyPointee(") {
		t.Fatalf("missing shadow copy for hidden pointer param body:\n%s", hiddenBody)
	}
	if !strings.Contains(window, "zeroinitializer") {
		t.Fatalf("missing shadow clear before second gc:\n%s", hiddenBody)
	}
}

func TestGcSensitiveByValueStructParamUsesHiddenBody(t *testing.T) {
	ir := compileIR(t, `package foo

import "runtime"

type H struct{}
type S struct{ h *H }

var sink *H

func gc() { runtime.GC() }
func g(s S) {
	gc()
	sink = s.h
	sink = nil
	gc()
}
func f() {
	var s S
	s.h = new(H)
	g(s)
}
`)
	body := functionBody(t, ir, "foo.f")
	if !strings.Contains(body, `@"foo.g$hiddenparam"(`) {
		t.Fatalf("missing hidden-param call for gc-sensitive by-value callee:\n%s", body)
	}
	hiddenBody := functionBody(t, ir, `foo.g$hiddenparam`)
	if !strings.Contains(hiddenBody, "@runtime.LoadHiddenPointee(") &&
		!strings.Contains(hiddenBody, "@runtime.StoreHiddenPointerRoot(") {
		t.Fatalf("missing hidden by-value param decode:\n%s", hiddenBody)
	}
	secondGCIdx := strings.LastIndex(hiddenBody, "@foo.gc(")
	if secondGCIdx < 0 {
		t.Fatalf("missing trailing gc call in hidden body:\n%s", hiddenBody)
	}
	window := hiddenBody[:secondGCIdx]
	if !strings.Contains(window, "store %foo.S zeroinitializer") && !strings.Contains(window, "store i64 0, ptr") {
		t.Fatalf("missing by-value param clear before second gc:\n%s", hiddenBody)
	}
}

func TestPointerAllocUsesHiddenUintptrSlot(t *testing.T) {
	ir := compileIR(t, `package foo

type T struct{}

func f() (x *T) {
	x = new(T)
	defer func() { recover() }()
	*(*int)(nil) = 0
	return
}
`)
	body := functionBody(t, ir, "foo.f")
	if !strings.Contains(body, "alloca i64") {
		t.Fatalf("missing hidden uintptr slot for pointer alloc:\n%s", body)
	}
	if !strings.Contains(body, "xor i64") {
		t.Fatalf("missing hidden pointer encoding for pointer alloc:\n%s", body)
	}
}

func TestUnsafeStringDataUsesHiddenDataFastPath(t *testing.T) {
	ir := compileIR(t, `package foo

import "unsafe"

func use(*byte) {}

func f(x, y string) {
	s := x + y
	p := unsafe.StringData(s)
	use(p)
}
`)
	body := functionBody(t, ir, "foo.f")
	callIdx := strings.Index(body, `@"foo.use$hiddenparam"(`)
	if callIdx < 0 {
		callIdx = strings.Index(body, `@"foo.use$hiddencall"(`)
	}
	if callIdx < 0 {
		callIdx = strings.Index(body, "@foo.use(")
	}
	if callIdx < 0 {
		t.Fatalf("missing foo.use call:\n%s", body)
	}
	loadIdx := strings.LastIndex(body[:callIdx], `load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr`)
	if loadIdx < 0 {
		t.Fatalf("missing hidden string slot load before foo.use:\n%s", body)
	}
	if strings.Contains(body[loadIdx:callIdx], `insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.String"`) {
		t.Fatalf("unsafe.StringData rebuilt the full string from its hidden slot:\n%s", body)
	}
}

func TestUnsafeSliceDataUsesHiddenDataFastPath(t *testing.T) {
	ir := compileIR(t, `package foo

import "unsafe"

func use(*byte) {}

func f() {
	s := make([]byte, 4)
	s[0] = 1
	p := unsafe.SliceData(s)
	use(p)
}
`)
	body := functionBody(t, ir, "foo.f")
	callIdx := strings.Index(body, `@"foo.use$hiddenparam"(`)
	if callIdx < 0 {
		callIdx = strings.Index(body, `@"foo.use$hiddencall"(`)
	}
	if callIdx < 0 {
		callIdx = strings.Index(body, "@foo.use(")
	}
	if callIdx < 0 {
		t.Fatalf("missing foo.use call:\n%s", body)
	}
	loadIdx := strings.LastIndex(body[:callIdx], `load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr`)
	if loadIdx < 0 {
		t.Fatalf("missing hidden slice slot load before foo.use:\n%s", body)
	}
	if strings.Contains(body[loadIdx:callIdx], `insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice"`) {
		t.Fatalf("unsafe.SliceData rebuilt the full slice from its hidden slot:\n%s", body)
	}
}

func TestHiddenMakeSliceUsesStackSlotHelper(t *testing.T) {
	ir := compileIR(t, `package foo

import "unsafe"

func use(*byte) {}

func f() {
	s := make([]byte, 4)
	s[0] = 1
	p := unsafe.SliceData(s)
	use(p)
}
`)
	body := functionBody(t, ir, "foo.f")
	if !strings.Contains(body, `@"github.com/goplus/llgo/runtime/internal/runtime.MakeSliceTo"`) {
		t.Fatalf("missing MakeSliceTo helper for hidden make slice path:\n%s", body)
	}
	if strings.Contains(body, `call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"`) {
		t.Fatalf("unexpected direct MakeSlice aggregate in hidden make slice path:\n%s", body)
	}
}

func TestMakeSliceLocalClearedAfterLastUse(t *testing.T) {
	ir := compileIR(t, `package foo

import "unsafe"

func use(*byte) {}

func f() {
	s := make([]byte, 4)
	s[0] = 1
	p := unsafe.SliceData(s)
	use(p)
}
`)
	body := functionBody(t, ir, "foo.f")
	callIdx := strings.Index(body, `@"foo.use$hiddenparam"(`)
	if callIdx < 0 {
		callIdx = strings.Index(body, `@"foo.use$hiddencall"(`)
	}
	if callIdx < 0 {
		callIdx = strings.Index(body, "@foo.use(")
	}
	if callIdx < 0 {
		t.Fatalf("missing foo.use call:\n%s", body)
	}
	window := body[:callIdx]
	if !strings.Contains(window, `store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr`) {
		t.Fatalf("missing raw make-slice local clear after last use:\n%s", body)
	}
}

func TestHiddenPointerDerefUsesLoadHelper(t *testing.T) {
	ir := compileIR(t, `package foo

import "unsafe"

func wait() {}
func g(x *byte) *byte { return x }

func f(x, y string) {
	s := x + y
	p := unsafe.StringData(s)
	h := g(p)
	_ = *h
	wait()
}
	`)
	body := functionBody(t, ir, "foo.f")
	scalarLoadIdx := strings.Index(body, "@runtime.LoadHiddenUint8(")
	loadIdx := scalarLoadIdx
	if loadIdx < 0 {
		loadIdx = strings.Index(body, "@runtime.LoadHiddenPointee(")
	}
	if loadIdx < 0 {
		t.Fatalf("missing hidden pointee load helper:\n%s", body)
	}
	if scalarLoadIdx >= 0 {
		waitIdx := strings.Index(body[scalarLoadIdx:], "@foo.wait(")
		if waitIdx < 0 {
			t.Fatalf("missing wait call after scalar hidden load helper:\n%s", body)
		}
	} else {
		clobberIdx := strings.Index(body[loadIdx:], "@runtime.ClobberPointerRegs(")
		if clobberIdx < 0 {
			t.Fatalf("missing pointer clobber after hidden pointee load:\n%s", body)
		}
		clearIdx := strings.Index(body[loadIdx:loadIdx+clobberIdx], "store ptr null, ptr")
		if clearIdx < 0 {
			t.Fatalf("missing hidden pointee temp clear before pointer clobber:\n%s", body)
		}
		waitIdx := strings.Index(body[loadIdx+clobberIdx:], "@foo.wait(")
		if waitIdx < 0 {
			t.Fatalf("missing wait call after pointer clobber:\n%s", body)
		}
	}
}

func TestHiddenSliceIndexAddrUsesAdvanceHelper(t *testing.T) {
	ir := compileIR(t, `package foo

func use(*byte) {}

func f() {
	s := make([]byte, 4)
	p := &s[0]
	use(p)
}
`)
	body := functionBody(t, ir, "foo.f")
	if !strings.Contains(body, "@runtime.AdvanceHiddenPointer(") {
		t.Fatalf("missing hidden slice index helper:\n%s", body)
	}
}

func TestHiddenIndexStoreUsesStoreHelper(t *testing.T) {
	ir := compileIR(t, `package foo

func f() {
	s := make([]byte, 4)
	s[0] = 1
}
`)
	body := functionBody(t, ir, "foo.f")
	if !strings.Contains(body, "@runtime.StoreHiddenPointee(") {
		t.Fatalf("missing hidden pointee store helper:\n%s", body)
	}
}

func TestGoPkgMath(t *testing.T) {
	conf := build.NewDefaultConf(build.ModeInstall)
	_, err := build.Do([]string{"math"}, conf)
	if err != nil {
		t.Fatal(err)
	}
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"foo.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"foo.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"foo.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"foo.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)
`)
}
