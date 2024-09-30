package cmptest

import (
	"bytes"
	"encoding/json"
	"os"
	"path/filepath"
	"testing"

	"github.com/goplus/llgo/chore/gogensig/cmp"
	"github.com/goplus/llgo/chore/gogensig/config"
	"github.com/goplus/llgo/chore/gogensig/convert"
	"github.com/goplus/llgo/chore/gogensig/processor"
	"github.com/goplus/llgo/chore/gogensig/unmarshal"
	"github.com/goplus/llgo/chore/gogensig/visitor"
	cppgtypes "github.com/goplus/llgo/chore/llcppg/types"
)

func RunTest(t *testing.T, pkgName string, isCpp bool, symbolEntries []config.SymbolEntry, cppgConf *cppgtypes.Config, originalCode, expectedOutput string) *bytes.Buffer {
	t.Helper()

	symbolpath, err := CreateAndWriteTempSymbFile(symbolEntries)
	if err != nil {
		t.Fatal(err)
	}
	cppgConfPath, err := CreateCppgConfFile(cppgConf)
	if err != nil {
		t.Fatal(err)
	}
	astConvert := convert.NewAstConvert(pkgName, symbolpath, cppgConfPath)

	var buf *bytes.Buffer
	astConvert.SetVisitDone(func(pkg *convert.Package, docPath string) {
		// Write conversion result to buffer For Test
		// Note: The converted file path for llcppsigfetch's temp header file is temp.h,
		buf, err = pkg.WriteToBuffer("temp.h")
		if err != nil {
			t.Fatalf("WriteTo failed: %v", err)
		}
	})

	p := processor.NewDocFileSetProcessor([]visitor.DocVisitor{astConvert})

	bytes, err := config.Sigfetch(originalCode, true, isCpp)
	if err != nil {
		t.Fatal(err)
	}

	inputdata, err := unmarshal.UnmarshalFileSet(bytes)
	if err != nil {
		t.Fatal(err)
	}

	p.ProcessFileSet(inputdata)

	if isEqual, diff := cmp.EqualStringIgnoreSpace(expectedOutput, buf.String()); !isEqual {
		t.Errorf("unexpected result:\n%s", diff)
	}

	return buf
}

func CreateAndWriteTempSymbFile(entries []config.SymbolEntry) (string, error) {
	return CreateJSONFile("llcppg.symb.json", entries)
}

func CreateCppgConfFile(config *cppgtypes.Config) (string, error) {
	return CreateJSONFile("llcppg.cfg", config)
}

func CreateJSONFile(filename string, data interface{}) (string, error) {
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
