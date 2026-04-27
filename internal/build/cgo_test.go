//go:build !llgo
// +build !llgo

package build

import (
	"fmt"
	"go/ast"
	"go/parser"
	"go/token"
	"os"
	"path/filepath"
	"reflect"
	"strings"
	"sync"
	"testing"

	"github.com/goplus/llgo/internal/packages"
)

func TestParseCgoDeclFlags(t *testing.T) {
	tests := []struct {
		name        string
		line        string
		want        []cgoDecl
		wantErrText string
	}{
		{
			name: "CPPFLAGS with tag",
			line: "#cgo linux CPPFLAGS: -I/usr/lib/llvm-19/include -D_GNU_SOURCE",
			want: []cgoDecl{
				{
					tag:    "linux",
					cflags: []string{"-I/usr/lib/llvm-19/include", "-D_GNU_SOURCE"},
				},
			},
		},
		{
			name: "CFLAGS without tag",
			line: "#cgo CFLAGS: -I/usr/include/python3.12",
			want: []cgoDecl{
				{
					cflags: []string{"-I/usr/include/python3.12"},
				},
			},
		},
		{
			name:        "unsupported flag returns error",
			line:        "#cgo CXXFLAGS: -O2",
			wantErrText: "unsupported cgo flag type",
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got, err := parseCgoDecl(tt.line)
			if tt.wantErrText != "" {
				if err == nil {
					t.Fatalf("parseCgoDecl expected error containing %q, got nil", tt.wantErrText)
				}
				if !strings.Contains(err.Error(), tt.wantErrText) {
					t.Fatalf("parseCgoDecl error = %q, want contains %q", err.Error(), tt.wantErrText)
				}
				return
			}
			if err != nil {
				t.Fatalf("parseCgoDecl returned error: %v", err)
			}
			if !reflect.DeepEqual(got, tt.want) {
				t.Fatalf("parseCgoDecl = %#v, want %#v", got, tt.want)
			}
		})
	}
}

func TestDirCFiles(t *testing.T) {
	dir := t.TempDir()
	for name, data := range map[string]string{
		"b.c":      "int b;",
		"a.c":      "int a;",
		"z_test.c": "int test;",
		"note.txt": "ignored",
	} {
		if err := os.WriteFile(filepath.Join(dir, name), []byte(data), 0644); err != nil {
			t.Fatal(err)
		}
	}
	if err := os.Mkdir(filepath.Join(dir, "sub.c"), 0755); err != nil {
		t.Fatal(err)
	}

	want := []string{filepath.Join(dir, "a.c"), filepath.Join(dir, "b.c")}
	got, err := dirCFiles(dir)
	if err != nil {
		t.Fatalf("dirCFiles: %v", err)
	}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("dirCFiles = %#v, want %#v", got, want)
	}

	t.Chdir(dir)
	got, err = dirCFiles("")
	if err != nil {
		t.Fatalf("dirCFiles empty dir: %v", err)
	}
	if !reflect.DeepEqual(got, []string{"a.c", "b.c"}) {
		t.Fatalf("dirCFiles empty dir = %#v", got)
	}
}

func TestPkgCFilesFromMetadata(t *testing.T) {
	pkg := &aPackage{Package: &packages.Package{
		CompiledGoFiles: []string{"main.go"},
		OtherFiles:      []string{"b.c", "z_test.c", "header.h", "a.c"},
	}}
	got, ok := pkgCFilesFromMetadata(pkg)
	if !ok {
		t.Fatal("pkgCFilesFromMetadata did not accept complete metadata")
	}
	if want := []string{"a.c", "b.c"}; !reflect.DeepEqual(got, want) {
		t.Fatalf("pkgCFilesFromMetadata = %#v, want %#v", got, want)
	}

	pkg.OtherFiles = []string{"header.h"}
	got, ok = pkgCFilesFromMetadata(pkg)
	if !ok || len(got) != 0 {
		t.Fatalf("pkgCFilesFromMetadata header-only = %#v, %v", got, ok)
	}

	pkg.IgnoredFiles = []string{"ignored.go"}
	if _, ok := pkgCFilesFromMetadata(pkg); ok {
		t.Fatal("pkgCFilesFromMetadata accepted package with ignored files")
	}
	pkg.IgnoredFiles = nil
	pkg.CompiledGoFiles = nil
	if _, ok := pkgCFilesFromMetadata(pkg); ok {
		t.Fatal("pkgCFilesFromMetadata accepted package without compiled Go metadata")
	}
}

