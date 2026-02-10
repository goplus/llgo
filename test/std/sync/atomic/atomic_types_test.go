package atomic_test

import (
	"sync/atomic"
	"testing"
)

func TestInt32Type(t *testing.T) {
	var i atomic.Int32

	// Test initial value
	if i.Load() != 0 {
		t.Fatalf("Int32 initial value = %d, want 0", i.Load())
	}

	// Test Store
	i.Store(42)
	if i.Load() != 42 {
		t.Fatalf("After Store(42), Int32 value = %d, want 42", i.Load())
	}

	// Test Add
	result := i.Add(8)
	if result != 50 {
		t.Fatalf("Add(8) = %d, want 50", result)
	}
	if i.Load() != 50 {
		t.Fatalf("After Add(8), Int32 value = %d, want 50", i.Load())
	}

	// Test Swap
	old := i.Swap(100)
	if old != 50 {
		t.Fatalf("Swap(100) = %d, want 50", old)
	}
	if i.Load() != 100 {
		t.Fatalf("After Swap(100), Int32 value = %d, want 100", i.Load())
	}

	// Test CompareAndSwap
	swapped := i.CompareAndSwap(100, 200)
	if !swapped {
		t.Fatalf("CompareAndSwap(100, 200) = false, want true")
	}
	if i.Load() != 200 {
		t.Fatalf("After successful CompareAndSwap, Int32 value = %d, want 200", i.Load())
	}

	// Test unsuccessful CompareAndSwap
	swapped = i.CompareAndSwap(100, 300)
	if swapped {
		t.Fatalf("CompareAndSwap(100, 300) = true, want false")
	}
	if i.Load() != 200 {
		t.Fatalf("After unsuccessful CompareAndSwap, Int32 value = %d, want 200", i.Load())
	}
}

func TestInt64Type(t *testing.T) {
	var i atomic.Int64

	// Test initial value
	if i.Load() != 0 {
		t.Fatalf("Int64 initial value = %d, want 0", i.Load())
	}

	// Test Store
	i.Store(42)
	if i.Load() != 42 {
		t.Fatalf("After Store(42), Int64 value = %d, want 42", i.Load())
	}

	// Test Add
	result := i.Add(8)
	if result != 50 {
		t.Fatalf("Add(8) = %d, want 50", result)
	}
	if i.Load() != 50 {
		t.Fatalf("After Add(8), Int64 value = %d, want 50", i.Load())
	}

	// Test Swap
	old := i.Swap(100)
	if old != 50 {
		t.Fatalf("Swap(100) = %d, want 50", old)
	}
	if i.Load() != 100 {
		t.Fatalf("After Swap(100), Int64 value = %d, want 100", i.Load())
	}

	// Test CompareAndSwap
	swapped := i.CompareAndSwap(100, 200)
	if !swapped {
		t.Fatalf("CompareAndSwap(100, 200) = false, want true")
	}
	if i.Load() != 200 {
		t.Fatalf("After successful CompareAndSwap, Int64 value = %d, want 200", i.Load())
	}

	// Test unsuccessful CompareAndSwap
	swapped = i.CompareAndSwap(100, 300)
	if swapped {
		t.Fatalf("CompareAndSwap(100, 300) = true, want false")
	}
	if i.Load() != 200 {
		t.Fatalf("After unsuccessful CompareAndSwap, Int64 value = %d, want 200", i.Load())
	}
}

func TestUint32Type(t *testing.T) {
	var i atomic.Uint32

	// Test initial value
	if i.Load() != 0 {
		t.Fatalf("Uint32 initial value = %d, want 0", i.Load())
	}

	// Test Store
	i.Store(42)
	if i.Load() != 42 {
		t.Fatalf("After Store(42), Uint32 value = %d, want 42", i.Load())
	}

	// Test Add
	result := i.Add(8)
	if result != 50 {
		t.Fatalf("Add(8) = %d, want 50", result)
	}
	if i.Load() != 50 {
		t.Fatalf("After Add(8), Uint32 value = %d, want 50", i.Load())
	}

	// Test Swap
	old := i.Swap(100)
	if old != 50 {
		t.Fatalf("Swap(100) = %d, want 50", old)
	}
	if i.Load() != 100 {
		t.Fatalf("After Swap(100), Uint32 value = %d, want 100", i.Load())
	}

	// Test CompareAndSwap
	swapped := i.CompareAndSwap(100, 200)
	if !swapped {
		t.Fatalf("CompareAndSwap(100, 200) = false, want true")
	}
	if i.Load() != 200 {
		t.Fatalf("After successful CompareAndSwap, Uint32 value = %d, want 200", i.Load())
	}

	// Test unsuccessful CompareAndSwap
	swapped = i.CompareAndSwap(100, 300)
	if swapped {
		t.Fatalf("CompareAndSwap(100, 300) = true, want false")
	}
	if i.Load() != 200 {
		t.Fatalf("After unsuccessful CompareAndSwap, Uint32 value = %d, want 200", i.Load())
	}
}

