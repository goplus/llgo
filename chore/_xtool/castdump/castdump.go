package main

import (
	"fmt"
	"os"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/clang"
)

type Data struct {
	Depth c.Uint
	Unit  *clang.TranslationUnit
}

var accessMap = map[clang.CXXAccessSpecifier]string{
	clang.CXXInvalidAccessSpecifier: "invalid",
	clang.CXXPublic:                 "public",
	clang.CXXProtected:              "protected",
	clang.CXXPrivate:                "private",
}

func accessToString(spec clang.CXXAccessSpecifier) string {
	if str, ok := accessMap[spec]; ok {
		return str
	}
	return "unknown"
}

func visit(cursor, parent clang.Cursor, ClientData c.Pointer) clang.ChildVisitResult {
	data := (*Data)(ClientData)
	printAST(cursor, data)
	return clang.ChildVisit_Continue
}

func printLocation(cursor clang.Cursor) {
	loc := cursor.Location()
	var file clang.File
	var line, column c.Uint

	loc.SpellingLocation(&file, &line, &column, nil)
	filename := file.FileName()
	defer filename.Dispose()

	c.Printf(c.Str("(Loc:%s:%d:%d)\n"), filename.CStr(), line, column)
}

func printAccess(cursor clang.Cursor) {
	kind := cursor.Kind.String()
	spell := cursor.String()
	defer kind.Dispose()
	defer spell.Dispose()

	c.Printf(c.Str("%s: %s %s\n"), kind.CStr(), spell.CStr(), c.AllocaCStr(accessToString(cursor.CXXAccessSpecifier())))
}

func printMacro(cursor clang.Cursor, unit *clang.TranslationUnit) {
	kind := cursor.Kind.String()
	defer kind.Dispose()

	c.Printf(c.Str("%s: "), kind.CStr())
	ran := cursor.Extent()
	var numTokens c.Uint
	var tokens *clang.Token
	unit.Tokenize(ran, &tokens, &numTokens)
	tokensSlice := unsafe.Slice(tokens, int(numTokens))
	for _, tok := range tokensSlice {
		tokStr := unit.Token(tok)
		c.Printf(c.Str("%s "), tokStr.CStr())
		tokStr.Dispose()
	}
	c.Printf(c.Str("\n"))
}

func printFunc(cursor clang.Cursor) {
	kind := cursor.Kind.String()
	spell := cursor.String()
	symbol := cursor.Mangling()
	defer symbol.Dispose()
	defer kind.Dispose()
	defer spell.Dispose()

	c.Printf(c.Str("%s: %s (Symbol: %s)"), kind.CStr(), spell.CStr(), symbol.CStr())
}

func printDefault(cursor clang.Cursor) {
	kind := cursor.Kind.String()
	spell := cursor.String()
	defer kind.Dispose()
	defer spell.Dispose()

	if cursor.Type().Kind != clang.TypeInvalid {
		typeSpell := cursor.Type().String()
		c.Printf(c.Str("%s: %s (Type: %s)"), kind.CStr(), spell.CStr(), typeSpell.CStr())
		typeSpell.Dispose()
	} else {
		c.Printf(c.Str("%s: %s"), kind.CStr(), spell.CStr())
	}
}

func printAST(cursor clang.Cursor, data *Data) {
	kind := cursor.Kind.String()
	spell := cursor.String()

	for i := c.Uint(0); i < data.Depth; i++ {
		c.Fputs(c.Str("  "), c.Stdout)
	}

	switch cursor.Kind {
	case clang.CursorCXXAccessSpecifier:
		printAccess(cursor)
	case clang.CursorMacroDefinition:
		printMacro(cursor, data.Unit)
	case clang.CursorFunctionDecl, clang.CursorCXXMethod, clang.CursorConstructor, clang.CursorDestructor:
		printFunc(cursor)
	default:
		printDefault(cursor)
	}

	printLocation(cursor)

	data.Depth++
	clang.VisitChildren(cursor, visit, c.Pointer(data))
	data.Depth--

	kind.Dispose()
	spell.Dispose()
}

func main() {
	if c.Argc != 2 {
		fmt.Fprintln(os.Stderr, "Usage: castdump <headerFile>")
		return
	}

	args := make([]*c.Char, 3)
	args[0] = c.Str("-x")
	args[1] = c.Str("c++")
	args[2] = c.Str("-std=c++11")

	sourceFile := *c.Advance(c.Argv, 1)
	index := clang.CreateIndex(0, 0)
	unit := index.ParseTranslationUnit(
		sourceFile,
		unsafe.SliceData(args), 3,
		nil, 0,
		clang.DetailedPreprocessingRecord,
	)
	defer index.Dispose()
	defer unit.Dispose()

	if unit == nil {
		println("Unable to parse translation unit. Quitting.")
		c.Exit(1)
	}

	cursor := unit.Cursor()

	Data := &Data{
		Depth: 0,
		Unit:  unit,
	}
	printAST(cursor, Data)
}
