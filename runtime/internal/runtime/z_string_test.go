package runtime

import (
	"testing"
	"unsafe"
)

func TestStringSlicePreservesBasePointerForEmptyResult(t *testing.T) {
	data := [5]byte{'h', 'e', 'l', 'l', 'o'}
	base := String{data: unsafe.Pointer(&data[0]), len: len(data)}
	got := StringSlice(base, len(data), len(data))
	if got.len != 0 {
		t.Fatalf("len=%d, want 0", got.len)
	}
	want := base.data
	if got.data != want {
		t.Fatalf("data=%p, want %p", got.data, want)
	}
}
