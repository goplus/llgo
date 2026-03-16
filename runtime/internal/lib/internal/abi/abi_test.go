package abi

import (
	rabi "github.com/goplus/llgo/runtime/abi"
	"testing"
)

func TestMirroredKinds(t *testing.T) {
	if Invalid != Kind(rabi.Invalid) {
		t.Fatalf("Invalid=%v want %v", Invalid, rabi.Invalid)
	}
	if Array != Kind(rabi.Array) {
		t.Fatalf("Array=%v want %v", Array, rabi.Array)
	}
	if Bool != Kind(rabi.Bool) {
		t.Fatalf("Bool=%v want %v", Bool, rabi.Bool)
	}
	if Func != Kind(rabi.Func) {
		t.Fatalf("Func=%v want %v", Func, rabi.Func)
	}
	if Int != Kind(rabi.Int) || Int8 != Kind(rabi.Int8) || Int16 != Kind(rabi.Int16) || Int32 != Kind(rabi.Int32) || Int64 != Kind(rabi.Int64) {
		t.Fatal("mirrored signed integer kinds mismatch")
	}
	if Pointer != Kind(rabi.Pointer) {
		t.Fatalf("Pointer=%v want %v", Pointer, rabi.Pointer)
	}
	if Uint != Kind(rabi.Uint) || Uint8 != Kind(rabi.Uint8) || Uint16 != Kind(rabi.Uint16) || Uint32 != Kind(rabi.Uint32) || Uint64 != Kind(rabi.Uint64) || Uintptr != Kind(rabi.Uintptr) {
		t.Fatal("mirrored unsigned integer kinds mismatch")
	}
	if Float32 != Kind(rabi.Float32) || Float64 != Kind(rabi.Float64) {
		t.Fatal("mirrored float kinds mismatch")
	}
	if Complex64 != Kind(rabi.Complex64) || Complex128 != Kind(rabi.Complex128) {
		t.Fatal("mirrored complex kinds mismatch")
	}
	if Chan != Kind(rabi.Chan) || Interface != Kind(rabi.Interface) || Map != Kind(rabi.Map) || Slice != Kind(rabi.Slice) {
		t.Fatal("mirrored container/interface kinds mismatch")
	}
	if String != Kind(rabi.String) {
		t.Fatalf("String=%v want %v", String, rabi.String)
	}
	if Struct != Kind(rabi.Struct) {
		t.Fatalf("Struct=%v want %v", Struct, rabi.Struct)
	}
	if UnsafePointer != Kind(rabi.UnsafePointer) {
		t.Fatalf("UnsafePointer=%v want %v", UnsafePointer, rabi.UnsafePointer)
	}
	if KindDirectIface != rabi.KindDirectIface || KindMask != rabi.KindMask {
		t.Fatal("mirrored kind masks mismatch")
	}
}

func TestTypeFor(t *testing.T) {
	if got := TypeFor[int](); got == nil || got.Kind() != Kind(rabi.Int) {
		t.Fatalf("TypeFor[int]() = %v", got)
	}
}

func TestMirroredRuntimeABIConstants(t *testing.T) {
	if RecvDir != ChanDir(rabi.RecvDir) || SendDir != ChanDir(rabi.SendDir) || BothDir != ChanDir(rabi.BothDir) || InvalidDir != ChanDir(rabi.InvalidDir) {
		t.Fatal("mirrored channel directions mismatch")
	}
	if TFlagUncommon != TFlag(rabi.TFlagUncommon) ||
		TFlagExtraStar != TFlag(rabi.TFlagExtraStar) ||
		TFlagNamed != TFlag(rabi.TFlagNamed) ||
		TFlagRegularMemory != TFlag(rabi.TFlagRegularMemory) ||
		TFlagVariadic != TFlag(rabi.TFlagVariadic) ||
		TFlagClosure != TFlag(rabi.TFlagClosure) ||
		TFlagGCMaskOnDemand != TFlag(rabi.TFlagGCMaskOnDemand) {
		t.Fatal("mirrored tflag constants mismatch")
	}
	if MapBucketCount != rabi.MapBucketCount || MapMaxKeyBytes != rabi.MapMaxKeyBytes || MapMaxElemBytes != rabi.MapMaxElemBytes {
		t.Fatal("mirrored map constants mismatch")
	}
	if MaxPtrmaskBytes != rabi.MaxPtrmaskBytes {
		t.Fatalf("MaxPtrmaskBytes=%d want %d", MaxPtrmaskBytes, rabi.MaxPtrmaskBytes)
	}
	if !IsExported("Field") || IsExported("field") {
		t.Fatal("IsExported mismatch")
	}
}
