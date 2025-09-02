//go:build !llgo

package crosscompile

import (
	"path/filepath"
	"slices"
	"testing"
)

func TestGetLibcCompileConfigByName(t *testing.T) {
	baseDir := "/test/base"
	target := "armv7"
	mcpu := "cortex-m4"

	t.Run("EmptyName", func(t *testing.T) {
		_, err := getLibcCompileConfigByName(baseDir, "", target, mcpu)
		if err == nil || err.Error() != "libc name cannot be empty" {
			t.Errorf("Expected empty name error, got: %v", err)
		}
	})

	t.Run("UnsupportedLibc", func(t *testing.T) {
		_, err := getLibcCompileConfigByName(baseDir, "invalid", target, mcpu)
		if err == nil || err.Error() != "unsupported libc: invalid" {
			t.Errorf("Expected unsupported libc error, got: %v", err)
		}
	})

	t.Run("Picolibc", func(t *testing.T) {
		cfg, err := getLibcCompileConfigByName(baseDir, "picolibc", target, mcpu)
		if err != nil {
			t.Fatalf("Unexpected error: %v", err)
		}

		if len(cfg.Groups) != 1 {
			t.Fatalf("Expected 1 group, got %d", len(cfg.Groups))
		}
		group := cfg.Groups[0]

		expectedFile := filepath.Join(baseDir, "picolibc", "newlib", "libc", "string", "memmem.c")
		if !slices.Contains(group.Files, expectedFile) {
			t.Errorf("Expected files [%s], got: %v", expectedFile, group.Files)
		}

		expectedFlag := "-I" + filepath.Join("/test", "base", "picolibc")
		if !slices.Contains(group.CFlags, expectedFlag) {
			t.Errorf("Expected flags [%s], got: %v", expectedFlag, group.CFlags)
		}
	})

	t.Run("NewlibESP32", func(t *testing.T) {
		cfg, err := getLibcCompileConfigByName(baseDir, "newlib-esp32", target, mcpu)
		if err != nil {
			t.Fatalf("Unexpected error: %v", err)
		}

		if len(cfg.Groups) != 3 {
			t.Fatalf("Expected 3 group, got %d", len(cfg.Groups))
		}
		group := cfg.Groups[0]

		expectedFile := filepath.Join(baseDir, "newlib-esp32", "libgloss", "xtensa", "crt1-boards.S")
		if !slices.Contains(group.Files, expectedFile) {
			t.Errorf("Expected files [%s], got: %v", expectedFile, group.Files)
		}

		expectedFlags := "-I" + filepath.Join(baseDir, "newlib-esp32", "libgloss")
		if !slices.Contains(group.CFlags, expectedFlags) {
			t.Errorf("Expected flags %v, got: %v", expectedFlags, group.CFlags)
		}
	})
}

func TestGetRTCompileConfigByName(t *testing.T) {
	baseDir := "/test/base"
	target := "wasm32"

	t.Run("EmptyName", func(t *testing.T) {
		_, err := getRTCompileConfigByName(baseDir, "", target)
		if err == nil || err.Error() != "rt name cannot be empty" {
			t.Errorf("Expected empty name error, got: %v", err)
		}
	})

	t.Run("UnsupportedRT", func(t *testing.T) {
		_, err := getRTCompileConfigByName(baseDir, "invalid", target)
		if err == nil || err.Error() != "unsupported rt: invalid" {
			t.Errorf("Expected unsupported rt error, got: %v", err)
		}
	})

	t.Run("CompilerRT", func(t *testing.T) {
		cfg, err := getRTCompileConfigByName(baseDir, "compiler-rt", target)
		if err != nil {
			t.Fatalf("Unexpected error: %v", err)
		}

		if len(cfg.Groups) != 1 {
			t.Fatalf("Expected 1 group, got %d", len(cfg.Groups))
		}
		group := cfg.Groups[0]

		expectedFile := filepath.Join(baseDir, "compiler-rt", "lib", "builtins", "absvdi2.c")
		if !slices.Contains(group.Files, expectedFile) {
			t.Errorf("Expected files [%s], got: %v", expectedFile, group.Files)
		}
	})
}
