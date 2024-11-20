package main

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/clang"
	test "github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse/cvt_test"
	"github.com/goplus/llgo/chore/_xtool/llcppsymg/clangutils"
)

func main() {
	TestDefine()
	TestInclude()
	TestMacroExpansionOtherFile()
	TestMacroExpansionOtherFileTokenEmpty()
}

func TestDefine() {
	testCases := []string{
		`#define DEBUG`,
		`#define OK 1`,
		`#define SQUARE(x) ((x) * (x))`,
	}
	test.RunTest("TestDefine", testCases)
}

func TestInclude() {
	testCases := []string{
		`#include "foo.h"`,
		// `#include <limits.h>`, //  Standard libraries are mostly platform-dependent
	}
	test.RunTest("TestInclude", testCases)
}

func TestMacroExpansionOtherFile() {
	c.Printf(c.Str("TestMacroExpansionOtherFile:\n"))
	test.RunTestWithConfig(&clangutils.Config{
		File:  "./testdata/macroexpan/ref.h",
		Temp:  false,
		IsCpp: false,
	})
}

func TestMacroExpansionOtherFileTokenEmpty() {
	c.Printf(c.Str("TestMacroExpansionOtherFile:\n"))
	_, unit, err := clangutils.CreateTranslationUnit(&clangutils.Config{
		File:  "./testdata/macroexpan/ref.h",
		Temp:  false,
		IsCpp: false,
	})
	if err != nil {
		panic(err)
	}

	cursor := unit.Cursor()
	clangutils.VisitChildren(cursor, func(cur, parent clang.Cursor) clang.ChildVisitResult {
		switch cur.Kind {
		case clang.CursorTypedefDecl:
			c.Printf(c.Str("CursorTypedefDecl: %s\n"), cur.String().CStr())
			underlyingType := cur.TypedefDeclUnderlyingType()
			c.Printf(c.Str("UnderlyingType: %s\n"), underlyingType.TypeDeclaration().String().CStr())

			ran := underlyingType.TypeDeclaration().Extent()
			var numTokens c.Uint
			var tokens *clang.Token
			unit.Tokenize(ran, &tokens, &numTokens)

			defer unit.DisposeTokens(tokens, numTokens)
			tokensSlice := unsafe.Slice(tokens, int(numTokens))
			c.Printf(c.Str("Tokens: %d\n"), numTokens)
			for _, tok := range tokensSlice {
				tokStr := unit.Token(tok)
				c.Printf(c.Str("%s\n"), tokStr.CStr())
				tokStr.Dispose()
			}
		}
		return clang.ChildVisit_Continue
	})

}
