//go:build !llgo
// +build !llgo

package build

import (
	"testing"

	"github.com/goplus/llgo/internal/cabi"
)

func TestHasAltPkgForTarget_AllowsAdditivePatchWithPlan9Asm(t *testing.T) {
	conf := &Config{Goarch: "arm64", AbiMode: cabi.ModeAllFunc}
	if !plan9asmEnabledByDefault(conf, "internal/runtime/sys") {
		t.Fatal("plan9asm should be enabled by default for internal/runtime/sys on arm64")
	}
	if !hasAltPkgForTarget(conf, "internal/runtime/sys") {
		t.Fatal("internal/runtime/sys should keep its additive alt package even when plan9asm is enabled")
	}
}

func TestHasAltPkgForTarget_UsesBytealgAltPkgOnWasm(t *testing.T) {
	conf := &Config{Goarch: "wasm", AbiMode: cabi.ModeAllFunc}
	if plan9asmEnabledByDefault(conf, "internal/bytealg") {
		t.Fatal("plan9asm should not be enabled by default for internal/bytealg on wasm")
	}
	if !hasAltPkgForTarget(conf, "internal/bytealg") {
		t.Fatal("internal/bytealg should use its alt package on wasm")
	}
}

func TestHasAltPkgForTarget_InternalAbiStaysAdditive(t *testing.T) {
	conf := &Config{Goarch: "arm64", AbiMode: cabi.ModeAllFunc}
	if !plan9asmEnabledByDefault(conf, "internal/abi") {
		t.Fatal("plan9asm should remain enabled by default for internal/abi")
	}
	if !hasAltPkgForTarget(conf, "internal/abi") {
		t.Fatal("internal/abi should keep its additive patch package")
	}
}

func TestHasAltPkgForTarget_InternalRuntimeSyscallOnlyOnBaremetal(t *testing.T) {
	baremetal := &Config{Goarch: "arm", AbiMode: cabi.ModeAllFunc, Target: "esp32"}
	if !hasAltPkgForTarget(baremetal, "internal/runtime/syscall") {
		t.Fatal("internal/runtime/syscall should use alt package on baremetal targets")
	}
	normal := &Config{Goarch: "arm", AbiMode: cabi.ModeAllFunc}
	if hasAltPkgForTarget(normal, "internal/runtime/syscall") {
		t.Fatal("internal/runtime/syscall should not use alt package without baremetal")
	}
}

func TestHasAltPkgForTarget_LegacyRuntimeInternalSyscallOnlyOnBaremetal(t *testing.T) {
	baremetal := &Config{Goarch: "arm", AbiMode: cabi.ModeAllFunc, Target: "esp32"}
	if !hasAltPkgForTarget(baremetal, "runtime/internal/syscall") {
		t.Fatal("legacy runtime/internal/syscall should use alt package on baremetal targets")
	}
	normal := &Config{Goarch: "arm", AbiMode: cabi.ModeAllFunc}
	if hasAltPkgForTarget(normal, "runtime/internal/syscall") {
		t.Fatal("legacy runtime/internal/syscall should not use alt package without baremetal")
	}
}

func TestHasAltPkgForTarget_MathOnlyOnWasm(t *testing.T) {
	wasm := &Config{Goos: "wasip1", Goarch: "wasm", AbiMode: cabi.ModeAllFunc}
	if !hasAltPkgForTarget(wasm, "math") {
		t.Fatal("math should use alt package on wasm")
	}

	amd64 := &Config{Goos: "linux", Goarch: "amd64", AbiMode: cabi.ModeAllFunc}
	if hasAltPkgForTarget(amd64, "math") {
		t.Fatal("math should not use alt package on amd64")
	}
}

func TestHasAltPkgForTarget_LegacyRuntimeInternalAtomic(t *testing.T) {
	conf := &Config{Goos: "linux", Goarch: "amd64", AbiMode: cabi.ModeAllFunc}
	if !hasAltPkgForTarget(conf, "runtime/internal/atomic") {
		t.Fatal("legacy runtime/internal/atomic path should use alt package")
	}
}

func TestPlan9AsmEnabledByDefault_MathOnNonWasm(t *testing.T) {
	amd64 := &Config{Goos: "darwin", Goarch: "amd64", AbiMode: cabi.ModeAllFunc}
	if !plan9asmEnabledByDefault(amd64, "math") {
		t.Fatal("math should use plan9asm on non-wasm targets")
	}

	wasm := &Config{Goos: "wasip1", Goarch: "wasm", AbiMode: cabi.ModeAllFunc}
	if plan9asmEnabledByDefault(wasm, "math") {
		t.Fatal("math should not use plan9asm on wasm targets")
	}
}

func TestShouldSkipPlan9AsmFile(t *testing.T) {
	if !shouldSkipPlan9AsmFile("syscall", "darwin", "/goroot/src/syscall/zsyscall_darwin_arm64.s") {
		t.Fatal("darwin syscall zsyscall trampolines should be skipped")
	}
	if shouldSkipPlan9AsmFile("syscall", "darwin", "/goroot/src/syscall/asm_darwin_arm64.s") {
		t.Fatal("non-zsyscall syscall asm should not be skipped")
	}
	if shouldSkipPlan9AsmFile("runtime", "darwin", "/goroot/src/runtime/sys_darwin_arm64.s") {
		t.Fatal("other packages should not be skipped")
	}
}

func TestIsPkgTestSFile(t *testing.T) {
	tests := []struct {
		name string
		file string
		want bool
	}{
		{name: "test lower", file: "abi_test.s", want: true},
		{name: "test upper", file: "abi_test.S", want: true},
		{name: "normal s", file: "stub.s", want: false},
		{name: "normal upper", file: "entry.S", want: false},
	}
	for _, tt := range tests {
		if got := isPkgTestSFile(tt.file); got != tt.want {
			t.Fatalf("%s: isPkgTestSFile(%q) = %v, want %v", tt.name, tt.file, got, tt.want)
		}
	}
}
