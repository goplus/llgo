package runtime_test

import (
	"runtime"
	"testing"
)

// Test GOOS constant
func TestGOOS(t *testing.T) {
	goos := runtime.GOOS
	if goos == "" {
		t.Error("GOOS is empty")
	}
	// Common values: linux, darwin, windows, freebsd, etc.
	t.Logf("GOOS = %s", goos)
}

// Test GOARCH constant
func TestGOARCH(t *testing.T) {
	goarch := runtime.GOARCH
	if goarch == "" {
		t.Error("GOARCH is empty")
	}
	// Common values: amd64, arm64, 386, arm, etc.
	t.Logf("GOARCH = %s", goarch)
}

// Test Compiler constant
func TestCompiler(t *testing.T) {
	compiler := runtime.Compiler
	if compiler == "" {
		t.Error("Compiler is empty")
	}
	// Typical values: "gc", "gccgo", "llgo"
	t.Logf("Compiler = %s", compiler)
}

// Test MemProfileRate variable
func TestMemProfileRate(t *testing.T) {
	oldRate := runtime.MemProfileRate
	if oldRate < 0 {
		t.Errorf("MemProfileRate = %d, want >= 0", oldRate)
	}

	// Set a new rate
	runtime.MemProfileRate = 1024
	if runtime.MemProfileRate != 1024 {
		t.Errorf("After setting MemProfileRate = 1024, got %d", runtime.MemProfileRate)
	}

	// Restore
	runtime.MemProfileRate = oldRate
}
