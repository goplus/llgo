package main

import (
	"fmt"
	"go/ast"
	"go/token"
)

func main() {
	ident := &ast.Ident{
		NamePos: token.Pos(42),
		Name:    "foo",
	}

	var expr ast.Expr = ident
	pos := expr.Pos()

	fmt.Printf("Position: %d\n", pos)
	if pos != 42 {
		println("FAIL: Position mismatch")
		return
	}

	println("SUCCESS: ast.Expr interface method calls work correctly")
}
