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

func (g CompileGroup) IsCompiled(outputDir string) bool {
	archive := filepath.Join(outputDir, filepath.Base(g.OutputFileName))
	_, err := os.Stat(archive)
	return err == nil
}

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

	cfg := clang.NewConfig(options.CC, compileCCFlags, compileCFFlags, compileLDFlags, options.Linker)

	var objFiles []string

	compiler := clang.NewCompiler(cfg)

	compiler.Verbose = true

	archive := filepath.Join(outputDir, filepath.Base(g.OutputFileName))
	fmt.Fprintf(os.Stderr, "Start to compile group %s to %s...\n", g.OutputFileName, archive)

	for _, file := range g.Files {
		var tempObjFile *os.File
		tempObjFile, err = os.CreateTemp(tmpCompileDir, fmt.Sprintf("%s*.o", strings.ReplaceAll(file, string(os.PathSeparator), "-")))
		if err != nil {
			return
		}

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
	Url           string
	Name          string // compile name (e.g., "picolibc", "musl", "glibc")
	Version       string
	ArchiveSrcDir string
}

func (cfg LibConfig) String() string {
	return fmt.Sprintf("%s-%s", cfg.Name, cfg.Version)
}
