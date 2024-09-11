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
		`
		struct Foo {
			/// doc
			int x;
			int y; ///< comment
			/** 
			 * field doc (parse ignore with comment in same cursor)
			 */
			int z; /*!< comment */
		};
		`,
		`
class Doc
{
  public:
    /** 
     * static field doc
     */
	static int x;
	static int y;  /*!< static field comment */
    /** 
     * field doc
     */
    int a;
    int b;  ///< field comment
	/** 
     * method doc
     */
    void Foo();
  protected:
    int value;       /*!< protected field comment */
};`,
	}
	test.RunTest("TestDoc", testCases)
}
