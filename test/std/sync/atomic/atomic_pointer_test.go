package atomic_test

import (
	"sync/atomic"
	"testing"
	"unsafe"
)

func TestLoadPointer(t *testing.T) {
	var i int
	value := &i
	var ptr unsafe.Pointer = unsafe.Pointer(value)

	// Test loading pointer
	result := atomic.LoadPointer(&ptr)
	if result != unsafe.Pointer(value) {
		t.Fatalf("LoadPointer failed: got %p, want %p", result, unsafe.Pointer(value))
	}
}

func TestStorePointer(t *testing.T) {
	var i int
	value := &i
	var ptr unsafe.Pointer

	// Test storing pointer
	atomic.StorePointer(&ptr, unsafe.Pointer(value))
	if *(*int)(ptr) != i {
		t.Fatalf("After StorePointer, ptr points to %d, want %d", *(*int)(ptr), i)
	}
}

func TestSwapPointer(t *testing.T) {
	var i int
	value := &i
	var ptr unsafe.Pointer

	// Test swapping pointer
	old := atomic.SwapPointer(&ptr, unsafe.Pointer(value))
	if old != nil {
		t.Fatalf("SwapPointer returned %p, want nil", old)
	}
	if *(*int)(ptr) != i {
		t.Fatalf("After SwapPointer, ptr points to %d, want %d", *(*int)(ptr), i)
	}
}

func TestCompareAndSwapPointer(t *testing.T) {
	var i int
	value := &i
	var ptr unsafe.Pointer

	// Test successful compare and swap
	swapped := atomic.CompareAndSwapPointer(&ptr, nil, unsafe.Pointer(value))
	if !swapped {
		t.Fatalf("CompareAndSwapPointer(nil, value) = false, want true")
	}

	// Test unsuccessful compare and swap
	var j int
	otherValue := &j
	swapped = atomic.CompareAndSwapPointer(&ptr, nil, unsafe.Pointer(otherValue))
	if swapped {
		t.Fatalf("CompareAndSwapPointer(value, otherValue) = true, want false")
	}
	if ptr != unsafe.Pointer(value) {
		t.Fatalf("After unsuccessful CompareAndSwap, Pointer value = %p, want %p", ptr, unsafe.Pointer(value))
	}
}

func TestPointerType(t *testing.T) {
	var i int
	value := &i
	var p atomic.Pointer[int]

	// Test initial value
	if p.Load() != nil {
		t.Fatalf("Pointer initial value = %p, want nil", p.Load())
	}

	// Test Store
	p.Store(value)
	if p.Load() != value {
		t.Fatalf("After Store, Pointer value = %p, want %p", p.Load(), value)
	}

	// Test Swap
	var j int
	newValue := &j
	old := p.Swap(newValue)
	if old != value {
		t.Fatalf("Swap returned %p, want %p", old, value)
	}
	if p.Load() != newValue {
		t.Fatalf("After Swap, Pointer value = %p, want %p", p.Load(), newValue)
	}

	// Test CompareAndSwap
	swapped := p.CompareAndSwap(newValue, value)
	if !swapped {
		t.Fatalf("CompareAndSwap failed for matching pointers")
	}
	if p.Load() != value {
		t.Fatalf("After successful CompareAndSwap, Pointer value = %p, want %p", p.Load(), value)
	}

	// Test unsuccessful CompareAndSwap
	swapped = p.CompareAndSwap(newValue, value)
	if swapped {
		t.Fatalf("CompareAndSwap succeeded for non-matching pointers")
	}
	if p.Load() != value {
		t.Fatalf("After unsuccessful CompareAndSwap, Pointer value = %p, want %p", p.Load(), value)
	}
}

func TestValueTypeMethods(t *testing.T) {
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

	// Test Swap method with same type (int)
	old := v.Swap(123)
	if old != 42 {
		t.Fatalf("Swap returned %v, want 42", old)
	}
	if v.Load() != 123 {
		t.Fatalf("After Swap, Value = %v, want 123", v.Load())
	}

	// Test CompareAndSwap method with same type (int)
	swapped := v.CompareAndSwap(123, 456)
	if !swapped {
		t.Fatalf("CompareAndSwap failed for matching values")
	}
	if v.Load() != 456 {
		t.Fatalf("After successful CompareAndSwap, Value = %v, want 456", v.Load())
	}

	// Test unsuccessful CompareAndSwap
	swapped = v.CompareAndSwap(123, 789)
	if swapped {
		t.Fatalf("CompareAndSwap succeeded for non-matching values")
	}
	if v.Load() != 456 {
		t.Fatalf("After unsuccessful CompareAndSwap, Value = %v, want 456", v.Load())
	}
}
