package crosscompile

import (
	"fmt"
	"path/filepath"

	"github.com/goplus/llgo/internal/crosscompile/compile"
	"github.com/goplus/llgo/internal/crosscompile/compile/libc"
	"github.com/goplus/llgo/internal/crosscompile/compile/rtlib"
)

// GetCompileConfigByName retrieves libc compilation configuration by name
// Returns compilation file lists and corresponding cflags
func getLibcCompileConfigByName(baseDir, libcName string) (*compile.CompileConfig, error) {
	if libcName == "" {
		return nil, fmt.Errorf("libc name cannot be empty")
	}
	libcDir := filepath.Join(baseDir, libcName)

	switch libcName {
	case "picolibc":
		return libc.GetPicolibcConfig(libcDir), nil
	case "newlib-esp32":
		return libc.GetNewlibESP32Config(libcDir, "xtensa"), nil
	default:
		return nil, fmt.Errorf("unsupported libc: %s", libcName)
	}
}

func getRTCompileConfigByName(baseDir, rtName string) (*compile.CompileConfig, error) {
	if rtName == "" {
		return nil, fmt.Errorf("rt name cannot be empty")
	}
	rtDir := filepath.Join(baseDir, rtName)

	switch rtName {
	case "compiler-rt":
		return rtlib.GetCompilerRTConfig(rtDir, "xtensa"), nil
	default:
		return nil, fmt.Errorf("unsupported rt: %s", rtName)
	}
}
