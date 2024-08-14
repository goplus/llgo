package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse"
)

func main() {
	TestFuncDecl()
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

		json := converter.GetFilesJSON()
		c.Printf(c.Str("Test Case %d:\n%s\n\n"), c.Int(i+1), json.Print())

		converter.Dispose()
	}
}
