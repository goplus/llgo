package gensigtest

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/chore/llcppg/ast"

	"github.com/goplus/llgo/chore/_xtool/llcppsigfetch/sigfetch"
	"github.com/goplus/llgo/chore/gogensig/unmarshal"
)

type FuncDeclVisitor struct {
}

func (*FuncDeclVisitor) VisitFuncDecl(funcDecl *ast.FuncDecl) {
	c.Printf(c.Str("VisitFuncDecl name:%s\n"), c.AllocaCStr(funcDecl.Name.Name))
}

type FuncDeclVisitor2 struct {
}

func (*FuncDeclVisitor2) VisitFuncDecl(funcDecl *ast.FuncDecl) {
	c.Printf(c.Str("hello name:%s\n"), c.AllocaCStr(funcDecl.Name.Name))
}

func RunTest(testName string, testCases []string) {
	for _, content := range testCases {
		str, err := sigfetch.Do(content)
		if err != nil {
			panic(err)
		}
		file, err := unmarshal.NewLLCppSigfetchFile(str, "temp.h", []ast.AstVisitor{&FuncDeclVisitor{}, &FuncDeclVisitor2{}})
		if err != nil {
			panic(err)
		}
		file.Dispose()
	}
}
