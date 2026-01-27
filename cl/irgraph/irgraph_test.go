//go:build !llgo
// +build !llgo

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
	"go/importer"
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
	"github.com/goplus/llgo/cl"
	llssa "github.com/goplus/llgo/ssa"
	"github.com/goplus/llgo/ssa/ssatest"
	"github.com/goplus/llvm"
	"github.com/qiniu/x/test"
	"golang.org/x/tools/go/ssa"
	"golang.org/x/tools/go/ssa/ssautil"
)

func init() {
	llssa.Initialize(llssa.InitAll | llssa.InitNative)
}

// Set to true to update out.txt files from in.go.
var updateTestdata = false
var updateRelocTestdata = false

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
			if !hasGoFiles(pkgDir) {
				t.Skip("no go files")
			}
			outPath := filepath.Join(pkgDir, "out.txt")
			mod := compileModuleFromDir(t, pkgDir)
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

func TestRelocGraphFromTestdata(t *testing.T) {
	root, err := os.Getwd()
	if err != nil {
		t.Fatal("Getwd failed:", err)
	}
	dir := filepath.Join(root, "_testdata_reloc")
	entries, err := os.ReadDir(dir)
	if err != nil {
		if os.IsNotExist(err) {
			t.Skip("no _testdata_reloc")
		}
		t.Fatal("ReadDir failed:", err)
	}
	for _, entry := range entries {
		if !entry.IsDir() || strings.HasPrefix(entry.Name(), "_") {
			continue
		}
		pkgDir := filepath.Join(dir, entry.Name())
		t.Run(entry.Name(), func(t *testing.T) {
			if !hasGoFiles(pkgDir) {
				t.Skip("no go files")
			}
			outPath := filepath.Join(pkgDir, "out.txt")
			mod := compileModuleFromDirWithReloc(t, pkgDir, true)
			graph := Build(mod, Options{})
			got := formatGraphWithMask(graph, EdgeRelocMask)
			if updateRelocTestdata {
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

func hasGoFiles(dir string) bool {
	entries, err := os.ReadDir(dir)
	if err != nil {
		return false
	}
	for _, entry := range entries {
		if entry.IsDir() {
			continue
		}
		name := entry.Name()
		if strings.HasSuffix(name, ".go") && !strings.HasPrefix(name, "_") && !strings.HasSuffix(name, "_test.go") {
			return true
		}
	}
	return false
}

func compileModuleFromDir(t *testing.T, dir string) llvm.Module {
	return compileModuleFromDirWithReloc(t, dir, false)
}

func compileModuleFromDirWithReloc(t *testing.T, dir string, enableReloc bool) llvm.Module {
	t.Helper()
	entries, err := os.ReadDir(dir)
	if err != nil {
		t.Fatal("ReadDir failed:", err)
	}
	fset := token.NewFileSet()
	var files []*ast.File
	var fileNames []string
	for _, entry := range entries {
		if entry.IsDir() {
			continue
		}
		name := entry.Name()
		if !strings.HasSuffix(name, ".go") || strings.HasPrefix(name, "_") || strings.HasSuffix(name, "_test.go") {
			continue
		}
		fileNames = append(fileNames, name)
	}
	sort.Strings(fileNames)
	for _, name := range fileNames {
		src, err := os.ReadFile(filepath.Join(dir, name))
		if err != nil {
			t.Fatal("ReadFile failed:", err)
		}
		f, err := parser.ParseFile(fset, name, src, parser.ParseComments)
		if err != nil {
			t.Fatal("ParseFile failed:", err)
		}
		files = append(files, f)
	}
	if len(files) == 0 {
		t.Fatalf("no go files found in %s", dir)
	}
	name := files[0].Name.Name
	pkg := types.NewPackage(name, name)
	imp := newTestImporter(fset)
	mode := ssa.SanityCheckFunctions | ssa.InstantiateGenerics
	foo, _, err := ssautil.BuildPackage(&types.Config{Importer: imp}, fset, pkg, files, mode)
	if err != nil {
		t.Fatal("BuildPackage failed:", err)
	}
	prog := ssatest.NewProgramEx(t, nil, imp)
	prog.TypeSizes(types.SizesFor("gc", runtime.GOARCH))
	prog.EnableRelocTable(enableReloc)
	ret, err := cl.NewPackage(prog, foo, files)
	if err != nil {
		t.Fatal("cl.NewPackage failed:", err)
	}
	if enableReloc {
		_ = ret.String()
	}
	return ret.Module()
}

type testImporter struct {
	base *packages.Importer
	rt   types.Importer
}

func newTestImporter(fset *token.FileSet) *testImporter {
	return &testImporter{
		base: packages.NewImporter(fset),
		rt:   importer.For("source", nil),
	}
}

func (i *testImporter) Import(path string) (*types.Package, error) {
	return i.ImportFrom(path, "", 0)
}

func (i *testImporter) ImportFrom(path, dir string, mode types.ImportMode) (*types.Package, error) {
	if path == llssa.PkgRuntime {
		return i.rt.Import(path)
	}
	return i.base.ImportFrom(path, dir, mode)
}

func formatGraph(g *Graph) []byte {
	return formatGraphWithMask(g, EdgeCall|EdgeRef|EdgeRelocMask)
}

func formatGraphWithMask(g *Graph, mask EdgeKind) []byte {
	type edgeLine struct {
		from string
		to   string
		kind EdgeKind
	}
	var lines []edgeLine
	kinds := []EdgeKind{
		EdgeCall,
		EdgeRef,
		EdgeRelocUseIface,
		EdgeRelocUseIfaceMethod,
		EdgeRelocUseNamedMethod,
		EdgeRelocMethodOff,
		EdgeRelocReflectMethod,
		EdgeRelocTypeRef,
	}
	for from, tos := range g.Edges {
		for to, kind := range tos {
			for _, k := range kinds {
				if kind&k != 0 && mask&k != 0 {
					lines = append(lines, edgeLine{from: string(from), to: string(to), kind: k})
				}
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
	case EdgeRelocUseIface:
		return "reloc(useiface)"
	case EdgeRelocUseIfaceMethod:
		return "reloc(useifacemethod)"
	case EdgeRelocUseNamedMethod:
		return "reloc(usenamedmethod)"
	case EdgeRelocMethodOff:
		return "reloc(methodoff)"
	case EdgeRelocReflectMethod:
		return "reloc(reflectmethod)"
	case EdgeRelocTypeRef:
		return "reloc(typeref)"
	default:
		return fmt.Sprintf("kind(%d)", kind)
	}
}
