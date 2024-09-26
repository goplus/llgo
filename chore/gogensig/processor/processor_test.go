package processor_test

import (
	"os"
	"testing"

	"github.com/goplus/llgo/chore/gogensig/processor"
	"github.com/goplus/llgo/chore/gogensig/unmarshal"
	"github.com/goplus/llgo/chore/gogensig/util"
	"github.com/goplus/llgo/chore/gogensig/visitor"
)

func TestUnmarshalFiles(t *testing.T) {
	filesBytes, err := util.ReadFile("./_testjson/files.json")
	if err != nil {
		t.Fatal(err)
	}
	astConvert := visitor.NewAstConvert("files", "", "")
	docVisitors := []visitor.DocVisitor{astConvert}
	p := processor.NewDocFileSetProcessor(docVisitors)

	data, err := unmarshal.UnmarshalFileSet(filesBytes)
	if err != nil {
		t.Fatal(err)
	}

	err = p.ProcessFileSet(data)
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
	p := processor.NewDocFileSetProcessor(docVisitors)
	data, err := unmarshal.UnmarshalFileSet(bytes)
	if err != nil {
		t.Fatal(err)
	}
	err = p.ProcessFileSet(data)
	if err != nil {
		t.Error(err)
	}
}

func TestUnmarshalFile(t *testing.T) {
	astConvert := visitor.NewAstConvert("error", "", "")
	docVisitors := []visitor.DocVisitor{astConvert}
	p := processor.NewDocFileSetProcessor(docVisitors)
	err := p.ProcessFileSetFromPath("./_testjson/files.json")
	if err != nil {
		t.Error(err)
	}
}

func TestUnmarshalFileFileNotExistError(t *testing.T) {
	astConvert := visitor.NewAstConvert("error", "", "")
	docVisitors := []visitor.DocVisitor{astConvert}
	p := processor.NewDocFileSetProcessor(docVisitors)
	err := p.ProcessFileSetFromPath("./_testjson/notexist.json")
	if !os.IsNotExist(err) {
		t.Error("expect no such file or directory error")
	}
}

func TestDocFileUnmarshalBytesPanic(t *testing.T) {
	defer func() {
		if e := recover(); e == nil {
			t.Errorf("%s", "expect panic")
		}
	}()
	path := "../unmarshal/_testjson/panic.txt"
	astConvert := visitor.NewAstConvert("panic", "", "")
	docVisitors := []visitor.DocVisitor{astConvert}
	p := processor.NewDocFileSetProcessor(docVisitors)
	err := p.ProcessFileSetFromPath(path)
	if err != nil {
		panic(err)
	}
}
