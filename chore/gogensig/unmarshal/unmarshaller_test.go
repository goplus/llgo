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
	err = p.UnmarshalBytes(filesBytes)
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
	err = p.UnmarshalBytes(bytes)
	if err != nil {
		t.Error(err)
	}
}

func TestDocFileSetUnmarshalBytesPanic(t *testing.T) {
	defer func() {
		if e := recover(); e == nil {
			t.Errorf("%s", "expect panic")
		}
	}()
	bytes, err := util.ReadFile("./_testjson/anynode.json")
	if err != nil {
		t.Fatal(err)
	}
	astConvert := visitor.NewAstConvert("anynode", "", "")
	docVisitors := []visitor.DocVisitor{astConvert}
	p := unmarshal.NewDocFileSetUnmarshaller(docVisitors)
	p.UnmarshalBytes(bytes)
}

func TestDocFileUnmarshalBytesPanic(t *testing.T) {
	defer func() {
		if e := recover(); e == nil {
			t.Errorf("%s", "expect panic")
		}
	}()
	path := "./_testjson/panic.txt"
	bytes, err := util.ReadFile(path)
	if err != nil {
		t.Fatal(err)
	}
	astConvert := visitor.NewAstConvert("panic", "", "")
	docVisitors := []visitor.DocVisitor{astConvert}
	p := unmarshal.NewDocFileUnmarshaller(docVisitors)
	p.UnmarshalBytes(bytes, path)
}

func TestDocFileUnmarshalBytesUnk(t *testing.T) {
	path := "./_testjson/unk.json"
	bytes, err := util.ReadFile(path)
	if err != nil {
		t.Fatal(err)
	}
	astConvert := visitor.NewAstConvert("unk", "", "")
	docVisitors := []visitor.DocVisitor{astConvert}
	p := unmarshal.NewDocFileUnmarshaller(docVisitors)
	err = p.UnmarshalBytes(bytes, path)
	if err == nil || err.Error() != "unknown node type: UNK" {
		t.Errorf("expected error %q", "unknown node type: UNK")
	}
}

func TestDocFileUnmarshalBytesError(t *testing.T) {
	path := "./_testjson/error.json"
	bytes, err := util.ReadFile(path)
	if err != nil {
		t.Fatal(err)
	}
	astConvert := visitor.NewAstConvert("error", "", "")
	docVisitors := []visitor.DocVisitor{astConvert}
	p := unmarshal.NewDocFileUnmarshaller(docVisitors)
	err = p.UnmarshalBytes(bytes, path)
	if err == nil {
		t.Error("expect a error")
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
