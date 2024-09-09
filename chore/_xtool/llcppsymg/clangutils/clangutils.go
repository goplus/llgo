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
			Filename: c.Str("temp.h"),
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
