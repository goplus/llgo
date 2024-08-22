package main

import test "github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse/cvt_test"

func main() {
	TestStructDecl()
}

func TestStructDecl() {
	testCases := []string{
		`struct {
			int a;
		};`,
		`struct A {
			int a;
			int b;
		};`,
		`struct A {
			int a, b;
		};`,
		`struct A {
			int a;
			int b;
			float foo(int a,double b);;
		};`,
	}
	test.RunTest("TestStructDecl", testCases)
}
