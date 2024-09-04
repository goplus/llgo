package visitor

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

type AstPrint struct {
}

func (cvt *AstPrint) VisitFuncDecl(funcDecl *ast.FuncDecl) {
	isStatic := 0
	if funcDecl.IsStatic {
		isStatic = 1
	}
	c.Printf(c.Str("visit func name: %s, is static %d\n"), c.AllocaCStr(funcDecl.Name.Name), isStatic)
}
