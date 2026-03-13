package runtime

import "testing"

func TestUnsafeSliceNilZero(t *testing.T) {
	got := UnsafeSlice(nil, 0, 1)
	if got.data != nil || got.len != 0 || got.cap != 0 {
		t.Fatalf("got=%#v, want zero slice", got)
	}
}

func TestUnsafeSliceNilPositivePanics(t *testing.T) {
	defer func() {
		if recover() == nil {
			t.Fatal("expected panic")
		}
	}()
	_ = UnsafeSlice(nil, 1, 1)
}

func TestUnsafeStringNilZero(t *testing.T) {
	got := UnsafeString(nil, 0)
	if got.data != nil || got.len != 0 {
		t.Fatalf("got=%#v, want zero string", got)
	}
}
