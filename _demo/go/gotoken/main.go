package main

import (
	"fmt"
	"go/token"
)

func main() {
	testPos()
	testToken()
	testFileSet()
	testFile()
	testPosition()
	testTokenPrecedence()
	testTokenKeywords()
	testUtilityFunctions()
}

func testPos() {
	fmt.Println("=== Test Pos ===")
	
	pos1 := token.Pos(100)
	pos2 := token.Pos(200)
	
	fmt.Printf("Pos1: %d, Pos2: %d\n", pos1, pos2)
	fmt.Printf("Pos1.IsValid(): %v\n", pos1.IsValid())
	
	noPos := token.NoPos
	fmt.Printf("NoPos: %d, IsValid: %v\n", noPos, noPos.IsValid())
	
	fmt.Println("SUCCESS: Pos operations work correctly\n")
}

func testToken() {
	fmt.Println("\n=== Test Token Types ===")
	
	tokens := []token.Token{
		token.ILLEGAL,
		token.EOF,
		token.COMMENT,
		token.IDENT,
		token.INT,
		token.FLOAT,
		token.IMAG,
		token.CHAR,
		token.STRING,
		token.ADD,
		token.SUB,
		token.MUL,
		token.QUO,
		token.REM,
		token.AND,
		token.OR,
		token.XOR,
		token.SHL,
		token.SHR,
		token.AND_NOT,
		token.ADD_ASSIGN,
		token.SUB_ASSIGN,
		token.MUL_ASSIGN,
		token.QUO_ASSIGN,
		token.REM_ASSIGN,
		token.AND_ASSIGN,
		token.OR_ASSIGN,
		token.XOR_ASSIGN,
		token.SHL_ASSIGN,
		token.SHR_ASSIGN,
		token.AND_NOT_ASSIGN,
		token.LAND,
		token.LOR,
		token.ARROW,
		token.INC,
		token.DEC,
		token.EQL,
		token.LSS,
		token.GTR,
		token.ASSIGN,
		token.NOT,
		token.NEQ,
		token.LEQ,
		token.GEQ,
		token.DEFINE,
		token.ELLIPSIS,
		token.LPAREN,
		token.LBRACK,
		token.LBRACE,
		token.COMMA,
		token.PERIOD,
		token.RPAREN,
		token.RBRACK,
		token.RBRACE,
		token.SEMICOLON,
		token.COLON,
	}
	
	for _, tok := range tokens {
		fmt.Printf("Token: %s (String: %q)\n", tok, tok.String())
	}
	
	fmt.Println("SUCCESS: Token types work correctly\n")
}

func testTokenKeywords() {
	fmt.Println("\n=== Test Keywords ===")
	
	keywords := []token.Token{
		token.BREAK,
		token.CASE,
		token.CHAN,
		token.CONST,
		token.CONTINUE,
		token.DEFAULT,
		token.DEFER,
		token.ELSE,
		token.FALLTHROUGH,
		token.FOR,
		token.FUNC,
		token.GO,
		token.GOTO,
		token.IF,
		token.IMPORT,
		token.INTERFACE,
		token.MAP,
		token.PACKAGE,
		token.RANGE,
		token.RETURN,
		token.SELECT,
		token.STRUCT,
		token.SWITCH,
		token.TYPE,
		token.VAR,
	}
	
	for _, kw := range keywords {
		fmt.Printf("Keyword: %s, IsKeyword: %v\n", kw, kw.IsKeyword())
	}
	
	fmt.Println("SUCCESS: Keyword checks work correctly\n")
}

func testTokenPrecedence() {
	fmt.Println("\n=== Test Token Precedence ===")
	
	operators := []token.Token{
		token.ADD,
		token.SUB,
		token.MUL,
		token.QUO,
		token.REM,
		token.LAND,
		token.LOR,
		token.EQL,
		token.LSS,
		token.GTR,
	}
	
	for _, op := range operators {
		fmt.Printf("Operator: %s, Precedence: %d\n", op, op.Precedence())
	}
	
	fmt.Println("SUCCESS: Precedence operations work correctly\n")
}

