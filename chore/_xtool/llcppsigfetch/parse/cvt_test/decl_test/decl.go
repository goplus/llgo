package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse"
)

func main() {
	TestFuncDecl()
}

func TestFuncDecl() {
	content := `int foo(int a, int b);`
	converter, err := parse.NewConverter(content, true)
	if err != nil {
		panic(err)
	}

	defer converter.Dispose()
	converter.Convert()
	if err != nil {
		panic(err)
	}
	json := converter.GetFilesJSON()
	c.Printf(c.Str("%s\n"), json.Print())
}
