package ast_test

import (
	"go/ast"
	"go/parser"
	"go/token"
	"testing"
)

func TestInspectAndPreorder(t *testing.T) {
	fset := token.NewFileSet()
	file, err := parser.ParseFile(fset, "x.go", "package p\nfunc f(){var x int; _ = x}\n", 0)
	if err != nil {
		t.Fatalf("ParseFile: %v", err)
	}

	countInspect := 0
	ast.Inspect(file, func(n ast.Node) bool {
		if n != nil {
			countInspect++
		}
		return true
	})
	if countInspect == 0 {
		t.Fatal("Inspect visited no nodes")
	}

	countPreorder := 0
	for n := range ast.Preorder(file) {
		if n != nil {
			countPreorder++
		}
	}
	if countPreorder == 0 {
		t.Fatal("Preorder visited no nodes")
	}
}
