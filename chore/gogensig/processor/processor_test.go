package processor_test

import (
	"os"
	"testing"

	"github.com/goplus/llgo/chore/gogensig/cmptest"
	"github.com/goplus/llgo/chore/gogensig/processor"
	"github.com/goplus/llgo/chore/gogensig/visitor"
)

func TestProcessValidSigfetchContent(t *testing.T) {
	content := []map[string]interface{}{
		{
			"path": "temp.h",
			"doc": map[string]interface{}{
				"_Type": "File",
				"decls": []map[string]interface{}{
					{
						"_Type":  "FuncDecl",
						"Loc":    map[string]interface{}{"_Type": "Location", "File": "temp.h"},
						"Doc":    nil,
						"Parent": nil,
						"Name":   map[string]interface{}{"_Type": "Ident", "Name": "go_func_name"},
						"Type": map[string]interface{}{
							"_Type":  "FuncType",
							"Params": map[string]interface{}{"_Type": "FieldList", "List": []interface{}{}},
							"Ret":    map[string]interface{}{"_Type": "BuiltinType", "Kind": 6, "Flags": 0},
						},
						"IsInline":      false,
						"IsStatic":      false,
						"IsConst":       false,
						"IsExplicit":    false,
						"IsConstructor": false,
						"IsDestructor":  false,
						"IsVirtual":     false,
						"IsOverride":    false,
					},
				},
			},
		},
	}

	tempFileName, err := cmptest.CreateJSONFile("llcppg.sigfetch-test.json", content)
	if err != nil {
		t.Fatal(err)
	}
	defer os.Remove(tempFileName)

	astConvert := visitor.NewAstConvert("files", "", "")
	docVisitors := []visitor.DocVisitor{astConvert}
	p := processor.NewDocFileSetProcessor(docVisitors)
	err = p.ProcessFileSetFromPath(tempFileName)
	if err != nil {
		t.Error(err)
	}
}

func TestProcessFileNotExist(t *testing.T) {
	astConvert := visitor.NewAstConvert("error", "", "")
	docVisitors := []visitor.DocVisitor{astConvert}
	p := processor.NewDocFileSetProcessor(docVisitors)
	err := p.ProcessFileSetFromPath("notexist.json")
	if !os.IsNotExist(err) {
		t.Error("expect no such file or directory error")
	}
}

func TestProcessInvalidSigfetchContent(t *testing.T) {
	defer func() {
		if e := recover(); e == nil {
			t.Errorf("%s", "expect panic")
		}
	}()

	invalidContent := "invalid json content"
	tempFileName, err := cmptest.CreateJSONFile("llcppg.sigfetch-panic.json", invalidContent)
	if err != nil {
		t.Fatal(err)
	}
	defer os.Remove(tempFileName)

	astConvert := visitor.NewAstConvert("panic", "", "")
	docVisitors := []visitor.DocVisitor{astConvert}
	p := processor.NewDocFileSetProcessor(docVisitors)
	err = p.ProcessFileSetFromPath(tempFileName)
	if err != nil {
		panic(err)
	}
}
