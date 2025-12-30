package mquickjs

import (
	"fmt"
	"os"
	"os/exec"
	"path/filepath"

	"github.com/goplus/llgo/internal/crosscompile/compile"
)

// GetMquickjsConfig returns the configuration for downloading mquickjs
func GetMquickjsConfig() compile.LibConfig {
	return compile.LibConfig{
		Name:           "mquickjs",
		Version:        "v1.0.0",
		Url:            "https://github.com/luoliwoshang/mquickjs/archive/refs/tags/v1.0.0.tar.gz",
		ResourceSubDir: "mquickjs-1.0.0",
	}
}

// GenerateHeaders generates mquickjs_atom.h and mqjs_stdlib.h by compiling
// the mqjs_stdlib tool for the HOST machine and running it with -m32 flag.
// This must be called after downloading the mquickjs source and before compiling.
func GenerateHeaders(baseDir string) error {
	atomHeader := filepath.Join(baseDir, "mquickjs_atom.h")
	stdlibHeader := filepath.Join(baseDir, "mqjs_stdlib.h")

	// Check if headers already exist
	if _, err := os.Stat(atomHeader); err == nil {
		if _, err := os.Stat(stdlibHeader); err == nil {
			// Both headers exist, skip generation
			return nil
		}
	}

	fmt.Fprintln(os.Stderr, "Generating mquickjs headers...")

	// Source files needed for the generator tool
	generatorSources := []string{
		filepath.Join(baseDir, "mqjs_stdlib.c"),
		filepath.Join(baseDir, "mquickjs_build.c"),
	}

	// Check if source files exist
	for _, src := range generatorSources {
		if _, err := os.Stat(src); err != nil {
			return fmt.Errorf("mquickjs generator source file not found: %s", src)
		}
	}

	// Output binary path (in the same directory)
	generatorBin := filepath.Join(baseDir, "mqjs_stdlib")

	// Compile the generator tool for HOST machine using system cc
	// We use "cc" which should work on most systems (maps to gcc/clang)
	compileArgs := []string{
		"-o", generatorBin,
		"-I" + baseDir,
		"-lm", // link math library
	}
	compileArgs = append(compileArgs, generatorSources...)

	fmt.Fprintf(os.Stderr, "  Compiling mqjs_stdlib tool...\n")
	cmd := exec.Command("cc", compileArgs...)
	cmd.Dir = baseDir
	cmd.Stdout = os.Stderr
	cmd.Stderr = os.Stderr
	if err := cmd.Run(); err != nil {
		return fmt.Errorf("failed to compile mqjs_stdlib generator: %w", err)
	}

	// Generate mquickjs_atom.h with -m32 -a flags
	fmt.Fprintf(os.Stderr, "  Generating mquickjs_atom.h...\n")
	atomFile, err := os.Create(atomHeader)
	if err != nil {
		return fmt.Errorf("failed to create mquickjs_atom.h: %w", err)
	}
	defer atomFile.Close()

	cmd = exec.Command(generatorBin, "-m32", "-a")
	cmd.Dir = baseDir
	cmd.Stdout = atomFile
	cmd.Stderr = os.Stderr
	if err := cmd.Run(); err != nil {
		return fmt.Errorf("failed to generate mquickjs_atom.h: %w", err)
	}

	// Generate mqjs_stdlib.h with -m32 flag
	fmt.Fprintf(os.Stderr, "  Generating mqjs_stdlib.h...\n")
	stdlibFile, err := os.Create(stdlibHeader)
	if err != nil {
		return fmt.Errorf("failed to create mqjs_stdlib.h: %w", err)
	}
	defer stdlibFile.Close()

	cmd = exec.Command(generatorBin, "-m32")
	cmd.Dir = baseDir
	cmd.Stdout = stdlibFile
	cmd.Stderr = os.Stderr
	if err := cmd.Run(); err != nil {
		return fmt.Errorf("failed to generate mqjs_stdlib.h: %w", err)
	}

	fmt.Fprintln(os.Stderr, "  Headers generated successfully.")
	return nil
}

// mquickjs compile flags for embedded targets
var _mquickjsCCFlags = []string{
	"-fdata-sections",
	"-ffunction-sections",
	"-fno-math-errno",
	"-fno-trapping-math",
}

var _mquickjsLDFlags = []string{
	"-Wl,--gc-sections",
}

// GetMquickjsCompileConfig returns configuration for compiling mquickjs
func GetMquickjsCompileConfig(baseDir, target string) compile.CompileConfig {
	return compile.CompileConfig{
		ExportCFlags: []string{
			"-I" + baseDir,
		},
		Groups: []compile.CompileGroup{
			{
				OutputFileName: fmt.Sprintf("libmquickjs-%s.a", target),
				Files: []string{
					filepath.Join(baseDir, "mquickjs.c"),
					filepath.Join(baseDir, "cutils.c"),
					filepath.Join(baseDir, "dtoa.c"),
					filepath.Join(baseDir, "libm.c"),
				},
				CFlags: []string{
					"-DCONFIG_VERSION=\"1.0.0\"",
					"-D_GNU_SOURCE",
					"-nostdlib",
					"-I" + baseDir,
				},
				CCFlags: _mquickjsCCFlags,
				LDFlags: _mquickjsLDFlags,
			},
		},
	}
}
