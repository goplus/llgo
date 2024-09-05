package visitor

import "github.com/goplus/llgo/chore/llcppg/ast"

type DocVisitor interface {
	Visit(_Type string, node ast.Node)
}
