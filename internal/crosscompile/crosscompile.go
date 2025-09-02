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

	"github.com/goplus/llgo/internal/crosscompile/compile"
	"github.com/goplus/llgo/internal/env"
	"github.com/goplus/llgo/internal/targets"
	"github.com/goplus/llgo/internal/xtool/llvm"
)

type Export struct {
	CC      string // Compiler to use
	CCFLAGS []string
	CFLAGS  []string
	LDFLAGS []string

	// Additional fields from target configuration
	BuildTags    []string
	GOOS         string
	GOARCH       string
	Libc         string
	Linker       string   // Linker to use (e.g., "ld.lld", "avr-ld")
	ExtraFiles   []string // Extra files to compile and link (e.g., .s, .c files)
	ClangRoot    string   // Root directory of custom clang installation
	ClangBinPath string   // Path to clang binary directory

	BinaryFormat string // Binary format (e.g., "elf", "esp", "uf2")
	FormatDetail string // For uf2, it's uf2FamilyID
}

// URLs and configuration that can be overridden for testing
var (
	wasiSdkUrl      = "https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-25/wasi-sdk-25.0-x86_64-macos.tar.gz"
	wasiMacosSubdir = "wasi-sdk-25.0-x86_64-macos"
)

var (
	espClangBaseUrl = "https://github.com/goplus/espressif-llvm-project-prebuilt/releases/download/19.1.2_20250820"
	espClangVersion = "19.1.2_20250820"
)

// cacheRoot can be overridden for testing
var cacheRoot = env.LLGoCacheDir

func cacheDir() string {
	return filepath.Join(cacheRoot(), "crosscompile")
}

// expandEnv expands template variables in a string
// Supports variables like {port}, {hex}, {bin}, {root}, {tmpDir}, etc.
// Special case: {} expands to the first available file variable (hex, bin, img, zip)
func expandEnv(template string, envs map[string]string) string {
	return expandEnvWithDefault(template, envs)
}

// expandEnvWithDefault expands template variables with optional default for {}
func expandEnvWithDefault(template string, envs map[string]string, defaultValue ...string) string {
	if template == "" {
		return ""
	}

	result := template

	// Handle special case of {} - use provided default or first available file variable
	if strings.Contains(result, "{}") {
		defaultVal := ""
		if len(defaultValue) > 0 && defaultValue[0] != "" {
			defaultVal = defaultValue[0]
		} else {
			// Priority order: hex, bin, img, zip
			for _, key := range []string{"hex", "bin", "img", "zip"} {
				if value, exists := envs[key]; exists && value != "" {
					defaultVal = value
					break
				}
			}
		}
		result = strings.ReplaceAll(result, "{}", defaultVal)
	}

	// Replace named variables
	for key, value := range envs {
		if key != "" { // Skip empty key used for {} default
			result = strings.ReplaceAll(result, "{"+key+"}", value)
		}
	}
	return result
}

// expandEnvSlice expands template variables in a slice of strings
func expandEnvSlice(templates []string, envs map[string]string) []string {
	return expandEnvSliceWithDefault(templates, envs)
}

// expandEnvSliceWithDefault expands template variables in a slice with optional default for {}
func expandEnvSliceWithDefault(templates []string, envs map[string]string, defaultValue ...string) []string {
	if len(templates) == 0 {
		return templates
	}

	result := make([]string, len(templates))
	for i, template := range templates {
		result[i] = expandEnvWithDefault(template, envs, defaultValue...)
	}
	return result
}

// buildEnvMap creates a map of template variables for the current context
func buildEnvMap(llgoRoot string) map[string]string {
	envs := make(map[string]string)

	// Basic paths
	envs["root"] = llgoRoot
	envs["tmpDir"] = os.TempDir()

	// These will typically be set by calling code when actual values are known
	// envs["port"] = ""     // Serial port (e.g., "/dev/ttyUSB0", "COM3")
	// envs["hex"] = ""      // Path to hex file
	// envs["bin"] = ""      // Path to binary file
	// envs["img"] = ""      // Path to image file
	// envs["zip"] = ""      // Path to zip file

	return envs
}

