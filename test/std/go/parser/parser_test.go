//go:build !llgo

package parser_test

import (
	"errors"
	"go/ast"
	"go/parser"
	"go/scanner"
	"go/token"
	"io/fs"
	"os"
	"path/filepath"
	"strings"
	"testing"
)

func TestParseFileWithCommentsAndSkipObjectResolution(t *testing.T) {
	fset := token.NewFileSet()
	source := `// Package doc
package sample

//go:build ignore
import "fmt"

// HelpfulComment documents the constant.
const HelpfulComment = 42
`

	mode := parser.ParseComments | parser.SkipObjectResolution
	file, err := parser.ParseFile(fset, "sample.go", source, mode)
	if err != nil {
		t.Fatalf("ParseFile returned error: %v", err)
	}

	if file == nil || file.Name == nil || file.Name.Name != "sample" {
		t.Fatalf("ParseFile package name = %v, want sample", file.Name)
	}
	if file.Scope != nil {
		t.Fatal("ParseFile with SkipObjectResolution should leave File.Scope nil")
	}
	if len(file.Imports) != 1 || file.Imports[0].Path.Value != "\"fmt\"" {
		t.Fatalf("ParseFile imports = %v, want [\"fmt\"]", file.Imports)
	}
	if len(file.Comments) == 0 {
		t.Fatal("ParseFile with ParseComments should populate File.Comments")
	}
	if file.Doc == nil || !strings.Contains(file.Doc.Text(), "Package doc") {
		t.Fatalf("ParseFile doc = %q, want to contain Package doc", file.Doc.Text())
	}
}

func TestParseExprVariants(t *testing.T) {
	expr, err := parser.ParseExpr("1 + 2*3")
	if err != nil {
		t.Fatalf("ParseExpr returned error: %v", err)
	}
	binary, ok := expr.(*ast.BinaryExpr)
	if !ok {
		t.Fatalf("ParseExpr returned %T, want *ast.BinaryExpr", expr)
	}
	if binary.Op != token.ADD {
		t.Fatalf("ParseExpr operator = %v, want +", binary.Op)
	}

	fset := token.NewFileSet()
	_, err = parser.ParseExprFrom(fset, "expr.go", "1 @ 2", parser.AllErrors)
	if err == nil {
		t.Fatal("ParseExprFrom should fail for invalid tokens")
	}
	var list scanner.ErrorList
	if !errors.As(err, &list) {
		t.Fatalf("ParseExprFrom error type = %T, want scanner.ErrorList", err)
	}
}

func TestParseDirWithFilter(t *testing.T) {
	dir := t.TempDir()
	write := func(name, contents string) {
		if err := os.WriteFile(filepath.Join(dir, name), []byte(contents), 0o644); err != nil {
			t.Fatalf("write %s: %v", name, err)
		}
	}

	write("keep.go", "package main\n\nconst A = 1\n")
	write("skip_ignore.go", "package main\n\nconst Skip = true\n")
	write("another_test.go", "package main\n\nfunc TestX(t *testing.T) {}\n")

	filter := func(info fs.FileInfo) bool {
		return !strings.HasSuffix(info.Name(), "_ignore.go")
	}

	fset := token.NewFileSet()
	pkgs, err := parser.ParseDir(fset, dir, filter, parser.PackageClauseOnly)
	if err != nil {
		t.Fatalf("ParseDir returned error: %v", err)
	}
	if len(pkgs) != 1 {
		t.Fatalf("ParseDir packages = %d, want 1", len(pkgs))
	}
	pkg, ok := pkgs["main"]
	if !ok {
		t.Fatalf("ParseDir keys = %v, want to include main", mapsKeys(pkgs))
	}
	if len(pkg.Files) != 2 {
		t.Fatalf("ParseDir package files = %d, want 2 (keep.go and another_test.go)", len(pkg.Files))
	}
}

func TestModeBitComposition(t *testing.T) {
	var mode parser.Mode
	mode |= parser.PackageClauseOnly
	mode |= parser.ImportsOnly
	mode |= parser.ParseComments
	mode |= parser.Trace
	mode |= parser.DeclarationErrors
	mode |= parser.SpuriousErrors
	mode |= parser.SkipObjectResolution

	checks := []struct {
		name string
		bit  parser.Mode
	}{
		{"PackageClauseOnly", parser.PackageClauseOnly},
		{"ImportsOnly", parser.ImportsOnly},
		{"ParseComments", parser.ParseComments},
		{"Trace", parser.Trace},
		{"DeclarationErrors", parser.DeclarationErrors},
		{"SpuriousErrors", parser.SpuriousErrors},
		{"SkipObjectResolution", parser.SkipObjectResolution},
	}

	for _, tc := range checks {
		if mode&tc.bit == 0 {
			t.Fatalf("mode missing bit %s", tc.name)
		}
	}

	if parser.AllErrors != parser.SpuriousErrors {
		t.Fatalf("AllErrors constant (%v) must equal SpuriousErrors (%v)", parser.AllErrors, parser.SpuriousErrors)
	}
}

func mapsKeys[K comparable, V any](m map[K]V) []K {
	var out []K
	for k := range m {
		out = append(out, k)
	}
	return out
}
