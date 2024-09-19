package cmptest

import (
	"bytes"
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/google/go-cmp/cmp"
	"github.com/goplus/llgo/chore/gogensig/unmarshal"
	"github.com/goplus/llgo/chore/gogensig/util"
	"github.com/goplus/llgo/chore/gogensig/visitor"
	"github.com/goplus/llgo/chore/gogensig/visitor/genpkg"
	"github.com/goplus/llgo/chore/gogensig/visitor/symb"
)

func EqualStringIgnoreSpace(s1 string, s2 string) (bool, string) {
	s1 = strings.TrimSpace(s1)
	s2 = strings.TrimSpace(s2)
	if !cmp.Equal(s1, s2) {
		return false, cmp.Diff(s1, s2)
	}
	return true, ""
}

func RunTest(t *testing.T, pkgName string, isCpp bool, symbolEntries []symb.SymbolEntry, originalCode, expectedOutput string) {
	t.Helper()

	filePath, err := createAndWriteTempSymbFile(symbolEntries)
	if err != nil {
		t.Fatal(err)
	}

	astConvert := visitor.NewAstConvert(pkgName, filePath)
	var buf bytes.Buffer
	astConvert.SetVisitDone(func(pkg *genpkg.Package, docPath string) {
		if err := pkg.WriteToBuffer(&buf); err != nil {
			t.Fatalf("WriteTo failed: %v", err)
		}
	})

	p := unmarshal.NewDocFileSetUnmarshaller([]visitor.DocVisitor{astConvert})

	bytes, err := util.Llcppsigfetch(originalCode, true, isCpp)
	if err != nil {
		t.Fatal(err)
	}

	p.UnmarshalBytes(bytes)

	result := buf.String()
	if isEqual, diff := EqualStringIgnoreSpace(expectedOutput, result); !isEqual {
		t.Errorf("unexpected result:\n%s", diff)
	}
}

func createAndWriteTempSymbFile(entries []symb.SymbolEntry) (string, error) {
	filePath := filepath.Join(os.TempDir(), "llcppg.symb.json")

	file, err := os.Create(filePath)
	if err != nil {
		return "", err
	}
	defer file.Close()

	encoder := json.NewEncoder(file)
	encoder.SetIndent("", "  ")
	return filePath, encoder.Encode(entries)
}
