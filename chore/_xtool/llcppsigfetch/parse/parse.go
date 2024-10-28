package parse

import (
	"errors"
	"fmt"
	"os"

	"github.com/goplus/llgo/c/cjson"
	"github.com/goplus/llgo/chore/_xtool/llcppsymg/clangutils"
)

type dbgFlags = int

const (
	DbgParse   dbgFlags = 1 << iota
	DbgFlagAll          = DbgParse
)

var (
	debugParse bool
)

func SetDebug(dbgFlags dbgFlags) {
	debugParse = (dbgFlags & DbgParse) != 0
}

type Context struct {
	Files []*FileEntry
	IsCpp bool
}

func NewContext(isCpp bool) *Context {
	return &Context{
		Files: make([]*FileEntry, 0),
		IsCpp: isCpp,
	}
}

func (p *Context) Output() *cjson.JSON {
	return MarshalOutputASTFiles(p.Files)
}

// ProcessFiles processes the given files and adds them to the context
func (p *Context) ProcessFiles(files []string) error {
	if debugParse {
		fmt.Fprintln(os.Stderr, "ProcessFiles: files", files, "isCpp", p.IsCpp)
	}
	for _, file := range files {
		if err := p.processFile(file); err != nil {
			return err
		}
	}
	return nil
}

// parse file and add it to the context,avoid duplicate parsing
func (p *Context) processFile(path string) error {
	if debugParse {
		fmt.Fprintln(os.Stderr, "processFile: path", path)
	}
	for _, entry := range p.Files {
		if entry.Path == path {
			if debugParse {
				fmt.Fprintln(os.Stderr, "processFile: already parsed", path)
			}
			return nil
		}
	}
	parsedFiles, err := p.parseFile(path)
	if err != nil {
		return errors.New("failed to parse file: " + path)
	}

	p.Files = append(p.Files, parsedFiles...)
	return nil
}

func (p *Context) parseFile(path string) ([]*FileEntry, error) {
	if debugParse {
		fmt.Fprintln(os.Stderr, "parseFile: path", path)
	}
	converter, err := NewConverter(&clangutils.Config{
		File:  path,
		Temp:  false,
		IsCpp: p.IsCpp,
	})
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
