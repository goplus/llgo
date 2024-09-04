package visitor

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

type AstPrint struct {
}

func (cvt *AstPrint) VisitFuncDecl(funcDecl *ast.FuncDecl) {
	c.Printf(c.Str("visit func name: %s\n"), c.AllocaCStr(funcDecl.Name.Name))
}
