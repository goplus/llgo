package unmarshal

import (
	"encoding/json"
	"fmt"

	"github.com/goplus/llgo/chore/gogensig/visitor"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

type ADoc interface {
	docFile()
}

type DocFile struct {
	Path string
	Doc  *ast.File
}

func (*DocFile) docFile() {
}

type RawDocFile struct {
	Path       string          `json:"path"`
	Doc        json.RawMessage `json:"doc"`
	InputText  string          `json:"input_text"`  //test only
	WantResult []string        `json:"want_result"` //test only
}

type DocFileUnmarshaller struct {
	*DocFile
	VisitorList []visitor.DocVisitor
}

func NewDocFileUnmarshaller(visitorList []visitor.DocVisitor) *DocFileUnmarshaller {
	return &DocFileUnmarshaller{VisitorList: visitorList}
}

func (p *DocFileUnmarshaller) visit(_Type string, node ast.Node) bool {
	for _, visitor := range p.VisitorList {
		visitor.Visit(_Type, node)
	}
	return true
}

func (p *DocFileUnmarshaller) Unmarshal(raw []byte) error {
	var temp struct {
		Type string `json:"_Type"`
	}
	if err := json.Unmarshal(raw, &temp); err != nil {
		return fmt.Errorf("error unmarshalling node type: %v", err)
	}
	unmarshaler, ok := nodeUnmarshalers[temp.Type]
	if !ok {
		return fmt.Errorf("unknown node type: %s", temp.Type)
	}
	node, err := unmarshaler(raw)
	if err != nil {
		return err
	}
	p.visit(temp.Type, node)
	return nil
}

type DocFileSet struct {
}

type DocFileSetUnmarshaller struct {
	docVisitorList []visitor.DocVisitor
}

func NewDocFileSetUnmarshaller(docVisitorList []visitor.DocVisitor) *DocFileSetUnmarshaller {
	return &DocFileSetUnmarshaller{docVisitorList: docVisitorList}
}

func (p *DocFileSetUnmarshaller) Unmarshal(raw []byte) error {
	var filesWrapper []RawDocFile
	if err := json.Unmarshal(raw, &filesWrapper); err != nil {
		return fmt.Errorf("error unmarshalling FilesWithPath: %w", err)
	}
	for _, fileData := range filesWrapper {
		docVisitor := NewDocFileUnmarshaller(p.docVisitorList)
		docVisitor.Unmarshal(fileData.Doc)
	}
	return nil
}
