package compile

import (
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"slices"
	"strings"

	"github.com/goplus/llgo/internal/clang"
)

type CompileOptions struct {
	CC      string // Compiler to use
	Linker  string
	CCFLAGS []string
	CFLAGS  []string
	LDFLAGS []string
}

type CompileGroup struct {
	OutputFileName string
	Files          []string // List of source files to compile
	CFlags         []string // C compiler flags
	CCFlags        []string
	LDFlags        []string // Linker flags
}

// IsCompiled checks if the compile group has already been compiled by verifying
// if the output archive file exists in the specified directory
func (g CompileGroup) IsCompiled(outputDir string) bool {
	archive := filepath.Join(outputDir, filepath.Base(g.OutputFileName))
	_, err := os.Stat(archive)
	return err == nil
}

// getLangFromExt returns the language type based on file extension
func getLangFromExt(file string) string {
	if filepath.Ext(file) == ".S" {
		return "assembler-with-cpp"
	}
	return "c"
}

// Compile compiles all source files in the group into a static library archive (.a)
// or a single object file (.o) depending on the OutputFileName extension.
// If the output file already exists, compilation is skipped.
func (g CompileGroup) Compile(
	outputDir string, options CompileOptions,
) (err error) {
	if g.IsCompiled(outputDir) {
		return
	}

	compileLDFlags := append(slices.Clone(options.LDFLAGS), g.LDFlags...)
	compileCCFlags := append(slices.Clone(options.CCFLAGS), g.CCFlags...)
	compileCFFlags := append(slices.Clone(options.CFLAGS), g.CFlags...)

	cfg := clang.NewConfig(options.CC, compileCCFlags, compileCFFlags, compileLDFlags, options.Linker)
	compiler := clang.NewCompiler(cfg)
	compiler.Verbose = true

	output := filepath.Join(outputDir, filepath.Base(g.OutputFileName))
	fmt.Fprintf(os.Stderr, "Start to compile group %s to %s...\n", g.OutputFileName, output)

	// If output is .o file, compile directly (single file only)
	if filepath.Ext(g.OutputFileName) == ".o" {
		if len(g.Files) != 1 {
			return fmt.Errorf("compiling to .o requires exactly 1 source file, got %d", len(g.Files))
		}
		file := g.Files[0]
		return compiler.Compile("-o", output, "-x", getLangFromExt(file), "-c", file)
	}

	// Otherwise, compile to .a archive
	tmpCompileDir, err := os.MkdirTemp("", "compile-group*")
	if err != nil {
		return
	}
	defer os.RemoveAll(tmpCompileDir)

	var objFiles []string
	for _, file := range g.Files {
		var tempObjFile *os.File
		tempObjFile, err = os.CreateTemp(tmpCompileDir, fmt.Sprintf("%s*.o", strings.ReplaceAll(file, string(os.PathSeparator), "-")))
		if err != nil {
			return
		}

		err = compiler.Compile("-o", tempObjFile.Name(), "-x", getLangFromExt(file), "-c", file)
		if err != nil {
			return
		}

		objFiles = append(objFiles, tempObjFile.Name())
	}

	args := []string{"rcs", output}
	args = append(args, objFiles...)

	ccDir := filepath.Dir(options.CC)
	llvmAr := filepath.Join(ccDir, "llvm-ar")

	cmd := exec.Command(llvmAr, args...)
	// TODO(MeteorsLiu): support verbose
	// cmd.Stdout = os.Stdout
	// cmd.Stderr = os.Stderr
	err = cmd.Run()
	return
}

// CompileConfig represents compilation configuration
type CompileConfig struct {
	Groups       []CompileGroup
	ExportCFlags []string
}

type LibConfig struct {
	Url            string
	Name           string // Library name (e.g., "picolibc", "musl", "glibc")
	Version        string
	ResourceSubDir string
}

// String returns a string representation of the library configuration
// in the format "name-version"
func (cfg LibConfig) String() string {
	return fmt.Sprintf("%s-%s", cfg.Name, cfg.Version)
}
