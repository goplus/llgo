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
		`class A {
			A();
			explicit A();
			~A();
		};`,
		`class Base {
			Base();
			virtual ~Base();
			virtual void foo();
		};
		class Derived : public Base {
			Derived();
			~Derived() override;
			void foo() override;
		};
		`,
	}
	test.RunTest("TestClassDecl", testCases)
}
