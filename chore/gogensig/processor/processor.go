package processor

import (
	"github.com/goplus/llgo/chore/gogensig/unmarshal"
	"github.com/goplus/llgo/chore/gogensig/util"
	"github.com/goplus/llgo/chore/gogensig/visitor"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

type DocVisitorManager struct {
	VisitorList []visitor.DocVisitor
}

func NewDocVisitorManager(visitorList []visitor.DocVisitor) *DocVisitorManager {
	return &DocVisitorManager{VisitorList: visitorList}
}

func (p *DocVisitorManager) visit(node ast.Node, docPath string) bool {
	for _, v := range p.VisitorList {
		v.Visit(node)
		v.VisitDone(docPath)
	}
	return true
}

type DocFileSetProcessor struct {
	docVisitorList []visitor.DocVisitor
}

func NewDocFileSetProcessor(docVisitorList []visitor.DocVisitor) *DocFileSetProcessor {
	return &DocFileSetProcessor{docVisitorList: docVisitorList}
}

func (p *DocFileSetProcessor) ProcessFileSet(files []unmarshal.FileEntry) error {
	for _, file := range files {
		docVisitor := NewDocVisitorManager(p.docVisitorList)
		docVisitor.visit(file.Doc, file.Path)
	}
	return nil
}

func (p *DocFileSetProcessor) ProcessFileSetFromPath(filePath string) error {
	raw, err := util.ReadFile(filePath)
	if err != nil {
		return err
	}
	data, err := unmarshal.UnmarshalFileSet(raw)
	if err != nil {
		return err
	}
	return p.ProcessFileSet(data)
}
