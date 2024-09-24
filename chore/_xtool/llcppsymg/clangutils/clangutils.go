package clangutils

import (
	"errors"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/clang"
)

type Config struct {
	File  string
	Temp  bool
	Args  []string
	IsCpp bool
	Index *clang.Index
}

type Visitor func(cursor, parent clang.Cursor) clang.ChildVisitResult

const TEMP_FILE = "temp.h"

func CreateTranslationUnit(config *Config) (*clang.Index, *clang.TranslationUnit, error) {
	// default use the c/c++ standard of clang; c:gnu17 c++:gnu++17
	// https://clang.llvm.org/docs/CommandGuide/clang.html
	defaultArgs := []string{"-x", "c"}
	if config.IsCpp {
		defaultArgs = []string{"-x", "c++"}
	}
	allArgs := append(defaultArgs, config.Args...)

	cArgs := make([]*c.Char, len(allArgs))
	for i, arg := range allArgs {
		cArgs[i] = c.AllocaCStr(arg)
	}

	var index *clang.Index
	if config.Index != nil {
		index = config.Index
	} else {
		index = clang.CreateIndex(0, 0)
	}

	var unit *clang.TranslationUnit

	if config.Temp {
		content := c.AllocaCStr(config.File)
		tempFile := &clang.UnsavedFile{
			Filename: c.Str(TEMP_FILE),
			Contents: content,
			Length:   c.Ulong(c.Strlen(content)),
		}

		unit = index.ParseTranslationUnit(
			tempFile.Filename,
			unsafe.SliceData(cArgs), c.Int(len(cArgs)),
			tempFile, 1,
			clang.DetailedPreprocessingRecord,
		)

	} else {
		cFile := c.AllocaCStr(config.File)
		unit = index.ParseTranslationUnit(
			cFile,
			unsafe.SliceData(cArgs), c.Int(len(cArgs)),
			nil, 0,
			clang.DetailedPreprocessingRecord,
		)
	}

	if unit == nil {
		return nil, nil, errors.New("failed to parse translation unit")
	}

	return index, unit, nil
}

// Traverse up the semantic parents
func BuildScopingParts(cursor clang.Cursor) []string {
	var parts []string
	for cursor.IsNull() != 1 && cursor.Kind != clang.CursorTranslationUnit {
		name := cursor.String()
		qualified := c.GoString(name.CStr())
		parts = append([]string{qualified}, parts...)
		cursor = cursor.SemanticParent()
		name.Dispose()
	}
	return parts
}

func VisitChildren(cursor clang.Cursor, fn Visitor) c.Uint {
	return clang.VisitChildren(cursor, func(cursor, parent clang.Cursor, clientData unsafe.Pointer) clang.ChildVisitResult {
		cfn := *(*Visitor)(clientData)
		return cfn(cursor, parent)
	}, unsafe.Pointer(&fn))
}
