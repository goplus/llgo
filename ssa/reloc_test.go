//go:build !llgo
// +build !llgo

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

package ssa_test

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

// Set to true to update out.txt files from in.go.
var updateRelocTestdata = false

func TestRelocTableFromTestdata(t *testing.T) {
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
			mod := compileModuleFromDir(t, pkgDir)
			got := formatRelocTable(mod)
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
				t.Fatal("unexpected reloc output")
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
	prog.EnableRelocTable(true)
	ret, err := cl.NewPackage(prog, foo, files)
	if err != nil {
		t.Fatal("cl.NewPackage failed:", err)
	}
	_ = ret.String()
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

func formatRelocTable(mod llvm.Module) []byte {
	type relocLine struct {
		kind   string
		owner  string
		target string
		add    int64
	}
	var lines []relocLine
	relocs := mod.NamedGlobal("__llgo_relocs")
	if relocs.IsNil() {
		return nil
	}
	init := relocs.Initializer()
	if init.IsNil() {
		return nil
	}
	for i := 0; i < init.OperandsCount(); i++ {
		entry := init.Operand(i)
		if entry.IsNil() || entry.OperandsCount() < 4 {
			continue
		}
		kind := entry.Operand(0).SExtValue()
		kindName := relocKindName(kind)
		if kindName == "" {
			continue
		}
		owner := resolveSymbolValue(entry.Operand(1))
		target := resolveSymbolValue(entry.Operand(2))
		if owner.IsNil() || target.IsNil() {
			continue
		}
		add := entry.Operand(3).SExtValue()
		lines = append(lines, relocLine{
			kind:   kindName,
			owner:  owner.Name(),
			target: target.Name(),
			add:    add,
		})
	}
	sort.Slice(lines, func(i, j int) bool {
		if lines[i].kind != lines[j].kind {
			return lines[i].kind < lines[j].kind
		}
		if lines[i].owner != lines[j].owner {
			return lines[i].owner < lines[j].owner
		}
		if lines[i].target != lines[j].target {
			return lines[i].target < lines[j].target
		}
		return lines[i].add < lines[j].add
	})
	var buf bytes.Buffer
	for _, line := range lines {
		if line.add != 0 {
			fmt.Fprintf(&buf, "reloc %s %s -> %s add=%d\n", line.kind, line.owner, line.target, line.add)
			continue
		}
		fmt.Fprintf(&buf, "reloc %s %s -> %s\n", line.kind, line.owner, line.target)
	}
	return buf.Bytes()
}

func relocKindName(kind int64) string {
	switch kind {
	case 1:
		return "useiface"
	case 2:
		return "useifacemethod"
	case 3:
		return "usenamedmethod"
	case 4:
		return "methodoff"
	default:
		return ""
	}
}

func resolveSymbolValue(v llvm.Value) llvm.Value {
	if v.IsNil() {
		return llvm.Value{}
	}
	if gv := v.IsAGlobalValue(); !gv.IsNil() {
		return gv
	}
	if ce := v.IsAConstantExpr(); !ce.IsNil() {
		switch ce.Opcode() {
		case llvm.BitCast, llvm.PtrToInt, llvm.IntToPtr, llvm.GetElementPtr:
			return resolveSymbolValue(ce.Operand(0))
		}
	}
	return llvm.Value{}
}
