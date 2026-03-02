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
	FileEntries    []CompileFile
	CFlags         []string // C compiler flags
	CCFlags        []string
	LDFlags        []string // Linker flags
}

// CompileFile represents a source file with optional per-file flags.
type CompileFile struct {
	Path    string
	CFlags  []string
	CCFlags []string
}

// IsCompiled checks if the compile group has already been compiled by verifying
// if the output archive file exists in the specified directory
func (g CompileGroup) IsCompiled(outputDir string) bool {
	archive := filepath.Join(outputDir, filepath.Base(g.OutputFileName))
	_, err := os.Stat(archive)
	return err == nil
}

// Compile compiles all source files in the group into a static library archive
// If the archive already exists, compilation is skipped
func (g CompileGroup) Compile(
	outputDir string, options CompileOptions,
) (err error) {
	if g.IsCompiled(outputDir) {
		return
	}
	tmpCompileDir, err := os.MkdirTemp("", "compile-group*")
	if err != nil {
		return
	}
	defer os.RemoveAll(tmpCompileDir)

	compileLDFlags := append(slices.Clone(options.LDFLAGS), g.LDFlags...)
	compileCCFlags := append(slices.Clone(options.CCFLAGS), g.CCFlags...)
	compileCFFlags := append(slices.Clone(options.CFLAGS), g.CFlags...)

	var objFiles []string

	archive := filepath.Join(outputDir, filepath.Base(g.OutputFileName))
	fmt.Fprintf(os.Stderr, "Start to compile group %s to %s...\n", g.OutputFileName, archive)

	fileEntries := make([]CompileFile, 0, len(g.FileEntries))
	if len(g.FileEntries) != 0 {
		fileEntries = append(fileEntries, g.FileEntries...)
	} else {
		fileEntries = make([]CompileFile, 0, len(g.Files))
		for _, file := range g.Files {
			fileEntries = append(fileEntries, CompileFile{Path: file})
		}
	}

	for _, entry := range fileEntries {
		file := entry.Path
		var tempObjFile *os.File
		tempObjFile, err = os.CreateTemp(tmpCompileDir, fmt.Sprintf("%s*.o", strings.ReplaceAll(file, string(os.PathSeparator), "-")))
		if err != nil {
			return
		}

		cfg := clang.NewConfig(
			options.CC,
			append(slices.Clone(compileCCFlags), entry.CCFlags...),
			append(slices.Clone(compileCFFlags), entry.CFlags...),
			compileLDFlags,
			options.Linker,
		)

		compiler := clang.NewCompiler(cfg)
		compiler.Verbose = true

		lang := "c"
		if filepath.Ext(file) == ".S" {
			lang = "assembler-with-cpp"
		}
		err = compiler.Compile("-o", tempObjFile.Name(), "-x", lang, "-c", file)
		if err != nil {
			return
		}

		objFiles = append(objFiles, tempObjFile.Name())
	}

	args := []string{"rcs", archive}
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
