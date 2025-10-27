package main

import (
	"fmt"
	"go/ast"
	"go/token"
)

func main() {
	// Create an identifier node
	ident := &ast.Ident{
		NamePos: token.Pos(1),
		Name:    "foo",
	}
	
	// Convert to ast.Expr interface
	// The ast.Expr interface has a private method exprNode()
	// Before the fix, this interface conversion would cause segfaults
	// when calling methods because the PkgPath was incorrectly set
	var expr ast.Expr = ident
	
	// Call methods on the interface
	fmt.Printf("Identifier: %s\n", ident.Name)
	fmt.Printf("Position: %d\n", expr.Pos())
	
	println("SUCCESS: ast.Expr interface conversion works correctly")
}
