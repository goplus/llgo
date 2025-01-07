package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/clang"
	"github.com/goplus/llgo/compiler/chore/_xtool/llcppsymg/clangutils"
)

func main() {
	_, unit, err := clangutils.CreateTranslationUnit(&clangutils.Config{
		File:  "#include <stddef.h>",
		Temp:  true,
		IsCpp: false,
	})
	if err != nil {
		println(err.Error())
		return
	}

	clang.GetInclusions(unit, func(included_file clang.File, inclusion_stack *clang.SourceLocation, include_len c.Uint, client_data c.Pointer) {
		filename := included_file.FileName()
		c.Printf(c.Str("Included file: %s Include length: %d\n"), filename.CStr(), include_len)
		inclusions := unsafe.Slice(inclusion_stack, include_len)
		for i := range inclusions {
			loc := inclusions[i]
			var file clang.File
			var line, column c.Uint
			loc.SpellingLocation(&file, &line, &column, nil)
			filename = file.FileName()
			c.Printf(c.Str("  included from: %s:%d:%d\n"), filename.CStr(), line, column)
		}
	}, nil)
}
