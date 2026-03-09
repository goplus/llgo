//go:build !llgo
// +build !llgo

package build

import (
	"bytes"
	"fmt"
	"go/ast"
	"go/parser"
	"go/token"
	"go/types"
	"io"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"strings"
	"testing"

	"github.com/goplus/llgo/internal/mockable"
	"github.com/goplus/llgo/internal/packages"
)

func TestMain(m *testing.M) {
	old := cacheRootFunc
	td, _ := os.MkdirTemp("", "llgo-cache-*")
	cacheRootFunc = func() string { return td }
	code := m.Run()
	cacheRootFunc = old
	_ = os.RemoveAll(td)
	os.Exit(code)
}

func mockRun(args []string, cfg *Config) {
	defer mockable.DisableMock()
	mockable.EnableMock()

	var panicVal interface{}
	defer func() {
		if r := recover(); r != nil {
			// Ignore mocked os.Exit
			if s, ok := r.(string); ok && s == "exit" {
				return
			}
			panicVal = r
		}
		if panicVal != nil {
			panic(panicVal)
		}
	}()

	// Only set OutFile for modes that don't support multiple packages,
	// or when OutFile is not already set
	if cfg.OutFile == "" && (cfg.Mode == ModeBuild || cfg.Mode == ModeRun) {
		file, _ := os.CreateTemp("", "llgo-*")
		cfg.OutFile = file.Name()
		file.Close()
		defer os.Remove(cfg.OutFile)
	}

	if _, err := Do(args, cfg); err != nil {
		panic(err)
	}
}

func TestRun(t *testing.T) {
	mockRun([]string{"../../cl/_testgo/print"}, &Config{Mode: ModeRun})
}

func TestTest(t *testing.T) {
	// FIXME(zzy): with builtin package test in a llgo test ./... will cause duplicate symbol error
	mockRun([]string{"../../cl/_testgo/runtest"}, &Config{Mode: ModeTest})
}

func TestExtest(t *testing.T) {
	originalStdout := os.Stdout
	defer func() { os.Stdout = originalStdout }()

	r, w, err := os.Pipe()
	if err != nil {
		t.Fatalf("os.Pipe failed: %v", err)
	}
	os.Stdout = w
	outputChan := make(chan string)
	go func() {
		var data bytes.Buffer
		io.Copy(&data, r)
		outputChan <- data.String()
	}()

	mockRun([]string{"../../cl/_testgo/runextest/..."}, &Config{Mode: ModeTest})

	w.Close()
	got := <-outputChan
	expected := "PASS\nPASS\nPASS\nPASS\n"
	if got != expected {
		t.Errorf("Expected output %q, but got %q", expected, got)
	}
}

func TestCmpTest(t *testing.T) {
	mockRun([]string{"../../cl/_testgo/runtest"}, &Config{Mode: ModeCmpTest})
}

func TestFilterTestPackages(t *testing.T) {
	pkg := func(id string) *packages.Package {
		return &packages.Package{ID: id}
	}

	t.Run("empty after filtering", func(t *testing.T) {
		initial := []*packages.Package{
			pkg("github.com/goplus/llgo/chore/ardump"),
			pkg("github.com/goplus/llgo/chore/ardump [github.com/goplus/llgo/chore/ardump.test]"),
		}
		filtered, err := filterTestPackages(initial, "")
		if err != nil {
			t.Fatalf("filterTestPackages returned unexpected error: %v", err)
		}
		if len(filtered) != 0 {
			t.Fatalf("len(filtered) = %d, want 0", len(filtered))
		}
	})

	t.Run("retain test packages", func(t *testing.T) {
		initial := []*packages.Package{
			pkg("foo"),
			pkg("foo.test"),
		}
		filtered, err := filterTestPackages(initial, "")
		if err != nil {
			t.Fatalf("filterTestPackages returned unexpected error: %v", err)
		}
		if len(filtered) != 1 {
			t.Fatalf("len(filtered) = %d, want 1", len(filtered))
		}
		if filtered[0].ID != "foo.test" {
			t.Fatalf("filtered[0].ID = %q, want %q", filtered[0].ID, "foo.test")
		}
	})

	t.Run("multiple test packages with output file", func(t *testing.T) {
		initial := []*packages.Package{
			pkg("a.test"),
			pkg("b.test"),
		}
		_, err := filterTestPackages(initial, "/tmp/out")
		if err == nil {
			t.Fatal("expected error for -o with multiple test packages, got nil")
		}
		if !strings.Contains(err.Error(), "cannot use -o flag with multiple packages") {
			t.Fatalf("unexpected error: %v", err)
		}
	})
}

const (
	rewriteMainPkg = "github.com/goplus/llgo/cl/_testgo/rewrite"
	rewriteDepPkg  = rewriteMainPkg + "/dep"
	rewriteDirPath = "../../cl/_testgo/rewrite"
)

