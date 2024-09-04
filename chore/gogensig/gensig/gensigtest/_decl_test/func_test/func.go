package main

import test "github.com/goplus/llgo/chore/gogensig/gensig/gensigtest"

func main() {
	TestFuncDecl()
}

func TestFuncDecl() {
	testCases := []string{
		`void foo();void foo(int a);`,
		`void foo(int a);`,
	}
	test.RunTest("TestFuncDecl", testCases)
}
