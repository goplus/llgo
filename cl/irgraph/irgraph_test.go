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
			mod, relocs := compileModuleFromDirWithReloc(t, pkgDir, true)
			graph := Build(mod, Options{})
			graph.AddRelocRecords(relocs, Options{})
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

func TestBuildRelocRequiresInjection(t *testing.T) {
	root, err := os.Getwd()
	if err != nil {
		t.Fatal("Getwd failed:", err)
	}
	pkgDir := filepath.Join(root, "_testdata_reloc", "useiface")
	mod, relocs := compileModuleFromDirWithReloc(t, pkgDir, true)
	if len(relocs) == 0 {
		t.Fatal("expected reloc records from package context")
	}

	g := Build(mod, Options{})
	baseReloc := 0
	for _, r := range g.Relocs {
		if r.Kind&EdgeRelocMask != 0 {
			baseReloc++
		}
	}
	if baseReloc != 0 {
		t.Fatalf("Build should not include reloc edges before injection: got=%d", baseReloc)
	}

	g.AddRelocRecords(relocs, Options{})
	injectedReloc := 0
	for _, r := range g.Relocs {
		if r.Kind&EdgeRelocMask != 0 {
			injectedReloc++
		}
	}
	if injectedReloc == 0 {
		t.Fatal("expected reloc edges after AddRelocRecords")
	}
}

func TestAddRelocRecordsMapping(t *testing.T) {
	g := &Graph{
		Nodes:  make(map[SymID]*NodeInfo),
		Relocs: nil,
	}
	g.AddRelocRecords([]RelocRecord{
		{
			Kind:   relocUseNamedMethod,
			Owner:  "caller",
			Target: "Foo",
		},
		{
			Kind:   relocUseIfaceMethod,
			Owner:  "caller",
			Target: "IfaceType",
			Addend: 2,
			Name:   "M",
			FnType: "Iface.M$type",
		},
		{
			Kind:   relocMethodOff,
			Owner:  "TypeA",
			Target: "",
			Addend: 1,
			Name:   "Bar",
		},
	}, Options{})

	var foundNamed, foundIfaceMethod, foundMethodOff bool
	for _, r := range g.Relocs {
		switch r.Kind {
		case EdgeRelocUseNamedMethod:
			if r.Owner == "caller" && r.Target == "Foo" && r.Name == "Foo" {
				foundNamed = true
			}
		case EdgeRelocUseIfaceMethod:
			if r.Owner == "caller" && r.Target == "IfaceType" && r.Name == "M" && r.FnType == "Iface.M$type" && r.Addend == 2 {
				foundIfaceMethod = true
			}
		case EdgeRelocMethodOff:
			if r.Owner == "TypeA" && r.Target == "" && r.Name == "Bar" && r.Addend == 1 {
				foundMethodOff = true
			}
		}
	}
	if !foundNamed {
		t.Fatal("missing mapped usenamedmethod reloc edge")
	}
	if !foundIfaceMethod {
		t.Fatal("missing mapped useifacemethod reloc edge")
	}
	if !foundMethodOff {
		t.Fatal("missing mapped methodoff reloc edge with empty target")
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
	mod, _ := compileModuleFromDirWithReloc(t, dir, false)
	return mod
}

func compileModuleFromDirWithReloc(t *testing.T, dir string, enableReloc bool) (llvm.Module, []RelocRecord) {
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
	ret, err := cl.NewPackage(prog, foo, files)
	if err != nil {
		t.Fatal("cl.NewPackage failed:", err)
	}
	if !enableReloc {
		return ret.Module(), nil
	}
	src := ret.RelocRecords()
	relocs := make([]RelocRecord, len(src))
	for i, r := range src {
		relocs[i] = RelocRecord{
			Kind:   r.Kind,
			Owner:  r.Owner,
			Target: r.Target,
			Addend: r.Addend,
			Name:   r.Name,
			FnType: r.FnType,
		}
	}
	return ret.Module(), relocs
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
	seen := make(map[string]struct{})
	var lines []string
	addLine := func(label, from, to string) {
		line := fmt.Sprintf("%s %s -> %s", label, from, to)
		if _, ok := seen[line]; ok {
			return
		}
		seen[line] = struct{}{}
		lines = append(lines, line)
	}
	for _, r := range g.Relocs {
		if r.Kind&mask == 0 {
			continue
		}
		label := kindLabel(r.Kind)
		if r.Kind == EdgeRelocMethodOff {
			label = fmt.Sprintf("reloc(methodoff idx=%d)", r.Addend)
			if r.Name != "" {
				label = fmt.Sprintf("%s name=%s", label, r.Name)
			}
		} else if r.Kind == EdgeRelocUseIfaceMethod && r.Name != "" {
			label = fmt.Sprintf("%s name=%s", label, r.Name)
			if r.FnType != "" {
				label = fmt.Sprintf("%s fntype=%s", label, r.FnType)
			}
		}
		addLine(label, string(r.Owner), string(r.Target))
	}
	sort.Strings(lines)
	var buf bytes.Buffer
	for _, line := range lines {
		buf.WriteString(line)
		buf.WriteString("\n")
	}
	return buf.Bytes()
}

func kindLabel(kind EdgeKind) string {
	switch kind {
	case EdgeCall:
		return "reloc(directcall)"
	case EdgeRef:
		return "reloc(directref)"
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