func TestLdFlagsRewriteVars(t *testing.T) {
	buildRewriteBinary(t, false, "build-main", "build-pkg")
	buildRewriteBinary(t, false, "rerun-main", "rerun-pkg")
}

func TestLdFlagsRewriteVarsMainAlias(t *testing.T) {
	buildRewriteBinary(t, true, "alias-main", "alias-pkg")
}

func buildRewriteBinary(t *testing.T, useMainAlias bool, mainVal, depVal string) {
	t.Helper()
	binPath := filepath.Join(t.TempDir(), "rewrite")
	if runtime.GOOS == "windows" {
		binPath += ".exe"
	}

	cfg := &Config{Mode: ModeBuild, OutFile: binPath}
	mainKey := rewriteMainPkg
	var mainPkgs []string
	if useMainAlias {
		mainKey = "main"
		mainPkgs = []string{rewriteMainPkg}
	}
	mainPlain := mainVal + "-plain"
	depPlain := depVal + "-plain"
	gorootVal := "goroot-" + mainVal
	versionVal := "version-" + mainVal
	addGlobalString(cfg, mainKey+".VarName="+mainVal, mainPkgs)
	addGlobalString(cfg, mainKey+".VarPlain="+mainPlain, mainPkgs)
	addGlobalString(cfg, rewriteDepPkg+".VarName="+depVal, nil)
	addGlobalString(cfg, rewriteDepPkg+".VarPlain="+depPlain, nil)
	addGlobalString(cfg, "runtime.defaultGOROOT="+gorootVal, nil)
	addGlobalString(cfg, "runtime.buildVersion="+versionVal, nil)

	if _, err := Do([]string{rewriteDirPath}, cfg); err != nil {
		t.Fatalf("ModeBuild failed: %v", err)
	}
	got := runBinary(t, binPath)
	want := fmt.Sprintf(
		"main.VarName: %s\nmain.VarPlain: %s\ndep.VarName: %s\ndep.VarPlain: %s\nruntime.GOROOT(): %s\nruntime.Version(): %s\n",
		mainVal, mainPlain, depVal, depPlain, gorootVal, versionVal,
	)
	if got != want {
		t.Fatalf("unexpected binary output:\nwant %q\ngot  %q", want, got)
	}
}

func runBinary(t *testing.T, path string, args ...string) string {
	t.Helper()
	cmd := exec.Command(path, args...)
	output, err := cmd.CombinedOutput()
	if err != nil {
		t.Fatalf("failed to run %s: %v\n%s", path, err, output)
	}
	return string(output)
}

func TestRunPrintfWithStdioNobuf(t *testing.T) {
	t.Setenv(llgoStdioNobuf, "1")
	mockRun([]string{"../../cl/_testdata/printf"}, &Config{Mode: ModeRun})
}

func TestTestOutputFileLogic(t *testing.T) {
	// Test output file path determination logic for test mode
	tests := []struct {
		name        string
		pkgName     string
		conf        *Config
		multiPkg    bool
		wantBase    string
		wantDir     string
		description string
	}{
		{
			name:        "compile only without -o",
			pkgName:     "mypackage.test",
			conf:        &Config{Mode: ModeTest, CompileOnly: true},
			multiPkg:    false,
			wantBase:    "mypackage.test",
			wantDir:     ".",
			description: "-c without -o: write pkg.test in current directory",
		},
		{
			name:        "with -o absolute file path",
			pkgName:     "mypackage",
			conf:        &Config{Mode: ModeTest, OutFile: "/tmp/mytest.test", AppExt: ".test"},
			multiPkg:    false,
			wantBase:    "mytest",
			wantDir:     "/tmp",
			description: "-o with absolute file path: use specified file",
		},
		{
			name:        "with -o relative file path",
			pkgName:     "mypackage",
			conf:        &Config{Mode: ModeTest, OutFile: "my.test", AppExt: ".test"},
			multiPkg:    false,
			wantBase:    "my",
			wantDir:     ".",
			description: "-o with relative file path: use specified file in current dir",
		},
		{
			name:        "with -o directory",
			pkgName:     "mypackage.test",
			conf:        &Config{Mode: ModeTest, OutFile: "/tmp/build/", AppExt: ".test"},
			multiPkg:    false,
			wantBase:    "mypackage.test",
			wantDir:     "/tmp/build/",
			description: "-o with directory: write pkg.test in that directory",
		},
		{
			name:        "default test mode",
			pkgName:     "mypackage",
			conf:        &Config{Mode: ModeTest, AppExt: ".test"},
			multiPkg:    false,
			wantBase:    "mypackage",
			wantDir:     "",
			description: "default test mode: use temp file",
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			baseName, dir := determineBaseNameAndDir(tt.pkgName, tt.conf, tt.multiPkg)
			if baseName != tt.wantBase {
				t.Errorf("%s: got baseName=%q, want %q", tt.description, baseName, tt.wantBase)
			}
			if dir != tt.wantDir {
				t.Errorf("%s: got dir=%q, want %q", tt.description, dir, tt.wantDir)
			}
		})
	}
}

