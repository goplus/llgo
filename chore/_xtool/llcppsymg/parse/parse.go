package parse

import (
	"errors"
	"fmt"
	"runtime"
	"strconv"
	"strings"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/clang"
	"github.com/goplus/llgo/chore/_xtool/llcppsymg/clangutils"
	"github.com/goplus/llgo/chore/_xtool/llcppsymg/names"
)

type SymbolInfo struct {
	GoName    string
	ProtoName string
}

type SymbolProcessor struct {
	Files       []string
	Prefixes    []string
	SymbolMap   map[string]*SymbolInfo
	CurrentFile string
	NameCounts  map[string]int
}

func NewSymbolProcessor(Files []string, Prefixes []string) *SymbolProcessor {
	return &SymbolProcessor{
		Files:      Files,
		Prefixes:   Prefixes,
		SymbolMap:  make(map[string]*SymbolInfo),
		NameCounts: make(map[string]int),
	}
}

func (p *SymbolProcessor) setCurrentFile(filename string) {
	p.CurrentFile = filename
}

func (p *SymbolProcessor) isSelfFile(filename string) bool {
	if filename == p.CurrentFile {
		return true
	}
	for _, file := range p.Files {
		if file == filename {
			return true
		}
	}
	return false
}

func (p *SymbolProcessor) typeCursor(arg clang.Cursor) clang.Cursor {
	typ := arg.Type()
	if typ.Kind == clang.TypePointer {
		typ = typ.PointeeType()
	}
	return typ.TypeDeclaration()
}

func (p *SymbolProcessor) cursorFileName(cur clang.Cursor, isArg bool) (ret string) {
	if isArg {
		typCursor := p.typeCursor(cur)
		filename := ""
		if len(clang.GoString(typCursor.String())) > 0 {
			filename = clang.GoString(typCursor.Location().File().FileName())
		}
		return filename
	}
	return clang.GoString(cur.Location().File().FileName())
}

func (p *SymbolProcessor) inCurPkg(cur clang.Cursor, isArg bool) bool {
	if false {
		typ := p.typeCursor(cur)
		fmt.Println(
			clang.GoString(cur.DisplayName()),
			p.cursorFileName(cur, isArg),
			"type:", clang.GoString(typ.String()),
			p.isSelfFile(p.cursorFileName(cur, isArg)),
		)
	}
	return p.isSelfFile(p.cursorFileName(cur, isArg))
}

func (p *SymbolProcessor) GenMethodName(class, name string, isDestructor bool, isPointer bool) string {
	prefix := "(" + class + ")."
	if isPointer {
		prefix = "(*" + class + ")."
	}
	if isDestructor {
		return prefix + "Dispose"
	}
	if class == name {
		return prefix + "Init"
	}
	return prefix + name
}

func (p *SymbolProcessor) isMethod(cur clang.Cursor, isArg bool) (bool, bool, string) {
	isInCurPkg := p.inCurPkg(cur, isArg)
	typ := cur.Type()
	if typ.Kind == clang.TypePointer {
		namedType := typ.PointeeType().NamedType().String()
		return isInCurPkg, true, names.GoName(clang.GoString(namedType), p.Prefixes, isInCurPkg)
	}
	namedType := typ.NamedType().String()
	return isInCurPkg, false, names.GoName(clang.GoString(namedType), p.Prefixes, isInCurPkg)
}

