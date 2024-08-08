package parse

import (
	"errors"
	"strconv"
	"strings"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/clang"
)

type Context struct {
	namespaceName string
	className     string
	prefixes      []string
	symbolMap     map[string]string
	currentFile   string
	nameCounts    map[string]int
}

func newContext(prefixes []string) *Context {
	return &Context{
		prefixes:   prefixes,
		symbolMap:  make(map[string]string),
		nameCounts: make(map[string]int),
	}
}

func (c *Context) setNamespaceName(name string) {
	c.namespaceName = name
}

func (c *Context) setClassName(name string) {
	c.className = name
}

func (c *Context) setCurrentFile(filename string) {
	c.currentFile = filename
}

func (c *Context) removePrefix(str string) string {
	for _, prefix := range c.prefixes {
		if strings.HasPrefix(str, prefix) {
			return strings.TrimPrefix(str, prefix)
		}
	}
	return str
}

func (c *Context) genGoName(name string) string {
	class := c.removePrefix(c.className)
	name = c.removePrefix(name)

	var baseName string
	if class == "" {
		baseName = name
	} else {
		baseName = c.genMethodName(class, name)
	}

	return c.addSuffix(baseName)
}

func (c *Context) genMethodName(class, name string) string {
	prefix := "(*" + class + ")."
	if class == name {
		return prefix + "Init"
	}
	if name == "~"+class {
		return prefix + "Dispose"
	}
	return prefix + name
}

func (c *Context) addSuffix(name string) string {
	c.nameCounts[name]++
	count := c.nameCounts[name]
	if count > 1 {
		return name + "__" + strconv.Itoa(count-1)
	}
	return name
}

var context = newContext([]string{})

func collectFuncInfo(cursor clang.Cursor) {
	cursorStr := cursor.String()
	symbol := cursor.Mangling()

	name := c.GoString(cursorStr.CStr())
	symbolName := c.GoString(symbol.CStr())
	if len(symbolName) >= 1 && symbolName[0] == '_' {
		symbolName = symbolName[1:]
	}
	defer symbol.Dispose()
	defer cursorStr.Dispose()

	goName := context.genGoName(name)
	context.symbolMap[symbolName] = goName
}

func visit(cursor, parent clang.Cursor, clientData c.Pointer) clang.ChildVisitResult {
	if cursor.Kind == clang.CursorNamespace {
		nameStr := cursor.String()
		defer nameStr.Dispose()

		context.setNamespaceName(c.GoString(nameStr.CStr()))
		clang.VisitChildren(cursor, visit, nil)
		context.setNamespaceName("")
	} else if cursor.Kind == clang.CursorClassDecl {
		nameStr := cursor.String()
		defer nameStr.Dispose()

		context.setClassName(c.GoString(nameStr.CStr()))
		clang.VisitChildren(cursor, visit, nil)
		context.setClassName("")
	} else if cursor.Kind == clang.CursorCXXMethod || cursor.Kind == clang.CursorFunctionDecl || cursor.Kind == clang.CursorConstructor || cursor.Kind == clang.CursorDestructor {
		loc := cursor.Location()
		var file clang.File
		var line, column c.Uint

		loc.SpellingLocation(&file, &line, &column, nil)
		filename := file.FileName()

		if c.Strcmp(filename.CStr(), c.AllocaCStr(context.currentFile)) == 0 {
			collectFuncInfo(cursor)
		}

		defer filename.Dispose()
	}

	return clang.ChildVisit_Continue
}

func ParseHeaderFile(filepaths []string, prefixes []string) (map[string]string, error) {
	index := clang.CreateIndex(0, 0)
	args := make([]*c.Char, 3)
	args[0] = c.Str("-x")
	args[1] = c.Str("c++")
	args[2] = c.Str("-std=c++11")
	context = newContext(prefixes)

	for _, filename := range filepaths {
		unit := index.ParseTranslationUnit(
			c.AllocaCStr(filename),
			unsafe.SliceData(args), 3,
			nil, 0,
			clang.TranslationUnit_None,
		)

		if unit == nil {
			return nil, errors.New("Unable to parse translation unit for file " + filename)
		}

		cursor := unit.Cursor()
		context.setCurrentFile(filename)

		clang.VisitChildren(cursor, visit, nil)

		unit.Dispose()
	}

	index.Dispose()

	return context.symbolMap, nil
}
