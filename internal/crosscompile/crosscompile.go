package crosscompile

import (
	"errors"
	"fmt"
	"io/fs"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"strings"

	"github.com/goplus/llgo/internal/env"
	"github.com/goplus/llgo/internal/targets"
	"github.com/goplus/llgo/internal/xtool/llvm"
)

type Export struct {
	CC         string // Compiler to use
	CCFLAGS    []string
	CFLAGS     []string
	LDFLAGS    []string
	EXTRAFLAGS []string

	// Additional fields from target configuration
	LLVMTarget   string
	CPU          string
	Features     string
	BuildTags    []string
	GOOS         string
	GOARCH       string
	Linker       string // Linker to use (e.g., "ld.lld", "avr-ld")
	ClangRoot    string // Root directory of custom clang installation
	ClangBinPath string // Path to clang binary directory
}

const wasiSdkUrl = "https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-25/wasi-sdk-25.0-x86_64-macos.tar.gz"

const (
	espClangBaseUrl = "https://github.com/goplus/espressif-llvm-project-prebuilt/releases/download/19.1.2_20250805"
	espClangVersion = "19.1.2_20250805"
)

func cacheDir() string {
	return filepath.Join(env.LLGoCacheDir(), "crosscompile")
}

// getMacOSSysroot returns the macOS SDK path using xcrun
func getMacOSSysroot() (string, error) {
	cmd := exec.Command("xcrun", "--sdk", "macosx", "--show-sdk-path")
	output, err := cmd.Output()
	if err != nil {
		return "", err
	}
	return strings.TrimSpace(string(output)), nil
}

// getESPClangRoot returns the ESP Clang root directory, checking LLGoROOT first,
// then downloading if needed and platform is supported
func getESPClangRoot() (clangRoot string, err error) {
	llgoRoot := env.LLGoROOT()

	// First check if clang exists in LLGoROOT
	espClangRoot := filepath.Join(llgoRoot, "crosscompile", "clang")
	if _, err = os.Stat(espClangRoot); err == nil {
		clangRoot = espClangRoot
		return
	}

	// Try to download ESP Clang if platform is supported
	platformSuffix := getESPClangPlatform(runtime.GOOS, runtime.GOARCH)
	if platformSuffix != "" {
		cacheClangDir := filepath.Join(env.LLGoCacheDir(), "crosscompile", "clang-"+espClangVersion)
		if _, err = os.Stat(cacheClangDir); err != nil {
			if !errors.Is(err, fs.ErrNotExist) {
				return
			}
			if err = downloadAndExtractESPClang(platformSuffix, cacheClangDir); err != nil {
				return
			}
		}
		clangRoot = cacheClangDir
		return
	}

	err = fmt.Errorf("ESP Clang not found in LLGoROOT and platform %s/%s is not supported for download", runtime.GOOS, runtime.GOARCH)
	return
}

// getESPClangPlatform returns the platform suffix for ESP Clang downloads
func getESPClangPlatform(goos, goarch string) string {
	switch goos {
	case "darwin":
		switch goarch {
		case "amd64":
			return "x86_64-apple-darwin"
		case "arm64":
			return "aarch64-apple-darwin"
		}
	case "linux":
		switch goarch {
		case "amd64":
			return "x86_64-linux-gnu"
		case "arm64":
			return "aarch64-linux-gnu"
		case "arm":
			return "arm-linux-gnueabihf"
		}
	case "windows":
		switch goarch {
		case "amd64":
			return "x86_64-w64-mingw32"
		}
	}
	return ""
}

