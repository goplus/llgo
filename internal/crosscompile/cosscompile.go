package crosscompile

import (
	"errors"
	"io/fs"
	"os"
	"path/filepath"
	"runtime"

	"github.com/goplus/llgo/internal/env"
	"github.com/goplus/llgo/internal/xtool/llvm"
)

type Export struct {
	CCFLAGS []string
	CFLAGS  []string
	LDFLAGS []string
}

const wasiSdkUrl = "https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-25/wasi-sdk-25.0-x86_64-macos.tar.gz"

func cacheDir() string {
	return filepath.Join(env.LLGoCacheDir(), "crosscompile")
}

func UseCrossCompileSDK(goos, goarch string, wasiThreads bool) (export Export, err error) {
	if runtime.GOOS == goos && runtime.GOARCH == goarch {
		// not cross compile
		return
	}
	if goarch == "wasm" {
		sdkDir := filepath.Join(cacheDir(), llvm.GetTargetTriple(goos, goarch))
		if _, err = os.Stat(sdkDir); err != nil {
			if !errors.Is(err, fs.ErrNotExist) {
				return
			}
			if err = downloadAndExtract(wasiSdkUrl, sdkDir); err != nil {
				return
			}
		}
		triple := "wasm32-wasip1"
		if wasiThreads {
			triple = "wasm32-wasip1-threads"
		}
		// Set up flags for the SDK
		wasiSdkRoot := filepath.Join(sdkDir, "wasi-sdk-25.0-x86_64-macos")
		sysrootDir := filepath.Join(wasiSdkRoot, "share", "wasi-sysroot")
		libclangDir := filepath.Join(wasiSdkRoot, "lib", "clang", "19")
		includeDir := filepath.Join(sysrootDir, "include", triple)
		libDir := filepath.Join(sysrootDir, "lib", triple)

		export.CCFLAGS = []string{
			"--sysroot=" + sysrootDir,
			"-resource-dir=" + libclangDir,
		}
		export.CFLAGS = []string{
			"-I" + includeDir,
		}
		export.LDFLAGS = []string{
			"-L" + libDir,
		}
		return
	}
	// TODO(lijie): supports other platforms
	return
}
