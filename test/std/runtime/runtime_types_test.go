//go:build !llgo

package runtime_test

import (
	"runtime"
	"testing"
)

// Test Error type
func TestError(t *testing.T) {
	var err runtime.Error
	_ = err
	// Just verify the type exists
}

// Test MemStats type
func TestMemStatsType(t *testing.T) {
	var m runtime.MemStats

	// Check that fields are accessible
	_ = m.Alloc
	_ = m.TotalAlloc
	_ = m.Sys
	_ = m.Lookups
	_ = m.Mallocs
	_ = m.Frees
	_ = m.HeapAlloc
	_ = m.HeapSys
	_ = m.HeapIdle
	_ = m.HeapInuse
	_ = m.HeapReleased
	_ = m.HeapObjects
	_ = m.StackInuse
	_ = m.StackSys
	_ = m.MSpanInuse
	_ = m.MSpanSys
	_ = m.MCacheInuse
	_ = m.MCacheSys
	_ = m.BuckHashSys
	_ = m.GCSys
	_ = m.OtherSys
	_ = m.NextGC
	_ = m.LastGC
	_ = m.PauseTotalNs
	_ = m.PauseNs
	_ = m.PauseEnd
	_ = m.NumGC
	_ = m.NumForcedGC
	_ = m.GCCPUFraction
	_ = m.EnableGC
	_ = m.DebugGC
}

// Test StackRecord type
func TestStackRecordType(t *testing.T) {
	var sr runtime.StackRecord
	_ = sr.Stack0
}

// Test MemProfileRecord type
func TestMemProfileRecordType(t *testing.T) {
	var mpr runtime.MemProfileRecord
	_ = mpr.AllocBytes
	_ = mpr.FreeBytes
	_ = mpr.AllocObjects
	_ = mpr.FreeObjects
	_ = mpr.Stack0
}

// Test BlockProfileRecord type
func TestBlockProfileRecordType(t *testing.T) {
	var bpr runtime.BlockProfileRecord
	_ = bpr.Count
	_ = bpr.Cycles
	_ = bpr.Stack0
}

// Test Func type
func TestFuncType(t *testing.T) {
	pc, _, _, ok := runtime.Caller(0)
	if !ok {
		t.Fatal("Caller failed")
	}

	f := runtime.FuncForPC(pc)
	if f == nil {
		t.Fatal("FuncForPC returned nil")
	}

	name := f.Name()
	if name == "" {
		t.Error("Func.Name() returned empty string")
	}

	file, line := f.FileLine(pc)
	if file == "" {
		t.Error("Func.FileLine() returned empty file")
	}
	if line <= 0 {
		t.Errorf("Func.FileLine() returned line = %d, want > 0", line)
	}

	entry := f.Entry()
	if entry == 0 {
		t.Error("Func.Entry() returned 0")
	}
}

// Test Frame type
func TestFrameType(t *testing.T) {
	var f runtime.Frame
	_ = f.PC
	_ = f.Func
	_ = f.Function
	_ = f.File
	_ = f.Line
	_ = f.Entry
}

// Test Frames type
func TestFramesType(t *testing.T) {
	pc := make([]uintptr, 10)
	n := runtime.Callers(0, pc)
	if n <= 0 {
		t.Fatal("Callers failed")
	}

	frames := runtime.CallersFrames(pc[:n])
	if frames == nil {
		t.Fatal("CallersFrames returned nil")
	}

	frame, more := frames.Next()
	if frame.Function == "" {
		t.Error("Frame.Function is empty")
	}
	_ = more
}

// Test TypeAssertionError type
func TestTypeAssertionErrorType(t *testing.T) {
	var tae runtime.TypeAssertionError
	_ = tae
}

// Test Pinner type
func TestPinnerType(t *testing.T) {
	var p runtime.Pinner
	x := new(int)
	p.Pin(x)
	p.Unpin()
}
