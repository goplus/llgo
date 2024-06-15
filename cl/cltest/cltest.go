/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package cltest

import (
	"archive/zip"
	"go/ast"
	"go/parser"
	"go/token"
	"go/types"
	"io"
	"log"
	"os"
	"path"
	"path/filepath"
	"strings"
	"testing"

	"github.com/goplus/gogen/packages"
	"github.com/goplus/llgo/cl"
	"github.com/goplus/llgo/internal/llgen"
	"github.com/goplus/llgo/ssa/ssatest"
	"golang.org/x/tools/go/ssa"
	"golang.org/x/tools/go/ssa/ssautil"

	llssa "github.com/goplus/llgo/ssa"
)

func init() {
	cl.SetDebug(cl.DbgFlagAll)
	llssa.Initialize(llssa.InitAll | llssa.InitNative)
	llssa.SetDebug(llssa.DbgFlagAll)
}

func FromDir(t *testing.T, sel, relDir string, byLLGen bool) {
	dir, err := os.Getwd()
	if err != nil {
		t.Fatal("Getwd failed:", err)
	}
	dir = path.Join(dir, relDir)
	fis, err := os.ReadDir(dir)
	if err != nil {
		t.Fatal("ReadDir failed:", err)
	}
	for _, fi := range fis {
		name := fi.Name()
		if !fi.IsDir() || strings.HasPrefix(name, "_") {
			continue
		}
		t.Run(name, func(t *testing.T) {
			testFrom(t, dir+"/"+name, sel, byLLGen)
		})
	}
}

// *.ll => *.lla
func decodeLinkFile(llFile string) (data []byte, err error) {
	zipFile := llFile + "a"
	zipf, err := zip.OpenReader(zipFile)
	if err != nil {
		return
	}
	defer zipf.Close()
	f, err := zipf.Open(filepath.Base(llFile))
	if err != nil {
		return
	}
	defer f.Close()
	data, err = io.ReadAll(f)
	if err == nil {
		os.WriteFile(llFile, data, 0644)
	}
	return
}

func Pkg(t *testing.T, pkgPath, outFile string) {
	b, err := os.ReadFile(outFile)
	if err != nil {
		if !os.IsNotExist(err) {
			t.Fatal("ReadFile failed:", err)
		}
		if b, err = decodeLinkFile(outFile); err != nil {
			t.Fatal("decodeLinkFile failed:", err)
		}
	}
	expected := string(b)
	if v := llgen.GenFrom(pkgPath); v != expected {
		t.Fatalf("\n==> got:\n%s\n==> expected:\n%s\n", v, expected)
	}
}

func testFrom(t *testing.T, pkgDir, sel string, byLLGen bool) {
	if sel != "" && !strings.Contains(pkgDir, sel) {
		return
	}
	log.Println("Parsing", pkgDir)
	in := pkgDir + "/in.go"
	out := pkgDir + "/out.ll"
	b, err := os.ReadFile(out)
	if err != nil {
		t.Fatal("ReadFile failed:", err)
	}
	expected := string(b)
	if byLLGen {
		if v := llgen.GenFrom(in); v != expected && expected != ";" { // expected == ";" means skipping out.ll
			t.Fatalf("\n==> got:\n%s\n==> expected:\n%s\n", v, expected)
		}
	} else {
		TestCompileEx(t, nil, in, expected)
	}
}

func TestCompileEx(t *testing.T, src any, fname, expected string) {
	t.Helper()
	fset := token.NewFileSet()
	f, err := parser.ParseFile(fset, fname, src, parser.ParseComments)
	if err != nil {
		t.Fatal("ParseFile failed:", err)
	}
	files := []*ast.File{f}
	name := f.Name.Name
	pkg := types.NewPackage(name, name)
	imp := packages.NewImporter(fset)
	foo, _, err := ssautil.BuildPackage(
		&types.Config{Importer: imp}, fset, pkg, files, ssa.SanityCheckFunctions)
	if err != nil {
		t.Fatal("BuildPackage failed:", err)
	}
	foo.WriteTo(os.Stderr)
	prog := ssatest.NewProgramEx(t, nil, imp)

	ret, err := cl.NewPackage(prog, foo, files)
	if err != nil {
		t.Fatal("cl.NewPackage failed:", err)
	}

	if prog.NeedPyInit { // call PyInit if needed
		ret.PyInit()
	}

	if v := ret.String(); v != expected && expected != ";" { // expected == ";" means skipping out.ll
		t.Fatalf("\n==> got:\n%s\n==> expected:\n%s\n", v, expected)
	}
}
