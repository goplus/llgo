package atomic_test

import (
	"sync/atomic"
	"testing"
)

// Test type methods for bitwise operations
// These tests are excluded from LLGo builds due to platform-specific behavior
func TestInt32BitwiseMethods(t *testing.T) {
	// Test And method
	var i atomic.Int32
	i.Store(0xFFAA)         // 1111 1111 1010 1010
	oldVal := i.And(0xF0F0) // 1111 0000 1111 0000
	if oldVal != 0xFFAA {
		t.Fatalf("Int32.And returned old value = %x, want 0xFFAA", oldVal)
	}
	// Now test Or method with a fresh value
	i.Store(0x5050)
	oldVal = i.Or(0x0A0A)
	if oldVal != 0x5050 {
		t.Fatalf("Int32.Or returned old value = %x, want 0x5050", oldVal)
	}
}

func TestInt64BitwiseMethods(t *testing.T) {
	// Test And method
	var i atomic.Int64
	i.Store(0xFFAAFFAA)
	oldVal := i.And(0xF0F0F0F0)
	if oldVal != 0xFFAAFFAA {
		t.Fatalf("Int64.And returned old value = %x, want 0xFFAAFFAA", oldVal)
	}
	// Now test Or method with a fresh value
	i.Store(0x5050505050505050)
	oldVal = i.Or(0x0A0A0A0A0A0A0A0A)
	if oldVal != 0x5050505050505050 {
		t.Fatalf("Int64.Or returned old value = %x, want 0x5050505050505050", oldVal)
	}
}

func TestUint32BitwiseMethods(t *testing.T) {
	// Test And method
	var i atomic.Uint32
	i.Store(0xFFAA)
	oldVal := i.And(0xF0F0)
	if oldVal != 0xFFAA {
		t.Fatalf("Uint32.And returned old value = %x, want 0xFFAA", oldVal)
	}
	// Now test Or method with a fresh value
	i.Store(0x5050)
	oldVal = i.Or(0x0A0A)
	if oldVal != 0x5050 {
		t.Fatalf("Uint32.Or returned old value = %x, want 0x5050", oldVal)
	}
}

func TestUint64BitwiseMethods(t *testing.T) {
	// Test And method
	var i atomic.Uint64
	i.Store(0xFFAAFFAA)
	oldVal := i.And(0xF0F0F0F0)
	if oldVal != 0xFFAAFFAA {
		t.Fatalf("Uint64.And returned old value = %x, want 0xFFAAFFAA", oldVal)
	}
	// Now test Or method with a fresh value
	i.Store(0x5050505050505050)
	oldVal = i.Or(0x0A0A0A0A0A0A0A0A)
	if oldVal != 0x5050505050505050 {
		t.Fatalf("Uint64.Or returned old value = %x, want 0x5050505050505050", oldVal)
	}
}

func TestUintptrBitwiseMethods(t *testing.T) {
	// Test And method
	var i atomic.Uintptr
	i.Store(0xFFAA)
	oldVal := i.And(0xF0F0)
	if oldVal != 0xFFAA {
		t.Fatalf("Uintptr.And returned old value = %x, want 0xFFAA", oldVal)
	}
	// Now test Or method with a fresh value
	i.Store(0x5050)
	oldVal = i.Or(0x0A0A)
	if oldVal != 0x5050 {
		t.Fatalf("Uintptr.Or returned old value = %x, want 0x5050", oldVal)
	}
}
