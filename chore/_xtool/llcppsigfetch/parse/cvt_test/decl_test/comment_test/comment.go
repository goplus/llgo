package main

import test "github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse/cvt_test"

func main() {
	TestDoc()
}

func TestDoc() {
	testCases := []string{
		`
// not read doc 1
void foo();`,
		`
/* not read doc 2 */
void foo();`,
		`
/// doc
void foo();`,
		`
/** doc */
void foo();`,
		`
/*! doc */
void foo();`,
		`
/// doc 1
/// doc 2
void foo();`,
		`
/*! doc 1 */
/*! doc 2 */
void foo();`,
		`
/** doc 1 */
/** doc 1 */
void foo();`,
		`
/**
 * doc 1
 * doc 2
 */
void foo();`,
	}
	test.RunTest("TestDoc", testCases)
}
