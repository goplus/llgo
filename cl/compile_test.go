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
	"os"
	"runtime"
	"strings"
	"testing"

	"github.com/goplus/llgo/cl"
	"github.com/goplus/llgo/cl/cltest"
	"github.com/goplus/llgo/internal/build"
	"github.com/goplus/llgo/internal/llgen"
)

func testCompile(t *testing.T, src, expected string) {
	t.Helper()
	cltest.TestCompileEx(t, src, "foo.go", expected, false)
}

func requireESP32C3Emulator(t *testing.T) {
	t.Helper()
	if os.Getenv("LLGO_EMBED_TESTS") != "1" {
		t.Skip("Skipping ESP32-C3 emulator tests; set LLGO_EMBED_TESTS=1 to run")
	}
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

func TestRunESP32C3Emulator(t *testing.T) {
	requireESP32C3Emulator(t)
	conf := build.NewDefaultConf(build.ModeRun)
	conf.Target = "esp32c3-basic"
	conf.Emulator = true
	conf.ForceRebuild = true

	ignore := []string{
		"./_testgo/abimethod",   // llgo panic: unsatisfied import internal/runtime/sys
		"./_testgo/alias",       // unexpected output: missing float values; expected "+5.000000e+00 +8.000000e+00"
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
		"./_testgo/invoke",      // unexpected output: invoke2 arg mismatch (2 vs +1.001000e+02)
		"./_testgo/makeslice",   // unexpected output: len(dst)=23, len(src)=0 (got "fatal error\\nmust error")
		"./_testgo/multiret",    // unexpected output: float formatting mismatch (1 vs 1 +2.000000e+00)
		"./_testgo/reader",      // timeout: emulator did not auto-exit
		"./_testgo/reflect",     // llgo panic: unsatisfied import internal/runtime/sys
		"./_testgo/reflectconv", // llgo panic: unsatisfied import internal/sync
		"./_testgo/reflectfn",   // llgo panic: unsatisfied import internal/runtime/sys
		"./_testgo/reflectmkfn", // llgo panic: unsatisfied import internal/runtime/sys
		"./_testgo/rewrite",     // llgo panic: unsatisfied import internal/sync
		"./_testgo/select",      // timeout: emulator did not auto-exit
		"./_testgo/selects",     // timeout: emulator did not auto-exit
		"./_testgo/sigsegv",     // unexpected output: got "0/main", expected recover nil-pointer message
		"./_testgo/struczero",   // unexpected output: bool/float formatting mismatch (0x0 vs 0x0 +0.000000e+00)
		"./_testgo/syncmap",     // llgo panic: unsatisfied import internal/runtime/sys
		"./_testgo/tpnamed",     // timeout: emulator panic (Instruction access fault), no auto-exit
	}
	cltest.RunFromDir(t, "", "./_testgo", ignore,
		cltest.WithRunConfig(conf),
		cltest.WithOutputFilter(cltest.FilterEmulatorOutput),
	)
}

func TestRunESP32C3Libc(t *testing.T) {
	requireESP32C3Emulator(t)
	conf := build.NewDefaultConf(build.ModeRun)
	conf.Target = "esp32c3-basic"
	conf.Emulator = true
	conf.ForceRebuild = true

	ignore := []string{
		"./_testlibc/argv",     // timeout: emulator panic (Load access fault), no auto-exit
		"./_testlibc/atomic",   // link error: ld.lld: error: undefined symbol: __atomic_store
		"./_testlibc/complex",  // link error: ld.lld: error: undefined symbol: cabsf
		"./_testlibc/demangle", // link error: ld.lld: error: unknown argument '-Wl,-search_paths_first'
		"./_testlibc/once",     // fast fail: build constraints exclude all Go files (pthread/sync)
		"./_testlibc/setjmp",   // link error: ld.lld: error: undefined symbol: stderr
		"./_testlibc/sqlite",   // link error: ld.lld: error: unable to find library -lsqlite3
	}
	cltest.RunFromDir(t, "", "./_testlibc", ignore,
		cltest.WithRunConfig(conf),
		cltest.WithOutputFilter(cltest.FilterEmulatorOutput),
	)
}

func TestRunESP32C3Testrt(t *testing.T) {
	requireESP32C3Emulator(t)
	conf := build.NewDefaultConf(build.ModeRun)
	conf.Target = "esp32c3-basic"
	conf.Emulator = true
	conf.ForceRebuild = true

	ignore := []string{
		"./_testrt/asm",         // timeout: emulator panic (Instruction access fault), no auto-exit
		"./_testrt/asmfull",     // compile/asm error: unrecognized instruction mnemonic
		"./_testrt/complex",     // unexpected output: complex-number output mismatch
		"./_testrt/cvar",        // timeout: emulator panic (Instruction access fault), no auto-exit
		"./_testrt/fprintf",     // link error: ld.lld: error: undefined symbol: __stderrp
		"./_testrt/gotypes",     // timeout: emulator panic (Instruction access fault), no auto-exit
		"./_testrt/hello",       // fast fail: build constraints exclude all Go files
		"./_testrt/linkname",    // unexpected output: line order mismatch ("hello" appears first)
		"./_testrt/makemap",     // link error: ld.lld: error: undefined symbol: __atomic_fetch_or_4
		"./_testrt/strlen",      // fast fail: build constraints exclude all Go files
		"./_testrt/struct",      // fast fail: build constraints exclude all Go files
		"./_testrt/tpfunc",      // unexpected output: type size mismatch (got 8 4 4, expected 16 8 8)
		"./_testrt/typalias",    // fast fail: build constraints exclude all Go files
		"./_testrt/unreachable", // timeout: emulator panic (Instruction access fault), no auto-exit
	}
	cltest.RunFromDir(t, "", "./_testrt", ignore,
		cltest.WithRunConfig(conf),
		cltest.WithOutputFilter(cltest.FilterEmulatorOutput),
	)
}

func TestRunESP32C3Testdata(t *testing.T) {
	requireESP32C3Emulator(t)
	conf := build.NewDefaultConf(build.ModeRun)
	conf.Target = "esp32c3-basic"
	conf.Emulator = true
	conf.ForceRebuild = true

	ignore := []string{
		"./_testdata/cpkgimp", // unexpected output: float formatting mismatch (3 vs 3 +6.280000e+00)
		"./_testdata/debug",   // llgo panic: unsatisfied import internal/runtime/sys
		"./_testdata/fncall",  // timeout: emulator panic (Instruction access fault), no auto-exit
		"./_testdata/untyped", // timeout: emulator panic (Instruction access fault), no auto-exit
		"./_testdata/varinit", // timeout: emulator panic (Instruction access fault), no auto-exit
	}
	cltest.RunFromDir(t, "", "./_testdata", ignore,
		cltest.WithRunConfig(conf),
		cltest.WithOutputFilter(cltest.FilterEmulatorOutput),
	)
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
