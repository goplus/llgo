//go:build !llgo

package runtime_test

import (
	"runtime"
	"strings"
	"testing"
)

// Test Version
func TestVersion(t *testing.T) {
	v := runtime.Version()
	if v == "" {
		t.Error("Version() returned empty string")
	}
	if !strings.HasPrefix(v, "go") {
		t.Errorf("Version() = %q, want string starting with 'go'", v)
	}
}

// Test GOROOT
func TestGOROOT(t *testing.T) {
	root := runtime.GOROOT()
	if root == "" {
		t.Error("GOROOT() returned empty string")
	}
}

// Test NumCPU
func TestNumCPU(t *testing.T) {
	n := runtime.NumCPU()
	if n < 1 {
		t.Errorf("NumCPU() = %d, want >= 1", n)
	}
}

// Test GOMAXPROCS
func TestGOMAXPROCS(t *testing.T) {
	// Get current value
	oldProcs := runtime.GOMAXPROCS(0)
	if oldProcs < 1 {
		t.Errorf("GOMAXPROCS(0) = %d, want >= 1", oldProcs)
	}

	// Set to 1
	prev := runtime.GOMAXPROCS(1)
	if prev != oldProcs {
		t.Errorf("GOMAXPROCS(1) returned %d, want %d", prev, oldProcs)
	}

	// Verify it was set
	curr := runtime.GOMAXPROCS(0)
	if curr != 1 {
		t.Errorf("After GOMAXPROCS(1), got %d, want 1", curr)
	}

	// Restore
	runtime.GOMAXPROCS(oldProcs)
}

// Test NumGoroutine
func TestNumGoroutine(t *testing.T) {
	n := runtime.NumGoroutine()
	if n < 1 {
		t.Errorf("NumGoroutine() = %d, want >= 1", n)
	}

	// Start goroutines and check the count
	done := make(chan bool)
	for range 10 {
		go func() {
			done <- true
		}()
	}
	for range 10 {
		<-done
	}

	n2 := runtime.NumGoroutine()
	if n2 < n {
		t.Errorf("NumGoroutine() after starting goroutine = %d, want >= %d", n2, n)
	}
}

// Test GC
func TestGC(t *testing.T) {
	runtime.GC()
	// Just verify it doesn't crash
}

// Test Gosched
func TestGosched(t *testing.T) {
	runtime.Gosched()
	// Just verify it doesn't crash
}

// Test KeepAlive
func TestKeepAlive(t *testing.T) {
	x := new(int)
	runtime.KeepAlive(x)
	// Just verify it doesn't crash
}

// Test Stack
func TestStack(t *testing.T) {
	buf := make([]byte, 1024)
	n := runtime.Stack(buf, false)
	if n <= 0 {
		t.Errorf("Stack() = %d, want > 0", n)
	}
	if n > len(buf) {
		t.Errorf("Stack() = %d, want <= %d", n, len(buf))
	}

	stackTrace := string(buf[:n])
	if stackTrace == "" {
		t.Error("Stack trace is empty")
	}
}

// Test Caller
func TestCaller(t *testing.T) {
	pc, file, line, ok := runtime.Caller(0)
	if !ok {
		t.Fatal("Caller(0) failed")
	}
	if pc == 0 {
		t.Error("Caller(0) returned pc = 0")
	}
	if file == "" {
		t.Error("Caller(0) returned empty file")
	}
	if line <= 0 {
		t.Errorf("Caller(0) returned line = %d, want > 0", line)
	}
	if !strings.Contains(file, "runtime_test.go") {
		t.Errorf("Caller(0) file = %q, want to contain 'runtime_test.go'", file)
	}
}

// Test Callers
func TestCallers(t *testing.T) {
	pc := make([]uintptr, 10)
	n := runtime.Callers(0, pc)
	if n <= 0 {
		t.Errorf("Callers(0, pc) = %d, want > 0", n)
	}
	if n > len(pc) {
		t.Errorf("Callers(0, pc) = %d, want <= %d", n, len(pc))
	}

	// Check that at least one pc is non-zero
	hasNonZero := false
	for i := 0; i < n; i++ {
		if pc[i] != 0 {
			hasNonZero = true
			break
		}
	}
	if !hasNonZero {
		t.Error("Callers() returned all zero program counters")
	}
}

// Test LockOSThread and UnlockOSThread
func TestLockOSThread(t *testing.T) {
	runtime.LockOSThread()
	runtime.UnlockOSThread()
	// Just verify they don't crash
}

// Test NumCgoCall
func TestNumCgoCall(t *testing.T) {
	n := runtime.NumCgoCall()
	if n < 0 {
		t.Errorf("NumCgoCall() = %d, want >= 0", n)
	}
}

// Test ReadMemStats
func TestReadMemStats(t *testing.T) {
	var m runtime.MemStats
	runtime.ReadMemStats(&m)

	// Basic sanity checks
	if m.Alloc == 0 {
		t.Error("MemStats.Alloc = 0, want > 0")
	}
	if m.Sys == 0 {
		t.Error("MemStats.Sys = 0, want > 0")
	}
	// NumGC is uint32, always >= 0
	_ = m.NumGC
}

// Test SetFinalizer
func TestSetFinalizer(t *testing.T) {
	finalizer := func(x *int) {
		// Finalizer called
	}

	x := new(int)
	runtime.SetFinalizer(x, finalizer)

	// Clear the finalizer
	runtime.SetFinalizer(x, nil)

	// Just verify it doesn't crash
	// Actually testing finalization is tricky and timing-dependent
}

// Test Goexit
func TestGoexit(t *testing.T) {
	done := make(chan bool)
	go func() {
		defer func() {
			done <- true
		}()
		runtime.Goexit()
		t.Error("Code after Goexit() should not execute")
	}()
	<-done
}

// Test Breakpoint (careful - this may pause execution in debugger)
func TestBreakpoint(t *testing.T) {
	t.Skip("Skipping Breakpoint test - may pause execution in debugger")
	runtime.Breakpoint()
}

// Test profile rate setters
func TestSetBlockProfileRate(t *testing.T) {
	runtime.SetBlockProfileRate(1)
	runtime.SetBlockProfileRate(0)
}

func TestSetMutexProfileFraction(t *testing.T) {
	old := runtime.SetMutexProfileFraction(1)
	runtime.SetMutexProfileFraction(old)
}

func TestSetCPUProfileRate(t *testing.T) {
	runtime.SetCPUProfileRate(100)
	runtime.SetCPUProfileRate(0)
}
