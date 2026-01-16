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
	"path/filepath"
	"runtime"
	"strings"
	"testing"

	"github.com/goplus/llgo/cl"
	"github.com/goplus/llgo/cl/cltest"
	"github.com/goplus/llgo/internal/build"
)

func testCompile(t *testing.T, src, expected string) {
	t.Helper()
	cltest.TestCompileEx(t, src, "foo.go", expected, false)
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

func buildIgnoreList(t *testing.T, relDir string, allow map[string]struct{}) []string {
	t.Helper()

	rootDir, err := os.Getwd()
	if err != nil {
		t.Fatalf("Getwd failed: %v", err)
	}
	dir := filepath.Join(rootDir, relDir)
	entries, err := os.ReadDir(dir)
	if err != nil {
		t.Fatalf("ReadDir failed: %v", err)
	}

	relBase := strings.TrimPrefix(relDir, "./")
	var ignore []string
	for _, entry := range entries {
		if !entry.IsDir() || strings.HasPrefix(entry.Name(), "_") {
			continue
		}
		relPkg := "./" + filepath.ToSlash(filepath.Join(relBase, entry.Name()))
		if _, ok := allow[relPkg]; ok {
			continue
		}
		ignore = append(ignore, relPkg)
	}
	return ignore
}

func TestRunESP32C3Emulator(t *testing.T) {
	if testing.Short() {
		t.Skip("Skipping emulator test in short mode")
	}
	if runtime.GOOS == "windows" {
		t.Skip("Skipping emulator test on Windows")
	}

	conf := build.NewDefaultConf(build.ModeRun)
	conf.Target = "esp32c3-basic"
	conf.Emulator = true
	conf.ForceRebuild = true

	// Not yet in allowlist:
	// - ./_testgo/abimethod: link errors (faccessat/getrlimit/setrlimit, ffi_*, __sigsetjmp, ldexp, __atomic_*), plus DRAM overflow; see https://github.com/goplus/llgo/issues/1569
	// - ./_testgo/alias: QEMU hits Illegal instruction (Guru Meditation) before expected output
	// - ./_testgo/cgobasic: build constraints exclude all Go files (cgo)
	// - ./_testgo/cgocfiles: build constraints exclude all Go files (cgo)
	// - ./_testgo/cgodefer: build constraints exclude all Go files (cgo)
	// - ./_testgo/cgofull: build constraints exclude all Go files (cgo)
	// - ./_testgo/cgomacro: build constraints exclude all Go files (cgo)
	// - ./_testgo/cgopython: build constraints exclude all Go files (cgo)
	// - ./_testgo/chan: QEMU hits Illegal instruction (Guru Meditation)
	// - ./_testgo/closure: QEMU hits Illegal instruction (Guru Meditation)
	// - ./_testgo/closure2: QEMU hits Illegal instruction (Guru Meditation)
	// - ./_testgo/closureall: QEMU hits Illegal instruction (Guru Meditation)
	// - ./_testgo/indexerr: link errors (undefined __sigsetjmp), see https://github.com/goplus/llgo/issues/1419
	// - ./_testgo/makeslice: uses defer/recover; link errors (undefined __sigsetjmp), see https://github.com/goplus/llgo/issues/1419
	// - ./_testgo/multiret: QEMU hits Illegal instruction (Guru Meditation)
	allow := map[string]struct{}{
		"./_testgo/allocinloop": {},
		"./_testgo/print":       {},
		"./_testgo/constconv": {},
		"./_testgo/equal":     {},
	}
	ignore := buildIgnoreList(t, "./_testgo", allow)
	cltest.RunFromDir(t, "", "./_testgo", ignore,
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
