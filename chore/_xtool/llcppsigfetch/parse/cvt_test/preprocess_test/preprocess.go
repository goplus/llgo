package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse"
)

func main() {
	TestDefine()
}

func TestDefine() {
	testCases := []string{
		`#define foo 1`,
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
		c.Printf(c.Str("TestDefine Case %d:\n%s\n\n"), c.Int(i+1), json.Print())

		converter.Dispose()
	}
}
