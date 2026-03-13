package runtime

import (
	"strings"
	"testing"
	"unsafe"
)

func TestSliceAppendZeroSizedElem(t *testing.T) {
	src := Slice{len: 0, cap: 0}
	got := SliceAppend(src, nil, 2, 0)
	if got.len != 2 {
		t.Fatalf("len=%d, want 2", got.len)
	}
	if got.cap < 2 {
		t.Fatalf("cap=%d, want >= 2", got.cap)
	}
}

func TestGrowSliceZeroSizedElem(t *testing.T) {
	src := Slice{len: 1, cap: 1}
	got := GrowSlice(src, 3, 0)
	if got.len != 4 {
		t.Fatalf("len=%d, want 4", got.len)
	}
	if got.cap < 4 {
		t.Fatalf("cap=%d, want >= 4", got.cap)
	}
}

func TestSliceToArrayPtr(t *testing.T) {
	var data [4]byte
	src := Slice{data: unsafe.Pointer(&data[0]), len: len(data), cap: len(data)}
	got := SliceToArrayPtr(src, len(data))
	if got != src.data {
		t.Fatalf("ptr=%p, want %p", got, src.data)
	}
}

func TestSliceToArrayPtrPanic(t *testing.T) {
	defer func() {
		if r := recover(); r == nil {
			t.Fatal("expected panic")
		} else if msg := r.(error).Error(); !strings.Contains(msg, "slice length too short") {
			t.Fatalf("panic=%q, want slice conversion error", msg)
		}
	}()
	SliceToArrayPtr(Slice{len: 2, cap: 2}, 3)
}
