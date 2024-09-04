package test

import (
	"github.com/goplus/llgo/chore/_xtool/llcppsigfetch/sigfetch"
	"github.com/goplus/llgo/chore/gogensig/unmarshal"
	"github.com/goplus/llgo/chore/gogensig/visitor"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

func RunTest(testName string, testCases []string) {
	for _, content := range testCases {
		str, err := sigfetch.Do(content)
		if err != nil {
			panic(err)
		}
		file, err := unmarshal.NewLLCppSigfetchFile(str, "temp.h", []ast.AstVisitor{&visitor.AstConvert{}, &visitor.AstPrint{}})
		if err != nil {
			panic(err)
		}
		file.Dispose()
	}
}
