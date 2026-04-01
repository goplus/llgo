//go:build !llgo
// +build !llgo

package build

import (
	"go/ast"
	"go/build"
	"go/parser"
	"go/token"
	"os"
	"path/filepath"
	"reflect"
	"strings"
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
			name: "CXXFLAGS without tag",
			line: "#cgo CXXFLAGS: -O2 -stdlib=libc++",
			want: []cgoDecl{
				{
					cxxflags: []string{"-O2", "-stdlib=libc++"},
				},
			},
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

func TestParseCgoCollectsCXXFiles(t *testing.T) {
	dir := t.TempDir()
	src := `package demo

/*
#cgo CFLAGS: -I/c
#cgo CXXFLAGS: -I/cxx
*/
import "unsafe"
`
	goFile := filepath.Join(dir, "demo.go")
	if err := os.WriteFile(goFile, []byte(src), 0644); err != nil {
		t.Fatal(err)
	}
	for _, name := range []string{"foo.c", "bar.cpp", "skip_test.cpp"} {
		if err := os.WriteFile(filepath.Join(dir, name), []byte(""), 0644); err != nil {
			t.Fatal(err)
		}
	}
	fset := token.NewFileSet()
	file, err := parser.ParseFile(fset, goFile, src, parser.ParseComments)
	if err != nil {
		t.Fatal(err)
	}
	pkg := &aPackage{Package: &packages.Package{Fset: fset}}
	buildCtx := build.Default
	srcFiles, _, decls, err := parseCgo_(&buildCtx, pkg, []*ast.File{file})
	if err != nil {
		t.Fatalf("parseCgo_ returned error: %v", err)
	}
	gotFiles := map[string]bool{}
	for _, src := range srcFiles {
		gotFiles[filepath.Base(src.path)] = src.isCXX
	}
	wantFiles := map[string]bool{
		"foo.c":   false,
		"bar.cpp": true,
	}
	if !reflect.DeepEqual(gotFiles, wantFiles) {
		t.Fatalf("parseCgo_ files = %#v, want %#v", gotFiles, wantFiles)
	}
	if !reflect.DeepEqual(decls, []cgoDecl{
		{cflags: []string{"-I/c"}},
		{cxxflags: []string{"-I/cxx"}},
	}) {
		t.Fatalf("parseCgo_ decls = %#v", decls)
	}
}
