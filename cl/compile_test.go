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

package cl_test

import (
	"os"
	"runtime"
	"testing"

	"github.com/goplus/llgo/cl"
	"github.com/goplus/llgo/cl/cltest"
	"github.com/goplus/llgo/internal/build"
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
		"./_testgo/abimethod",     // link errors (faccessat/getrlimit/setrlimit, ffi_*, __sigsetjmp, ldexp, __atomic_*), plus DRAM overflow; https://github.com/goplus/llgo/issues/1569
		"./_testgo/alias",         // QEMU hits Illegal instruction (Guru Meditation) before expected output
		"./_testgo/cgobasic",      // build constraints exclude all Go files (cgo)
		"./_testgo/cgocfiles",     // build constraints exclude all Go files (cgo)
		"./_testgo/cgodefer",      // build constraints exclude all Go files (cgo)
		"./_testgo/cgofull",       // build constraints exclude all Go files (cgo)
		"./_testgo/cgomacro",      // build constraints exclude all Go files (cgo)
		"./_testgo/cgopython",     // build constraints exclude all Go files (cgo)
		"./_testgo/chan",          // QEMU hits Illegal instruction (Guru Meditation)
		"./_testgo/closure",       // QEMU hits Illegal instruction (Guru Meditation)
		"./_testgo/closure2",      // QEMU hits Illegal instruction (Guru Meditation)
		"./_testgo/closureall",    // QEMU hits Illegal instruction (Guru Meditation)
		"./_testgo/defer-alawys",  // uses defer/recover; needs defer support, https://github.com/goplus/llgo/issues/1419
		"./_testgo/defer1",        // uses defer/recover; needs defer support, https://github.com/goplus/llgo/issues/1419
		"./_testgo/defer2",        // uses defer/recover; needs defer support, https://github.com/goplus/llgo/issues/1419
		"./_testgo/defer3",        // uses defer/recover; needs defer support, https://github.com/goplus/llgo/issues/1419
		"./_testgo/defer4",        // uses defer/recover; needs defer support, https://github.com/goplus/llgo/issues/1419
		"./_testgo/defer5",        // uses defer/recover; needs defer support, https://github.com/goplus/llgo/issues/1419
		"./_testgo/deferclosure",  // uses defer/recover; needs defer support, https://github.com/goplus/llgo/issues/1419
		"./_testgo/defercomplex",  // uses defer/recover; needs defer support, https://github.com/goplus/llgo/issues/1419
		"./_testgo/deferloop",     // uses defer/recover; needs defer support, https://github.com/goplus/llgo/issues/1419
		"./_testgo/errors",        // QEMU hits Illegal instruction (Guru Meditation)
		"./_testgo/goexit",        // uses defer/recover; needs defer support, https://github.com/goplus/llgo/issues/1419
		"./_testgo/goroutine",     // QEMU hits Illegal instruction (Guru Meditation)
		"./_testgo/ifaceconv",     // QEMU hits Illegal instruction (Guru Meditation)
		"./_testgo/ifaceprom",     // QEMU hits Illegal instruction (Guru Meditation)
		"./_testgo/indexerr",      // uses defer/recover; needs defer support, https://github.com/goplus/llgo/issues/1419
		"./_testgo/interface",     // QEMU hits Illegal instruction (Guru Meditation)
		"./_testgo/interface1370", // QEMU hits Illegal instruction (Guru Meditation)
		"./_testgo/invoke",        // QEMU hits Illegal instruction (Guru Meditation)
		"./_testgo/makeslice",     // uses defer/recover; needs defer support, https://github.com/goplus/llgo/issues/1419
		"./_testgo/multiret",      // QEMU hits Illegal instruction (Guru Meditation)
		"./_testgo/reader",        // QEMU timeout (no expected output)
		"./_testgo/reflect",       // link errors (__atomic_*, ffi_*, __sigsetjmp) plus DRAM overflow
		"./_testgo/reflectconv",   // link errors (faccessat/getrlimit/setrlimit, __atomic_*, ffi_*, __sigsetjmp, ldexp) plus DRAM overflow
		"./_testgo/reflectfn",     // link errors (faccessat/getrlimit/setrlimit, fdopendir/pread/pwrite, ldexp, __sigsetjmp, __atomic_*, ffi_*) plus DRAM overflow
		"./_testgo/reflectmkfn",   // link errors (__atomic_*, ffi_*, __sigsetjmp) plus DRAM overflow
		"./_testgo/rewrite",       // link errors (faccessat/getrlimit/setrlimit, fdopendir/pread/pwrite, ldexp, __sigsetjmp, __atomic_*, ffi_*) plus DRAM overflow
		"./_testgo/runextest",     // QEMU hits Illegal instruction (Guru Meditation)
		"./_testgo/runtest",       // QEMU hits Illegal instruction (Guru Meditation)
		"./_testgo/select",        // QEMU hits Illegal instruction (Guru Meditation)
		"./_testgo/selects",       // QEMU hits Illegal instruction (Guru Meditation)
		"./_testgo/sigsegv",       // uses defer/recover; needs defer support, https://github.com/goplus/llgo/issues/1419
		"./_testgo/strucintf",     // QEMU hits Illegal instruction (Guru Meditation)
		"./_testgo/struczero",     // QEMU hits Illegal instruction (Guru Meditation)
		"./_testgo/syncmap",       // link errors (faccessat/getrlimit/setrlimit, fdopendir/pread/pwrite, ldexp, __sigsetjmp, __atomic_*, ffi_*) plus DRAM overflow
		"./_testgo/tpindex",       // QEMU hits Illegal instruction (Guru Meditation)
		"./_testgo/tpinst",        // QEMU hits Illegal instruction (Guru Meditation)
		"./_testgo/tpnamed",       // QEMU hits Instruction access fault
		"./_testgo/tptypes",       // QEMU hits Illegal instruction (Guru Meditation)
		"./_testgo/typerecur",     // QEMU hits Illegal instruction (Guru Meditation)
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
		"./_testlibc/argv",     // QEMU hits Load access fault
		"./_testlibc/atomic",   // link errors (__atomic_*)
		"./_testlibc/complex",  // link errors (cabsf)
		"./_testlibc/defer",    // uses defer/recover; needs defer support, https://github.com/goplus/llgo/issues/1419
		"./_testlibc/demangle", // link args not supported (LLVM lib not found)
		"./_testlibc/once",     // pthread/sync build constraints exclude Go files (sync.Once)
		"./_testlibc/setjmp",   // link errors (__sigsetjmp/siglongjmp, stderr)
		"./_testlibc/sqlite",   // link errors (sqlite3_*, runtime.AllocZ)
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
		"./_testrt/abinamed",     // QEMU hits Illegal instruction (Guru Meditation)
		"./_testrt/any",          // output mismatch
		"./_testrt/asm",          // QEMU hits Instruction access fault
		"./_testrt/asmfull",      // inline asm not supported (instruction mnemonic)
		"./_testrt/builtin",      // QEMU hits Illegal instruction (Guru Meditation)
		"./_testrt/cast",         // QEMU hits Illegal instruction (Guru Meditation)
		"./_testrt/closureconv",  // QEMU hits Load access fault (Guru Meditation)
		"./_testrt/complex",      // QEMU hits Illegal instruction (Guru Meditation)
		"./_testrt/concat",       // QEMU hits Illegal instruction (Guru Meditation)
		"./_testrt/constuptr",    // QEMU hits Illegal instruction (Guru Meditation)
		"./_testrt/cvar",         // QEMU hits Instruction access fault
		"./_testrt/closureiface", // QEMU run hangs (no output)
		"./_testrt/eface",        // QEMU hits Illegal instruction (Guru Meditation)
		"./_testrt/fprintf",      // link errors (__stderrp)
		"./_testrt/funcdecl",     // QEMU hits Illegal instruction (Guru Meditation)
		"./_testrt/gotypes",      // QEMU hits Instruction access fault
		"./_testrt/hello",        // build constraints exclude all Go files in libc
		"./_testrt/index",        // QEMU hits Illegal instruction (Guru Meditation)
		"./_testrt/len",          // QEMU hits Illegal instruction (Guru Meditation)
		"./_testrt/linkname",     // QEMU hits Illegal instruction (Guru Meditation)
		"./_testrt/makemap",      // link errors (__atomic_fetch_or_4)
		"./_testrt/map",          // QEMU hits Illegal instruction (Guru Meditation)
		"./_testrt/mask",         // QEMU hits Illegal instruction (Guru Meditation)
		"./_testrt/methodthunk",  // QEMU hits Illegal instruction (Guru Meditation)
		"./_testrt/nextblock",    // uses defer/recover; needs defer support, https://github.com/goplus/llgo/issues/1419
		"./_testrt/qsort",        // QEMU hits Illegal instruction (Guru Meditation)
		"./_testrt/qsortfn",      // QEMU hits Illegal instruction (Guru Meditation)
		"./_testrt/stacksave",    // QEMU hits Illegal instruction (Guru Meditation)
		"./_testrt/strlen",       // build constraints exclude all Go files
		"./_testrt/struct",       // build constraints exclude all Go files
		"./_testrt/tpabi",        // QEMU hits Illegal instruction (Guru Meditation)
		"./_testrt/tpfunc",       // output mismatch (expected 16 8 8)
		"./_testrt/tpmethod",     // QEMU hits Illegal instruction (Guru Meditation)
		"./_testrt/tpunsafe",     // QEMU hits Illegal instruction (Guru Meditation)
		"./_testrt/typalias",     // build constraints exclude all Go files
		"./_testrt/typed",        // QEMU hits Illegal instruction (Guru Meditation)
		"./_testrt/unreachable",  // QEMU hits Instruction access fault
		"./_testrt/vamethod",     // QEMU hits Illegal instruction (Guru Meditation)
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
		"./_testdata/cpkgimp", // QEMU hits Illegal instruction (Guru Meditation)
		"./_testdata/debug",   // QEMU hits Illegal instruction (Guru Meditation)
		"./_testdata/fncall",  // QEMU hits Instruction access fault
		"./_testdata/print",   // QEMU hits Illegal instruction (Guru Meditation)
		"./_testdata/untyped", // QEMU hits Instruction access fault
		"./_testdata/utf8",    // QEMU hits Illegal instruction (Guru Meditation)
		"./_testdata/varinit", // QEMU hits Instruction access fault
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
