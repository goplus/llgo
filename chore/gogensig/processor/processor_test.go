package processor_test

import (
	"os"
	"reflect"
	"testing"

	"github.com/goplus/llgo/chore/gogensig/config"
	"github.com/goplus/llgo/chore/gogensig/convert"
	"github.com/goplus/llgo/chore/gogensig/convert/basic"
	"github.com/goplus/llgo/chore/gogensig/processor"
	"github.com/goplus/llgo/chore/gogensig/unmarshal"
	"github.com/goplus/llgo/chore/gogensig/visitor"
	"github.com/goplus/llgo/chore/llcppg/ast"
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

	tempFileName, err := config.CreateJSONFile("llcppg.sigfetch-test.json", content)
	if err != nil {
		t.Fatal(err)
	}
	defer os.Remove(tempFileName)

	tempDir, err := os.MkdirTemp("", "gogensig-test")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(tempDir)

	p, _, err := basic.ConvertProcesser(&basic.Config{
		AstConvertConfig: convert.AstConvertConfig{
			PkgName:   "files",
			SymbFile:  "",
			CfgFile:   "",
			OutputDir: tempDir,
		},
	})
	if err != nil {
		t.Fatal(err)
	}
	err = p.ProcessFileSetFromPath(tempFileName)
	if err != nil {
		t.Error(err)
	}
}

func TestProcessFileNotExist(t *testing.T) {
	astConvert, err := convert.NewAstConvert(&convert.AstConvertConfig{
		PkgName:  "error",
		SymbFile: "",
		CfgFile:  "",
	})
	if err != nil {
		t.Fatal(err)
	}
	docVisitors := []visitor.DocVisitor{astConvert}
	manager := processor.NewDocVisitorManager(docVisitors)
	p := processor.NewDocFileSetProcessor(&processor.ProcesserConfig{
		Exec: func(file *unmarshal.FileEntry) error {
			manager.Visit(file.Doc, file.Path, file.IncPath, file.IsSys)
			return nil
		},
		DepIncs: []string{},
	})
	err = p.ProcessFileSetFromPath("notexist.json")
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
	tempFileName, err := config.CreateJSONFile("llcppg.sigfetch-panic.json", invalidContent)
	if err != nil {
		t.Fatal(err)
	}
	defer os.Remove(tempFileName)

	astConvert, err := convert.NewAstConvert(&convert.AstConvertConfig{
		PkgName:  "panic",
		SymbFile: "",
		CfgFile:  "",
	})
	if err != nil {
		t.Fatal(err)
	}
	docVisitors := []visitor.DocVisitor{astConvert}
	manager := processor.NewDocVisitorManager(docVisitors)
	p := processor.NewDocFileSetProcessor(&processor.ProcesserConfig{
		Exec: func(file *unmarshal.FileEntry) error {
			manager.Visit(file.Doc, file.Path, file.IncPath, file.IsSys)
			return nil
		},
		DepIncs: []string{},
	})
	err = p.ProcessFileSetFromPath(tempFileName)
	if err != nil {
		panic(err)
	}
}

func TestDefaultExec(t *testing.T) {
	file := unmarshal.FileSet{
		{
			Path:  "foo.h",
			IsSys: false,
			Doc:   &ast.File{},
		},
	}
	p := processor.NewDocFileSetProcessor(&processor.ProcesserConfig{})
	p.ProcessFileSet(file)
}

func TestExecOrder(t *testing.T) {
	depIncs := []string{"int16_t.h"}
	fileSet := unmarshal.FileSet{
		{
			Path:    "/path/to/foo.h",
			IncPath: "foo.h",
			IsSys:   false,
			Doc: &ast.File{
				Includes: []*ast.Include{
					{Path: "/path/to/cdef.h"},
					{Path: "/path/to/stdint.h"},
				},
			},
		},
		{
			Path:    "/path/to/cdef.h",
			IncPath: "cdef.h",
			IsSys:   false,
			Doc: &ast.File{
				Includes: []*ast.Include{
					{Path: "/path/to/int8_t.h"},
					{Path: "/path/to/int16_t.h"},
				},
			},
		},
		{
			Path:    "/path/to/stdint.h",
			IncPath: "stdint.h",
			IsSys:   false,
			Doc: &ast.File{
				Includes: []*ast.Include{
					{Path: "/path/to/int8_t.h"},
					{Path: "/path/to/int16_t.h"},
				},
			},
		},
		{
			Path:    "/path/to/int8_t.h",
			IncPath: "int8_t.h",
			IsSys:   false,
			Doc: &ast.File{
				Includes: []*ast.Include{},
			},
		},
		{
			Path:    "/path/to/int16_t.h",
			IncPath: "int16_t.h",
			IsSys:   false,
			Doc: &ast.File{
				Includes: []*ast.Include{},
			},
		},
		{
			Path:    "/path/to/bar.h",
			IncPath: "bar.h",
			IsSys:   false,
			Doc: &ast.File{
				Includes: []*ast.Include{
					{Path: "/path/to/stdint.h"},
					{Path: "/path/to/a.h"},
				},
			},
		},
		// circular dependency
		{
			Path:    "/path/to/a.h",
			IncPath: "a.h",
			IsSys:   false,
			Doc: &ast.File{
				Includes: []*ast.Include{
					{Path: "/path/to/bar.h"},
					// will not appear in normal
					{Path: "/path/to/noexist.h"},
				},
			},
		},
	}
	var processFiles []string
	expectedOrder := []string{
		"/path/to/int8_t.h",
		"/path/to/cdef.h",
		"/path/to/stdint.h",
		"/path/to/foo.h",
		"/path/to/a.h",
		"/path/to/bar.h",
	}
	p := processor.NewDocFileSetProcessor(&processor.ProcesserConfig{
		Exec: func(file *unmarshal.FileEntry) error {
			processFiles = append(processFiles, file.Path)
			return nil
		},
		DepIncs: depIncs,
	})
	p.ProcessFileSet(fileSet)
	if !reflect.DeepEqual(processFiles, expectedOrder) {
		t.Errorf("expect %v, got %v", expectedOrder, processFiles)
	}
}
