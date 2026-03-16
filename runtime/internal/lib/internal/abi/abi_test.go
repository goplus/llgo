package abi

import (
	rabi "github.com/goplus/llgo/runtime/abi"
	"testing"
)

func TestMirroredKinds(t *testing.T) {
	if Array != rabi.Array {
		t.Fatalf("Array=%v want %v", Array, rabi.Array)
	}
	if Bool != rabi.Bool {
		t.Fatalf("Bool=%v want %v", Bool, rabi.Bool)
	}
	if Func != rabi.Func {
		t.Fatalf("Func=%v want %v", Func, rabi.Func)
	}
	if Int != rabi.Int || Int8 != rabi.Int8 || Int16 != rabi.Int16 || Int32 != rabi.Int32 || Int64 != rabi.Int64 {
		t.Fatal("mirrored signed integer kinds mismatch")
	}
	if Pointer != rabi.Pointer {
		t.Fatalf("Pointer=%v want %v", Pointer, rabi.Pointer)
	}
	if Uint != rabi.Uint || Uint8 != rabi.Uint8 || Uint16 != rabi.Uint16 || Uint32 != rabi.Uint32 || Uint64 != rabi.Uint64 || Uintptr != rabi.Uintptr {
		t.Fatal("mirrored unsigned integer kinds mismatch")
	}
	if Float32 != rabi.Float32 || Float64 != rabi.Float64 {
		t.Fatal("mirrored float kinds mismatch")
	}
	if Complex64 != rabi.Complex64 || Complex128 != rabi.Complex128 {
		t.Fatal("mirrored complex kinds mismatch")
	}
	if Chan != rabi.Chan || Interface != rabi.Interface || Map != rabi.Map || Slice != rabi.Slice {
		t.Fatal("mirrored container/interface kinds mismatch")
	}
	if String != rabi.String {
		t.Fatalf("String=%v want %v", String, rabi.String)
	}
	if Struct != rabi.Struct {
		t.Fatalf("Struct=%v want %v", Struct, rabi.Struct)
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
