package parse

import (
	"errors"
	"strconv"
	"strings"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/clang"
	"github.com/goplus/llgo/chore/_xtool/llcppsymg/clangutils"
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

func ParseHeaderFile(filepaths []string, prefixes []string, isCpp bool) (map[string]string, error) {
	context = newContext(prefixes)
	index := clang.CreateIndex(0, 0)
	for _, filename := range filepaths {
		_, unit, err := clangutils.CreateTranslationUnit(&clangutils.Config{
			File:  filename,
			Temp:  false,
			IsCpp: isCpp,
			Index: index,
		})
		if err != nil {
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
