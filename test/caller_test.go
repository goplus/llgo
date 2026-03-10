package test

import (
	"path/filepath"
	"runtime"
	"strings"
	"testing"
)

func runtimeCallerSite() (string, int, bool) {
	_, file, line, ok := runtime.Caller(0)
	return file, line, ok
}

func runtimeFrameSite() runtime.Frame {
	var pcs [8]uintptr
	n := runtime.Callers(1, pcs[:])
	frames := runtime.CallersFrames(pcs[:n])
	frame, _ := frames.Next()
	return frame
}

func TestRuntimeCallerReportsSourceFile(t *testing.T) {
	file, line, ok := runtimeCallerSite()
	if !ok {
		t.Fatal("runtime.Caller returned ok=false")
	}
	if !strings.HasSuffix(filepath.ToSlash(file), "/test/caller_test.go") {
		t.Fatalf("runtime.Caller file = %q, want suffix %q", file, "/test/caller_test.go")
	}
	if line <= 0 {
		t.Fatalf("runtime.Caller line = %d, want > 0", line)
	}
}

func TestRuntimeCallersFramesReportsSourceFile(t *testing.T) {
	frame := runtimeFrameSite()
	if !strings.HasSuffix(filepath.ToSlash(frame.File), "/test/caller_test.go") {
		t.Fatalf("runtime.CallersFrames file = %q, want suffix %q", frame.File, "/test/caller_test.go")
	}
	if frame.Line <= 0 {
		t.Fatalf("runtime.CallersFrames line = %d, want > 0", frame.Line)
	}
}
