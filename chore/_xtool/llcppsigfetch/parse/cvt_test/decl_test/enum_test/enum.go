package main

import test "github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse/cvt_test"

func main() {
	TestEnumDecl()
}

func TestEnumDecl() {
	testCases := []string{
		`enum {
			a,
			b,
			c,
		};`,
		`enum Foo {
			a,
			b,
			c,
		};`,
		`enum Foo {
			a = 1,
			b = 2,
			c = 4,
		};`,
		`enum Foo {
			a = 1,
			b,
			c,
		};`,
	}
	test.RunTest("TestEnumDecl", testCases)
}
