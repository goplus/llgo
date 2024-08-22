package main

import test "github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse/cvt_test"

func main() {
	TestFuncDecl()
}

func TestFuncDecl() {
	testCases := []string{
		`void foo();`,
		`void foo(int a);`,
		`float foo(int a,double b);`,

		`void foo(char* str, double x);`,
		`float* foo(char* str, double x);`,
		`float* foo(char*** str, double x);`,

		`float* foo(char str[], double x);`,
		`float* foo(int arr[3][4]);`,
	}
	test.RunTest("TestFuncDecl", testCases)
}
