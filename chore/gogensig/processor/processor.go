package processor

import (
	"github.com/goplus/llgo/chore/gogensig/config"
	"github.com/goplus/llgo/chore/gogensig/unmarshal"
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
		v.VisitStart(docPath)
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

func (p *DocFileSetProcessor) ProcessFileSet(files unmarshal.FileSet) error {
	for _, file := range files {
		docVisitor := NewDocVisitorManager(p.docVisitorList)
		docVisitor.visit(file.Doc, file.Path)
	}
	return nil
}

func (p *DocFileSetProcessor) ProcessFileSetFromByte(data []byte) error {
	fileSet, err := config.GetCppgSigfetchFromByte(data)
	if err != nil {
		return err
	}
	return p.ProcessFileSet(fileSet)
}

func (p *DocFileSetProcessor) ProcessFileSetFromPath(filePath string) error {
	data, err := config.ReadFile(filePath)
	if err != nil {
		return err
	}
	return p.ProcessFileSetFromByte(data)
}
