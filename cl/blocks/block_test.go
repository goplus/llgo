//go:build !llgo
// +build !llgo

/*
 * Copyright (c) 2024 The XGo Authors (xgo.dev). All rights reserved.
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

package blocks

import (
	"bytes"
	"fmt"
	"go/ast"
	"go/parser"
	"go/token"
	"go/types"
	"log"
	"os"
	"path"
	"strings"
	"testing"

	"github.com/goplus/gogen/packages"
	"github.com/goplus/llgo/internal/filecheck"
	"golang.org/x/tools/go/ssa"
	"golang.org/x/tools/go/ssa/ssautil"

	llssa "github.com/goplus/llgo/ssa"
)

const litMarker = "// LITTEST"

type expectedSpec struct {
	path      string
	text      string
	filecheck bool
}

func TestTestdefer(t *testing.T) {
	fromDir(t, "", "../_testdefer", func(name string) string {
		if strings.HasPrefix(name, "firstloop") {
			return "Loop"
		}
		if strings.HasPrefix(name, "gobuild") {
			return "Import"
		}
		return "main"
	})
}

func TestFirstLoop(t *testing.T) {
	blk := &ssa.BasicBlock{}
	blk.Index = 0
	blk.Preds = []*ssa.BasicBlock{blk}
	blk.Succs = []*ssa.BasicBlock{blk}
	infos := Infos([]*ssa.BasicBlock{blk})
	if infos[0].Kind != llssa.DeferInLoop {
		t.Fatal("TestFirstLoop")
	}
}

func fromDir(t *testing.T, sel, relDir string, fn func(string) string) {
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
			testFrom(t, dir+"/"+name, sel, fn(name))
		})
	}
}

func testFrom(t *testing.T, pkgDir, sel, fn string) {
	if sel != "" && !strings.Contains(pkgDir, sel) {
		return
	}
	log.Println("Parsing", pkgDir)
	in := pkgDir + "/in.go"
	spec, err := loadExpectedSpec(pkgDir, in)
	if err != nil {
		t.Fatal("loadExpectedSpec failed:", err)
	}
	testBlockInfo(t, nil, in, spec, fn)
}

func loadExpectedSpec(pkgDir, in string) (expectedSpec, error) {
	if ok, err := hasLitMarker(in); err != nil {
		return expectedSpec{}, err
	} else if ok {
		data, err := os.ReadFile(in)
		if err != nil {
			return expectedSpec{}, err
		}
		text := string(data)
		ok, err := filecheck.HasDirectives(text)
		if err != nil {
			return expectedSpec{}, err
		}
		if !ok {
			return expectedSpec{}, fmt.Errorf("%s: marked %s but has no CHECK directives", in, litMarker)
		}
		return expectedSpec{path: in, text: text, filecheck: true}, nil
	}

	out := pkgDir + "/out.txt"
	b, err := os.ReadFile(out)
	if err != nil {
		return expectedSpec{}, err
	}
	return expectedSpec{path: out, text: string(b)}, nil
}

func hasLitMarker(in string) (bool, error) {
	b, err := os.ReadFile(in)
	if err != nil {
		return false, err
	}
	line, _, _ := strings.Cut(string(b), "\n")
	return strings.TrimSpace(line) == litMarker, nil
}

func testBlockInfo(t *testing.T, src any, fname string, spec expectedSpec, fn string) {
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
		&types.Config{Importer: imp}, fset, pkg, files, ssa.SanityCheckFunctions|ssa.InstantiateGenerics|ssa.GlobalDebug)
	if err != nil {
		t.Fatal("BuildPackage failed:", err)
	}
	foo.WriteTo(os.Stderr)

	for _, member := range foo.Members {
		switch f := member.(type) {
		case *ssa.Function:
			if f.Name() == fn {
				f.WriteTo(os.Stderr)
				infos := Infos(f.Blocks)
				if v := resultOf(infos); spec.filecheck {
					if err := filecheck.Match(spec.path, spec.text, v); err != nil {
						t.Fatal(err)
					}
				} else if v != spec.text {
					t.Fatalf("\n==> got:\n%s\n==> expected:\n%s\n", v, spec.text)
				}
				return
			}
		}
	}
}

func resultOf(infos []Info) string {
	var b bytes.Buffer
	i := 0
	for {
		fmt.Fprintf(&b, "%2d: %s\n", i, kinds[infos[i].Kind])
		if i = infos[i].Next; i < 0 {
			break
		}
	}
	return b.String()
}

var kinds = [...]string{
	llssa.DeferAlways: "always",
	llssa.DeferInCond: "cond",
	llssa.DeferInLoop: "loop",
}
