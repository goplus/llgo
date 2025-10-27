package main

import (
	"fmt"
	"go/ast"
	"go/token"
)

func main() {
	ident := &ast.Ident{
		NamePos: token.Pos(1),
		Name:    "foo",
	}
	
	var expr ast.Expr = ident
	fmt.Printf("Identifier: %s\n", ident.Name)
	fmt.Printf("Position: %d\n", expr.Pos())
	
	println("SUCCESS: ast.Expr interface conversion works correctly")
}
