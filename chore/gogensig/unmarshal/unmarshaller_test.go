package unmarshal_test

// TODO to improve test case
import (
	"testing"

	"github.com/goplus/llgo/chore/gogensig/file"
	"github.com/goplus/llgo/chore/gogensig/unmarshal"
	"github.com/goplus/llgo/chore/gogensig/visitor"
)

func TestUnmarshalFiles(t *testing.T) {
	filesBytes, err := file.ReadFile("./jsons/files.json")
	if err != nil {
		t.Error(err)
	}
	astConvert := visitor.NewAstConvert("./jsons/files.json", "../../llcppg/llcppg.symb.json")
	docVisitors := []visitor.DocVisitor{astConvert}
	p := unmarshal.NewDocFileSetUnmarshaller(docVisitors)
	p.UnmarshalBytes(filesBytes)
}

func TestUnmarshalAnyNode(t *testing.T) {
	nodeBytes, err := file.ReadFile("./jsons/anynode.json")
	if err != nil {
		t.Error(err)
	}
	astConvert := visitor.NewAstConvert("anynode", "")
	docVisitors := []visitor.DocVisitor{astConvert}
	p := unmarshal.NewDocFileUnmarshaller(docVisitors)
	rawDocFile := unmarshal.NewRawDocFile("./jsons/anynode.json", nodeBytes)
	p.UnmarshalRawDocFile(rawDocFile)
}

func TestFunc1(t *testing.T) {
	bytes, err := file.ReadFile("./jsons/func1.json")
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

func TestUnmarshalFile(t *testing.T) {
	astConvert := visitor.NewAstConvert("./jsons/INIReader.json", "../../llcppg/llcppg.symb.json")
	docVisitors := []visitor.DocVisitor{astConvert}
	p := unmarshal.NewDocFileSetUnmarshaller(docVisitors)
	p.UnmarshalFile("./jsons/INIReader.json")
}
