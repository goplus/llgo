package abi

import (
	rabi "github.com/goplus/llgo/runtime/abi"
	"testing"
)

func TestMirroredKinds(t *testing.T) {
	if Bool != rabi.Bool {
		t.Fatalf("Bool=%v want %v", Bool, rabi.Bool)
	}
	if Func != rabi.Func {
		t.Fatalf("Func=%v want %v", Func, rabi.Func)
	}
	if Pointer != rabi.Pointer {
		t.Fatalf("Pointer=%v want %v", Pointer, rabi.Pointer)
	}
	if UnsafePointer != rabi.UnsafePointer {
		t.Fatalf("UnsafePointer=%v want %v", UnsafePointer, rabi.UnsafePointer)
	}
}

func TestTypeFor(t *testing.T) {
	if got := TypeFor[int](); got == nil || got.Kind() != rabi.Int {
		t.Fatalf("TypeFor[int]() = %v", got)
	}
}
