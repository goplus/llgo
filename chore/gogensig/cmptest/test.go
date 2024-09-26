package cmptest

import (
	"bytes"
	"encoding/json"
	"os"
	"path/filepath"
	"testing"

	"github.com/goplus/llgo/chore/gogensig/cmp"
	"github.com/goplus/llgo/chore/gogensig/processor"
	"github.com/goplus/llgo/chore/gogensig/unmarshal"
	"github.com/goplus/llgo/chore/gogensig/util"
	"github.com/goplus/llgo/chore/gogensig/visitor"
	"github.com/goplus/llgo/chore/gogensig/visitor/genpkg"
	"github.com/goplus/llgo/chore/gogensig/visitor/symb"
	cppgtypes "github.com/goplus/llgo/chore/llcppg/types"
)

func RunTest(t *testing.T, pkgName string, isCpp bool, symbolEntries []symb.SymbolEntry, cppgConf *cppgtypes.Config, originalCode, expectedOutput string) bytes.Buffer {
	t.Helper()

	symbolpath, err := createAndWriteTempSymbFile(symbolEntries)
	if err != nil {
		t.Fatal(err)
	}
	cppgConfPath, err := createCppgConfFile(cppgConf)
	if err != nil {
		t.Fatal(err)
	}
	astConvert := visitor.NewAstConvert(pkgName, symbolpath, cppgConfPath)
	var buf bytes.Buffer
	astConvert.SetVisitDone(func(pkg *genpkg.Package, docPath string) {
		if err := pkg.WriteToBuffer(&buf); err != nil {
			t.Fatalf("WriteTo failed: %v", err)
		}
	})

	p := processor.NewDocFileSetProcessor([]visitor.DocVisitor{astConvert})

	bytes, err := util.Llcppsigfetch(originalCode, true, isCpp)
	if err != nil {
		t.Fatal(err)
	}

	inputdata, err := unmarshal.UnmarshalFileSet(bytes)
	if err != nil {
		t.Fatal(err)
	}

	p.ProcessFileSet(inputdata)

	result := buf.String()
	if isEqual, diff := cmp.EqualStringIgnoreSpace(expectedOutput, result); !isEqual {
		t.Errorf("unexpected result:\n%s", diff)
	}

	return buf
}

func createAndWriteTempSymbFile(entries []symb.SymbolEntry) (string, error) {
	return createJSONFile("llcppg.symb.json", entries)
}

func createCppgConfFile(config *cppgtypes.Config) (string, error) {
	return createJSONFile("llcppg.cfg", config)
}

func createJSONFile(filename string, data interface{}) (string, error) {
	filePath := filepath.Join(os.TempDir(), filename)

	file, err := os.Create(filePath)
	if err != nil {
		return "", err
	}
	defer file.Close()

	encoder := json.NewEncoder(file)
	encoder.SetIndent("", "  ")
	return filePath, encoder.Encode(data)
}
