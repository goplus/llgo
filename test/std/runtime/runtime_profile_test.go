//go:build !llgo

package runtime_test

import (
	"runtime"
	"testing"
)

// Test BlockProfile
func TestBlockProfile(t *testing.T) {
	// Enable block profiling
	runtime.SetBlockProfileRate(1)
	defer runtime.SetBlockProfileRate(0)

	p := make([]runtime.BlockProfileRecord, 10)
	n, ok := runtime.BlockProfile(p)
	if !ok && n > len(p) {
		t.Logf("BlockProfile returned n=%d, buffer size=%d, ok=%v", n, len(p), ok)
	}
	// It's okay if there are no blocks recorded
	if n < 0 {
		t.Errorf("BlockProfile returned n=%d, want >= 0", n)
	}
}

// Test GoroutineProfile
func TestGoroutineProfile(t *testing.T) {
	p := make([]runtime.StackRecord, 10)
	n, ok := runtime.GoroutineProfile(p)
	if n < 1 {
		t.Errorf("GoroutineProfile returned n=%d, want >= 1", n)
	}
	if !ok && n > len(p) {
		t.Logf("GoroutineProfile returned n=%d, buffer size=%d, ok=%v", n, len(p), ok)
	}
}

// Test MemProfile
func TestMemProfile(t *testing.T) {
	p := make([]runtime.MemProfileRecord, 100)
	n, ok := runtime.MemProfile(p, false)
	if n < 0 {
		t.Errorf("MemProfile returned n=%d, want >= 0", n)
	}
	if !ok && n > len(p) {
		t.Logf("MemProfile returned n=%d, buffer size=%d, ok=%v", n, len(p), ok)
	}

	// Test with inuseZero=true
	n2, ok2 := runtime.MemProfile(p, true)
	if n2 < 0 {
		t.Errorf("MemProfile(inuseZero=true) returned n=%d, want >= 0", n2)
	}
	_ = ok2
}

// Test MutexProfile
func TestMutexProfile(t *testing.T) {
	// Enable mutex profiling
	old := runtime.SetMutexProfileFraction(1)
	defer runtime.SetMutexProfileFraction(old)

	p := make([]runtime.BlockProfileRecord, 10)
	n, ok := runtime.MutexProfile(p)
	if n < 0 {
		t.Errorf("MutexProfile returned n=%d, want >= 0", n)
	}
	if !ok && n > len(p) {
		t.Logf("MutexProfile returned n=%d, buffer size=%d, ok=%v", n, len(p), ok)
	}
}

// Test ThreadCreateProfile
func TestThreadCreateProfile(t *testing.T) {
	p := make([]runtime.StackRecord, 10)
	n, ok := runtime.ThreadCreateProfile(p)
	if n < 0 {
		t.Errorf("ThreadCreateProfile returned n=%d, want >= 0", n)
	}
	_ = ok
}

// Test CPUProfile
func TestCPUProfile(t *testing.T) {
	t.Skip("CPUProfile is deprecated and may not work correctly")
	data := runtime.CPUProfile()
	_ = data
}

// Test ReadTrace
func TestReadTrace(t *testing.T) {
	t.Skip("ReadTrace requires trace to be started")
	data := runtime.ReadTrace()
	_ = data
}

// Test StartTrace and StopTrace
func TestStartStopTrace(t *testing.T) {
	t.Skip("Tracing may not be fully supported in llgo")
	err := runtime.StartTrace()
	if err != nil {
		t.Skipf("StartTrace failed: %v", err)
	}
	runtime.StopTrace()
}
