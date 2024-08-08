package parse

import (
	"errors"

	"github.com/goplus/llgo/c/clang"
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

type Converter struct {
	files   map[string]*ast.File
	typeMap map[clang.Type]*ast.Expr
	declMap map[clang.Cursor]*ast.Decl
	curLoc  ast.Location
}

func NewConverter(filepath string) (*Converter, error) {
	// TODO(zzy):init transUnit
	return &Converter{
		typeMap: make(map[clang.Type]*ast.Expr),
		declMap: make(map[clang.Cursor]*ast.Decl),
		files:   make(map[string]*ast.File),
	}, nil
}

func (c *Converter) Dispose() {
	// TODO(zzy): clean like transUnit
}
func (c *Converter) Convert() (map[string]*ast.File, error) {
	// TODO(zzy): main logic to convert

	// c.UpdateLocation()

	return nil, nil
}

func (c *Converter) UpdateLocation(loc ast.Location) {
	c.curLoc = loc
}

// ProcessFiles processes the given files and adds them to the context
func (c *Context) ProcessFiles(files []string) error {
	for _, file := range files {
		if err := c.processFile(file); err != nil {
			return err
		}
	}
	return nil
}

// parse file and add it to the context,avoid duplicate parsing
func (c *Context) processFile(path string) error {
	if _, exists := c.Files[path]; exists {
		return nil
	}
	parsedfiles, err := parseFile(path)
	if err != nil {
		return errors.New("failed to parse file: " + path)
	}

	for path, file := range parsedfiles {
		if _, exist := c.Files[path]; !exist {
			c.Files[path] = file
		}
	}
	return nil
}

func parseFile(path string) (map[string]*ast.File, error) {
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
