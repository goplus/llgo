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

type CompileGroup struct {
	OutputFileName string
	Files          []string // List of source files to compile
	CFlags         []string // C compiler flags
	CCFlags        []string
	LDFlags        []string // Linker flags
}

func (g CompileGroup) IsCompiled(outputDir string) bool {
	archive := filepath.Join(outputDir, g.OutputFileName)
	_, err := os.Stat(archive)
	return !os.IsNotExist(err)
}

func (g CompileGroup) Compile(outputDir, cc, linkerName string, extraCCFlags, extraLDFlags []string) (err error) {
	if g.IsCompiled(outputDir) {
		return
	}
	tmpCompileDir, err := os.MkdirTemp("", "compile-group*")
	if err != nil {
		return
	}
	defer os.RemoveAll(tmpCompileDir)

	compileLDFlags := append(slices.Clone(extraLDFlags), g.LDFlags...)
	compileCCFlags := append(slices.Clone(extraCCFlags), g.CCFlags...)
	cfg := clang.NewConfig(cc, compileCCFlags, g.CFlags, compileLDFlags, linkerName)

	var objFiles []string

	compiler := clang.NewCompiler(cfg)

	compiler.Verbose = false

	archive := filepath.Join(outputDir, g.OutputFileName)
	fmt.Fprintf(os.Stderr, "Start to compile group %s to %s...\n", g.OutputFileName, archive)

	for _, file := range g.Files {
		var tempObjFile *os.File
		tempObjFile, err = os.CreateTemp(tmpCompileDir, fmt.Sprintf("%s*.o", strings.ReplaceAll(file, string(os.PathSeparator), "-")))
		if err != nil {
			return
		}
		fmt.Fprintf(os.Stderr, "Compile file %s to %s...\n", file, tempObjFile.Name())

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

	ccDir := filepath.Dir(cc)
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
	Url           string
	Name          string // compile name (e.g., "picolibc", "musl", "glibc")
	Groups        []CompileGroup
	ArchiveSrcDir string
}

func (c CompileConfig) IsCompiled(outputDir string) bool {
	for _, group := range c.Groups {
		if !group.IsCompiled(outputDir) {
			return false
		}
	}
	return true
}
