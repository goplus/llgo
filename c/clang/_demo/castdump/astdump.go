package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/clang"
)

func visit(cursor, parent clang.Cursor, clientData c.Pointer) clang.ChildVisitResult {
	depth := *(*c.Uint)(clientData)
	printAST(cursor, depth+1)
	return clang.ChildVisit_Continue
}

func printAST(cursor clang.Cursor, depth c.Uint) {
	cursorKind := cursor.Kind.String()
	cursorSpelling := cursor.String()

	for i := c.Uint(0); i < depth; i++ {
		c.Fputs(c.Str("  "), c.Stdout)
	}

	c.Printf(c.Str("%s: %s\n"), cursorKind.CStr(), cursorSpelling.CStr())

	cursorKind.Dispose()
	cursorSpelling.Dispose()

	clang.VisitChildren(cursor, visit, c.Pointer(&depth))
}

func main() {
	index := clang.CreateIndex(0, 0)
	unit := index.ParseTranslationUnit(
		c.Str("todo"),
		nil, 0,
		nil, 0,
		clang.TranslationUnit_None,
	)

	if unit == nil {
		println("Unable to parse translation unit. Quitting.")
		c.Exit(1)
	}

	cursor := unit.Cursor()
	printAST(cursor, 0)

	unit.Dispose()
	index.Dispose()
}
