package main

import test "github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse/cvt_test"

func main() {
	TestUnionDecl()
}

func TestUnionDecl() {
	testCases := []string{
		`union {
			int a;
			int b;
		};`,
		`union A {
			int a;
			int b;
		};`,
	}
	test.RunTest("TestUnionDecl", testCases)
}
