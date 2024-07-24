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

var context = newContext()

func print_cursor_info(cursor clang.Cursor) {
	loc := cursor.Location()
	var file clang.File
	var line, column c.Uint

	loc.SpellingLocation(&file, &line, &column, nil)
	filename := file.FileName()

	c.Printf(c.Str("%s:%d:%d\n"), filename.CStr(), line, column)

	cursorStr := cursor.String()
	symbol := cursor.Mangling()
	defer symbol.Dispose()
	defer cursorStr.Dispose()
	defer filename.Dispose()

	if context.namespaceName != "" && context.className != "" {
		fmt.Printf("%s:%s:", context.namespaceName, context.className)
	} else if context.namespaceName != "" {
		fmt.Printf("%s:", context.namespaceName)
	}
	c.Printf(c.Str("%s\n"), cursorStr.CStr())

	if cursor.Kind == clang.CXXMethod || cursor.Kind == clang.FunctionDecl {
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
	if cursor.Kind == clang.Namespace {
		nameStr := cursor.String()
		context.setNamespaceName(c.GoString(nameStr.CStr()))
		clang.VisitChildren(cursor, visit, nil)
		context.setNamespaceName("")
	} else if cursor.Kind == clang.ClassDecl {
		nameStr := cursor.String()
		context.setClassName(c.GoString(nameStr.CStr()))
		clang.VisitChildren(cursor, visit, nil)
		context.setClassName("")
	} else if cursor.Kind == clang.CXXMethod || cursor.Kind == clang.FunctionDecl {
		print_cursor_info(cursor)
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
		clang.TranslationUnit_None,
	)

	if unit == nil {
		println("Unable to parse translation unit. Quitting.")
		c.Exit(1)
	}

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
