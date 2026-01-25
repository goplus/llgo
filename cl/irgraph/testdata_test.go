/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org).
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

package irgraph

import (
	"bytes"
	"fmt"
	"go/ast"
	"go/parser"
	"go/token"
	"go/types"
	"os"
	"path/filepath"
	"runtime"
	"sort"
	"strings"
	"testing"

	"github.com/goplus/gogen/packages"
	"github.com/goplus/llvm"
	"github.com/goplus/llgo/cl"
	"github.com/goplus/llgo/ssa/ssatest"
	"github.com/qiniu/x/test"
	"golang.org/x/tools/go/ssa"
	"golang.org/x/tools/go/ssa/ssautil"
)

// Set to true to update out.txt files from in.go.
var updateTestdata = false

func TestGraphFromTestdata(t *testing.T) {
	root, err := os.Getwd()
	if err != nil {
		t.Fatal("Getwd failed:", err)
	}
	dir := filepath.Join(root, "_testdata")
	entries, err := os.ReadDir(dir)
	if err != nil {
		if os.IsNotExist(err) {
			t.Skip("no _testdata")
		}
		t.Fatal("ReadDir failed:", err)
	}
	for _, entry := range entries {
		if !entry.IsDir() || strings.HasPrefix(entry.Name(), "_") {
			continue
		}
		pkgDir := filepath.Join(dir, entry.Name())
		t.Run(entry.Name(), func(t *testing.T) {
			inPath := filepath.Join(pkgDir, "in.go")
			outPath := filepath.Join(pkgDir, "out.txt")
			mod := compileModuleFromFile(t, inPath)
			graph := Build(mod, Options{})
			got := formatGraph(graph)
			if updateTestdata {
				if err := os.WriteFile(outPath, got, 0644); err != nil {
					t.Fatalf("WriteFile failed: %v", err)
				}
				return
			}
			want, err := os.ReadFile(outPath)
			if err != nil {
				t.Fatalf("ReadFile failed: %v", err)
			}
			if test.Diff(t, outPath+".new", got, want) {
				t.Fatal("unexpected graph output")
			}
		})
	}
}

func compileModuleFromFile(t *testing.T, path string) llvm.Module {
	t.Helper()
	src, err := os.ReadFile(path)
	if err != nil {
		t.Fatal("ReadFile failed:", err)
	}
	fset := token.NewFileSet()
	f, err := parser.ParseFile(fset, filepath.Base(path), src, parser.ParseComments)
	if err != nil {
		t.Fatal("ParseFile failed:", err)
	}
	files := []*ast.File{f}
	name := f.Name.Name
	pkg := types.NewPackage(name, name)
	imp := packages.NewImporter(fset)
	mode := ssa.SanityCheckFunctions | ssa.InstantiateGenerics
	foo, _, err := ssautil.BuildPackage(&types.Config{Importer: imp}, fset, pkg, files, mode)
	if err != nil {
		t.Fatal("BuildPackage failed:", err)
	}
	prog := ssatest.NewProgramEx(t, nil, imp)
	prog.TypeSizes(types.SizesFor("gc", runtime.GOARCH))
	ret, err := cl.NewPackage(prog, foo, files)
	if err != nil {
		t.Fatal("cl.NewPackage failed:", err)
	}
	return ret.Module()
}

func formatGraph(g *Graph) []byte {
	type edgeLine struct {
		from string
		to   string
		kind EdgeKind
	}
	var lines []edgeLine
	for from, tos := range g.Edges {
		for to, kind := range tos {
			if kind&EdgeCall != 0 {
				lines = append(lines, edgeLine{from: string(from), to: string(to), kind: EdgeCall})
			}
			if kind&EdgeRef != 0 {
				lines = append(lines, edgeLine{from: string(from), to: string(to), kind: EdgeRef})
			}
			if kind&EdgeReloc != 0 {
				lines = append(lines, edgeLine{from: string(from), to: string(to), kind: EdgeReloc})
			}
		}
	}
	sort.Slice(lines, func(i, j int) bool {
		if lines[i].from != lines[j].from {
			return lines[i].from < lines[j].from
		}
		if lines[i].to != lines[j].to {
			return lines[i].to < lines[j].to
		}
		return lines[i].kind < lines[j].kind
	})
	var buf bytes.Buffer
	for _, line := range lines {
		buf.WriteString(fmt.Sprintf("%s %s -> %s\n", kindLabel(line.kind), line.from, line.to))
	}
	return buf.Bytes()
}

func kindLabel(kind EdgeKind) string {
	switch kind {
	case EdgeCall:
		return "call"
	case EdgeRef:
		return "ref"
	case EdgeReloc:
		return "reloc"
	default:
		return fmt.Sprintf("kind(%d)", kind)
	}
}
