package main

import (
	test "github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse/cvt_test"
)

func main() {
	TestDefine()
	TestInclude()
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
