package main

import (
	"fmt"
	"go/ast"
	"go/token"
)

func main() {
	testIdentToExpr()
	testExprPos()
	testExprEnd()
}

func testIdentToExpr() {
	fmt.Println("=== Test Ident to Expr Conversion ===")
	ident := &ast.Ident{
		NamePos: token.Pos(1),
		Name:    "foo",
	}

	var expr ast.Expr = ident
	if expr == nil {
		panic("Interface conversion failed: expr is nil")
	}
	fmt.Printf("Identifier: %s\n", ident.Name)
	fmt.Println("SUCCESS: ast.Expr interface conversion works correctly")
}

func testExprPos() {
	fmt.Println("\n=== Test Expr.Pos() Method ===")
	expectedPos := token.Pos(42)
	ident := &ast.Ident{
		NamePos: expectedPos,
		Name:    "bar",
	}

	var expr ast.Expr = ident
	actualPos := expr.Pos()
	if actualPos != expectedPos {
		panic(fmt.Sprintf("Pos() returned wrong position: expected %d, got %d", expectedPos, actualPos))
	}
	fmt.Printf("Position: %d\n", actualPos)
	fmt.Println("SUCCESS: Expr.Pos() returns correct position")
}

func testExprEnd() {
	fmt.Println("\n=== Test Expr.End() Method ===")
	name := "testvar"
	ident := &ast.Ident{
		NamePos: token.Pos(10),
		Name:    name,
	}

	var expr ast.Expr = ident
	expectedEnd := token.Pos(10 + len(name))
	actualEnd := expr.End()
	if actualEnd != expectedEnd {
		panic(fmt.Sprintf("End() returned wrong position: expected %d, got %d", expectedEnd, actualEnd))
	}
	fmt.Printf("End position: %d\n", actualEnd)
	fmt.Println("SUCCESS: Expr.End() returns correct position")
}
