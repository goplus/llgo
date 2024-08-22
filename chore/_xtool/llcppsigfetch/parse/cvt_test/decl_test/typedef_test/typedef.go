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
		`struct StructFoo {};
		 union UnionFoo {};
		 class ClassFoo {};
		 enum EnumFoo {};
		 typedef StructFoo STRUCT_FOO;
		 typedef UnionFoo UNION_FOO;
		 typedef ClassFoo CLASS_FOO;
		 typedef EnumFoo ENUM_FOO;`,
	}
	test.RunTest("TestTypeDefDecl", testCases)
}
