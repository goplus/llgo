package unmarshal_test

import (
	"io"
	"os"
	"testing"

	"github.com/goplus/llgo/chore/gogensig/unmarshal"
	"github.com/goplus/llgo/chore/gogensig/visitor"
	"github.com/goplus/llgo/chore/gogensig/visitor/docset"
)

func TestUnmarshalFiles(t *testing.T) {
	filesBytes, err := readJSONFile("./jsons/files.json")
	if err != nil {
		t.Error(err)
	}
	docVisitors := []visitor.DocVisitor{visitor.NewAstConvert("files")}
	p := unmarshal.NewDocFileSetUnmarshaller(docVisitors)
	p.Unmarshal(filesBytes)
}

func TestUnmarshalAnyNode(t *testing.T) {
	nodeBytes, err := readJSONFile("./jsons/anynode.json")
	if err != nil {
		t.Error(err)
	}
	docVisitors := []visitor.DocVisitor{visitor.NewAstConvert("anynode")}
	p := unmarshal.NewDocFileUnmarshaller(docset.DocPathString("./jsons/anynode.json"), docVisitors)
	p.Unmarshal(nodeBytes)
}

func TestFunc1(t *testing.T) {
	bytes, err := readJSONFile("./jsons/func1.json")
	if err != nil {
		t.Fatal(err)
	}
	docVisitors := []visitor.DocVisitor{visitor.NewAstConvert("func1")}
	p := unmarshal.NewDocFileSetUnmarshaller(docVisitors)
	err = p.Unmarshal(bytes)
	if err != nil {
		t.Fatal(err)
	}
}

func readJSONFile(filePath string) ([]byte, error) {
	jsonFile, err := os.Open(filePath)
	if err != nil {
		return nil, err
	}
	defer jsonFile.Close()
	return io.ReadAll(jsonFile)
}
