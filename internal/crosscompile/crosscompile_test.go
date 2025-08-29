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
			expectSDK:     true,  // Changed: now we expect flags even for same platform
			expectCCFlags: true,  // Changed: CCFLAGS will contain sysroot
			expectCFlags:  false, // Changed: CFLAGS will not contain include paths
			expectLDFlags: false, // Changed: LDFLAGS will not contain library paths
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
			expectSDK:     false, // Still false as it won't set up specific SDK
			expectCCFlags: false, // No cross-compile specific flags
			expectCFlags:  false, // No cross-compile specific flags
			expectLDFlags: false, // No cross-compile specific flags
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
			export, err := use(tc.goos, tc.goarch, false, false)

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

					// For WASM target, both sysroot and resource-dir are expected
					if tc.name == "WASM Target" {
						if !hasSysroot {
							t.Error("Missing --sysroot flag in CCFLAGS")
						}
						if !hasResourceDir {
							t.Error("Missing -resource-dir flag in CCFLAGS")
						}
					} else if tc.name == "Same Platform" {
						// For same platform, we expect sysroot only on macOS
						if runtime.GOOS == "darwin" && !hasSysroot {
							t.Error("Missing --sysroot flag in CCFLAGS on macOS")
						}
						// On Linux and other platforms, sysroot is not necessarily required
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
				// For unsupported targets, we still expect some basic flags to be set
				// since the implementation now always sets up ESP Clang environment
				// Only check that we don't have specific SDK-related flags for unsupported targets
				if tc.name == "Unsupported Target" && len(export.CFLAGS) != 0 {
					t.Errorf("Expected empty CFLAGS for unsupported target, got CFLAGS=%v", export.CFLAGS)
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
			expectError: true,
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

			// Check if CPU is in LDFLAGS (for ld.lld linker) or CCFLAGS (for other cases)
			if tc.expectCPU != "" {
				found := false
				// First check LDFLAGS for -mllvm -mcpu= pattern
				for i, flag := range export.LDFLAGS {
					if flag == "-mllvm" && i+1 < len(export.LDFLAGS) {
						nextFlag := export.LDFLAGS[i+1]
						if nextFlag == "-mcpu="+tc.expectCPU {
							found = true
							break
						}
					}
				}
				// If not found in LDFLAGS, check CCFLAGS for direct CPU flags
				if !found {
					expectedFlags := []string{"-mmcu=" + tc.expectCPU, "-mcpu=" + tc.expectCPU}
					for _, flag := range export.CCFLAGS {
						for _, expectedFlag := range expectedFlags {
							if flag == expectedFlag {
								found = true
								break
							}
						}
					}
				}
				if !found {
					t.Errorf("Expected CPU %s in LDFLAGS or CCFLAGS, got LDFLAGS=%v, CCFLAGS=%v", tc.expectCPU, export.LDFLAGS, export.CCFLAGS)
				}
			}

			t.Logf("Target %s: BuildTags=%v, CFlags=%v, CCFlags=%v, LDFlags=%v",
				tc.targetName, export.BuildTags, export.CFLAGS, export.CCFLAGS, export.LDFLAGS)
		})
	}
}

func TestUseWithTarget(t *testing.T) {
	// Test target-based configuration takes precedence
	export, err := Use("linux", "amd64", "wasi", false, true)
	if err != nil {
		t.Fatalf("Unexpected error: %v", err)
	}

	// Check if LLVM target is in CCFLAGS
	found := slices.Contains(export.CCFLAGS, "-mcpu=generic")
	if !found {
		t.Errorf("Expected CPU generic in CCFLAGS, got %v", export.CCFLAGS)
	}

	// Test fallback to goos/goarch when no target specified
	export, err = Use(runtime.GOOS, runtime.GOARCH, "", false, false)
	if err != nil {
		t.Fatalf("Unexpected error: %v", err)
	}

	// Should use native configuration (only check for macOS since that's where tests run)
	if runtime.GOOS == "darwin" && len(export.LDFLAGS) == 0 {
		t.Error("Expected LDFLAGS to be set for native build")
	}
}

func TestExpandEnv(t *testing.T) {
	envs := map[string]string{
		"port": "/dev/ttyUSB0",
		"hex":  "firmware.hex",
		"bin":  "firmware.bin",
		"root": "/usr/local/llgo",
	}

	tests := []struct {
		template string
		expected string
	}{
		{
			"avrdude -c arduino -p atmega328p -P {port} -U flash:w:{hex}:i",
			"avrdude -c arduino -p atmega328p -P /dev/ttyUSB0 -U flash:w:firmware.hex:i",
		},
		{
			"simavr -m atmega328p -f 16000000 {}",
			"simavr -m atmega328p -f 16000000 firmware.hex", // {} expands to hex (first priority)
		},
		{
			"-I{root}/lib/CMSIS/CMSIS/Include",
			"-I/usr/local/llgo/lib/CMSIS/CMSIS/Include",
		},
		{
			"no variables here",
			"no variables here",
		},
		{
			"",
			"",
		},
	}

	for _, test := range tests {
		result := expandEnv(test.template, envs)
		if result != test.expected {
			t.Errorf("expandEnv(%q) = %q, want %q", test.template, result, test.expected)
		}
	}
}

func TestExpandEnvSlice(t *testing.T) {
	envs := map[string]string{
		"root": "/usr/local/llgo",
		"port": "/dev/ttyUSB0",
	}

	input := []string{
		"-I{root}/include",
		"-DPORT={port}",
		"static-flag",
	}

	expected := []string{
		"-I/usr/local/llgo/include",
		"-DPORT=/dev/ttyUSB0",
		"static-flag",
	}

	result := expandEnvSlice(input, envs)

	if len(result) != len(expected) {
		t.Fatalf("expandEnvSlice length mismatch: got %d, want %d", len(result), len(expected))
	}

	for i, exp := range expected {
		if result[i] != exp {
			t.Errorf("expandEnvSlice[%d] = %q, want %q", i, result[i], exp)
		}
	}
}

func TestExpandEnvWithDefault(t *testing.T) {
	envs := map[string]string{
		"port": "/dev/ttyUSB0",
		"hex":  "firmware.hex",
		"bin":  "firmware.bin",
		"img":  "image.img",
	}

	tests := []struct {
		template     string
		defaultValue string
		expected     string
	}{
		{
			"simavr {}",
			"", // No default - should use hex (priority)
			"simavr firmware.hex",
		},
		{
			"simavr {}",
			"custom.elf", // Explicit default
			"simavr custom.elf",
		},
		{
			"qemu -kernel {}",
			"vmlinux", // Custom kernel
			"qemu -kernel vmlinux",
		},
		{
			"no braces here",
			"ignored",
			"no braces here",
		},
	}

	for i, test := range tests {
		var result string
		if test.defaultValue == "" {
			result = expandEnvWithDefault(test.template, envs)
		} else {
			result = expandEnvWithDefault(test.template, envs, test.defaultValue)
		}

		if result != test.expected {
			t.Errorf("Test %d: expandEnvWithDefault(%q, envs, %q) = %q, want %q",
				i, test.template, test.defaultValue, result, test.expected)
		}
	}
}
