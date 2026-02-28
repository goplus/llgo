package structs_test

import (
	"structs"
	"testing"
	"unsafe"
)

type hostLayoutStruct struct {
	_ structs.HostLayout
	A byte
	B int32
}

func TestHostLayoutMarker(t *testing.T) {
	var v hostLayoutStruct
	_ = v

	// The marker type is a zero-size field and should not reduce alignment.
	if got, want := unsafe.Alignof(v), unsafe.Alignof(int32(0)); got < want {
		t.Fatalf("Alignof(hostLayoutStruct) = %d, want >= %d", got, want)
	}

	// Field B should be aligned for int32.
	if off := unsafe.Offsetof(v.B); off%unsafe.Alignof(int32(0)) != 0 {
		t.Fatalf("Offsetof(B) = %d, not int32-aligned", off)
	}
}
