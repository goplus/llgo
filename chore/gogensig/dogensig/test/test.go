package gensigtest

import (
	"github.com/goplus/llgo/chore/_xtool/llcppsigfetch/sigfetch"
	"github.com/goplus/llgo/chore/gogensig/unmarshal"
)

func RunTest(testName string, testCases []string) {
	for _, content := range testCases {
		str, err := sigfetch.Do(content)
		if err != nil {
			panic(err)
		}
		file, err := unmarshal.NewLLCppSigfetchFile(str, "temp.h")
		if err != nil {
			panic(err)
		}
		file.Dispose()
	}
}
