package main

import (
	"fmt"
	"os"
	"strconv"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/cjson"
	"github.com/goplus/llgo/c/clang"
)

type ASTInformation struct {
	Namespace string `json:"namespace"`
	Class     string `json:"class"`
	Name      string `json:"name"`
	// BaseClasses []string    `json:"baseClasses"`
	ReturnType string      `json:"returnType"`
	Location   string      `json:"location"`
	Parameters []Parameter `json:"parameters"`
	Symbol     string      `json:"symbol"`
}

type Parameter struct {
	Name string `json:"name"`
	Type string `json:"type"`
}

type Context struct {
	namespaceName string
	className     string
	astInfo       []ASTInformation
}

func newContext() *Context {
	return &Context{
		astInfo: make([]ASTInformation, 0),
	}
}

func (c *Context) setNamespaceName(name string) {
	c.namespaceName = name
}

func (c *Context) setClassName(name string) {
	c.className = name
}

var context = newContext()

func collectFuncInfo(cursor clang.Cursor) ASTInformation {
	info := ASTInformation{
		Namespace: context.namespaceName,
		Class:     context.className,
	}

	loc := cursor.Location()
	var file clang.File
	var line, column c.Uint

	loc.SpellingLocation(&file, &line, &column, nil)
	filename := file.FileName()

	info.Location = c.GoString(filename.CStr()) + ":" + strconv.Itoa(int(line)) + ":" + strconv.Itoa(int(column))

	// c.Printf(c.Str("%s:%d:%d\n"), filename.CStr(), line, column)

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
	defer filename.Dispose()

	if context.namespaceName != "" {
		info.Namespace = context.namespaceName
	}
	if context.className != "" {
		info.Class = context.className
	}

	if cursor.Kind == clang.CXXMethod || cursor.Kind == clang.FunctionDecl {
		// c.Printf(c.Str("symbol:%s\n"), symbol.CStr())

		typeStr := cursor.ResultType().String()
		defer typeStr.Dispose()
		info.ReturnType = c.GoString(typeStr.CStr())
		// c.Printf(c.Str("Parameters(%d): ( "), cursor.NumArguments())

		info.Parameters = make([]Parameter, cursor.NumArguments())
		for i := 0; i < int(cursor.NumArguments()); i++ {
			argCurSor := cursor.Argument(c.Uint(i))
			argType := argCurSor.Type().String()
			argName := argCurSor.String()
			info.Parameters[i] = Parameter{
				Name: c.GoString(argName.CStr()),
				Type: c.GoString(argType.CStr()),
			}

			argType.Dispose()
			argName.Dispose()
		}

		// fmt.Println("location", info.Location)
		// fmt.Println("symbol:", info.Symbol)
		// fmt.Println("name:", info.Name)
		// if info.Namespace != "" {
		// 	fmt.Println("namespace:", info.Namespace)
		// }
		// if info.Class != "" {
		// 	fmt.Println("class:", info.Class)
		// }
		// fmt.Println("return type:", info.ReturnType)

		// if len(info.Parameters) != 0 {
		// 	fmt.Println("Parameters:(")
		// 	for _, param := range info.Parameters {
		// 		fmt.Println("    ", param.Name, ":", param.Type)
		// 	}
		// 	fmt.Println(")")
		// }
		// println("--------------------------------")
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
	} else if cursor.Kind == clang.CXXMethod || cursor.Kind == clang.FunctionDecl {
		info := collectFuncInfo(cursor)
		context.astInfo = append(context.astInfo, info)
	}

	return clang.ChildVisit_Continue
}

func parse(filename *c.Char) []ASTInformation {
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

	return context.astInfo
}
func printJson(infos []ASTInformation) {
	root := cjson.Array()

	for _, info := range infos {
		item := cjson.Object()
		item.SetItem(c.Str("namespace"), cjson.String(c.AllocaCStr(info.Namespace)))
		item.SetItem(c.Str("class"), cjson.String(c.AllocaCStr(info.Class)))
		item.SetItem(c.Str("name"), cjson.String(c.AllocaCStr(info.Name)))
		item.SetItem(c.Str("returnType"), cjson.String(c.AllocaCStr(info.ReturnType)))
		item.SetItem(c.Str("location"), cjson.String(c.AllocaCStr(info.Location)))
		item.SetItem(c.Str("symbol"), cjson.String(c.AllocaCStr(info.Symbol)))

		params := cjson.Array()
		for _, param := range info.Parameters {
			paramObj := cjson.Object()
			paramObj.SetItem(c.Str("name"), cjson.String(c.AllocaCStr(param.Name)))
			paramObj.SetItem(c.Str("type"), cjson.String(c.AllocaCStr(param.Type)))
			params.AddItem(paramObj)
		}
		item.SetItem(c.Str("parameters"), params)

		root.AddItem(item)
	}
	c.Printf(c.Str("%s\n"), root.Print())
}

func main() {
	// for i := c.Int(0); i < c.Argc; i++ {
	// 	c.Printf(c.Str("%s\n"), c.Index(c.Argv, i))
	// }
	// c.Printf(c.Str("c.Index %s\n"), c.Index(c.Argv, 1))
	// c.Printf(c.Str("c.Index %s\n"), *c.Advance(c.Argv, 1))

	if c.Argc != 2 {
		fmt.Fprintln(os.Stderr, "Usage: <C++ header file>\n")
		return
	} else {

		// sourceFile := *c.Advance(c.Argv, 1)
		printJson(parse(c.Index(c.Argv, 1)))
		// fmt.Println("Json end")
	}

}
