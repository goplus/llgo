package processor

import (
	"path/filepath"
	"strings"

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
	allDepIncs         map[string]struct{}
}

// allDepIncs is the std path of all dependent include files
// such as sys/_types/_int8_t.h, etc. skip these files,because they are already processed
func NewDocFileSetProcessor(docVisitorList []visitor.DocVisitor, allDepIncs []string) *DocFileSetProcessor {
	depIncsMap := make(map[string]struct{})
	for _, inc := range allDepIncs {
		depIncsMap[inc] = struct{}{}
	}
	p := &DocFileSetProcessor{
		docVisitorList:     docVisitorList,
		allDepIncs:         depIncsMap,
		visitedFile:        make(map[string]struct{}),
		visitedIncludeFile: make(map[string]struct{}),
	}
	return p
}

func (p *DocFileSetProcessor) visitFile(docVisitor *DocVisitorManager, file unmarshal.FileEntry, files unmarshal.FileSet) {
	if _, ok := p.visitedFile[file.Path]; ok {
		return
	}

	for _, inc := range file.Doc.Includes {
		if _, ok := p.visitedIncludeFile[inc.Path]; ok {
			continue
		}
		if _, ok := p.allDepIncs[inc.Path]; ok {
			continue
		}
		p.visitedIncludeFile[inc.Path] = struct{}{}
		idx := files.FindEntry(inc.Path)
		if idx >= 0 {
			findFile := files[idx]
			p.visitFile(docVisitor, findFile, files)
		}
	}
	docVisitor.visit(file.Doc, file.Path)
	p.visitedFile[file.Path] = struct{}{}
}

func (p *DocFileSetProcessor) ProcessFileSet(files unmarshal.FileSet, done func()) error {
	docVisitor := NewDocVisitorManager(p.docVisitorList)
	for inc := range p.allDepIncs {
		idx := files.FindEntry(inc)
		if idx >= 0 {
			p.visitedFile[files[idx].Path] = struct{}{}
			p.visitedIncludeFile[inc] = struct{}{}
		}
	}
	for _, file := range files {
		p.visitFile(docVisitor, file, files)
	}
	if done != nil {
		done()
	}
	return nil
}

func (p *DocFileSetProcessor) ProcessFileSetFromByte(data []byte) error {
	fileSet, err := config.GetCppgSigfetchFromByte(data)
	if err != nil {
		return err
	}
	return p.ProcessFileSet(fileSet, nil)
}

func (p *DocFileSetProcessor) ProcessFileSetFromPath(filePath string) error {
	data, err := config.ReadFile(filePath)
	if err != nil {
		return err
	}
	return p.ProcessFileSetFromByte(data)
}

// GetRelativeHeaderPath returns the relative path of the header file from the include directory.
// Note: Files like _types.h and sys/_types.h correspond to different actual files.
// Therefore, we need to compare the relative paths from the include directory
// to determine if they refer to the same file.
func GetRelativeHeaderPath(headerFile string) string {
	parts := strings.Split(headerFile, string(filepath.Separator))
	includeIndex := -1
	for i, part := range parts {
		if part == "include" {
			includeIndex = i
			break
		}
	}
	if includeIndex != -1 && includeIndex < len(parts)-1 {
		return filepath.Join(parts[includeIndex+1:]...)
	}
	return headerFile
}
