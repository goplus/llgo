package docset

import (
	"github.com/goplus/llgo/chore/llcppg/ast"
)

type ADoc interface {
	DocPath() string
}

type DocFile struct {
	Path string
	Doc  *ast.File
}

func (d *DocFile) DocPath() string {
	return d.Path
}

type DocPathString string

func (s DocPathString) DocPath() string {
	return string(s)
}
