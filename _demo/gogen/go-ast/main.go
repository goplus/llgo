package main

import (
	"fmt"
	"go/ast"
	"go/parser"
	"go/token"
)

func main() {
	testFunctions()
	testNodeMethods()

	fmt.Println("\n=== All go/ast tests passed ===")
}

func testFunctions() {
	fmt.Println("=== Test Functions ===")

	// IsExported
	if !ast.IsExported("Foo") {
		panic("IsExported(\"Foo\") should be true")
	}
	fmt.Println("IsExported(\"Foo\"): true")

	if ast.IsExported("foo") {
		panic("IsExported(\"foo\") should be false")
	}
	fmt.Println("IsExported(\"foo\"): false")

	// NewIdent
	ident := ast.NewIdent("testVar")
	fmt.Printf("NewIdent(\"testVar\"): %s\n", ident.Name)
	if ident.Name != "testVar" {
		panic(fmt.Sprintf("NewIdent failed: expected \"testVar\", got \"%s\"", ident.Name))
	}

	// Create a sample AST for testing Walk and Inspect
	src := `package main
func main() {
	x := 1
}`
	fset := token.NewFileSet()
	file, err := parser.ParseFile(fset, "test.go", src, 0)
	if err != nil {
		panic(err)
	}

	// Walk
	walkCount := 0
	ast.Walk(ast.Visitor(astVisitor{&walkCount}), file)
	fmt.Printf("Walk visited %d nodes\n", walkCount)
	if walkCount == 0 {
		panic("Walk should visit at least 1 node")
	}

	// Inspect
	inspectCount := 0
	ast.Inspect(file, func(n ast.Node) bool {
		if n != nil {
			inspectCount++
		}
		return true
	})
	fmt.Printf("Inspect visited %d nodes\n", inspectCount)
	if inspectCount == 0 {
		panic("Inspect should visit at least 1 node")
	}
	if inspectCount != walkCount {
		panic(fmt.Sprintf("Walk and Inspect should visit same number of nodes: Walk=%d, Inspect=%d", walkCount, inspectCount))
	}

	// SortImports (requires imports in file)
	ast.SortImports(fset, file)
	fmt.Println("SortImports executed successfully")

	fmt.Println("SUCCESS: Functions work correctly\n")
}

type astVisitor struct {
	count *int
}

func (v astVisitor) Visit(node ast.Node) ast.Visitor {
	if node != nil {
		*v.count++
	}
	return v
}

func testNodeMethods() {
	fmt.Println("\n=== Test Node Methods ===")

	fset := token.NewFileSet()

	// Create various AST nodes and test their Pos() and End() methods

	// Ident.Pos
	ident := ast.NewIdent("x")
	identPos := ident.Pos()
	fmt.Printf("Ident.Pos(): %v\n", identPos)

	// AssignStmt.Pos
	assignStmt := &ast.AssignStmt{
		Lhs: []ast.Expr{ident},
		Tok: token.ASSIGN,
		Rhs: []ast.Expr{&ast.BasicLit{Value: "1"}},
	}
	assignPos := assignStmt.Pos()
	fmt.Printf("AssignStmt.Pos(): %v\n", assignPos)

	// BlockStmt.Pos
	blockStmt := &ast.BlockStmt{
		List: []ast.Stmt{assignStmt},
	}
	blockPos := blockStmt.Pos()
	fmt.Printf("BlockStmt.Pos(): %v\n", blockPos)

	// EmptyStmt.Pos
	emptyStmt := &ast.EmptyStmt{}
	emptyPos := emptyStmt.Pos()
	fmt.Printf("EmptyStmt.Pos(): %v\n", emptyPos)

	// CaseClause.Pos
	caseClause := &ast.CaseClause{
		Body: []ast.Stmt{assignStmt},
	}
	casePos := caseClause.Pos()
	fmt.Printf("CaseClause.Pos(): %v\n", casePos)

	// Field.Pos and Field.End
	field := &ast.Field{
		Names: []*ast.Ident{ident},
		Type:  ast.NewIdent("int"),
	}
	fieldPos := field.Pos()
	fieldEnd := field.End()
	fmt.Printf("Field.Pos(): %v, Field.End(): %v\n", fieldPos, fieldEnd)

	// FieldList.NumFields
	fieldList := &ast.FieldList{
		List: []*ast.Field{field, field},
	}
	numFields := fieldList.NumFields()
	fmt.Printf("FieldList.NumFields(): %d\n", numFields)

	// Each field has 1 name, so 2 fields = 2 names total
	if numFields != 2 {
		panic(fmt.Sprintf("Expected 2 fields, got %d", numFields))
	}

	// FuncDecl.Pos
	funcDecl := &ast.FuncDecl{
		Name: ident,
		Type: &ast.FuncType{},
		Body: blockStmt,
	}
	funcDeclPos := funcDecl.Pos()
	fmt.Printf("FuncDecl.Pos(): %v\n", funcDeclPos)

	// FuncType.Pos
	funcType := &ast.FuncType{}
	funcTypePos := funcType.Pos()
	fmt.Printf("FuncType.Pos(): %v\n", funcTypePos)

	// GenDecl.Pos
	genDecl := &ast.GenDecl{
		Tok: token.VAR,
	}
	genDeclPos := genDecl.Pos()
	fmt.Printf("GenDecl.Pos(): %v\n", genDeclPos)

	// BadDecl.Pos
	badDecl := &ast.BadDecl{}
	badDeclPos := badDecl.Pos()
	fmt.Printf("BadDecl.Pos(): %v\n", badDeclPos)

	// File.Pos
	file := &ast.File{
		Name: ident,
	}
	filePos := file.Pos()
	fmt.Printf("File.Pos(): %v\n", filePos)

	// Comment.Pos
	comment := &ast.Comment{
		Text: "// comment",
	}
	commentPos := comment.Pos()
	fmt.Printf("Comment.Pos(): %v\n", commentPos)

	// CommentGroup.Pos and CommentGroup.End
	commentGroup := &ast.CommentGroup{
		List: []*ast.Comment{comment},
	}
	commentGroupPos := commentGroup.Pos()
	commentGroupEnd := commentGroup.End()
	fmt.Printf("CommentGroup.Pos(): %v, CommentGroup.End(): %v\n", commentGroupPos, commentGroupEnd)

	// Test Node interface methods
	var node ast.Node = ident
	nodePos := node.Pos()
	nodeEnd := node.End()
	fmt.Printf("Node.Pos(): %v, Node.End(): %v\n", nodePos, nodeEnd)

	_ = fset
	fmt.Println("SUCCESS: Node methods work correctly\n")
}