func TestTestMultiplePackagesWithOutputFile(t *testing.T) {
	// Test that -o flag errors with multiple test packages
	cfg := &Config{
		Mode:    ModeTest,
		OutFile: "/tmp/output",
	}

	// Create a scenario that would have multiple test packages
	// This should error during Do() validation
	args := []string{"../../cl/_testgo/runextest/..."}
	_, err := Do(args, cfg)
	if err == nil {
		t.Fatal("Expected error when using -o flag with multiple packages, got nil")
	}
	if !strings.Contains(err.Error(), "cannot use -o flag with multiple packages") {
		t.Errorf("Expected error about -o with multiple packages, got: %v", err)
	}
}

func TestPkgRequiresNaiveForm(t *testing.T) {
	parsePkg := func(t *testing.T, src string) *packages.Package {
		t.Helper()
		fset := token.NewFileSet()
		file, err := parser.ParseFile(fset, "main.go", src, 0)
		if err != nil {
			t.Fatalf("ParseFile: %v", err)
		}
		return &packages.Package{Syntax: []*ast.File{file}}
	}

	t.Run("setjmp package call", func(t *testing.T) {
		pkg := parsePkg(t, `package main
			import setjmp "github.com/goplus/lib/c/setjmp"
			func f(jb *setjmp.JmpBuf) int { return int(setjmp.Setjmp(jb)) }
		`)
		if !pkgRequiresNaiveForm(pkg) {
			t.Fatal("pkgRequiresNaiveForm = false, want true")
		}
	})

	t.Run("c sigsetjmp call", func(t *testing.T) {
		pkg := parsePkg(t, `package main
			import c "github.com/goplus/lib/c"
			func f(jb c.Pointer) int { return int(c.Sigsetjmp(jb, 0)) }
		`)
		if !pkgRequiresNaiveForm(pkg) {
			t.Fatal("pkgRequiresNaiveForm = false, want true")
		}
	})

	t.Run("dot import", func(t *testing.T) {
		pkg := parsePkg(t, `package main
			import . "github.com/goplus/lib/c/setjmp"
			func f(jb *JmpBuf) int { return int(Setjmp(jb)) }
		`)
		if !pkgRequiresNaiveForm(pkg) {
			t.Fatal("pkgRequiresNaiveForm = false, want true")
		}
	})

	t.Run("plain c import without setjmp", func(t *testing.T) {
		pkg := parsePkg(t, `package main
			import c "github.com/goplus/lib/c"
			func f(s *c.Char) uintptr { return c.Strlen(s) }
		`)
		if pkgRequiresNaiveForm(pkg) {
			t.Fatal("pkgRequiresNaiveForm = true, want false")
		}
	})
}

func TestNaiveProgramPackagesPropagatesToImporters(t *testing.T) {
	parsePkg := func(t *testing.T, path, src string, imports ...*packages.Package) *packages.Package {
		t.Helper()
		fset := token.NewFileSet()
		file, err := parser.ParseFile(fset, path+".go", src, 0)
		if err != nil {
			t.Fatalf("ParseFile: %v", err)
		}
		typesPkg := types.NewPackage(path, filepath.Base(path))
		importMap := make(map[string]*packages.Package, len(imports))
		for _, imp := range imports {
			importMap[imp.PkgPath] = imp
		}
		return &packages.Package{
			ID:      path,
			PkgPath: path,
			Types:   typesPkg,
			Syntax:  []*ast.File{file},
			Imports: importMap,
		}
	}

	leaf := parsePkg(t, "example.com/leaf", `package leaf
		import setjmp "github.com/goplus/lib/c/setjmp"
		func F(jb *setjmp.JmpBuf) int { return int(setjmp.Setjmp(jb)) }
	`)
	parent := parsePkg(t, "example.com/parent", `package parent
		import "example.com/leaf"
		func Use() int { return 0 }
	`, leaf)
	plain := parsePkg(t, "example.com/plain", `package plain
		func Use() int { return 0 }
	`)

	got := naiveProgramPackages([]*packages.Package{parent, plain})
	if !got[leaf] {
		t.Fatal("naiveProgramPackages missing direct setjmp package")
	}
	if !got[parent] {
		t.Fatal("naiveProgramPackages missing importer of direct setjmp package")
	}
	if got[plain] {
		t.Fatal("naiveProgramPackages unexpectedly marked unrelated package")
	}
}
