package main

import (
	"fmt"
	"path/filepath"
	"strings"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse"
	test "github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse/cvt_test"
	"github.com/goplus/llgo/chore/_xtool/llcppsymg/clangutils"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

func main() {
	TestDefine()
	TestInclude()
	TestSystemHeader()
	TestInclusionMap()
	TestMacroExpansionOtherFile()
}

func TestDefine() {
	testCases := []string{
		`#define DEBUG`,
		`#define OK 1`,
		`#define SQUARE(x) ((x) * (x))`,
	}
	test.RunTest("TestDefine", testCases)
}

func TestInclude() {
	testCases := []string{
		`#include "foo.h"`,
		// `#include <limits.h>`, //  Standard libraries are mostly platform-dependent
	}
	test.RunTest("TestInclude", testCases)
}

func TestInclusionMap() {
	fmt.Println("=== TestInclusionMap ===")
	converter, err := parse.NewConverter(&clangutils.Config{
		File:  "#include <sys/types.h>",
		Temp:  true,
		IsCpp: false,
	})
	if err != nil {
		panic(err)
	}
	found := false
	for _, f := range converter.Files {
		if f.IncPath == "sys/types.h" {
			found = true
		}
	}
	if !found {
		panic("sys/types.h not found")
	} else {
		fmt.Println("sys/types.h include path found")
	}
}

func TestSystemHeader() {
	fmt.Println("=== TestSystemHeader ===")
	converter, err := parse.NewConverter(&clangutils.Config{
		File:  "#include <stdio.h>",
		Temp:  true,
		IsCpp: false,
	})
	if err != nil {
		panic(err)
	}
	converter.Convert()
	if len(converter.Files) < 2 {
		panic("expect 2 files")
	}
	if converter.Files[0].IsSys {
		panic("entry file is not system header")
	}

	includePath := converter.Files[0].Doc.Includes[0].Path
	if strings.HasSuffix(includePath, "stdio.h") && filepath.IsAbs(includePath) {
		fmt.Println("stdio.h is absolute path")
	}

	for i := 1; i < len(converter.Files); i++ {
		if !converter.Files[i].IsSys {
			panic(fmt.Errorf("include file is not system header: %s", converter.Files[i].Path))
		}
		for _, decl := range converter.Files[i].Doc.Decls {
			switch decl := decl.(type) {
			case *ast.TypeDecl:
			case *ast.EnumTypeDecl:
			case *ast.FuncDecl:
			case *ast.TypedefDecl:
				if decl.DeclBase.Loc.File != converter.Files[i].Path {
					fmt.Println("Decl is not in the file", decl.DeclBase.Loc.File, "expect", converter.Files[i].Path)
				}
			}
		}
	}
	fmt.Println("include files are all system headers")
}

func TestMacroExpansionOtherFile() {
	c.Printf(c.Str("TestMacroExpansionOtherFile:\n"))
	test.RunTestWithConfig(&clangutils.Config{
		File:  "./testdata/macroexpan/ref.h",
		Temp:  false,
		IsCpp: false,
	})
}