// getCanonicalArchName returns the canonical architecture name for a target triple
func getCanonicalArchName(triple string) string {
	arch := strings.Split(triple, "-")[0]
	if arch == "arm64" {
		return "aarch64"
	}
	if strings.HasPrefix(arch, "arm") || strings.HasPrefix(arch, "thumb") {
		return "arm"
	}
	if arch == "mipsel" {
		return "mips"
	}
	return arch
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
		cacheClangDir := filepath.Join(cacheRoot(), "crosscompile", "esp-clang-"+espClangVersion)
		if _, err = os.Stat(cacheClangDir); err != nil {
			if !errors.Is(err, fs.ErrNotExist) {
				return
			}
			fmt.Fprintln(os.Stderr, "ESP Clang not found in LLGO_ROOT or cache, will download.")
			if err = checkDownloadAndExtractESPClang(platformSuffix, cacheClangDir); err != nil {
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

func ldFlagsFromFileName(fileName string) string {
	return strings.TrimPrefix(strings.TrimSuffix(fileName, ".a"), "lib")
}

func getOrCompileWithConfig(
	compileConfig *compile.CompileConfig,
	outputDir string, options compile.CompileOptions,
) (ldflags []string, err error) {
	if err = checkDownloadAndExtractLib(
		compileConfig.Url, outputDir,
		compileConfig.ArchiveSrcDir,
	); err != nil {
		return
	}
	ldflags = append(ldflags, "-nostdlib", "-L"+outputDir)

	for _, group := range compileConfig.Groups {
		err = group.Compile(outputDir, options)
		if err != nil {
			break
		}
		if filepath.Ext(group.OutputFileName) == ".o" {
			continue
		}
		ldflags = append(ldflags, "-l"+ldFlagsFromFileName(group.OutputFileName))
	}
	return
}

func use(goos, goarch string, wasiThreads bool) (export Export, err error) {
	targetTriple := llvm.GetTargetTriple(goos, goarch)
	llgoRoot := env.LLGoROOT()

	// Check for ESP Clang support for target-based builds
	clangRoot, err := getESPClangRoot()
	if err != nil {
		return
	}

	// Set ClangRoot and CC if clang is available
	export.ClangRoot = clangRoot
	export.CC = filepath.Join(clangRoot, "bin", "clang++")

	if runtime.GOOS == goos && runtime.GOARCH == goarch {
		clangLib := filepath.Join(clangRoot, "lib")
		clangInc := filepath.Join(clangRoot, "include")
		// not cross compile
		// Set up basic flags for non-cross-compile
		export.LDFLAGS = []string{
			"-L" + clangLib,
			"-target", targetTriple,
			"-Qunused-arguments",
			"-Wno-unused-command-line-argument",
			"-Wl,--error-limit=0",
			"-fuse-ld=lld",
		}
		export.CFLAGS = append(export.CFLAGS, "-I"+clangInc)
		export.CCFLAGS = []string{
			"-Qunused-arguments",
			"-Wno-unused-command-line-argument",
		}

		// Add platform-specific rpath flags
		switch goos {
		case "darwin":
			export.LDFLAGS = append(export.LDFLAGS, "-Wl,-rpath,"+clangLib)
		case "linux":
			export.LDFLAGS = append(export.LDFLAGS, "-Wl,-rpath,"+clangLib)
		case "windows":
			// Windows doesn't support rpath, DLLs should be in PATH or same directory
		default:
			// For other Unix-like systems, try the generic rpath
			export.LDFLAGS = append(export.LDFLAGS, "-Wl,-rpath,"+clangLib)
		}

		// Add sysroot for macOS only
		if goos == "darwin" {
			sysrootPath, sysrootErr := getMacOSSysroot()
			if sysrootErr != nil {
				err = fmt.Errorf("failed to get macOS SDK path: %w", sysrootErr)
				return
			}
			export.CCFLAGS = append(export.CCFLAGS, []string{"--sysroot=" + sysrootPath}...)
			export.LDFLAGS = append(export.LDFLAGS, []string{"--sysroot=" + sysrootPath}...)
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
			if wasiSdkRoot, err = checkDownloadAndExtractWasiSDK(sdkDir); err != nil {
				return
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
			"-Qunused-arguments",
			"-Wno-unused-command-line-argument",
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
			"-Qunused-arguments",
			"-Wno-unused-command-line-argument",
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
		export.LDFLAGS = append(export.LDFLAGS, []string{
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
		}...)

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

	target := config.LLVMTarget
	if target == "" {
		return export, fmt.Errorf("target '%s' does not have a valid LLVM target triple", targetName)
	}

	cpu := config.CPU
	if cpu == "" {
		return export, fmt.Errorf("target '%s' does not have a valid CPU configuration", targetName)
	}

	// Check for ESP Clang support for target-based builds
	clangRoot, err := getESPClangRoot()
	if err != nil {
		return
	}

	// Set ClangRoot and CC if clang is available
	export.ClangRoot = clangRoot
	export.CC = filepath.Join(clangRoot, "bin", "clang++")

	// Convert target config to Export - only export necessary fields
	export.BuildTags = config.BuildTags
	export.GOOS = config.GOOS
	export.GOARCH = config.GOARCH
	export.ExtraFiles = config.ExtraFiles
	export.BinaryFormat = config.BinaryFormat
	export.FormatDetail = config.FormatDetail()

	// Build environment map for template variable expansion
	envs := buildEnvMap(env.LLGoROOT())

	// Convert LLVMTarget, CPU, Features to CCFLAGS/LDFLAGS
	var ccflags []string
	var ldflags []string

	cflags := []string{"-Wno-override-module", "-Qunused-arguments", "-Wno-unused-command-line-argument"}
	if config.LLVMTarget != "" {
		cflags = append(cflags, "--target="+config.LLVMTarget)
		ccflags = append(ccflags, "--target="+config.LLVMTarget)
	}
	// Expand template variables in cflags
	expandedCFlags := expandEnvSlice(config.CFlags, envs)
	cflags = append(cflags, expandedCFlags...)

	// The following parameters are inspired by tinygo/builder/library.go
	// Handle CPU configuration
	if cpu != "" {
		// X86 has deprecated the -mcpu flag, so we need to use -march instead.
		// However, ARM has not done this.
		if strings.HasPrefix(target, "i386") || strings.HasPrefix(target, "x86_64") {
			ccflags = append(ccflags, "-march="+cpu)
		} else if strings.HasPrefix(target, "avr") {
			ccflags = append(ccflags, "-mmcu="+cpu)
		} else {
			ccflags = append(ccflags, "-mcpu="+cpu)
		}

		// For ld.lld linker, also add CPU info to linker flags
		if config.Linker == "ld.lld" {
			ldflags = append(ldflags, "-mllvm", "-mcpu="+cpu)
		}
	}

	// Handle architecture-specific flags
	canonicalArch := getCanonicalArchName(target)
	switch canonicalArch {
	case "arm":
		if strings.Split(target, "-")[2] == "linux" {
			ccflags = append(ccflags, "-fno-unwind-tables", "-fno-asynchronous-unwind-tables")
		} else {
			ccflags = append(ccflags, "-fshort-enums", "-fomit-frame-pointer", "-mfloat-abi=soft", "-fno-unwind-tables", "-fno-asynchronous-unwind-tables")
		}
	case "avr":
		// AVR defaults to C float and double both being 32-bit. This deviates
		// from what most code (and certainly compiler-rt) expects. So we need
		// to force the compiler to use 64-bit floating point numbers for
		// double.
		ccflags = append(ccflags, "-mdouble=64")
	case "riscv32":
		ccflags = append(ccflags, "-march=rv32imac", "-fforce-enable-int128")
	case "riscv64":
		ccflags = append(ccflags, "-march=rv64gc")
	case "mips":
		ccflags = append(ccflags, "-fno-pic")
	}

	// Handle soft float
	if strings.Contains(config.Features, "soft-float") || strings.Contains(strings.Join(config.CFlags, " "), "soft-float") {
		// Use softfloat instead of floating point instructions. This is
		// supported on many architectures.
		ccflags = append(ccflags, "-msoft-float")
	} else {
		if strings.HasPrefix(target, "armv5") {
			// On ARMv5 we need to explicitly enable hardware floating point
			// instructions: Clang appears to assume the hardware doesn't have a
			// FPU otherwise.
			ccflags = append(ccflags, "-mfpu=vfpv2")
		}
	}

	// Handle Features
	if config.Features != "" {
		// Only add -mllvm flags for non-WebAssembly linkers
		if config.Linker == "ld.lld" {
			ldflags = append(ldflags, "-mllvm", "-mattr="+config.Features)
		}
	}

	// Handle code generation configuration
	if config.CodeModel != "" {
		ccflags = append(ccflags, "-mcmodel="+config.CodeModel)
	}
	if config.TargetABI != "" {
		ccflags = append(ccflags, "-mabi="+config.TargetABI)
	}
	if config.RelocationModel != "" {
		switch config.RelocationModel {
		case "pic":
			ccflags = append(ccflags, "-fPIC")
		case "static":
			ccflags = append(ccflags, "-fno-pic")
		}
	}

	// Handle Linker - keep it for external usage
	if config.Linker != "" {
		export.Linker = filepath.Join(clangRoot, "bin", config.Linker)
	}
	if config.LinkerScript != "" {
		ldflags = append(ldflags, "-T", config.LinkerScript)
	}
	ldflags = append(ldflags, "-L", env.LLGoROOT()) // search targets/*.ld

	var libcIncludeDir []string

	if config.Libc != "" {
		var libcLDFlags []string
		var compileConfig *compile.CompileConfig
		baseDir := filepath.Join(cacheRoot(), "crosscompile")
		outputDir := filepath.Join(baseDir, config.Libc)

		compileConfig, err = getLibcCompileConfigByName(baseDir, config.Libc, config.LLVMTarget, config.CPU)
		if err != nil {
			return
		}
		libcLDFlags, err = getOrCompileWithConfig(compileConfig, outputDir, compile.CompileOptions{
			CC:      export.CC,
			Linker:  export.Linker,
			CCFLAGS: ccflags,
			LDFLAGS: ldflags,
		})
		if err != nil {
			return
		}
		cflags = append(cflags, compileConfig.LibcCFlags...)
		ldflags = append(ldflags, libcLDFlags...)

		libcIncludeDir = compileConfig.LibcCFlags
		export.Libc = config.Libc
	}

	if config.RTLib != "" {
		var rtLibLDFlags []string
		var compileConfig *compile.CompileConfig
		baseDir := filepath.Join(cacheRoot(), "crosscompile")
		outputDir := filepath.Join(baseDir, config.RTLib)

		compileConfig, err = getRTCompileConfigByName(baseDir, config.RTLib, config.LLVMTarget)
		if err != nil {
			return
		}
		rtLibLDFlags, err = getOrCompileWithConfig(compileConfig, outputDir, compile.CompileOptions{
			CC:      export.CC,
			Linker:  export.Linker,
			CCFLAGS: ccflags,
			LDFLAGS: ldflags,
			CFLAGS:  libcIncludeDir,
		})
		if err != nil {
			return
		}
		ldflags = append(ldflags, rtLibLDFlags...)
	}

	// Combine with config flags and expand template variables
	export.CFLAGS = cflags
	export.CCFLAGS = ccflags
	expandedLDFlags := expandEnvSlice(config.LDFlags, envs)
	export.LDFLAGS = append(ldflags, expandedLDFlags...)

	return export, nil
}

// Use extends the original Use function to support target-based configuration
// If targetName is provided, it takes precedence over goos/goarch
func Use(goos, goarch string, wasiThreads bool, targetName string) (export Export, err error) {
	if targetName != "" && !strings.HasPrefix(targetName, "wasm") && !strings.HasPrefix(targetName, "wasi") {
		return useTarget(targetName)
	}
	return use(goos, goarch, wasiThreads)
}
