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
		    int (*Foo)(int, int);
		};`,
		`struct Person {
			int age;
			struct { 
				int year;
				int day;
				int month;
			} birthday;
		};`,
	}
	test.RunTest("TestStructDecl", testCases)
}