func (p *SymbolProcessor) genGoName(cursor clang.Cursor) string {
	originName := clang.GoString(cursor.String())
	isDestructor := cursor.Kind == clang.CursorDestructor
	var convertedName string
	if isDestructor {
		convertedName = names.GoName(originName[1:], p.Prefixes, p.inCurPkg(cursor, false))
	} else {
		convertedName = names.GoName(originName, p.Prefixes, p.inCurPkg(cursor, false))
	}

	if parent := cursor.SemanticParent(); parent.Kind == clang.CursorClassDecl {
		class := names.GoName(clang.GoString(parent.String()), p.Prefixes, p.inCurPkg(cursor, false))
		return p.AddSuffix(p.GenMethodName(class, convertedName, isDestructor, true))
	} else if cursor.Kind == clang.CursorFunctionDecl {
		numArgs := cursor.NumArguments()
		if numArgs > 0 {
			if ok, isPtr, typeName := p.isMethod(cursor.Argument(0), true); ok {
				return p.AddSuffix(p.GenMethodName(typeName, convertedName, isDestructor, isPtr))
			}
		}
	}
	return p.AddSuffix(convertedName)
}

func (p *SymbolProcessor) genProtoName(cursor clang.Cursor) string {
	scopingParts := clangutils.BuildScopingParts(cursor.SemanticParent())

	var builder strings.Builder
	for _, part := range scopingParts {
		builder.WriteString(part)
		builder.WriteString("::")
	}

	builder.WriteString(clang.GoString(cursor.DisplayName()))
	return builder.String()
}

func (p *SymbolProcessor) AddSuffix(name string) string {
	p.NameCounts[name]++
	if count := p.NameCounts[name]; count > 1 {
		return name + "__" + strconv.Itoa(count-1)
	}
	return name
}

func (p *SymbolProcessor) collectFuncInfo(cursor clang.Cursor) {
	// On Linux, C++ symbols typically have one leading underscore
	// On macOS, C++ symbols may have two leading underscores
	// For consistency, we remove the first leading underscore on macOS
	symbolName := clang.GoString(cursor.Mangling())
	if runtime.GOOS == "darwin" {
		symbolName = strings.TrimPrefix(symbolName, "_")
	}
	p.SymbolMap[symbolName] = &SymbolInfo{
		GoName:    p.genGoName(cursor),
		ProtoName: p.genProtoName(cursor),
	}
}

func (p *SymbolProcessor) visitTop(cursor, parent clang.Cursor) clang.ChildVisitResult {
	switch cursor.Kind {
	case clang.CursorNamespace, clang.CursorClassDecl:
		clangutils.VisitChildren(cursor, p.visitTop)
	case clang.CursorCXXMethod, clang.CursorFunctionDecl, clang.CursorConstructor, clang.CursorDestructor:
		loc := cursor.Location()
		file, _, _, _ := clangutils.GetLocation(loc)
		filename := file.FileName()
		defer filename.Dispose()

		isCurrentFile := c.Strcmp(filename.CStr(), c.AllocaCStr(p.CurrentFile)) == 0
		isPublicMethod := (cursor.CXXAccessSpecifier() == clang.CXXPublic) && cursor.Kind == clang.CursorCXXMethod || cursor.Kind == clang.CursorConstructor || cursor.Kind == clang.CursorDestructor

		if isCurrentFile && (cursor.Kind == clang.CursorFunctionDecl || isPublicMethod) {
			p.collectFuncInfo(cursor)
		}
	}
	return clang.ChildVisit_Continue
}

func ParseHeaderFile(files []string, Prefixes []string, isCpp bool, isTemp bool) (map[string]*SymbolInfo, error) {
	processer := NewSymbolProcessor(files, Prefixes)
	index := clang.CreateIndex(0, 0)
	for _, file := range files {
		_, unit, err := clangutils.CreateTranslationUnit(&clangutils.Config{
			File:  file,
			Temp:  isTemp,
			IsCpp: isCpp,
			Index: index,
		})
		if err != nil {
			return nil, errors.New("Unable to parse translation unit for file " + file)
		}
		cursor := unit.Cursor()
		if isTemp {
			processer.setCurrentFile(clangutils.TEMP_FILE)
		} else {
			processer.setCurrentFile(file)
		}
		clangutils.VisitChildren(cursor, processer.visitTop)
		unit.Dispose()
	}
	index.Dispose()
	return processer.SymbolMap, nil
}
