package unmarshal_test

import (
	"testing"

	"github.com/goplus/llgo/chore/gogensig/unmarshal"
	"github.com/goplus/llgo/chore/gogensig/util"
	"github.com/goplus/llgo/chore/gogensig/visitor"
)

func TestUnmarshalFiles(t *testing.T) {
	filesBytes, err := util.ReadFile("./_testjson/files.json")
	if err != nil {
		t.Error(err)
	}
	astConvert := visitor.NewAstConvert("files", "../../llcppg/llcppg.symb.json")
	docVisitors := []visitor.DocVisitor{astConvert}
	p := unmarshal.NewDocFileSetUnmarshaller(docVisitors)
	p.UnmarshalBytes(filesBytes)
}

func TestUnmarshalAnyNode(t *testing.T) {
	nodeBytes, err := util.ReadFile("./_testjson/anynode.json")
	if err != nil {
		t.Error(err)
	}
	astConvert := visitor.NewAstConvert("anynode", "")
	docVisitors := []visitor.DocVisitor{astConvert}
	p := unmarshal.NewDocFileUnmarshaller(docVisitors)
	rawDocFile := unmarshal.NewPathDoc("./_testjson/anynode.json", nodeBytes)
	p.UnmarshalPathDocFile(rawDocFile)
}

func TestFunc1(t *testing.T) {
	bytes, err := util.ReadFile("./_testjson/func1.json")
	if err != nil {
		t.Fatal(err)
	}
	astConvert := visitor.NewAstConvert("anynode", "")
	docVisitors := []visitor.DocVisitor{astConvert}
	p := unmarshal.NewDocFileSetUnmarshaller(docVisitors)
	err = p.UnmarshalBytes(bytes)
	if err != nil {
		t.Fatal(err)
	}
}
