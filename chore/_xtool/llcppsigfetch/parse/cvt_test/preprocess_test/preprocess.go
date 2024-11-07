package main

import (
	"github.com/goplus/llgo/c"
	test "github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse/cvt_test"
	"github.com/goplus/llgo/chore/_xtool/llcppsymg/clangutils"
)

func main() {
	TestDefine()
	TestInclude()
	TestMacroExpansionOtherFile()
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
		File:  "./testmarcoexpand/ref.h",
		Temp:  false,
		IsCpp: false,
	})
}
