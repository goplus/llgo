package main

import test "github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse/cvt_test"

func main() {
	TestComment()
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
