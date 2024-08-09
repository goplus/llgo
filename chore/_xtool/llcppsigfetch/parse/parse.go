package parse

import (
	"errors"

	"github.com/goplus/llgo/chore/llcppg/ast"
)

type Context struct {
	Files map[string]*ast.File
}

func NewContext() *Context {
	return &Context{
		Files: make(map[string]*ast.File),
	}
}

// ProcessFiles processes the given files and adds them to the context
func (p *Context) ProcessFiles(files []string) error {
	for _, file := range files {
		if err := p.processFile(file); err != nil {
			return err
		}
	}
	return nil
}

// parse file and add it to the context,avoid duplicate parsing
func (p *Context) processFile(path string) error {
	if _, exists := p.Files[path]; exists {
		return nil
	}
	parsedfiles, err := p.parseFile(path)
	if err != nil {
		return errors.New("failed to parse file: " + path)
	}

	for path, file := range parsedfiles {
		if _, exist := p.Files[path]; !exist {
			p.Files[path] = file
		}
	}
	return nil
}

func (p *Context) parseFile(path string) (map[string]*ast.File, error) {
	converter, err := NewConverter(path)
	if err != nil {
		return nil, errors.New("failed to create converter " + path)
	}
	defer converter.Dispose()

	files, err := converter.Convert()
	if err != nil {
		return nil, err
	}

	return files, nil
}
