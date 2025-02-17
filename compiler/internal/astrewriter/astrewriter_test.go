package astrewriter

import (
	"go/ast"
	"go/importer"
	"go/parser"
	"go/printer"
	"go/token"
	"go/types"
	"strings"
	"testing"

	"golang.org/x/tools/go/ast/astutil"
	"golang.org/x/tools/go/packages"
)

func TestASTRewriter(t *testing.T) {
	mockRewriter := &NodeRewriter{
		Rewrite: func(c *astutil.Cursor) bool {
			if lit, ok := c.Node().(*ast.BasicLit); ok && lit.Kind == token.INT {
				lit.Value = "42"
			}
			return true
		},
	}

	input := `package main

func main() {
	x := 1
	y := 2
	println(x + y)
}
`

	expected := `package main

func main() {
	x := 42
	y := 42
	println(x + y)
}
`

	testRewrite(t, input, expected, mockRewriter)
}

func TestMultipleRewriters(t *testing.T) {
	intRewriter := &NodeRewriter{
		Rewrite: func(c *astutil.Cursor) bool {
			if lit, ok := c.Node().(*ast.BasicLit); ok && lit.Kind == token.INT {
				lit.Value = "42"
			}
			return true
		},
	}

	stringRewriter := &NodeRewriter{
		Rewrite: func(c *astutil.Cursor) bool {
			if lit, ok := c.Node().(*ast.BasicLit); ok && lit.Kind == token.STRING {
				lit.Value = `"rewritten"`
			}
			return true
		},
	}

	input := `package main

func main() {
	x := 1
	s := "hello"
	println(x, s)
}
`

	expected := `package main

func main() {
	x := 42
	s := "rewritten"
	println(x, s)
}
`

	testRewrite(t, input, expected,
		intRewriter,
		stringRewriter,
	)
}

func TestRewritePkg(t *testing.T) {
	mockRewriter := &NodeRewriter{
		Rewrite: func(c *astutil.Cursor) bool {
			if lit, ok := c.Node().(*ast.BasicLit); ok && lit.Kind == token.INT {
				lit.Value = "42"
			}
			return true
		},
	}

	// Test input with multiple files in the same package
	file1 := `package test

func Add(x int) int {
	return x + 1
}
`

	file2 := `package test

func Multiply(x int) int {
	return x * 2
}
`

	expected1 := `package test

func Add(x int) int {
	return x + 42
}
`

	expected2 := `package test

func Multiply(x int) int {
	return x * 42
}
`

	// Create a sorted list of filenames and their contents
	type fileInfo struct {
		name    string
		content string
	}
	files := []fileInfo{
		{"file1.go", file1},
		{"file2.go", file2},
	}

	fset := token.NewFileSet()
	pkgFiles := make([]*ast.File, 0, len(files))

	// Parse all files in a deterministic order
	for _, f := range files {
		file, err := parser.ParseFile(fset, f.name, f.content, parser.ParseComments)
		if err != nil {
			t.Fatalf("failed to parse %s: %v", f.name, err)
		}
		pkgFiles = append(pkgFiles, file)
	}

	// Type check the package
	info := &types.Info{
		Types: make(map[ast.Expr]types.TypeAndValue),
		Defs:  make(map[*ast.Ident]types.Object),
		Uses:  make(map[*ast.Ident]types.Object),
	}
	conf := types.Config{Importer: importer.Default()}
	pkg, err := conf.Check("test", fset, pkgFiles, info)
	if err != nil {
		t.Fatalf("failed to type check package: %v", err)
	}

	// Create a packages.Package
	ppkg := &packages.Package{
		Types:  pkg,
		Fset:   fset,
		Syntax: pkgFiles,
	}

	// Rewrite the package
	rewriter := NewASTRewriter(mockRewriter)
	err = rewriter.RewritePkg(ppkg)
	if err != nil {
		t.Fatalf("failed to rewrite package: %v", err)
	}

	// Verify the results
	for i, file := range pkgFiles {
		var buf strings.Builder
		err = printer.Fprint(&buf, fset, file)
		if err != nil {
			t.Fatalf("failed to print AST for file %d: %v", i, err)
		}

		got := buf.String()
		expected := map[int]string{
			0: expected1,
			1: expected2,
		}[i]

		if got != expected {
			t.Errorf("file %d:\ngot:\n%s\nwant:\n%s", i, got, expected)
		}
	}
}

func testRewrite(t *testing.T, input, expected string, rewriters ...*NodeRewriter) {
	t.Helper()
	info := &types.Info{
		Types: make(map[ast.Expr]types.TypeAndValue),
	}
	got := parseAndRewrite(t, info, input, rewriters...)
	got = strings.TrimSpace(got)
	expected = strings.TrimSpace(expected)

	if got != expected {
		t.Errorf("\ngot:\n%s\nwant:\n%s", got, expected)
	}
}

func parseAndRewrite(t *testing.T, info *types.Info, input string, rewriters ...*NodeRewriter) string {
	fset := token.NewFileSet()
	file, err := parser.ParseFile(fset, "", input, parser.ParseComments)
	if err != nil {
		t.Fatalf("failed to parse source: %v", err)
	}

	conf := types.Config{Importer: importer.Default()}
	_, err = conf.Check("", fset, []*ast.File{file}, info)
	if err != nil {
		t.Fatalf("failed to check AST: %v", err)
	}

	rewriter := NewASTRewriter(rewriters...)
	err = rewriter.RewriteFile(file)
	if err != nil {
		t.Fatalf("failed to rewrite AST: %v", err)
	}

	var buf strings.Builder
	err = printer.Fprint(&buf, fset, file)
	if err != nil {
		t.Fatalf("failed to print AST: %v", err)
	}

	return buf.String()
}
