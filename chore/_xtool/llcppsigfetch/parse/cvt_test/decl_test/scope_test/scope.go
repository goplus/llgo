package main

import test "github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse/cvt_test"

func main() {
	TestScope()
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
		 public:
			void foo(); 
		 };`,
		`namespace a {
		 class b {
		 public:
			void foo(); 
		 };
	   	 }`,

		`namespace a {
		 namespace b {
		 class c {
			void foo(); 
		 };
		 }
		 }
		 typedef a::b::c C;`,
	}
	test.RunTest("TestScope", testCases)
}
