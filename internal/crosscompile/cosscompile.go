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
	CC         string // Compiler to use
	CCFLAGS    []string
	CFLAGS     []string
	LDFLAGS    []string
	EXTRAFLAGS []string
}

const wasiSdkUrl = "https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-25/wasi-sdk-25.0-x86_64-macos.tar.gz"

func cacheDir() string {
	return filepath.Join(env.LLGoCacheDir(), "crosscompile")
}

func Use(goos, goarch string, wasiThreads, changeRpath bool) (export Export, err error) {
	targetTriple := llvm.GetTargetTriple(goos, goarch)

	if runtime.GOOS == goos && runtime.GOARCH == goarch {
		// not cross compile
		// Set up basic flags for non-cross-compile
		export.LDFLAGS = []string{
			"-target", targetTriple,
			"-Wno-override-module",
			"-Wl,--error-limit=0",
			"-fuse-ld=lld",
			"-Wno-override-module",
		}

		// Add OS-specific flags
		switch goos {
		case "darwin": // ld64.lld (macOS)
			if changeRpath {
				export.LDFLAGS = append(
					export.LDFLAGS,
					"-rpath", "@loader_path",
					"-rpath", "@loader_path/../lib",
				)
			}
			export.LDFLAGS = append(
				export.LDFLAGS,
				"-Xlinker", "-dead_strip",
			)
		case "windows": // lld-link (Windows)
			// TODO(lijie): Add options for Windows.
		default: // ld.lld (Unix)
			export.LDFLAGS = append(
				export.LDFLAGS,
				"-fdata-sections",
				"-ffunction-sections",
				"-Xlinker",
				"--gc-sections",
				"-lm",
				"-latomic",
				"-lpthread", // libpthread is built-in since glibc 2.34 (2021-08-01); we need to support earlier versions.
			)
		}
		return
	}
	if goarch != "wasm" {
		return
	}

	// Configure based on GOOS
	switch goos {
	case "wasip1":
		sdkDir := filepath.Join(cacheDir(), llvm.GetTargetTriple(goos, goarch))
		if _, err = os.Stat(sdkDir); err != nil {
			if !errors.Is(err, fs.ErrNotExist) {
				return
			}

			if err = downloadAndExtract(wasiSdkUrl, sdkDir); err != nil {
				return
			}
		}
		// WASI-SDK configuration
		triple := "wasm32-wasip1"
		if wasiThreads {
			triple = "wasm32-wasip1-threads"
		}

		// Set up flags for the WASI-SDK
		wasiSdkRoot := filepath.Join(sdkDir, "wasi-sdk-25.0-x86_64-macos")
		sysrootDir := filepath.Join(wasiSdkRoot, "share", "wasi-sysroot")
		libclangDir := filepath.Join(wasiSdkRoot, "lib", "clang", "19")
		includeDir := filepath.Join(sysrootDir, "include", triple)
		libDir := filepath.Join(sysrootDir, "lib", triple)

		// Use system clang and sysroot of wasi-sdk
		// Add compiler flags
		export.CCFLAGS = []string{
			"-target", targetTriple,
			"--sysroot=" + sysrootDir,
			"-resource-dir=" + libclangDir,
		}
		export.CFLAGS = []string{
			"-I" + includeDir,
		}
		// Add WebAssembly linker flags
		export.LDFLAGS = []string{
			"-target", targetTriple,
			"-Wno-override-module",
			"-Wl,--error-limit=0",
			"-L" + libDir,
			"-Wl,--allow-undefined",
			"-Wl,--import-memory,", // unknown import: `env::memory` has not been defined
			"-Wl,--export-memory",
			"-Wl,--initial-memory=67108864", // 64MB
			"-mbulk-memory",
			"-mmultimemory",
			"-z", "stack-size=10485760", // 10MB
			"-Wl,--export=malloc", "-Wl,--export=free",
			"-lc",
			"-lcrypt",
			"-lm",
			"-lrt",
			"-lutil",
			"-lsetjmp",
			"-lwasi-emulated-mman",
			"-lwasi-emulated-getpid",
			"-lwasi-emulated-process-clocks",
			"-lwasi-emulated-signal",
			"-fwasm-exceptions",
			"-mllvm", "-wasm-enable-sjlj",
		}
		// Add thread support if enabled
		if wasiThreads {
			export.LDFLAGS = append(
				export.LDFLAGS,
				"-lwasi-emulated-pthread",
				"-lpthread",
				"-pthread", // global is immutable if -pthread is not specified
			)
		}

	case "js":
		targetTriple := "wasm32-unknown-emscripten"
		// Emscripten configuration using system installation
		// Specify emcc as the compiler
		export.CC = "emcc"
		// Add compiler flags
		export.CCFLAGS = []string{
			"-target", targetTriple,
		}
		export.CFLAGS = []string{}
		// Add WebAssembly linker flags for Emscripten
		export.LDFLAGS = []string{
			"-target", targetTriple,
			"-Wno-override-module",
			"-Wl,--error-limit=0",
			"-s", "ALLOW_MEMORY_GROWTH=1",
			"-Wl,--allow-undefined",
			// "-Wl,--import-memory,",
			// "-Wl,--export-memory",
			// "-Wl,--initial-memory=67108864", // 64MB
			// "-mbulk-memory",
			// "-mmultimemory",
			// "-z", "stack-size=10485760", // 10MB
			// "-Wl,--export=malloc", "-Wl,--export=free",
		}
		export.EXTRAFLAGS = []string{
			"-sENVIRONMENT=web,worker",
			"-DPLATFORM_WEB",
			"-sEXPORT_KEEPALIVE=1",
			"-sEXPORT_ES6=1",
			"-sALLOW_MEMORY_GROWTH=1",
			"-sRESERVED_FUNCTION_POINTERS=1",
			"-sEXPORTED_RUNTIME_METHODS=cwrap,allocateUTF8,stringToUTF8,UTF8ToString,FS,setValue,getValue",
			"-sWASM=1",
			"-sEXPORT_ALL=1",
			"-sASYNCIFY=1",
			"-sSTACK_SIZE=5242880", // 50MB
		}

	default:
		err = errors.New("unsupported GOOS for WebAssembly: " + goos)
		return
	}
	return
}
