package cmptest

import (
	"bufio"
	"bytes"
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"unicode"

	"github.com/google/go-cmp/cmp"
	"github.com/goplus/llgo/chore/gogensig/unmarshal"
	"github.com/goplus/llgo/chore/gogensig/util"
	"github.com/goplus/llgo/chore/gogensig/visitor"
	"github.com/goplus/llgo/chore/gogensig/visitor/genpkg"
	"github.com/goplus/llgo/chore/gogensig/visitor/symb"
	cppgtypes "github.com/goplus/llgo/chore/llcppg/types"
)

func skipSpace(data []byte, from int) int {
	dataBuf := bytes.NewBuffer(data[from:])
	index := from
	for {
		rn, sz, err := dataBuf.ReadRune()
		if err != nil {
			break
		}
		if !unicode.IsSpace(rn) {
			break
		}
		index = index + sz
	}
	return index
}

func SplitLineIgnoreSpace(s string) []string {
	buf := bytes.NewBufferString(s)
	scan := bufio.NewScanner(buf)
	results := make([]string, 0)
	for scan.Scan() {
		lineText := scan.Text()
		lineTextBuf := bytes.NewBufferString(lineText)
		lineTextScan := bufio.NewScanner(lineTextBuf)
		lineTextScan.Split(func(data []byte, atEOF bool) (advance int, token []byte, err error) {
			if atEOF && len(data) == 0 {
				return 0, nil, nil
			}
			if i := bytes.IndexAny(data, " \t"); i >= 0 {
				ii := skipSpace(data, i+1)
				return ii, data[0:i], nil
			}
			if atEOF {
				return len(data), data, nil
			}
			return 0, nil, nil
		})

		strBuilder := strings.Builder{}
		writeSpace := false
		total := 0
		for lineTextScan.Scan() {
			word := lineTextScan.Text()
			if writeSpace {
				strBuilder.WriteRune(' ')
			}
			n, err := strBuilder.WriteString(word)
			if err != nil {
				break
			}
			total += n
			writeSpace = total > 0
		}
		if total > 0 {
			results = append(results, strBuilder.String())
		}
	}
	return results
}

func EqualStringIgnoreSpace(s1 string, s2 string) (bool, string) {
	arr1 := SplitLineIgnoreSpace(s1)
	arr2 := SplitLineIgnoreSpace(s2)
	if !cmp.Equal(arr1, arr2) {
		return false, cmp.Diff(arr1, arr2)
	}
	return true, ""
}

func RunTest(t *testing.T, pkgName string, isCpp bool, symbolEntries []symb.SymbolEntry, cppgConf *cppgtypes.Config, originalCode, expectedOutput string) {
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