func TestUint64Type(t *testing.T) {
	var i atomic.Uint64

	// Test initial value
	if i.Load() != 0 {
		t.Fatalf("Uint64 initial value = %d, want 0", i.Load())
	}

	// Test Store
	i.Store(42)
	if i.Load() != 42 {
		t.Fatalf("After Store(42), Uint64 value = %d, want 42", i.Load())
	}

	// Test Add
	result := i.Add(8)
	if result != 50 {
		t.Fatalf("Add(8) = %d, want 50", result)
	}
	if i.Load() != 50 {
		t.Fatalf("After Add(8), Uint64 value = %d, want 50", i.Load())
	}

	// Test Swap
	old := i.Swap(100)
	if old != 50 {
		t.Fatalf("Swap(100) = %d, want 50", old)
	}
	if i.Load() != 100 {
		t.Fatalf("After Swap(100), Uint64 value = %d, want 100", i.Load())
	}

	// Test CompareAndSwap
	swapped := i.CompareAndSwap(100, 200)
	if !swapped {
		t.Fatalf("CompareAndSwap(100, 200) = false, want true")
	}
	if i.Load() != 200 {
		t.Fatalf("After successful CompareAndSwap, Uint64 value = %d, want 200", i.Load())
	}

	// Test unsuccessful CompareAndSwap
	swapped = i.CompareAndSwap(100, 300)
	if swapped {
		t.Fatalf("CompareAndSwap(100, 300) = true, want false")
	}
	if i.Load() != 200 {
		t.Fatalf("After unsuccessful CompareAndSwap, Uint64 value = %d, want 200", i.Load())
	}
}

func TestUintptrType(t *testing.T) {
	var i atomic.Uintptr

	// Test initial value
	if i.Load() != 0 {
		t.Fatalf("Uintptr initial value = %d, want 0", i.Load())
	}

	// Test Store
	i.Store(42)
	if i.Load() != 42 {
		t.Fatalf("After Store(42), Uintptr value = %d, want 42", i.Load())
	}

	// Test Add
	result := i.Add(8)
	if result != 50 {
		t.Fatalf("Add(8) = %d, want 50", result)
	}
	if i.Load() != 50 {
		t.Fatalf("After Add(8), Uintptr value = %d, want 50", i.Load())
	}

	// Test Swap
	old := i.Swap(100)
	if old != 50 {
		t.Fatalf("Swap(100) = %d, want 50", old)
	}
	if i.Load() != 100 {
		t.Fatalf("After Swap(100), Uintptr value = %d, want 100", i.Load())
	}

	// Test CompareAndSwap
	swapped := i.CompareAndSwap(100, 200)
	if !swapped {
		t.Fatalf("CompareAndSwap(100, 200) = false, want true")
	}
	if i.Load() != 200 {
		t.Fatalf("After successful CompareAndSwap, Uintptr value = %d, want 200", i.Load())
	}

	// Test unsuccessful CompareAndSwap
	swapped = i.CompareAndSwap(100, 300)
	if swapped {
		t.Fatalf("CompareAndSwap(100, 300) = true, want false")
	}
	if i.Load() != 200 {
		t.Fatalf("After unsuccessful CompareAndSwap, Uintptr value = %d, want 200", i.Load())
	}
}

func TestBoolType(t *testing.T) {
	var b atomic.Bool

	// Test initial value
	if b.Load() {
		t.Fatalf("Bool initial value = true, want false")
	}

	// Test Store
	b.Store(true)
	if !b.Load() {
		t.Fatalf("After Store(true), Bool value = false, want true")
	}

	// Test Swap
	old := b.Swap(false)
	if !old {
		t.Fatalf("Swap(false) = %v, want true", old)
	}
	if b.Load() {
		t.Fatalf("After Swap(false), Bool value = %v, want false", b.Load())
	}

	// Test CompareAndSwap
	swapped := b.CompareAndSwap(false, true)
	if !swapped {
		t.Fatalf("CompareAndSwap(false, true) = false, want true")
	}
	if !b.Load() {
		t.Fatalf("After successful CompareAndSwap, Bool value = %v, want true", b.Load())
	}

	// Test unsuccessful CompareAndSwap
	swapped = b.CompareAndSwap(false, true)
	if swapped {
		t.Fatalf("CompareAndSwap(false, true) = %v, want false", swapped)
	}
	if !b.Load() {
		t.Fatalf("After unsuccessful CompareAndSwap, Bool value = %v, want true", b.Load())
	}
}

func TestValueType(t *testing.T) {
	var v atomic.Value

	// Test initial value
	if v.Load() != nil {
		t.Fatalf("Value initial value = %v, want nil", v.Load())
	}

	// Test Store with int
	v.Store(42)
	if v.Load() != 42 {
		t.Fatalf("After Store(42), Value = %v, want 42", v.Load())
	}

	// Create new Value for string test
	var vStr atomic.Value
	str := "hello world"
	vStr.Store(str)
	if vStr.Load() != str {
		t.Fatalf("After Store(%q), Value = %v, want %q", str, vStr.Load(), str)
	}

	// Create new Value for struct test
	var vStruct atomic.Value
	type TestStruct struct {
		Field int
	}
	s := TestStruct{Field: 123}
	vStruct.Store(s)
	if vStruct.Load() != s {
		t.Fatalf("After Store(%+v), Value = %v, want %+v", s, vStruct.Load(), s)
	}

	// Note: atomic.Value cannot store nil directly
	// We can store a pointer to nil, but not nil itself
	var nilPtr *int = nil
	var vNil atomic.Value
	vNil.Store(nilPtr)
	if vNil.Load() != nilPtr {
		t.Fatalf("After Store(nil pointer), Value = %v, want %v", vNil.Load(), nilPtr)
	}
}
