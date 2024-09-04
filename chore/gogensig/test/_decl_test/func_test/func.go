package main

import test "github.com/goplus/llgo/chore/gogensig/test"

func main() {
	TestFuncDecl()
}

func TestFuncDecl() {
	testCases := []string{
		`static void foo();void bar(int a, int b);`,
		`void foo(int a);`,
	}
	test.RunTest("TestFuncDecl", testCases)
}
