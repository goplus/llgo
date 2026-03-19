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
	"regexp"
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
	if !strings.Contains(rest[clearIdx:], "@runtime.TouchConservativeSlot(") {
		t.Fatalf("missing conservative-slot touch after stack slot clear:\n%s", body)
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

func TestHiddenCallArgClearClobbersPointerRegs(t *testing.T) {
	ir := compileIR(t, `package foo

import "runtime"

type H [8]int64

func gc() { runtime.GC() }
func g(h *H) {
	gc()
	_ = h[0]
	defer func() {
		gc()
		recover()
	}()
	*(*int)(nil) = 0
}
func mk() *H {
	h := new(H)
	return h
}
func f() {
	h := mk()
	g(h)
}
`)
	body := functionBody(t, ir, "foo.f")
	callIdx := strings.Index(body, `@"foo.g$hiddenparam"(`)
	if callIdx < 0 {
		t.Fatalf("missing hidden-param caller path:\n%s", body)
	}
	window := body[:callIdx]
	clearIdx := strings.LastIndex(window, "store ptr null, ptr")
	if clearIdx < 0 {
		t.Fatalf("missing caller-side pointer clear before hidden call:\n%s", body)
	}
	clobberIdx := strings.LastIndex(window, "@runtime.ClobberPointerRegs(")
	if clobberIdx < 0 {
		t.Fatalf("missing pointer clobber after caller-side clear:\n%s", body)
	}
	if clobberIdx < clearIdx {
		t.Fatalf("pointer clobber ran before caller-side clear:\n%s", body)
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
	if strings.Contains(body, `@"foo.g$hiddenparam"(`) {
		body = functionBody(t, ir, `foo.g$hiddenparam`)
	}
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
	if hiddenLoadIdx >= 0 && !strings.Contains(rest, "@runtime.StoreHiddenPointerRoot(") {
		t.Fatalf("missing helper-backed visible root store for hidden pointer value:\n%s", body)
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

func TestPointerValuePostCallClobbersRegs(t *testing.T) {
	ir := compileIR(t, `package foo

type T struct{}

func mk() *T { return new(T) }
func use(*T) {}
func wait() {}

func f() {
	x := mk()
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
		t.Fatalf("missing foo.wait call after foo.use:\n%s", body)
	}
	window := body[:callIdx+waitIdx]
	if !strings.Contains(window, "@runtime.ClobberPointerRegs(") {
		t.Fatalf("missing register clobber between last-use pointer call and following wait:\n%s", body)
	}
}

func TestHiddenPointerValueStoreClobbersRegs(t *testing.T) {
	ir := compileIR(t, `package foo

type T struct{}

func mk() *T { return new(T) }
func wait() {}
var sink *T

func f() {
	x := mk()
	wait()
	sink = x
}
`)
	body := functionBody(t, ir, "foo.f")
	waitIdx := strings.Index(body, "@foo.wait(")
	if waitIdx < 0 {
		t.Fatalf("missing foo.wait call:\n%s", body)
	}
	window := body[:waitIdx]
	storeIdx := strings.LastIndex(window, "@runtime.StoreHiddenPointerRoot(")
	if storeIdx < 0 {
		t.Fatalf("missing helper-backed hidden pointer root store before foo.wait:\n%s", body)
	}
	clobberIdx := strings.LastIndex(window, "@runtime.ClobberPointerRegs(")
	if clobberIdx < 0 {
		t.Fatalf("missing register clobber after hidden pointer value store:\n%s", body)
	}
	if clobberIdx < storeIdx {
		t.Fatalf("register clobber ran before hidden pointer value store:\n%s", body)
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
	clobberIdx := strings.LastIndex(window, "@runtime.ClobberPointerRegs(")
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
	if !strings.Contains(body, "@runtime.HiddenPointerKey(") {
		t.Fatalf("missing helper-based hidden pointer encoding in caller:\n%s", body)
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

func TestGcSensitivePointerParamKeepsRootAcrossInitialGC(t *testing.T) {
	ir := compileIR(t, `package foo

import "runtime"

type H struct{}

func gc() { runtime.GC() }
func (h *H) check() {}

func g(h *H) {
	gc()
	h.check()
}

func f() {
	h := new(H)
	g(h)
}
`)
	hiddenBody := functionBody(t, ir, `foo.g$hiddenparam`)
	firstGCIdx := strings.Index(hiddenBody, "@foo.gc(")
	if firstGCIdx < 0 {
		t.Fatalf("missing initial gc call in hidden body:\n%s", hiddenBody)
	}
	window := hiddenBody[:firstGCIdx]
	if !strings.Contains(window, "store ptr") {
		t.Fatalf("missing raw pointer root materialization before initial gc:\n%s", hiddenBody)
	}
	if !strings.Contains(window, "@runtime.ClobberPointerRegs(") {
		t.Fatalf("missing pointer register clobber after raw pointer root materialization:\n%s", hiddenBody)
	}
}

func TestGcSensitivePointerCallClearsHiddenKeyTemp(t *testing.T) {
	ir := compileIR(t, `package foo

import "runtime"

type T struct{ p *int }

func gc() { runtime.GC() }

func g(s *T) {
	gc()
	runtime.KeepAlive(s)
}

func wait() {}

func f() {
	var s T
	s.p = new(int)
	g(&s)
	wait()
}
`)
	body := functionBody(t, ir, "foo.f")
	callIdx := strings.Index(body, `@"foo.g$hiddenparam"(`)
	if callIdx < 0 {
		t.Fatalf("missing hidden-param call for gc-sensitive pointer callee:\n%s", body)
	}
	waitRel := strings.Index(body[callIdx:], "@foo.wait(")
	if waitRel < 0 {
		t.Fatalf("missing wait call after hidden-param call:\n%s", body)
	}
	pre := body[:callIdx]
	if !strings.Contains(pre, "store i64 0, ptr") {
		t.Fatalf("missing hidden key temp clear before hidden-param call:\n%s", body)
	}
	window := body[callIdx : callIdx+waitRel]
	if !strings.Contains(window, "@runtime.ClobberPointerRegs(") {
		t.Fatalf("missing pointer clobber after hidden key temp clear:\n%s", body)
	}
}

func TestGcSensitiveHiddenBodyUsesHiddenPointerResult(t *testing.T) {
	ir := compileIR(t, `package foo

import "runtime"

type T struct{}
type S struct{ h *T }

func gc() { runtime.GC() }

func g(p *S) (v *T) {
	gc()
	v = p.h
	defer func() {
		gc()
		recover()
		gc()
	}()
	*(*int)(nil) = 0
	return
}

func f() *T {
	var s S
	s.h = new(T)
	return g(&s)
}
`)
	body := functionBody(t, ir, "foo.f")
	callIdx := strings.Index(body, `@"foo.g$hiddenparam"(`)
	if callIdx < 0 {
		t.Fatalf("missing hidden-param call for defering gc-sensitive callee:\n%s", body)
	}
	window := body[callIdx:]
	if strings.Contains(window, "ptrtoint ptr") {
		t.Fatalf("caller materialized raw pointer return before encoding hidden result:\n%s", body)
	}
	if !strings.Contains(body, `call i64 @"foo.g$hiddenparam"(`) {
		t.Fatalf("caller did not receive hidden pointer result as uintptr:\n%s", body)
	}
}

func TestGcSensitiveSliceCallUsesHiddenSliceResult(t *testing.T) {
	ir := compileIR(t, `package foo

import "runtime"

type T [4]int

func gc() { runtime.GC() }

//go:noinline
func g(x []*T) []*T { return x }

func f() int {
	s := [10]*T{{1}}
	x := g(s[:])
	if x[0][0] != 1 {
		return -1
	}
	gc()
	return 0
}
`)
	body := functionBody(t, ir, "foo.f")
	callIdx := strings.Index(body, `call { i64, i64, i64 } @"foo.g$hiddencall"(`)
	if callIdx < 0 {
		callIdx = strings.Index(body, `call { i64, i64, i64 } @"foo.g$hiddenparam"(`)
	}
	if callIdx < 0 {
		t.Fatalf("caller did not receive hidden slice result:\n%s", body)
	}
	gcIdx := strings.Index(body[callIdx:], `call void @foo.gc()`)
	if gcIdx < 0 {
		t.Fatalf("missing gc call in caller:\n%s", body)
	}
	window := body[callIdx : callIdx+gcIdx]
	if !strings.Contains(window, `store { i64, i64, i64 } zeroinitializer`) {
		t.Fatalf("caller did not clear hidden slice result before gc:\n%s", body)
	}
	if !strings.Contains(window, `store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer`) {
		t.Fatalf("caller did not clear raw slice root before gc:\n%s", body)
	}
}

func TestSingleExtractSliceCallUsesHiddenResult(t *testing.T) {
	ir := compileIR(t, `package foo

import "runtime"

type T [4]int

func gc() { runtime.GC() }

//go:noinline
func g(x []*T) ([]*T, []*T) { return x, x }

func f() int {
	s := [10]*T{{1}}
	h, _ := g(s[:])
	if h[0][0] != 1 {
		return -1
	}
	gc()
	return 0
}
`)
	body := functionBody(t, ir, "foo.f")
	callIdx := strings.Index(body, `call void @"foo.g$extract0$out"(`)
	if callIdx < 0 {
		t.Fatalf("caller did not use hidden single-extract shim:\n%s", body)
	}
	if strings.Contains(body[:callIdx], `call { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" } @foo.g(`) {
		t.Fatalf("caller still materialized raw tuple-return call before hidden extract shim:\n%s", body)
	}
	if strings.Contains(body[:callIdx], `call void @"foo.g$extract0"(ptr sret(`) {
		t.Fatalf("caller still materialized sret hidden extract temp before out-shim:\n%s", body)
	}
}

func TestSingleExtractSliceCallShimClearsTupleBeforeReturn(t *testing.T) {
	ir := compileIR(t, `package foo

type T [4]int

//go:noinline
func g(x []*T) ([]*T, []*T) { return x, x }

func f() int {
	s := [10]*T{{1}}
	h, _ := g(s[:])
	return h[0][0]
}
`)
	body := functionBody(t, ir, "foo.g$extract0$out")
	if !strings.Contains(body, `store { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }`) {
		t.Fatalf("single-extract shim did not materialize raw tuple in a local slot:\n%s", body)
	}
	if !strings.Contains(body, `store { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" } zeroinitializer`) {
		t.Fatalf("single-extract shim did not clear raw tuple slot before return:\n%s", body)
	}
	if !strings.Contains(body, `store { i64, i64, i64 }`) {
		t.Fatalf("single-extract out-shim did not store encoded hidden result into caller slot:\n%s", body)
	}
	if !strings.Contains(body, `store %"github.com/goplus/llgo/runtime/internal/runtime.Slice"`) {
		t.Fatalf("single-extract out-shim did not store raw result into caller root slot:\n%s", body)
	}
	if !strings.Contains(body, `TouchConservativeSlot(`) {
		t.Fatalf("single-extract shim did not anchor tuple slot clear:\n%s", body)
	}
	if !strings.Contains(body, "x20") {
		t.Fatalf("single-extract shim did not emit arm64 strong clobber:\n%s", body)
	}
}

func TestIssue46725TupleInterfaceClearsBeforeSecondGC(t *testing.T) {
	ir := compileIR(t, `package foo

import "runtime"

type T [4]int

func gc() { runtime.GC() }

//go:noinline
func g(x []*T) ([]*T, []*T) { return x, x }

func f() int {
	s := [10]*T{{1}}
	var h, _ interface{} = g(s[:])
	gc()
	if h.([]*T)[0][0] != 1 {
		return -1
	}
	gc()
	return 0
}
`)
	body := functionBody(t, ir, "foo.f")
	callIdx := strings.Index(body, `call void @"foo.g$extract0$out"(`)
	if callIdx < 0 {
		t.Fatalf("caller did not use hidden single-extract shim:\n%s", body)
	}
	secondGCRel := strings.LastIndex(body, `call void @foo.gc()`)
	if secondGCRel < 0 {
		t.Fatalf("missing second gc call:\n%s", body)
	}
	window := body[:secondGCRel]
	if !strings.Contains(window, `store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer`) {
		t.Fatalf("caller did not clear raw slice root before second gc:\n%s", body)
	}
	if !strings.Contains(window, `store { i64, i64, i64 } zeroinitializer`) {
		t.Fatalf("caller did not clear hidden slice slot before second gc:\n%s", body)
	}
	if !strings.Contains(window, `store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer`) {
		t.Fatalf("caller did not clear interface value before second gc:\n%s", body)
	}
}

func TestSameTypeInterfaceSliceAssertClearsBeforeSecondWait(t *testing.T) {
	ir := compileIR(t, `package foo

type T struct{ x int }

//go:noinline
func wait() {}

func f() {
	s := [10]*T{{1}}
	var h interface{} = s[:]
	wait()
	_ = h.([]*T)[0].x
	wait()
}
`)
	body := functionBody(t, ir, "foo.f")
	first := strings.Index(body, `call void @foo.wait()`)
	if first < 0 {
		t.Fatalf("missing first wait call:\n%s", body)
	}
	secondRel := strings.Index(body[first+1:], `call void @foo.wait()`)
	if secondRel < 0 {
		t.Fatalf("missing second wait call:\n%s", body)
	}
	second := first + 1 + secondRel
	window := body[first:second]
	if !strings.Contains(window, `store { i64, i64, i64 } zeroinitializer`) {
		t.Fatalf("missing hidden slice clear before second wait:\n%s", body)
	}
	if !strings.Contains(window, `store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer`) {
		t.Fatalf("missing raw slice root clear before second wait:\n%s", body)
	}
	if !strings.Contains(window, `store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer`) {
		t.Fatalf("missing interface clear before second wait:\n%s", body)
	}
}

func TestGcSensitivePointerRecvMethodUsesHiddenCall(t *testing.T) {
	ir := compileIR(t, `package foo

import "runtime"

type H struct{}

func (h *H) check() {
	runtime.GC()
}

func g(h *H) {
	h.check()
	runtime.KeepAlive(h)
}

func f() {
	h := new(H)
	g(h)
}
	`)
	name := "foo.g$hiddenparam"
	if !strings.Contains(ir, `@"foo.g$hiddenparam"(`) {
		name = "foo.g"
	}
	body := functionBody(t, ir, name)
	if !strings.Contains(body, `.check$hiddencall"(`) {
		t.Fatalf("missing hidden method call in gc-sensitive hidden body:\n%s", body)
	}
	if strings.Contains(body, `@"foo.(*H).check"(`) {
		t.Fatalf("unexpected raw receiver method call in hidden body:\n%s", body)
	}
}

func TestDeferingHiddenPointerParamClearsBeforeDeferSetup(t *testing.T) {
	ir := compileIR(t, `package foo

import "runtime"

type H struct{}

func gc(bool) { runtime.GC() }

func (h *H) check() {}

func g(h *H) {
	gc(false)
	h.check()
	defer func() {
		gc(true)
		recover()
	}()
	*(*int)(nil) = 0
}
`)
	name := "foo.g$hiddenparam"
	if !strings.Contains(ir, `@"foo.g$hiddenparam"(`) {
		name = "foo.g"
	}
	body := functionBody(t, ir, name)
	deferIdx := strings.Index(body, "@\"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer\"(")
	if deferIdx < 0 {
		deferIdx = strings.Index(body, "@\"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer\"(")
	}
	if deferIdx < 0 {
		t.Fatalf("missing defer setup in hidden body:\n%s", body)
	}
	checkIdx := strings.Index(body, `.check$hiddencall"(`)
	if checkIdx < 0 {
		checkIdx = strings.Index(body, `@"foo.(*H).check"(`)
	}
	if checkIdx < 0 {
		t.Fatalf("missing receiver check call in hidden body:\n%s", body)
	}
	window := body[checkIdx:deferIdx]
	if !strings.Contains(window, "store i64") && !strings.Contains(window, "store ptr null, ptr") {
		t.Fatalf("missing hidden param clear after last use and before defer setup:\n%s", body)
	}
	if !strings.Contains(window, "@runtime.ClobberPointerRegs(") {
		t.Fatalf("missing pointer register clobber after hidden param clear:\n%s", body)
	}
}

func TestIssue32477CallerClearsPointerLocalBeforeCall(t *testing.T) {
	ir := compileIR(t, `package foo

import "runtime"

type HeapObj [8]int64

func gc(bool) { runtime.GC(); runtime.GC(); runtime.GC() }

func (h *HeapObj) init() {}
func (h *HeapObj) check() {}

func g(h *HeapObj) {
	gc(false)
	h.check()
	defer func() {
		gc(true)
		recover()
	}()
	*(*int)(nil) = 0
}

func main() {
	h := new(HeapObj)
	h.init()
	gc(false)
	g(h)
}
`)
	body := functionBody(t, ir, "foo.main")
	callIdx := strings.Index(body, `@"foo.g$hiddenparam"(`)
	if callIdx < 0 {
		callIdx = strings.Index(body, `@"foo.g$hiddencall"(`)
	}
	if callIdx < 0 {
		callIdx = strings.Index(body, `@foo.g(`)
	}
	if callIdx < 0 {
		t.Fatalf("missing g call in main body:\n%s", body)
	}
	window := body[:callIdx]
	if !strings.Contains(window, "store ptr null, ptr") && !strings.Contains(window, "store i64 0, ptr") {
		t.Fatalf("missing pointer local clear before issue32477 call:\n%s", body)
	}
	if !strings.Contains(window, "@runtime.ClobberPointerRegs(") {
		t.Fatalf("missing pointer register clobber before issue32477 call:\n%s", body)
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
	if !strings.Contains(body, "alloca ptr") {
		t.Fatalf("missing raw pointer slot for deferred return pointer alloc:\n%s", body)
	}
	if !strings.Contains(body, "alloca i64") {
		t.Fatalf("missing hidden uintptr slot for deferred return pointer alloc:\n%s", body)
	}
	if !strings.Contains(body, "@runtime.StoreHiddenPointerRoot(") {
		t.Fatalf("missing hidden root helper for deferred return pointer alloc:\n%s", body)
	}
	if !strings.Contains(body, "store i64 -") && !strings.Contains(body, "store i64 0, ptr %0") {
		t.Fatalf("missing hidden slot clear for deferred return pointer alloc:\n%s", body)
	}
}

func TestGCSensitiveHeapAllocUsesHiddenKey(t *testing.T) {
	ir := compileIR(t, `package foo

import "runtime"

type T [4]int

//go:noinline
func g(x []*T) []*T { return x }

func f() {
	s := [10]*T{{}}
	_ = g(s[:])
	runtime.GC()
}
`)
	body := functionBody(t, ir, "foo.f")
	if !strings.Contains(body, "AllocZHidden") {
		t.Fatalf("missing hidden heap alloc helper in gc-sensitive function:\n%s", body)
	}
	if strings.Contains(body, `AllocZ"(i64 80)`) {
		t.Fatalf("raw heap array alloc should not survive in gc-sensitive function:\n%s", body)
	}
}

func TestSingleExtractCallResultDoesNotCrossWait(t *testing.T) {
	ir := compileIR(t, `package foo

type T struct{ n int }

//go:noinline
func g(x *T) (*T, *T) { return x, x }

//go:noinline
func wait() bool { return false }

func f() int {
	p := &T{1}
	h, _ := g(p)
	if wait() {
		return -1
	}
	if h.n != 1 {
		return -2
	}
	if !wait() {
		return -3
	}
	return 0
}
`)
	body := functionBody(t, ir, "foo.f")
	m := regexp.MustCompile(`(%[0-9]+) = call .*@"foo.g\$(?:extract0|hiddenparam)"`).FindStringSubmatch(body)
	if len(m) != 2 {
		t.Fatalf("missing hidden call result for foo.g:\n%s", body)
	}
	callIdx := strings.Index(body, m[0])
	if callIdx < 0 {
		t.Fatalf("missing hidden call site for foo.g:\n%s", body)
	}
	waitIdxRel := strings.Index(body[callIdx:], `call i1 @foo.wait()`)
	if waitIdxRel < 0 {
		t.Fatalf("missing wait call after foo.g$extract0:\n%s", body)
	}
	if strings.Contains(body[callIdx+waitIdxRel:], m[1]) {
		t.Fatalf("single-extract call result %s still live across wait:\n%s", m[1], body)
	}
}

func TestSliceStaticCallUsesHiddenShim(t *testing.T) {
	ir := compileIR(t, `package foo

type T [4]int

//go:noinline
func g(x []*T) []*T { return x }

func f() int {
	p := &T{1}
	x := g([]*T{p})
	return x[0][0]
}

`)
	body := functionBody(t, ir, "foo.f")
	if !strings.Contains(body, `@"foo.g$hiddenparam"(`) && !strings.Contains(body, `@"foo.g$hiddencall"(`) {
		t.Fatalf("missing hidden slice shim call:\n%s", body)
	}
	if strings.Contains(body, `@foo.g(%"github.com/goplus/llgo/runtime/internal/runtime.Slice"`) {
		t.Fatalf("raw slice call should not survive in caller:\n%s", body)
	}
}

func TestDeferredReturnClearsNamedPointerSlot(t *testing.T) {
	ir := compileIR(t, `package foo

import "runtime"

type T struct{}
type S struct{ h *T }

func gc() { runtime.GC() }

func g(p *S) (v *T) {
	gc()
	v = p.h
	defer func() {
		gc()
		recover()
		gc()
	}()
	*(*int)(nil) = 0
	return
}
`)
	name := "foo.g$hiddenparam"
	if !strings.Contains(ir, `@"foo.g$hiddenparam"(`) {
		name = "foo.g"
	}
	body := functionBody(t, ir, name)
	count := 0
	for off := 0; ; {
		rel := strings.Index(body[off:], "ret ptr")
		if rel < 0 {
			break
		}
		retIdx := off + rel
		start := strings.LastIndex(body[:retIdx], "\n\n")
		if start >= 0 {
			start += 2
		} else {
			start = 0
		}
		if !strings.Contains(body[start:retIdx], "store ptr null, ptr") {
			t.Fatalf("missing named return slot clear before ret:\n%s", body)
		}
		count++
		off = retIdx + len("ret ptr")
	}
	if count == 0 {
		t.Fatalf("missing pointer return in function body:\n%s", body)
	}
}

func TestReturnedSliceParamClearsBeforeRet(t *testing.T) {
	ir := compileIR(t, `package foo

type T [4]int

//go:noinline
func g(x []*T) []*T { return x }
`)
	body := functionBody(t, ir, "foo.g")
	retIdx := strings.Index(body, `ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice"`)
	if retIdx < 0 {
		t.Fatalf("missing slice return in function body:\n%s", body)
	}
	start := retIdx - 240
	if start < 0 {
		start = 0
	}
	window := body[start:retIdx]
	if !strings.Contains(window, `zeroinitializer, ptr`) {
		t.Fatalf("missing returned param slot clear before ret:\n%s", body)
	}
	if !strings.Contains(window, "@runtime.TouchConservativeSlot(") {
		t.Fatalf("missing conservative-slot touch before ret:\n%s", body)
	}
	if !strings.Contains(window, "@runtime.ClobberPointerRegs(") {
		t.Fatalf("missing pointer register clobber before ret:\n%s", body)
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
	if strings.Contains(body[:callIdx], `insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.String"`) {
		t.Fatalf("unsafe.StringData rebuilt the full string before foo.use:\n%s", body)
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
	if strings.Contains(body[:callIdx], `insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice"`) {
		t.Fatalf("unsafe.SliceData rebuilt the full slice before foo.use:\n%s", body)
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
	if !strings.Contains(window, `zeroinitializer, ptr`) {
		t.Fatalf("missing hidden make-slice slot clear after last use:\n%s", body)
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
