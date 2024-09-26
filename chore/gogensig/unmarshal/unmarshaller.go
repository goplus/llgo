package unmarshal

import (
	"github.com/goplus/llgo/chore/gogensig/util"
	"github.com/goplus/llgo/chore/gogensig/visitor"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

type DocFileUnmarshaller struct {
	VisitorList []visitor.DocVisitor
}

func NewDocFileUnmarshaller(visitorList []visitor.DocVisitor) *DocFileUnmarshaller {
	return &DocFileUnmarshaller{VisitorList: visitorList}
}

func (p *DocFileUnmarshaller) visit(node ast.Node, docPath string) bool {
	for _, v := range p.VisitorList {
		v.Visit(node)
		v.VisitDone(docPath)
	}
	return true
}

type DocFileSetUnmarshaller struct {
	docVisitorList []visitor.DocVisitor
}

func NewDocFileSetUnmarshaller(docVisitorList []visitor.DocVisitor) *DocFileSetUnmarshaller {
	return &DocFileSetUnmarshaller{docVisitorList: docVisitorList}
}

func (p *DocFileSetUnmarshaller) UnmarshalFileSet(files []FileEntry) error {
	for _, file := range files {
		docVisitor := NewDocFileUnmarshaller(p.docVisitorList)
		docVisitor.visit(file.Doc, file.Path)
	}
	return nil
}

func (p *DocFileSetUnmarshaller) UnmarshalFile(jsonFilePath string) error {
	raw, err := util.ReadFile(jsonFilePath)
	if err != nil {
		return err
	}
	data, err := UnmarshalFileSet(raw)
	if err != nil {
		return err
	}
	return p.UnmarshalFileSet(data)
}
