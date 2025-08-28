package crosscompile

import (
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"slices"
	"strings"

	"github.com/goplus/llgo/internal/clang"
)

type compileGroup struct {
	OutputFileName string
	Files          []string // List of source files to compile
	CFlags         []string // C compiler flags specific to this libc
	CCFlags        []string
	LDFlags        []string // Linker flags
}

func (g compileGroup) IsCompiled(outputDir string) bool {
	libcArchive := filepath.Join(outputDir, g.OutputFileName)
	_, err := os.Stat(libcArchive)
	return !os.IsNotExist(err)
}

func (g compileGroup) Compile(outputDir, cc, linkerName string, extraCCFlags, extraLDFlags []string) (err error) {
	if g.IsCompiled(outputDir) {
		return
	}
	tmpCompileDir, err := os.MkdirTemp("", "compile-libc-group*")
	if err != nil {
		return
	}
	defer os.RemoveAll(tmpCompileDir)

	compileLDFlags := append(slices.Clone(extraLDFlags), g.LDFlags...)
	compileCCFlags := append(slices.Clone(extraCCFlags), g.CCFlags...)
	cfg := clang.NewConfig(cc, compileCCFlags, g.CFlags, compileLDFlags, linkerName)

	var objFiles []string

	compiler := clang.NewCompiler(cfg)

	compiler.Verbose = true

	libcArchive := filepath.Join(outputDir, g.OutputFileName)
	fmt.Fprintf(os.Stderr, "Start to compile libc group %s to %s...\n", g.OutputFileName, libcArchive)

	for _, file := range g.Files {
		var tempObjFile *os.File
		tempObjFile, err = os.CreateTemp(tmpCompileDir, fmt.Sprintf("%s*.o", strings.ReplaceAll(file, string(os.PathSeparator), "-")))
		if err != nil {
			return
		}
		fmt.Fprintf(os.Stderr, "Compile libc file %s to %s...\n", file, tempObjFile.Name())

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

	args := []string{"rcs", libcArchive}
	args = append(args, objFiles...)

	ccDir := filepath.Dir(cc)
	llvmAr := filepath.Join(ccDir, "llvm-ar")

	cmd := exec.Command(llvmAr, args...)
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr
	cmd.Run()
	return
}

// CompileLibcConfig represents libc compilation configuration
type compileLibcConfig struct {
	Url           string
	Name          string // Libc name (e.g., "picolibc", "musl", "glibc")
	Groups        []compileGroup
	ArchiveSrcDir string
}

func (c compileLibcConfig) IsCompiled(outputDir string) bool {
	for _, group := range c.Groups {
		if !group.IsCompiled(outputDir) {
			return false
		}
	}
	return true
}

// GetCompileLibcConfigByName retrieves libc compilation configuration by name
// Returns compilation file lists and corresponding cflags
func getCompileLibcConfigByName(baseDir, libcName string) (*compileLibcConfig, error) {
	if libcName == "" {
		return nil, fmt.Errorf("libc name cannot be empty")
	}
	libcDir := filepath.Join(baseDir, libcName)

	switch libcName {
	case "picolibc":
		return getPicolibcConfig(libcDir), nil
	case "newlib-esp32":
		return getNewlibESP32Config(libcDir, "xtensa"), nil
	default:
		return nil, fmt.Errorf("unsupported libc: %s", libcName)
	}
}
