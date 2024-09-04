package main

import test "github.com/goplus/llgo/chore/gogensig/test"

func main() {
	TestFuncDecl()
}

func TestFuncDecl() {
	testCases := []string{
		`void foo();void foo(int a, int b);`,
		`void foo(int a);`,
	}
	test.RunTest("TestFuncDecl", testCases)
}
