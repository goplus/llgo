package parse

import (
	"errors"
	"strconv"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/clang"
	"github.com/goplus/llgo/chore/llcppg/types"
)

type Context struct {
	namespaceName string
	className     string
	astInfo       []types.ASTInformation
	currentFile   string
}

func newContext() *Context {
	return &Context{
		astInfo: make([]types.ASTInformation, 0),
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

var context = newContext()

func collectFuncInfo(cursor clang.Cursor) types.ASTInformation {

	info := types.ASTInformation{
		Namespace: context.namespaceName,
		Class:     context.className,
	}

	cursorStr := cursor.String()
	symbol := cursor.Mangling()

	info.Name = c.GoString(cursorStr.CStr())

	info.Symbol = c.GoString(symbol.CStr())
	if len(info.Symbol) >= 1 {
		if info.Symbol[0] == '_' {
			info.Symbol = info.Symbol[1:]
		}
	}

	defer symbol.Dispose()
	defer cursorStr.Dispose()

	if context.namespaceName != "" {
		info.Namespace = context.namespaceName
	}
	if context.className != "" {
		info.Class = context.className
	}

	typeStr := cursor.ResultType().String()
	defer typeStr.Dispose()
	info.ReturnType = c.GoString(typeStr.CStr())

	info.Parameters = make([]types.Parameter, cursor.NumArguments())
	for i := 0; i < int(cursor.NumArguments()); i++ {
		argCurSor := cursor.Argument(c.Uint(i))
		argType := argCurSor.Type().String()
		argName := argCurSor.String()
		info.Parameters[i] = types.Parameter{
			Name: c.GoString(argName.CStr()),
			Type: c.GoString(argType.CStr()),
		}

		argType.Dispose()
		argName.Dispose()
	}

	return info
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
	} else if cursor.Kind == clang.CXXMethod || cursor.Kind == clang.FunctionDecl || cursor.Kind == clang.Constructor || cursor.Kind == clang.Destructor {
		loc := cursor.Location()
		var file clang.File
		var line, column c.Uint

		loc.SpellingLocation(&file, &line, &column, nil)
		filename := file.FileName()

		if c.Strcmp(filename.CStr(), c.AllocaCStr(context.currentFile)) == 0 {
			info := collectFuncInfo(cursor)
			info.Location = c.GoString(filename.CStr()) + ":" + strconv.Itoa(int(line)) + ":" + strconv.Itoa(int(column))
			context.astInfo = append(context.astInfo, info)
		}

		defer filename.Dispose()
	}

	return clang.ChildVisit_Continue
}

func ParseHeaderFile(filepaths []string) ([]types.ASTInformation, error) {

	index := clang.CreateIndex(0, 0)
	args := make([]*c.Char, 3)
	args[0] = c.Str("-x")
	args[1] = c.Str("c++")
	args[2] = c.Str("-std=c++11")
	context = newContext()

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

	return context.astInfo, nil
}
