package main

import test "github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse/cvt_test"

func main() {
	TestClassDecl()
}

func TestClassDecl() {
	testCases := []string{
		`class A {
			int a;
			int b;
		};`,
		`class A {
			int a;
			int b;
			float foo(int a,double b);
		};`,
	}
	test.RunTest("TestClassDecl", testCases)
}
