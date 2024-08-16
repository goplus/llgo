package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse"
)

func main() {
	TestFuncDecl()
	TestScope()
	TestComment()
	TestStructDecl()
	TestClassDecl()
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

	for i, content := range testCases {
		converter, err := parse.NewConverter(content, true)
		if err != nil {
			panic(err)
		}

		_, err = converter.Convert()
		if err != nil {
			panic(err)
		}

		json := converter.MarshalASTFiles()
		c.Printf(c.Str("TestFuncDecl Case %d:\n%s\n\n"), c.Int(i+1), json.Print())

		converter.Dispose()
	}
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

	for i, content := range testCases {
		converter, err := parse.NewConverter(content, true)
		if err != nil {
			panic(err)
		}

		_, err = converter.Convert()
		if err != nil {
			panic(err)
		}

		json := converter.MarshalASTFiles()
		c.Printf(c.Str("TestScope Case %d:\n%s\n\n"), c.Int(i+1), json.Print())

		converter.Dispose()
	}
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

	for i, content := range testCases {
		converter, err := parse.NewConverter(content, true)
		if err != nil {
			panic(err)
		}

		_, err = converter.Convert()
		if err != nil {
			panic(err)
		}

		json := converter.MarshalASTFiles()
		c.Printf(c.Str("TestComment Case %d:\n%s\n\n"), c.Int(i+1), json.Print())

		converter.Dispose()
	}
}

func TestStructDecl() {
	testCases := []string{
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

	for i, content := range testCases {
		converter, err := parse.NewConverter(content, true)
		if err != nil {
			panic(err)
		}

		_, err = converter.Convert()
		if err != nil {
			panic(err)
		}

		json := converter.MarshalASTFiles()
		c.Printf(c.Str("TestStructDecl Case %d:\n%s\n\n"), c.Int(i+1), json.Print())

		converter.Dispose()
	}
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

	for i, content := range testCases {
		converter, err := parse.NewConverter(content, true)
		if err != nil {
			panic(err)
		}

		_, err = converter.Convert()
		if err != nil {
			panic(err)
		}

		json := converter.MarshalASTFiles()
		c.Printf(c.Str("TestClassDecl Case %d:\n%s\n\n"), c.Int(i+1), json.Print())

		converter.Dispose()
	}
}
