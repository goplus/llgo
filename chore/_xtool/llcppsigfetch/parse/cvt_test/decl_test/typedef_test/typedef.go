package main

import test "github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse/cvt_test"

func main() {
	TestTypeDefDecl()
}

func TestTypeDefDecl() {
	testCases := []string{
		`typedef int INT;`,

		`typedef int INT;

		`typedef int INT;
		 typedef INT STANDARD_INT;`,

		`typedef int INT,*IntPtr,IntArr[];`,

		`typedef int (*Foo)(int, int, ...);`,

		`typedef int (*Foo)(int, int),(*Bar)(void*,void*);`,

		`namespace A { 
		 typedef class Foo{ 
		 	int x; 
		 } MyClass,*MyClassPtr,MyClassArray[];
		 }`,
	}
	test.RunTest("TestTypeDefDecl", testCases)
}
