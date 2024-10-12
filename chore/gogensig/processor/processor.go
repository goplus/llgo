package processor

import (
	"os"
	"path/filepath"

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
	docVisitorList     []visitor.DocVisitor
	absPathFunc        func(s string, files unmarshal.FileSet) string
	visitedFile        map[string]struct{}
	visitedIncludeFile map[string]struct{}
}

func NewDocFileSetProcessor(docVisitorList []visitor.DocVisitor) *DocFileSetProcessor {
	p := &DocFileSetProcessor{docVisitorList: docVisitorList}
	p.visitedFile = make(map[string]struct{})
	p.visitedIncludeFile = make(map[string]struct{})
	includes := make([]string, 0)
	initIncludes := false
	p.SetAbsPathFunc(func(s string, fs unmarshal.FileSet) string {
		if !initIncludes {
			includes = append(includes, fs.IncludeDir())
			initIncludes = true
		}
		if filepath.IsAbs(s) {
			return s
		}
		for _, includePath := range includes {
			absIncludePath := filepath.Join(includePath, s)
			_, err := os.Stat(absIncludePath)
			if err == nil {
				return absIncludePath
			}
		}
		return s
	})
	return p
}

func (p *DocFileSetProcessor) SetAbsPathFunc(fn func(s string, files unmarshal.FileSet) string) {
	p.absPathFunc = fn
}

func (p *DocFileSetProcessor) visitFile(docVisitor *DocVisitorManager, file unmarshal.FileEntry, files unmarshal.FileSet) {
	if _, ok := p.visitedFile[file.Path]; ok {
		return
	}
	if p.absPathFunc != nil {
		for _, inc := range file.Doc.Includes {
			if _, ok := p.visitedIncludeFile[inc.Path]; ok {
				continue
			}
			p.visitedIncludeFile[inc.Path] = struct{}{}
			absPath := p.absPathFunc(inc.Path, files)
			idx := files.FindEntry(absPath)
			if idx >= 0 {
				findFile := files[idx]
				p.visitFile(docVisitor, findFile, files)
			}
		}
	}
	docVisitor.visit(file.Doc, file.Path)
	p.visitedFile[file.Path] = struct{}{}
}

func (p *DocFileSetProcessor) ProcessFileSet(files unmarshal.FileSet) error {
	docVisitor := NewDocVisitorManager(p.docVisitorList)
	for _, file := range files {
		p.visitFile(docVisitor, file, files)
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