func TestParseCgoUsesFileMetadataForCScan(t *testing.T) {
	dir := t.TempDir()
	goFile := filepath.Join(dir, "main.go")
	cFile := filepath.Join(dir, "in.c")
	if err := os.WriteFile(goFile, []byte("package main\nfunc f() {}\n"), 0644); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(cFile, []byte("int in_c;\n"), 0644); err != nil {
		t.Fatal(err)
	}

	fset := token.NewFileSet()
	file, err := parser.ParseFile(fset, goFile, nil, parser.ParseComments)
	if err != nil {
		t.Fatal(err)
	}
	files := []*ast.File{file}

	// Real package loads request NeedFiles/NeedCompiledGoFiles. If that metadata
	// says there are no non-Go files, parseCgo_ can trust it and skip a directory
	// scan on the common no-cgo path.
	pkg := &aPackage{Package: &packages.Package{Fset: fset, CompiledGoFiles: []string{goFile}}}
	cfiles, preambles, decls, err := parseCgo_(pkg, files)
	if err != nil || len(cfiles) != 0 || len(preambles) != 0 || len(decls) != 0 {
		t.Fatalf("parseCgo_ with no OtherFiles = %v, %v, %v, %v", cfiles, preambles, decls, err)
	}

	// Synthetic packages without complete file metadata still fall back to the
	// historical directory scan.
	pkg = &aPackage{Package: &packages.Package{Fset: fset}}
	cfiles, _, _, err = parseCgo_(pkg, files)
	if err != nil {
		t.Fatalf("parseCgo_ fallback scan: %v", err)
	}
	if !reflect.DeepEqual(cfiles, []string{cFile}) {
		t.Fatalf("parseCgo_ fallback cfiles = %#v, want %#v", cfiles, []string{cFile})
	}

	// Packages with reported non-Go files use that metadata directly.
	pkg = &aPackage{Package: &packages.Package{Fset: fset, CompiledGoFiles: []string{goFile}, OtherFiles: []string{cFile}}}
	cfiles, _, _, err = parseCgo_(pkg, files)
	if err != nil {
		t.Fatalf("parseCgo_ OtherFiles scan: %v", err)
	}
	if !reflect.DeepEqual(cfiles, []string{cFile}) {
		t.Fatalf("parseCgo_ OtherFiles cfiles = %#v, want %#v", cfiles, []string{cFile})
	}

	// Ignored files can indicate build-configuration-sensitive source selection;
	// keep the historical scan in that case.
	pkg = &aPackage{Package: &packages.Package{Fset: fset, CompiledGoFiles: []string{goFile}, IgnoredFiles: []string{filepath.Join(dir, "ignored.go")}}}
	cfiles, _, _, err = parseCgo_(pkg, files)
	if err != nil {
		t.Fatalf("parseCgo_ IgnoredFiles scan: %v", err)
	}
	if !reflect.DeepEqual(cfiles, []string{cFile}) {
		t.Fatalf("parseCgo_ IgnoredFiles cfiles = %#v, want %#v", cfiles, []string{cFile})
	}
}

