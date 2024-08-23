package main

import test "github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse/cvt_test"

func main() {
	TestTypeDefDecl()
}

func TestTypeDefDecl() {
	testCases := []string{
		`typedef int INT;`,

		`typedef int INT;
		 typedef INT STANDARD_INT;`,
	}
	test.RunTest("TestTypeDefDecl", testCases)
}