func testFileSet() {
	fmt.Println("\n=== Test FileSet ===")
	
	fset := token.NewFileSet()
	
	file1 := fset.AddFile("file1.go", -1, 1000)
	file2 := fset.AddFile("file2.go", -1, 2000)
	
	fmt.Printf("Added file1: %s, Base: %d, Size: %d\n", file1.Name(), file1.Base(), file1.Size())
	fmt.Printf("Added file2: %s, Base: %d, Size: %d\n", file2.Name(), file2.Base(), file2.Size())
	
	pos := file1.Pos(100)
	retrievedFile := fset.File(pos)
	if retrievedFile != file1 {
		panic("FileSet.File failed to retrieve correct file")
	}
	
	position := fset.Position(pos)
	fmt.Printf("Position at offset 100: %s\n", position)
	
	fmt.Println("SUCCESS: FileSet operations work correctly\n")
}

func testFile() {
	fmt.Println("\n=== Test File ===")
	
	fset := token.NewFileSet()
	file := fset.AddFile("test.go", -1, 1000)
	
	file.AddLine(0)
	file.AddLine(50)
	file.AddLine(100)
	
	fmt.Printf("File name: %s\n", file.Name())
	fmt.Printf("File base: %d\n", file.Base())
	fmt.Printf("File size: %d\n", file.Size())
	fmt.Printf("File line count: %d\n", file.LineCount())
	
	pos := file.Pos(50)
	fmt.Printf("Pos at offset 50: %d\n", pos)
	
	offset := file.Offset(pos)
	fmt.Printf("Offset of pos: %d\n", offset)
	
	line := file.Line(pos)
	fmt.Printf("Line number at pos: %d\n", line)
	
	lineStart := file.LineStart(2)
	fmt.Printf("Line 2 starts at pos: %d\n", lineStart)
	
	position := file.Position(pos)
	fmt.Printf("Position: %s\n", position)
	
	fmt.Println("SUCCESS: File operations work correctly\n")
}

func testPosition() {
	fmt.Println("\n=== Test Position ===" )
	
	pos := token.Position{
		Filename: "test.go",
		Offset:   100,
		Line:     5,
		Column:   10,
	}
	
	fmt.Printf("Position: %s\n", pos.String())
	fmt.Printf("Filename: %s, Line: %d, Column: %d, Offset: %d\n", 
		pos.Filename, pos.Line, pos.Column, pos.Offset)
	fmt.Printf("IsValid: %v\n", pos.IsValid())
	
	invalidPos := token.Position{}
	fmt.Printf("Invalid position IsValid: %v\n", invalidPos.IsValid())
	
	fmt.Println("SUCCESS: Position operations work correctly\n")
}

func testUtilityFunctions() {
	fmt.Println("\n=== Test Utility Functions ===")

	fmt.Printf("IsExported(\"Foo\"): %v\n", token.IsExported("Foo"))
	fmt.Printf("IsExported(\"foo\"): %v\n", token.IsExported("foo"))
	fmt.Printf("IsExported(\"_foo\"): %v\n", token.IsExported("_foo"))

	fmt.Printf("IsIdentifier(\"foo\"): %v\n", token.IsIdentifier("foo"))
	fmt.Printf("IsIdentifier(\"foo123\"): %v\n", token.IsIdentifier("foo123"))
	fmt.Printf("IsIdentifier(\"123foo\"): %v\n", token.IsIdentifier("123foo"))
	fmt.Printf("IsIdentifier(\"foo-bar\"): %v\n", token.IsIdentifier("foo-bar"))

	fmt.Printf("IsKeyword(\"func\"): %v\n", token.IsKeyword("func"))
	fmt.Printf("IsKeyword(\"if\"): %v\n", token.IsKeyword("if"))
	fmt.Printf("IsKeyword(\"foo\"): %v\n", token.IsKeyword("foo"))

	lookupFunc := token.Lookup("func")
	fmt.Printf("Lookup(\"func\"): %s\n", lookupFunc)

	lookupIdent := token.Lookup("myVar")
	fmt.Printf("Lookup(\"myVar\"): %s\n", lookupIdent)

	lookupFor := token.Lookup("for")
	fmt.Printf("Lookup(\"for\"): %s\n", lookupFor)

	fmt.Println("SUCCESS: Utility functions work correctly\n")
}
