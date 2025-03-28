package mod

import (
	"os"
	"path/filepath"
	"testing"
)

func TestIsModulePath(t *testing.T) {
	testCases := []struct {
		path  string
		valid bool
	}{
		{"github.com/user/repo", true},
		{"invalid@1.0", false},
		{"github.com/user/repo@v1.2.3", false},
	}

	for _, tc := range testCases {
		t.Run(tc.path, func(t *testing.T) {
			if got := IsModulePath(tc.path); got != tc.valid {
				t.Errorf("IsModulePath(%q) = %v; want %v", tc.path, got, tc.valid)
			}
		})
	}
}

func TestLLPkgCacheDir(t *testing.T) {
	orig := os.Getenv("LLGOCACHE")
	defer os.Setenv("LLGOCACHE", orig)
	testCache := t.TempDir()
	os.Setenv("LLGOCACHE", testCache)

	expected := filepath.Join(testCache, "llpkg")
	if got := LLPkgCacheDir(); got != expected {
		t.Errorf("LLPkgCacheDir() = %q; want %q", got, expected)
	}
}

func TestDoPathCompletion(t *testing.T) {
	testCases := []struct {
		name   string
		goVer  string
		want   string
		errMsg string
	}{
		{"clib", "v2.3.4", "github.com/goplus/llpkg/clib/v2", ""},
		{"clib", "v0.1.2", "github.com/goplus/llpkg/clib", ""},
		{"clib", "invalid", "", "not a semver: invalid"},
	}

	for _, tc := range testCases {
		t.Run(tc.name+"_"+tc.goVer, func(t *testing.T) {
			got, err := doPathCompletion(tc.name, tc.goVer)
			if tc.errMsg != "" {
				if err == nil || err.Error() != tc.errMsg {
					t.Errorf("Unexpected error: %v; want %q", err, tc.errMsg)
				}
				return
			}
			if err != nil {
				t.Errorf("Unexpected error: %v", err)
			}
			if got != tc.want {
				t.Errorf("doPathCompletion(%q, %q) = %q; want %q", tc.name, tc.goVer, got, tc.want)
			}
		})
	}
}
