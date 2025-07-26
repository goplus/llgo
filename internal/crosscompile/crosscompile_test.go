//go:build !llgo
// +build !llgo

package crosscompile

import (
	"os"
	"runtime"
	"slices"
	"testing"
)

const (
	sysrootPrefix     = "--sysroot="
	resourceDirPrefix = "-resource-dir="
	includePrefix     = "-I"
	libPrefix         = "-L"
)

func TestUseCrossCompileSDK(t *testing.T) {
	// Skip long-running tests unless explicitly enabled
	if testing.Short() {
		t.Skip("Skipping test in short mode")
	}

	// Test cases
	testCases := []struct {
		name          string
		goos          string
		goarch        string
		expectSDK     bool
		expectCCFlags bool
		expectCFlags  bool
		expectLDFlags bool
	}{
		{
			name:          "Same Platform",
			goos:          runtime.GOOS,
			goarch:        runtime.GOARCH,
			expectSDK:     false,
			expectCCFlags: false,
			expectCFlags:  false,
			expectLDFlags: false,
		},
		{
			name:          "WASM Target",
			goos:          "wasip1",
			goarch:        "wasm",
			expectSDK:     true,
			expectCCFlags: true,
			expectCFlags:  true,
			expectLDFlags: true,
		},
		{
			name:          "Unsupported Target",
			goos:          "windows",
			goarch:        "amd64",
			expectSDK:     false,
			expectCCFlags: false,
			expectCFlags:  false,
			expectLDFlags: false,
		},
	}

	// Create a temporary directory for the cache
	tempDir, err := os.MkdirTemp("", "crosscompile_test")
	if err != nil {
		t.Fatalf("Failed to create temp dir: %v", err)
	}
	defer os.RemoveAll(tempDir)

	// Set environment variable for cache directory
	oldEnv := os.Getenv("LLGO_CACHE_DIR")
	os.Setenv("LLGO_CACHE_DIR", tempDir)
	defer os.Setenv("LLGO_CACHE_DIR", oldEnv)

	for _, tc := range testCases {
		t.Run(tc.name, func(t *testing.T) {
			export, err := Use(tc.goos, tc.goarch, false)

			if err != nil {
				t.Fatalf("Unexpected error: %v", err)
			}
			t.Logf("export: %+v", export)

			if tc.expectSDK {
				// Check if flags are set correctly
				if tc.expectCCFlags && len(export.CCFLAGS) == 0 {
					t.Error("Expected CCFLAGS to be set, but they are empty")
				}

				if tc.expectCFlags && len(export.CFLAGS) == 0 {
					t.Error("Expected CFLAGS to be set, but they are empty")
				}

				if tc.expectLDFlags && len(export.LDFLAGS) == 0 {
					t.Error("Expected LDFLAGS to be set, but they are empty")
				}

				// Check for specific flags
				if tc.expectCCFlags {
					hasSysroot := false
					hasResourceDir := false

					for _, flag := range export.CCFLAGS {
						if len(flag) >= len(sysrootPrefix) && flag[:len(sysrootPrefix)] == sysrootPrefix {
							hasSysroot = true
						}
						if len(flag) >= len(resourceDirPrefix) && flag[:len(resourceDirPrefix)] == resourceDirPrefix {
							hasResourceDir = true
						}
					}

					if !hasSysroot {
						t.Error("Missing --sysroot flag in CCFLAGS")
					}
					if !hasResourceDir {
						t.Error("Missing -resource-dir flag in CCFLAGS")
					}
				}

				if tc.expectCFlags {
					hasInclude := false

					for _, flag := range export.CFLAGS {
						if len(flag) >= len(includePrefix) && flag[:len(includePrefix)] == includePrefix {
							hasInclude = true
						}
					}

					if !hasInclude {
						t.Error("Missing -I flag in CFLAGS")
					}
				}

				if tc.expectLDFlags {
					hasLib := false

					for _, flag := range export.LDFLAGS {
						if len(flag) >= len(libPrefix) && flag[:len(libPrefix)] == libPrefix {
							hasLib = true
						}
					}

					if !hasLib {
						t.Error("Missing -L flag in LDFLAGS")
					}
				}
			} else {
				if /*len(export.CCFLAGS) != 0 ||*/ len(export.CFLAGS) != 0 {
					t.Errorf("Expected empty export, got CCFLAGS=%v, CFLAGS=%v, LDFLAGS=%v",
						export.CCFLAGS, export.CFLAGS, export.LDFLAGS)
				}
			}
		})
	}
}

