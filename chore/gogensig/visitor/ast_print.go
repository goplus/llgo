package visitor

import (
	"github.com/goplus/llgo/chore/llcppg/ast"
)

type AstPrint struct {
}

func (*AstPrint) Visit(_Type string, node ast.Node) {
	//todo
}
