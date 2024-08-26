package main

import test "github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse/cvt_test"

func main() {
	TestClassDecl()
}

func TestClassDecl() {
	testCases := []string{
		`class A {
		public:
			int a;
			int b;
		};`,
		`class A {
		public:
			int a;
			int b;
			float foo(int a,double b);
		private:
			void bar();
		};`,
		`class A {
		public:
			A();
			explicit A();
			~A();
			static inline void foo();
		};`,
		`class Base {
		public:
			Base();
			virtual ~Base();
			virtual void foo();
		};
		class Derived : public Base {
		public:
			Derived();
			~Derived() override;
			void foo() override;
		};
		`,
		`namespace A{
		class Foo{}
		}
		void A::Foo::bar();
		`,
	}
	test.RunTest("TestClassDecl", testCases)
}
