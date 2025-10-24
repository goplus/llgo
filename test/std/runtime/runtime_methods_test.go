//go:build !llgo

package runtime_test

import (
	"runtime"
	"testing"
)

// Test MemProfileRecord methods
func TestMemProfileRecordMethods(t *testing.T) {
	// Allocate some memory to get profile records
	runtime.MemProfileRate = 1
	defer func() { runtime.MemProfileRate = 512 * 1024 }()

	// Allocate
	for i := 0; i < 100; i++ {
		_ = make([]byte, 1024)
	}

	runtime.GC()

	p := make([]runtime.MemProfileRecord, 100)
	n, ok := runtime.MemProfile(p, false)
	if n <= 0 {
		t.Skip("No memory profile records available")
	}

	if ok && n > 0 {
		rec := p[0]

		// Test InUseBytes
		inUseBytes := rec.InUseBytes()
		if inUseBytes < 0 {
			t.Errorf("InUseBytes() = %d, want >= 0", inUseBytes)
		}

		// Test InUseObjects
		inUseObjects := rec.InUseObjects()
		if inUseObjects < 0 {
			t.Errorf("InUseObjects() = %d, want >= 0", inUseObjects)
		}

		// Test Stack
		stack := rec.Stack()
		if len(stack) == 0 {
			t.Log("Stack() returned empty slice (may be normal)")
		}
	}
}

// Test StackRecord.Stack method
func TestStackRecordStack(t *testing.T) {
	p := make([]runtime.StackRecord, 10)
	n, ok := runtime.GoroutineProfile(p)
	if !ok || n <= 0 {
		t.Skip("No goroutine profile records available")
	}

	if n > 0 {
		rec := p[0]
		stack := rec.Stack()
		if len(stack) == 0 {
			t.Error("StackRecord.Stack() returned empty slice")
		}
	}
}

// Test Cleanup and Cleanup.Stop
func TestCleanup(t *testing.T) {
	// AddCleanup and Cleanup.Stop
	x := new(int)
	*x = 42

	cleaned := false
	cleanup := runtime.AddCleanup(x, func(val int) {
		cleaned = true
	}, *x)

	// Stop the cleanup
	cleanup.Stop()

	// Verify cleanup handle exists and Stop can be called
	_ = cleaned
}

// Test SetCgoTraceback
func TestSetCgoTraceback(t *testing.T) {
	// This is a low-level function primarily used by the runtime
	// We can call it with nil pointers to verify it exists
	// (actual testing requires complex CGO setup)
	runtime.SetCgoTraceback(0, nil, nil, nil)
}