func TestUseTarget(t *testing.T) {
	// Test cases for target-based configuration
	testCases := []struct {
		name        string
		targetName  string
		expectError bool
		expectLLVM  string
		expectCPU   string
	}{
		{
			name:        "WASI Target",
			targetName:  "wasi",
			expectError: false,
			expectLLVM:  "",
			expectCPU:   "generic",
		},
		{
			name:        "RP2040 Target",
			targetName:  "rp2040",
			expectError: false,
			expectLLVM:  "thumbv6m-unknown-unknown-eabi",
			expectCPU:   "cortex-m0plus",
		},
		{
			name:        "Cortex-M Target",
			targetName:  "cortex-m",
			expectError: false,
			expectLLVM:  "",
			expectCPU:   "",
		},
		{
			name:        "Arduino Target (with filtered flags)",
			targetName:  "arduino",
			expectError: false,
			expectLLVM:  "avr",
			expectCPU:   "atmega328p",
		},
		{
			name:        "Nonexistent Target",
			targetName:  "nonexistent-target",
			expectError: true,
		},
	}

	for _, tc := range testCases {
		t.Run(tc.name, func(t *testing.T) {
			export, err := useTarget(tc.targetName)

			if tc.expectError {
				if err == nil {
					t.Errorf("Expected error for target %s, but got none", tc.targetName)
				}
				return
			}

			if err != nil {
				t.Fatalf("Unexpected error for target %s: %v", tc.targetName, err)
			}

			// Check if LLVM target is in CCFLAGS
			if tc.expectLLVM != "" {
				found := false
				expectedFlag := "--target=" + tc.expectLLVM
				for _, flag := range export.CCFLAGS {
					if flag == expectedFlag {
						found = true
						break
					}
				}
				if !found {
					t.Errorf("Expected LLVM target %s in CCFLAGS, got %v", expectedFlag, export.CCFLAGS)
				}
			}

			// Check if CPU is in CCFLAGS
			if tc.expectCPU != "" {
				found := false
				expectedFlags := []string{"-mmcu=" + tc.expectCPU, "-mcpu=" + tc.expectCPU}
				for _, flag := range export.CCFLAGS {
					for _, expectedFlag := range expectedFlags {
						if flag == expectedFlag {
							found = true
							break
						}
					}
				}
				if !found {
					t.Errorf("Expected CPU %s in CCFLAGS, got %v", tc.expectCPU, export.CCFLAGS)
				}
			}

			t.Logf("Target %s: BuildTags=%v, CFlags=%v, CCFlags=%v, LDFlags=%v",
				tc.targetName, export.BuildTags, export.CFLAGS, export.CCFLAGS, export.LDFLAGS)
		})
	}
}

func TestUseWithTarget(t *testing.T) {
	// Test target-based configuration takes precedence
	export, err := UseWithTarget("linux", "amd64", false, "wasi")
	if err != nil {
		t.Fatalf("Unexpected error: %v", err)
	}

	// Check if LLVM target is in CCFLAGS
	found := slices.Contains(export.CCFLAGS, "-mcpu=generic")
	if !found {
		t.Errorf("Expected CPU generic in CCFLAGS, got %v", export.CCFLAGS)
	}

	// Test fallback to goos/goarch when no target specified
	export, err = UseWithTarget(runtime.GOOS, runtime.GOARCH, false, "")
	if err != nil {
		t.Fatalf("Unexpected error: %v", err)
	}

	// Should use native configuration (only check for macOS since that's where tests run)
	if runtime.GOOS == "darwin" && len(export.LDFLAGS) == 0 {
		t.Error("Expected LDFLAGS to be set for native build")
	}
}

func TestFilterCompatibleLDFlags(t *testing.T) {
	testCases := []struct {
		name     string
		input    []string
		expected []string
	}{
		{
			name:     "Empty flags",
			input:    []string{},
			expected: []string{},
		},
		{
			name:     "Compatible flags only",
			input:    []string{"-lm", "-lpthread"},
			expected: []string{"-lm", "-lpthread"},
		},
		{
			name:     "Incompatible flags filtered",
			input:    []string{"--gc-sections", "-lm", "--emit-relocs", "-lpthread"},
			expected: []string{"--gc-sections", "-lm", "--emit-relocs", "-lpthread"},
		},
		{
			name:     "Defsym flags filtered",
			input:    []string{"--defsym=_stack_size=512", "-lm", "--defsym=_bootloader_size=512"},
			expected: []string{"-lm"},
		},
		{
			name:     "Linker script flags filtered",
			input:    []string{"-T", "script.ld", "-lm"},
			expected: []string{"-lm"},
		},
		{
			name:     "Mixed compatible and incompatible",
			input:    []string{"-lm", "--gc-sections", "--defsym=test=1", "-lpthread", "--no-demangle"},
			expected: []string{"-lm", "--gc-sections", "-lpthread", "--no-demangle"},
		},
	}

	for _, tc := range testCases {
		t.Run(tc.name, func(t *testing.T) {
			result := filterCompatibleLDFlags(tc.input)

			if len(result) != len(tc.expected) {
				t.Errorf("Expected %d flags, got %d: %v", len(tc.expected), len(result), result)
				return
			}

			for i, expected := range tc.expected {
				if result[i] != expected {
					t.Errorf("Expected flag[%d] = %s, got %s", i, expected, result[i])
				}
			}
		})
	}
}
