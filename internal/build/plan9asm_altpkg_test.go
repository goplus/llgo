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
