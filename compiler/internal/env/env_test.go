package env

import (
	"os"
	"path/filepath"
	"testing"
)

func TestGOROOT(t *testing.T) {
	// Test with GOROOT environment variable set
	t.Run("with GOROOT env", func(t *testing.T) {
		origGoRoot := os.Getenv("GOROOT")
		defer os.Setenv("GOROOT", origGoRoot)

		expected := "/custom/goroot"
		os.Setenv("GOROOT", expected)
		if got := GOROOT(); got != expected {
			t.Errorf("GOROOT() = %v, want %v", got, expected)
		}
	})

	// Test without GOROOT environment variable
	t.Run("without GOROOT env", func(t *testing.T) {
		origGoRoot := os.Getenv("GOROOT")
		defer os.Setenv("GOROOT", origGoRoot)

		os.Setenv("GOROOT", "")
		if got := GOROOT(); got == "" {
			t.Error("GOROOT() should not return empty when using go env")
		}
	})
}

func TestLLGoRuntimeDir(t *testing.T) {
	// Test with valid LLGO_ROOT
	t.Run("with valid LLGO_ROOT", func(t *testing.T) {
		origLLGoRoot := os.Getenv("LLGO_ROOT")
		defer os.Setenv("LLGO_ROOT", origLLGoRoot)

		tmpDir := t.TempDir()
		runtimeDir := filepath.Join(tmpDir, "runtime")
		os.MkdirAll(runtimeDir, 0755)
		goModContent := []byte("module github.com/goplus/llgo/runtime\n")
		if err := os.WriteFile(filepath.Join(runtimeDir, "go.mod"), goModContent, 0644); err != nil {
			t.Fatal(err)
		}

		os.Setenv("LLGO_ROOT", tmpDir)
		expected := runtimeDir
		if got := LLGoRuntimeDir(); got != expected {
			t.Errorf("LLGoRuntimeDir() = %v, want %v", got, expected)
		}
	})

	// Test with invalid LLGO_ROOT
	t.Run("with invalid LLGO_ROOT", func(t *testing.T) {
		origLLGoRoot := os.Getenv("LLGO_ROOT")
		defer os.Setenv("LLGO_ROOT", origLLGoRoot)

		os.Setenv("LLGO_ROOT", "/nonexistent/path")
		wd, err := os.Getwd()
		if err != nil {
			t.Fatal(err)
		}
		runtimeDir := filepath.Join(wd, "../../../runtime")
		if got := LLGoRuntimeDir(); got != runtimeDir {
			t.Errorf("LLGoRuntimeDir() = %v, want %v", got, runtimeDir)
		}
	})

	t.Run("devel runtime dir", func(t *testing.T) {
		origLLGoRoot := os.Getenv("LLGO_ROOT")
		defer os.Setenv("LLGO_ROOT", origLLGoRoot)

		os.Setenv("LLGO_ROOT", "")
		wd, err := os.Getwd()
		if err != nil {
			t.Fatal(err)
		}
		runtimeDir := filepath.Join(wd, "../../../runtime")
		if got := LLGoRuntimeDir(); got != runtimeDir {
			t.Errorf("LLGoRuntimeDir() = %v, want %v", got, runtimeDir)
		}
	})
}

func TestLLGoROOT(t *testing.T) {
	// Test with valid LLGO_ROOT environment variable
	t.Run("with valid LLGO_ROOT env", func(t *testing.T) {
		origLLGoRoot := os.Getenv("LLGO_ROOT")
		defer os.Setenv("LLGO_ROOT", origLLGoRoot)

		tmpDir := t.TempDir()
		runtimeDir := filepath.Join(tmpDir, "runtime")
		os.MkdirAll(runtimeDir, 0755)
		goModContent := []byte("module github.com/goplus/llgo/runtime\n")
		if err := os.WriteFile(filepath.Join(runtimeDir, "go.mod"), goModContent, 0644); err != nil {
			t.Fatal(err)
		}

		os.Setenv("LLGO_ROOT", tmpDir)
		if got := LLGoROOT(); got != tmpDir {
			t.Errorf("LLGoROOT() = %v, want %v", got, tmpDir)
		}
	})

	// Test with invalid LLGO_ROOT environment variable
	t.Run("with invalid LLGO_ROOT env", func(t *testing.T) {
		origLLGoRoot := os.Getenv("LLGO_ROOT")
		defer os.Setenv("LLGO_ROOT", origLLGoRoot)

		os.Setenv("LLGO_ROOT", "/nonexistent/path")
		wd, err := os.Getwd()
		if err != nil {
			t.Fatal(err)
		}
		rootDir := filepath.Join(wd, "../../..")
		if got := LLGoROOT(); got != rootDir {
			t.Errorf("LLGoROOT() = %v, want %v", got, rootDir)
		}
	})

	// Test with empty LLGO_ROOT environment variable
	t.Run("with empty LLGO_ROOT env", func(t *testing.T) {
		origLLGoRoot := os.Getenv("LLGO_ROOT")
		defer os.Setenv("LLGO_ROOT", origLLGoRoot)

		os.Setenv("LLGO_ROOT", "")
		// Result depends on executable path, just ensure it doesn't panic
		LLGoROOT()
	})
}

func TestIsLLGoRoot(t *testing.T) {
	// Test with empty root
	t.Run("empty root", func(t *testing.T) {
		if root, ok := isLLGoRoot(""); ok {
			t.Errorf("isLLGoRoot('') = %v, %v, want '', false", root, ok)
		}
	})

	// Test with invalid path
	t.Run("invalid path", func(t *testing.T) {
		if root, ok := isLLGoRoot(string([]byte{0})); ok {
			t.Errorf("isLLGoRoot(invalid) = %v, %v, want '', false", root, ok)
		}
	})

	// Test with non-existent path
	t.Run("non-existent path", func(t *testing.T) {
		if root, ok := isLLGoRoot("/nonexistent/path"); ok {
			t.Errorf("isLLGoRoot(nonexistent) = %v, %v, want '', false", root, ok)
		}
	})

	// Test with valid path but invalid go.mod
	t.Run("invalid go.mod", func(t *testing.T) {
		tmpDir := t.TempDir()
		runtimeDir := filepath.Join(tmpDir, "runtime")
		os.MkdirAll(runtimeDir, 0755)
		goModContent := []byte("module wrong/module/name\n")
		if err := os.WriteFile(filepath.Join(runtimeDir, "go.mod"), goModContent, 0644); err != nil {
			t.Fatal(err)
		}

		if root, ok := isLLGoRoot(tmpDir); ok {
			t.Errorf("isLLGoRoot(invalid_mod) = %v, %v, want '', false", root, ok)
		}
	})

	// Test with valid path and valid go.mod
	t.Run("valid path and go.mod", func(t *testing.T) {
		tmpDir := t.TempDir()
		runtimeDir := filepath.Join(tmpDir, "runtime")
		os.MkdirAll(runtimeDir, 0755)
		goModContent := []byte("module github.com/goplus/llgo/runtime\n")
		if err := os.WriteFile(filepath.Join(runtimeDir, "go.mod"), goModContent, 0644); err != nil {
			t.Fatal(err)
		}

		absPath, _ := filepath.Abs(tmpDir)
		if root, ok := isLLGoRoot(tmpDir); !ok || root != absPath {
			t.Errorf("isLLGoRoot(valid) = %v, %v, want %v, true", root, ok, absPath)
		}
	})
}
