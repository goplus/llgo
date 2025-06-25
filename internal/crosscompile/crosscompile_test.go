//go:build !llgo
// +build !llgo

package crosscompile

import (
	"os"
	"runtime"
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
			export, err := Use(tc.goos, tc.goarch, false, false)

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
