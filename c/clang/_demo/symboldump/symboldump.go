package main

import (
	"fmt"
	"os"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/clang"
)

type Context struct {
	namespaceName string
	className     string
	unit          *clang.TranslationUnit
}

func newContext() *Context {
	return &Context{}
}

func (c *Context) setNamespaceName(name string) {
	c.namespaceName = name
}

func (c *Context) setClassName(name string) {
	c.className = name
}

func (c *Context) setUnit(unit *clang.TranslationUnit) {
	c.unit = unit
}

var context = newContext()

func printCursorLocation(cursor clang.Cursor) {
	loc := cursor.Location()
	var file clang.File
	var line, column, presumedLine, presumedColumn c.Uint
	var presumedFilename clang.String

	loc.SpellingLocation(&file, &line, &column, nil)
	loc.PresumedLocation(&presumedFilename, &presumedLine, &presumedColumn)
	filename := file.FileName()
	defer filename.Dispose()

	c.Printf(c.Str("Location: %s:%d:%d\n"), filename.CStr(), line, column)
	c.Printf(c.Str("Presumed Location: %s:%d:%d\n"), presumedFilename.CStr(), presumedLine, presumedColumn)
}

func printMarcoInfo(cursor clang.Cursor) {
	printCursorLocation(cursor)
	name := cursor.String()
	c.Printf(c.Str("Marco Name: %s\n"), name.CStr())
	ran := cursor.Extent()
	var numTokens c.Uint
	var tokens *clang.Token
	context.unit.Tokenize(ran, &tokens, &numTokens)
	c.Printf(c.Str("Content: "))

	tokensSlice := unsafe.Slice(tokens, int(numTokens))
	for _, tok := range tokensSlice {
		tokStr := context.unit.Token(tok)
		c.Printf(c.Str("%s "), tokStr.CStr())
		tokStr.Dispose()
	}

	c.Printf(c.Str("\n"))
	println("--------------------------------")
}
func printFuncInfo(cursor clang.Cursor) {
	printCursorLocation(cursor)

	cursorStr := cursor.String()
	symbol := cursor.Mangling()
	defer symbol.Dispose()
	defer cursorStr.Dispose()

	if context.namespaceName != "" && context.className != "" {
		fmt.Printf("%s:%s:", context.namespaceName, context.className)
	} else if context.namespaceName != "" {
		fmt.Printf("%s:", context.namespaceName)
	}
	c.Printf(c.Str("%s\n"), cursorStr.CStr())

	if cursor.Kind == clang.CursorCXXMethod || cursor.Kind == clang.CursorFunctionDecl {
		c.Printf(c.Str("symbol:%s\n"), symbol.CStr())

		typeStr := cursor.ResultType().String()
		defer typeStr.Dispose()
		c.Printf(c.Str("Return Type: %s\n"), typeStr.CStr())
		c.Printf(c.Str("Parameters(%d): ( "), cursor.NumArguments())

		for i := 0; i < int(cursor.NumArguments()); i++ {
			argCurSor := cursor.Argument(c.Uint(i))
			argType := argCurSor.Type().String()
			argName := argCurSor.String()
			c.Printf(c.Str("%s %s"), argType.CStr(), argName.CStr())
			if i < int(cursor.NumArguments())-1 {
				c.Printf(c.Str(", "))
			}

			argType.Dispose()
			argName.Dispose()
		}

		c.Printf(c.Str(" )\n"))
		println("--------------------------------")
	}
}

func visit(cursor, parent clang.Cursor, clientData c.Pointer) clang.ChildVisitResult {
	switch cursor.Kind {
	case clang.CursorMacroDefinition:
		printMarcoInfo(cursor)
	case clang.CursorNamespace:
		nameStr := cursor.String()
		context.setNamespaceName(c.GoString(nameStr.CStr()))
		clang.VisitChildren(cursor, visit, nil)
		context.setNamespaceName("")
	case clang.CursorClassDecl:
		nameStr := cursor.String()
		context.setClassName(c.GoString(nameStr.CStr()))
		clang.VisitChildren(cursor, visit, nil)
		context.setClassName("")
	case clang.CursorCXXMethod, clang.CursorFunctionDecl:
		printFuncInfo(cursor)
	case clang.CursorEnumDecl, clang.CursorStructDecl, clang.CursorUnionDecl, clang.CursorTypedefDecl:
		nameStr := cursor.String()
		printCursorLocation(cursor)
		c.Printf(c.Str("Name: %s\n"), nameStr.CStr())
		println("--------------------------------")
	}

	return clang.ChildVisit_Continue
}

func parse(filename *c.Char) {
	index := clang.CreateIndex(0, 0)
	args := make([]*c.Char, 3)
	args[0] = c.Str("-x")
	args[1] = c.Str("c++")
	args[2] = c.Str("-std=c++11")
	unit := index.ParseTranslationUnit(
		filename,
		unsafe.SliceData(args), 3,
		nil, 0,
		clang.DetailedPreprocessingRecord,
	)

	if unit == nil {
		println("Unable to parse translation unit. Quitting.")
		c.Exit(1)
	}

	context.setUnit(unit)
	cursor := unit.Cursor()

	clang.VisitChildren(cursor, visit, nil)
	unit.Dispose()
	index.Dispose()
}

func main() {
	if c.Argc != 2 {
		fmt.Fprintln(os.Stderr, "Usage: <C++ header file>\n")
		return
	} else {
		sourceFile := *c.Advance(c.Argv, 1)
		parse(sourceFile)
	}
}
