package runtime

import (
	"testing"
	"unsafe"
)

func TestHiddenPointerKeyRoundTrip(t *testing.T) {
	var x byte
	ptr := unsafe.Pointer(&x)
	key := EncodeHiddenPointerKey(ptr)
	if key == uintptr(ptr) {
		t.Fatalf("key=%#x unexpectedly matches raw pointer %#x", key, uintptr(ptr))
	}
	if got := DecodeHiddenPointerKey(key); got != ptr {
		t.Fatalf("DecodeHiddenPointerKey(%#x)=%p, want %p", key, got, ptr)
	}
}

func TestHiddenNilPointerKeyRoundTrip(t *testing.T) {
	key := HiddenNilPointerKey()
	if got := DecodeHiddenPointerKey(key); got != nil {
		t.Fatalf("DecodeHiddenPointerKey(HiddenNilPointerKey())=%p, want nil", got)
	}
}
