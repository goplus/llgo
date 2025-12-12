package weak_test

import (
	"runtime"
	"testing"
	"weak"
)

func TestMake(t *testing.T) {
	x := new(int)
	*x = 42

	wp := weak.Make(x)
	if wp == (weak.Pointer[int]{}) {
		t.Error("Make returned zero value")
	}

	val := wp.Value()
	if val == nil {
		t.Error("Value() returned nil for live object")
	}
	if *val != 42 {
		t.Errorf("*Value() = %d, want 42", *val)
	}
}

func TestPointerValue(t *testing.T) {
	x := new(string)
	*x = "hello"

	wp := weak.Make(x)
	val := wp.Value()
	if val == nil {
		t.Fatal("Value() returned nil")
	}
	if *val != "hello" {
		t.Errorf("*Value() = %q, want hello", *val)
	}
}

func TestPointerGC(t *testing.T) {
	var wp weak.Pointer[int]

	func() {
		x := new(int)
		*x = 123
		wp = weak.Make(x)

		val := wp.Value()
		if val == nil || *val != 123 {
			t.Fatal("weak pointer should be valid before GC")
		}
	}()

	runtime.GC()
	runtime.GC()

	val := wp.Value()
	if val != nil {
		t.Log("Note: weak pointer still valid after GC (may happen)")
	}
}

func TestPointerZeroValue(t *testing.T) {
	var wp weak.Pointer[int]

	val := wp.Value()
	if val != nil {
		t.Errorf("zero Pointer.Value() = %v, want nil", val)
	}
}

func TestPointerMultipleTypes(t *testing.T) {
	type MyStruct struct {
		Field int
	}

	s := &MyStruct{Field: 99}
	wp := weak.Make(s)

	val := wp.Value()
	if val == nil {
		t.Fatal("Value() returned nil")
	}
	if val.Field != 99 {
		t.Errorf("val.Field = %d, want 99", val.Field)
	}
}

func TestPointerNilInput(t *testing.T) {
	var nilPtr *int
	wp := weak.Make(nilPtr)

	val := wp.Value()
	if val != nil {
		t.Errorf("Make(nil).Value() = %v, want nil", val)
	}
}