func TestParseCgoPreambleLineDirectives(t *testing.T) {
	pos := token.Position{Filename: `/tmp/a "quoted".go`, Line: 7}
	preamble, decls, err := parseCgoPreamble(pos, "int a;\n#cgo linux CFLAGS: -DTEST\nint b;\n")
	if err != nil {
		t.Fatalf("parseCgoPreamble: %v", err)
	}
	if len(decls) != 1 || decls[0].tag != "linux" || strings.Join(decls[0].cflags, " ") != "-DTEST" {
		t.Fatalf("cgo decls = %#v", decls)
	}
	want := "#line 7 \"/tmp/a \\\"quoted\\\".go\"\nint a;\n#line 9 \"/tmp/a \\\"quoted\\\".go\"\nint b;\n\n"
	if preamble.src != want {
		t.Fatalf("preamble src = %q, want %q", preamble.src, want)
	}
}

func TestPkgConfigCacheReusesResults(t *testing.T) {
	oldOutput := pkgConfigOutput
	pkgConfigCache = sync.Map{}
	calls := 0
	pkgConfigOutput = func(arg ...string) ([]byte, error) {
		calls++
		if len(arg) != 2 || arg[1] != "python3-embed" {
			return nil, fmt.Errorf("unexpected pkg-config args: %v", arg)
		}
		switch arg[0] {
		case "--libs":
			return []byte("-L/usr/lib -lpython3\n"), nil
		case "--cflags":
			return []byte("-I/usr/include/python3\n"), nil
		default:
			return nil, fmt.Errorf("unexpected pkg-config mode: %v", arg[0])
		}
	}
	t.Cleanup(func() {
		pkgConfigCache = sync.Map{}
		pkgConfigOutput = oldOutput
	})

	var first []cgoDecl
	for i := 0; i < 2; i++ {
		decls, err := parseCgoDecl("#cgo pkg-config: python3-embed")
		if err != nil {
			t.Fatalf("parseCgoDecl pkg-config failed: %v", err)
		}
		want := []cgoDecl{{cflags: []string{"-I/usr/include/python3"}, ldflags: []string{"-L/usr/lib", "-lpython3"}}}
		if !reflect.DeepEqual(decls, want) {
			t.Fatalf("parseCgoDecl pkg-config = %#v, want %#v", decls, want)
		}
		if i == 0 {
			first = decls
			first[0].cflags[0] = "mutated"
			first[0].ldflags[0] = "mutated"
		}
	}
	if calls != 2 {
		t.Fatalf("pkg-config output called %d times, want 2", calls)
	}
}

func TestCollectCgoSymbolsStripsPackagePrefix(t *testing.T) {
	externs := []string{
		"command-line-arguments._cgo_96608f8de8c8_Cfunc_fputs",
		"_cgo_96608f8de8c8_Cfunc_puts",
		"demo._cgo_123456789abc_C2func_errno",
		"demo.__cgo_callback",
		"demo._cgo__Cfunc_bad",
		"demo._cgo_hash_CXXfunc_bad",
	}

	got := collectCgoSymbols(externs)
	want := map[string]string{
		"_cgo_96608f8de8c8_Cfunc__Cmalloc": "_Cmalloc",
		"_cgo_96608f8de8c8_Cfunc_fputs":    "fputs",
		"_cgo_96608f8de8c8_Cfunc_puts":     "puts",
		"_cgo_123456789abc_C2func_errno":   "errno",
		"demo.__cgo_callback":              "__cgo_callback",
	}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("collectCgoSymbols = %#v, want %#v", got, want)
	}

	prefix, kind, name, ok := parseCgoExternSymbol("_cgo_hash_Cmacro_FOO")
	if !ok || prefix != "_cgo_hash_Cmacro_" || kind != "Cmacro" || name != "FOO" {
		t.Fatalf("parseCgoExternSymbol = %q, %q, %q, %v", prefix, kind, name, ok)
	}
	if _, _, _, ok := parseCgoExternSymbol("_cgo__Cfunc_bad"); ok {
		t.Fatal("parseCgoExternSymbol accepted empty hash")
	}
	if _, _, _, ok := parseCgoExternSymbol("_cgo_hash_CXXfunc_bad"); ok {
		t.Fatal("parseCgoExternSymbol accepted unsupported kind")
	}
}
