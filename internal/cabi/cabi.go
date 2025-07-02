// Package cabi provides functionality for C ABI compatibility transformations.
package cabi

import (
	"bytes"
	"errors"
	"fmt"
	"io/fs"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"sync"

	"github.com/goplus/llgo/internal/env"
	"github.com/goplus/llgo/xtool/env/llvm"
)

// TransformOptions contains options for the CABI transformation.
type TransformOptions struct {
	LargeTypeThreshold uint // Size threshold in bytes for large type transformation
	Verbose            bool // Whether to output verbose information
}

// DefaultThreshold returns the default large type threshold for the given platform.
func DefaultThreshold(goos, goarch string) uint {
	switch goos {
	case "windows":
		if goarch == "amd64" {
			return 8 // Windows x64 ABI: > 8 bytes pass by reference
		}
		return 4 // 32-bit Windows: > 4 bytes typically by reference
	case "darwin", "linux", "freebsd", "openbsd", "netbsd":
		if goarch == "amd64" {
			return 16 // System V x86_64: > 16 bytes pass by memory
		}
		if goarch == "arm64" {
			return 16 // ARM64 AAPCS: > 16 bytes pass by memory
		}
		return 8 // 32-bit: > 8 bytes pass by memory
	case "wasi", "wasip1", "js":
		return 16 // WebAssembly: similar to x86_64
	default:
		return 16 // Conservative default
	}
}

// cacheDir returns the directory where compiled pass libraries are cached.
func cacheDir() string {
	return filepath.Join(env.LLGoCacheDir(), "cabi")
}

// passDir returns the directory where the pass source code is located.
func passDir() string {
	return filepath.Join(env.LLGoROOT(), "internal", "cabi", "passes")
}

// buildDir returns the directory where the pass library will be built.
func buildDir() string {
	return filepath.Join(cacheDir(), "build")
}

// passLibPath returns the path to the compiled pass library.
func passLibPath() string {
	return filepath.Join(buildDir(), "libInPlaceCABITransformPass.so")
}

var (
	buildMutex sync.Mutex
	buildOnce  sync.Once
)

// ensurePassLibrary ensures the CABI transform pass library is built.
func ensurePassLibrary(env *llvm.Env) (string, error) {
	// Use a mutex to prevent concurrent builds
	buildMutex.Lock()
	defer buildMutex.Unlock()

	// Get the path to the pass source code
	srcPath := filepath.Join(passDir(), "InPlaceCABITransformPass.cpp")
	if _, err := os.Stat(srcPath); err != nil {
		return "", fmt.Errorf("CABI transform pass source not found at %s: %w", srcPath, err)
	}

	// Check if the library already exists and is up-to-date
	libPath := passLibPath()
	libStat, libErr := os.Stat(libPath)
	srcStat, srcErr := os.Stat(srcPath)
	
	if libErr == nil && srcErr == nil {
		// Both files exist, check if library is newer than source
		if libStat.ModTime().After(srcStat.ModTime()) {
			return libPath, nil
		}
		// Source is newer, need to rebuild
	} else if !errors.Is(libErr, fs.ErrNotExist) {
		return "", libErr
	}

	// Create build directory
	if err := os.MkdirAll(buildDir(), 0755); err != nil {
		return "", fmt.Errorf("failed to create build directory: %w", err)
	}

	// Compile the pass
	return compilePass(env, srcPath, libPath)
}

// compilePass compiles the CABI transform pass library.
func compilePass(env *llvm.Env, srcPath, libPath string) (string, error) {
	// Get clang++ path
	clangpp := filepath.Join(env.BinDir(), "clang++")

	// Get llvm-config path
	llvmConfig := filepath.Join(env.BinDir(), "llvm-config")

	// Get LLVM compilation flags using llvm-config
	cxxflags, err := exec.Command(llvmConfig, "--cxxflags").Output()
	if err != nil {
		return "", fmt.Errorf("failed to get LLVM cxxflags: %w", err)
	}

	// Get LLVM library paths and libraries using llvm-config
	ldflags, err := exec.Command(llvmConfig, "--ldflags").Output()
	if err != nil {
		return "", fmt.Errorf("failed to get LLVM ldflags: %w", err)
	}

	libs, err := exec.Command(llvmConfig, "--libs", "core", "support", "passes").Output()
	if err != nil {
		return "", fmt.Errorf("failed to get LLVM libs: %w", err)
	}

	systemLibs, err := exec.Command(llvmConfig, "--system-libs").Output()
	if err != nil {
		return "", fmt.Errorf("failed to get LLVM system libs: %w", err)
	}

	// Parse the flags
	cxxflagsStr := strings.TrimSpace(string(cxxflags))
	ldflagsStr := strings.TrimSpace(string(ldflags))
	libsStr := strings.TrimSpace(string(libs))
	systemLibsStr := strings.TrimSpace(string(systemLibs))

	// Build the compile command
	args := []string{
		"-shared",
		"-fPIC",
		"-O2",
		"-std=c++17",
	}

	// Add LLVM compilation flags
	args = append(args, strings.Fields(cxxflagsStr)...)

	// Add source and output
	args = append(args, "-o", libPath, srcPath)

	// Add LLVM linker flags and libraries
	args = append(args, strings.Fields(ldflagsStr)...)
	args = append(args, strings.Fields(libsStr)...)
	args = append(args, strings.Fields(systemLibsStr)...)

	if err := os.MkdirAll(filepath.Dir(libPath), 0755); err != nil {
		return "", fmt.Errorf("failed to create output directory: %w", err)
	}

	// Run the compile command
	cmd := exec.Command(clangpp, args...)
	var stderr bytes.Buffer
	cmd.Stderr = &stderr

	if err := cmd.Run(); err != nil {
		return "", fmt.Errorf("failed to compile CABI transform pass: %w\n%s", err, stderr.String())
	}

	return libPath, nil
}

// TransformIR applies the CABI transformation to an LLVM IR file.
func TransformIR(env *llvm.Env, inputFile, outputFile string, opts TransformOptions) error {
	// Ensure the pass library is built
	passLib, err := ensurePassLibrary(env)
	if err != nil {
		return err
	}

	// Get opt path
	optBin := filepath.Join(env.BinDir(), "opt")

	// Build opt command arguments
	optArgs := []string{
		"--load-pass-plugin=" + passLib,
		"--passes=inplace-cabi-transform",
		fmt.Sprintf("--large-type-threshold=%d", opts.LargeTypeThreshold),
		"-S",
		inputFile,
		"-o", outputFile,
	}

	if opts.Verbose {
		fmt.Fprintln(os.Stderr, "opt", optArgs)
	}

	// Run opt command
	cmd := exec.Command(optBin, optArgs...)
	var stderr bytes.Buffer
	cmd.Stderr = &stderr

	if err := cmd.Run(); err != nil {
		return fmt.Errorf("CABI transformation failed: %w\n%s", err, stderr.String())
	}

	if opts.Verbose {
		fmt.Fprintln(os.Stderr, "CABI transformation completed")
	}

	return nil
}
