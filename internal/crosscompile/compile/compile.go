package compile

import (
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"slices"
	"strconv"
	"strings"
	"sync"

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

func compileJobs() (int, error) {
	if value := os.Getenv("LLGO_COMPILE_JOBS"); value != "" {
		jobs, err := strconv.Atoi(value)
		if err != nil || jobs < 1 {
			return 0, fmt.Errorf("invalid LLGO_COMPILE_JOBS %q", value)
		}
		return jobs, nil
	}
	jobs := runtime.GOMAXPROCS(0)
	if jobs < 1 {
		return 1, nil
	}
	if jobs > 8 {
		return 8, nil
	}
	return jobs, nil
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

	cfg := clang.NewConfig(options.CC, compileCCFlags, compileCFFlags, compileLDFlags, options.Linker)

	jobs, err := compileJobs()
	if err != nil {
		return err
	}
	if jobs > len(g.Files) {
		jobs = len(g.Files)
	}
	if jobs < 1 {
		jobs = 1
	}

	objFiles := make([]string, len(g.Files))

	archive := filepath.Join(outputDir, filepath.Base(g.OutputFileName))
	fmt.Fprintf(os.Stderr, "Start to compile group %s to %s...\n", g.OutputFileName, archive)

	compileOne := func(compiler *clang.Cmd, idx int, file string) error {
		tempObjFile, err := os.CreateTemp(tmpCompileDir, fmt.Sprintf("%s*.o", strings.ReplaceAll(file, string(os.PathSeparator), "-")))
		if err != nil {
			return err
		}
		objFile := tempObjFile.Name()
		if err := tempObjFile.Close(); err != nil {
			return err
		}

		lang := "c"
		if filepath.Ext(file) == ".S" {
			lang = "assembler-with-cpp"
		}
		if err := compiler.Compile("-o", objFile, "-x", lang, "-c", file); err != nil {
			os.Remove(objFile)
			return err
		}
		objFiles[idx] = objFile
		return nil
	}

	if jobs == 1 || len(g.Files) <= 1 {
		compiler := clang.NewCompiler(cfg)
		compiler.Verbose = true
		for i, file := range g.Files {
			if err := compileOne(compiler, i, file); err != nil {
				return err
			}
		}
	} else {
		type task struct {
			idx  int
			file string
		}
		tasks := make(chan task)
		var wg sync.WaitGroup
		var errMu sync.Mutex
		var firstErr error
		setErr := func(err error) {
			if err == nil {
				return
			}
			errMu.Lock()
			if firstErr == nil {
				firstErr = err
			}
			errMu.Unlock()
		}
		for worker := 0; worker < jobs; worker++ {
			wg.Add(1)
			go func() {
				defer wg.Done()
				compiler := clang.NewCompiler(cfg)
				compiler.Verbose = true
				for task := range tasks {
					if err := compileOne(compiler, task.idx, task.file); err != nil {
						setErr(err)
					}
				}
			}()
		}
		for i, file := range g.Files {
			errMu.Lock()
			stopped := firstErr != nil
			errMu.Unlock()
			if stopped {
				break
			}
			tasks <- task{idx: i, file: file}
		}
		close(tasks)
		wg.Wait()
		if firstErr != nil {
			return firstErr
		}
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
