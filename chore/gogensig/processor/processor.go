package processor

import (
	"fmt"

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

func (p *DocVisitorManager) Visit(node ast.Node, incPath string) bool {
	for _, v := range p.VisitorList {
		v.VisitStart(incPath)
		v.Visit(node)
		v.VisitDone(incPath)
	}
	return true
}

type DocFileSetProcessor struct {
	visitedFile map[string]struct{}
	processing  map[string]struct{}
	exec        Exec   // execute a single file
	done        func() // done callback
}

type Exec func(*unmarshal.FileEntry) error

type ProcesserConfig struct {
	Exec    Exec
	Done    func()
	DepIncs []string
}

func defaultExec(file *unmarshal.FileEntry) error {
	fmt.Println(file.Path)
	return nil
}

// allDepIncs is the std path of all dependent include files
// such as sys/_types/_int8_t.h, etc. skip these files,because they are already processed
func NewDocFileSetProcessor(cfg *ProcesserConfig) *DocFileSetProcessor {
	p := &DocFileSetProcessor{
		processing:  make(map[string]struct{}),
		visitedFile: make(map[string]struct{}),
		exec:        defaultExec,
		done:        cfg.Done,
	}
	for _, inc := range cfg.DepIncs {
		p.visitedFile[inc] = struct{}{}
	}
	if cfg.Exec != nil {
		p.exec = cfg.Exec
	}
	return p
}

func (p *DocFileSetProcessor) visitFile(path string, files unmarshal.FileSet) {
	if _, ok := p.visitedFile[path]; ok {
		return
	}
	if _, ok := p.processing[path]; ok {
		return
	}
	p.processing[path] = struct{}{}
	idx := FindEntry(files, path)
	if idx < 0 {
		return
	}
	findFile := files[idx]
	if !findFile.IsSys {
		for _, include := range findFile.Doc.Includes {
			p.visitFile(include.Path, files)
		}
		p.exec(&findFile)
		return
	}
	p.visitedFile[findFile.Path] = struct{}{}
	delete(p.processing, findFile.Path)
}

func (p *DocFileSetProcessor) ProcessFileSet(files unmarshal.FileSet) error {
	for _, file := range files {
		p.visitFile(file.Path, files)
	}
	if p.done != nil {
		p.done()
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

func FindEntry(files unmarshal.FileSet, path string) int {
	for i, e := range files {
		if e.Path == path {
			return i
		}
	}
	return -1
}
