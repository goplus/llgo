package main

import (
	test "github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse/cvt_test"
)

func main() {
	TestFuncDecl()
	TestScope()
	TestComment()
	TestStructDecl()
	TestClassDecl()
	TestUnionDecl()
	TestEnumDecl()
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

func TestScope() {
	testCases := []string{
		`void foo();`,
		`namespace a {
			 void foo(); 
		 }`,
		`namespace a {
			namespace b {
				void foo(); 
			}
	   	 }`,
		`class a {
			void foo(); 
		 };`,
		`namespace a {
		 class b {
			void foo(); 
		 };
	   	 }`,
	}
	test.RunTest("TestScope", testCases)
}

func TestComment() {
	testCases := []string{
		`// not read comment 1
		 void foo();`,
		`/* not read comment 2 */
		 void foo();`,
		`/// comment
		 void foo();`,
		`/** comment */
		 void foo();`,
		`/*! comment */
		 void foo();`,
		`/// comment 1
/// comment 2
void foo();`,
		`/*! comment 1 */
/*! comment 2 */
void foo();`,
		`/** comment 1 */
/** comment 1 */
void foo();`,
		`/**
 * comment 1
 * comment 2
 */
void foo();`,
	}
	test.RunTest("TestComment", testCases)
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

func TestClassDecl() {
	testCases := []string{
		`class A {
			int a;
			int b;
		};`,
		`class A {
			int a;
			int b;
			float foo(int a,double b);;
		};`,
	}
	test.RunTest("TestClassDecl", testCases)
}

func TestEnumDecl() {
	testCases := []string{
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
