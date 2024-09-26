package unmarshal_test

import (
	"os"
	"testing"

	"github.com/goplus/llgo/chore/gogensig/unmarshal"
	"github.com/goplus/llgo/chore/gogensig/util"
	"github.com/goplus/llgo/chore/gogensig/visitor"
)

func TestUnmarshalFiles(t *testing.T) {
	filesBytes, err := util.ReadFile("./_testjson/files.json")
	if err != nil {
		t.Fatal(err)
	}
	astConvert := visitor.NewAstConvert("files", "../../llcppg/llcppg.symb.json", "")
	docVisitors := []visitor.DocVisitor{astConvert}
	p := unmarshal.NewDocFileSetUnmarshaller(docVisitors)

	data, err := unmarshal.UnmarshalFileSet(filesBytes)
	if err != nil {
		t.Fatal(err)
	}

	err = p.UnmarshalFileSet(data)
	if err != nil {
		t.Error(err)
	}
}

func TestFunc1(t *testing.T) {
	bytes, err := util.ReadFile("./_testjson/func1.json")
	if err != nil {
		t.Fatal(err)
	}
	astConvert := visitor.NewAstConvert("anynode", "", "")
	docVisitors := []visitor.DocVisitor{astConvert}
	p := unmarshal.NewDocFileSetUnmarshaller(docVisitors)
	data, err := unmarshal.UnmarshalFileSet(bytes)
	if err != nil {
		t.Fatal(err)
	}
	err = p.UnmarshalFileSet(data)
	if err != nil {
		t.Error(err)
	}
}

func TestUnmarshalFile(t *testing.T) {
	astConvert := visitor.NewAstConvert("error", "", "")
	docVisitors := []visitor.DocVisitor{astConvert}
	p := unmarshal.NewDocFileSetUnmarshaller(docVisitors)
	err := p.UnmarshalFile("./_testjson/files.json")
	if err != nil {
		t.Error(err)
	}
}

func TestUnmarshalFileFileNotExistError(t *testing.T) {
	astConvert := visitor.NewAstConvert("error", "", "")
	docVisitors := []visitor.DocVisitor{astConvert}
	p := unmarshal.NewDocFileSetUnmarshaller(docVisitors)
	err := p.UnmarshalFile("./_testjson/notexist.json")
	if !os.IsNotExist(err) {
		t.Error("expect no such file or directory error")
	}
}
