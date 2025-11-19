package main

import (
	"fmt"
	"go/token"
)

func main() {
	testIsExported()
	testFileSet()
	testPos()
	testPosition()
	testToken()

	fmt.Println("\n=== All go/token tests passed ===")
}

func testIsExported() {
	fmt.Println("=== Test IsExported ===")

	// Test exported name
	if !token.IsExported("Foo") {
		panic("IsExported(\"Foo\") should be true")
	}
	fmt.Println("IsExported(\"Foo\"): true")

	// Test unexported name
	if token.IsExported("foo") {
		panic("IsExported(\"foo\") should be false")
	}
	fmt.Println("IsExported(\"foo\"): false")

	fmt.Println("SUCCESS: IsExported tests passed\n")
}

func testFileSet() {
	fmt.Println("=== Test FileSet ===")

	// Test NewFileSet
	fset := token.NewFileSet()
	if fset == nil {
		panic("NewFileSet() returned nil")
	}
	fmt.Println("NewFileSet(): created successfully")

	// Add a file
	file := fset.AddFile("test.go", -1, 100)
	file.SetLines([]int{0, 10, 20, 30})

	// Test PositionFor
	pos := file.Pos(15)
	position := fset.PositionFor(pos, true)
	fmt.Printf("FileSet.PositionFor(): %s\n", position.String())

	if position.Filename != "test.go" {
		panic(fmt.Sprintf("Expected filename 'test.go', got '%s'", position.Filename))
	}

	fmt.Println("SUCCESS: FileSet tests passed\n")
}

func testPos() {
	fmt.Println("=== Test Pos ===")

	// Test valid Pos
	validPos := token.Pos(100)
	if !validPos.IsValid() {
		panic("Pos(100).IsValid() should be true")
	}
	fmt.Printf("Pos(100).IsValid(): %v\n", validPos.IsValid())

	// Test invalid Pos
	invalidPos := token.NoPos
	if invalidPos.IsValid() {
		panic("NoPos.IsValid() should be false")
	}
	fmt.Printf("NoPos.IsValid(): %v\n", invalidPos.IsValid())

	fmt.Println("SUCCESS: Pos tests passed\n")
}

func testPosition() {
	fmt.Println("=== Test Position ===")

	// Test valid Position
	validPosition := token.Position{
		Filename: "test.go",
		Line:     10,
		Column:   5,
	}

	if !validPosition.IsValid() {
		panic("Position.IsValid() should be true for valid position")
	}
	fmt.Printf("Position.IsValid(): %v\n", validPosition.IsValid())

	// Test Position.String()
	posStr := validPosition.String()
	fmt.Printf("Position.String(): %s\n", posStr)

	if posStr != "test.go:10:5" {
		panic(fmt.Sprintf("Expected 'test.go:10:5', got '%s'", posStr))
	}

	// Test invalid Position
	invalidPosition := token.Position{}
	if invalidPosition.IsValid() {
		panic("Empty Position.IsValid() should be false")
	}
	fmt.Printf("Invalid Position.IsValid(): %v\n", invalidPosition.IsValid())

	fmt.Println("SUCCESS: Position tests passed\n")
}

func testToken() {
	fmt.Println("=== Test Token ===")

	// Test Token.String()
	addToken := token.ADD
	addStr := addToken.String()
	fmt.Printf("ADD.String(): %s\n", addStr)

	if addStr != "+" {
		panic(fmt.Sprintf("Expected '+', got '%s'", addStr))
	}

	// Test Token.Precedence()
	addPrec := addToken.Precedence()
	fmt.Printf("ADD.Precedence(): %d\n", addPrec)

	if addPrec == 0 {
		panic("ADD precedence should not be 0")
	}

	// Test another token
	mulToken := token.MUL
	mulPrec := mulToken.Precedence()
	fmt.Printf("MUL.Precedence(): %d\n", mulPrec)

	// MUL should have higher precedence than ADD
	if mulPrec <= addPrec {
		panic("MUL should have higher precedence than ADD")
	}

	fmt.Println("SUCCESS: Token tests passed\n")
}