func use(goos, goarch string, wasiThreads bool) (export Export, err error) {
	targetTriple := llvm.GetTargetTriple(goos, goarch)
	llgoRoot := env.LLGoROOT()

	if runtime.GOOS == goos && runtime.GOARCH == goarch {
		// not cross compile
		// Set up basic flags for non-cross-compile
		export.LDFLAGS = []string{
			"-target", targetTriple,
			"-Wno-override-module",
			"-Wl,--error-limit=0",
			"-fuse-ld=lld",
		}

		// Add sysroot for macOS only
		if goos == "darwin" {
			sysrootPath, sysrootErr := getMacOSSysroot()
			if sysrootErr != nil {
				err = fmt.Errorf("failed to get macOS SDK path: %w", sysrootErr)
				return
			}
			export.LDFLAGS = append([]string{"--sysroot=" + sysrootPath}, export.LDFLAGS...)
		}

		// Add OS-specific flags
		switch goos {
		case "darwin": // ld64.lld (macOS)
			export.LDFLAGS = append(
				export.LDFLAGS,
				"-Xlinker", "-dead_strip",
			)
		case "windows": // lld-link (Windows)
			// TODO(lijie): Add options for Windows.
		default: // ld.lld (Unix)
			export.CCFLAGS = append(
				export.CCFLAGS,
				"-fdata-sections",
				"-ffunction-sections",
			)
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
		// Set wasiSdkRoot path
		wasiSdkRoot := filepath.Join(llgoRoot, "crosscompile", "wasi-libc")

		// If not exists in LLGoROOT, download and use cached wasiSdkRoot
		if _, err = os.Stat(wasiSdkRoot); err != nil {
			sdkDir := filepath.Join(cacheDir(), llvm.GetTargetTriple(goos, goarch))
			if _, err = os.Stat(sdkDir); err != nil {
				if !errors.Is(err, fs.ErrNotExist) {
					return
				}

				if wasiSdkRoot, err = downloadAndExtract(wasiSdkUrl, sdkDir); err != nil {
					return
				}
			}
		}
		// WASI-SDK configuration
		triple := "wasm32-wasip1"
		if wasiThreads {
			triple = "wasm32-wasip1-threads"
		}

		// Set up flags for the WASI-SDK or wasi-libc
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
			"-matomics",
			"-mbulk-memory",
		}
		export.CFLAGS = []string{
			"-I" + includeDir,
		}
		// Add WebAssembly linker flags
		export.LDFLAGS = append(export.LDFLAGS, export.CCFLAGS...)
		export.LDFLAGS = append(export.LDFLAGS, []string{
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
		}...)
		// Add thread support if enabled
		if wasiThreads {
			export.CCFLAGS = append(
				export.CCFLAGS,
				"-pthread",
			)
			export.LDFLAGS = append(export.LDFLAGS, export.CCFLAGS...)
			export.LDFLAGS = append(
				export.LDFLAGS,
				"-lwasi-emulated-pthread",
				"-lpthread",
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

// useTarget loads configuration from a target name (e.g., "rp2040", "wasi")
func useTarget(targetName string) (export Export, err error) {
	resolver := targets.NewDefaultResolver()

	config, err := resolver.Resolve(targetName)
	if err != nil {
		return export, fmt.Errorf("failed to resolve target %s: %w", targetName, err)
	}

	// Check for ESP Clang support for target-based builds
	clangRoot, err := getESPClangRoot()
	if err != nil {
		return
	}

	// Set ClangRoot and CC if clang is available
	export.ClangRoot = clangRoot
	export.CC = filepath.Join(clangRoot, "bin", "clang")

	// Convert target config to Export - only export necessary fields
	export.BuildTags = config.BuildTags
	export.GOOS = config.GOOS
	export.GOARCH = config.GOARCH

	// Convert LLVMTarget, CPU, Features to CCFLAGS/LDFLAGS
	var ccflags []string
	var ldflags []string

	target := config.LLVMTarget
	if target == "" {
		target = llvm.GetTargetTriple(config.GOOS, config.GOARCH)
	}

	ccflags = append(ccflags, "-Wno-override-module", "--target="+config.LLVMTarget)

	// Inspired by tinygo
	cpu := config.CPU
	if cpu != "" {
		if strings.HasPrefix(target, "i386") || strings.HasPrefix(target, "x86_64") {
			ccflags = append(ccflags, "-march="+cpu)
		} else if strings.HasPrefix(target, "avr") {
			ccflags = append(ccflags, "-mmcu="+cpu)
		} else {
			ccflags = append(ccflags, "-mcpu="+cpu)
		}
		// Only add -mllvm flags for non-WebAssembly linkers
		if config.Linker == "ld.lld" {
			ldflags = append(ldflags, "-mllvm", "-mcpu="+cpu)
		}
	}

	// Handle Features
	if config.Features != "" {
		// Only add -mllvm flags for non-WebAssembly linkers
		if config.Linker == "ld.lld" {
			ldflags = append(ldflags, "-mllvm", "-mattr="+config.Features)
		}
	}

	// Handle Linker - keep it for external usage
	export.Linker = config.Linker

	// Combine with config flags
	export.CFLAGS = config.CFlags
	export.CCFLAGS = ccflags
	export.LDFLAGS = append(ldflags, filterCompatibleLDFlags(config.LDFlags)...)
	export.EXTRAFLAGS = []string{}

	return export, nil
}

// Use extends the original Use function to support target-based configuration
// If targetName is provided, it takes precedence over goos/goarch
func Use(goos, goarch string, wasiThreads bool, targetName string) (export Export, err error) {
	if targetName != "" {
		return useTarget(targetName)
	}
	return use(goos, goarch, wasiThreads)
}

// filterCompatibleLDFlags filters out linker flags that are incompatible with clang/lld
func filterCompatibleLDFlags(ldflags []string) []string {
	if len(ldflags) == 0 {
		return ldflags
	}

	var filtered []string

	incompatiblePrefixes := []string{
		"--defsym=", // Use -Wl,--defsym= instead
		"-T",        // Linker script, needs special handling
	}

	i := 0
	for i < len(ldflags) {
		flag := ldflags[i]

		// Check incompatible prefixes
		skip := false
		for _, prefix := range incompatiblePrefixes {
			if strings.HasPrefix(flag, prefix) {
				skip = true
				break
			}
		}
		if skip {
			// Skip -T and its argument if separate
			if flag == "-T" && i+1 < len(ldflags) {
				i += 2 // Skip both -T and the script path
			} else {
				i++
			}
			continue
		}
		filtered = append(filtered, flag)
		i++
	}

	return filtered
}
