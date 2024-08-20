package cvttest

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse"
)

func RunTest(testName string, testCases []string) {
	for i, content := range testCases {
		converter, err := parse.NewConverter(&parse.Config{
			File: content,
			Temp: true,
		})
		if err != nil {
			panic(err)
		}

		_, err = converter.Convert()
		if err != nil {
			panic(err)
		}

		json := converter.MarshalASTFiles()
		c.Printf(c.Str("%s Case %d:\n%s\n\n"), c.AllocaCStr(testName), c.Int(i+1), json.Print())

		converter.Dispose()
	}
}
