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

package deadcode

import (
	"bytes"
	"fmt"
	"go/ast"
	"os"
	"path/filepath"
	"sort"
	"strings"
	"testing"

	"github.com/goplus/llgo/cl/irgraph"
	"github.com/goplus/llgo/internal/build"
	"github.com/goplus/llvm"
	"github.com/qiniu/x/test"
)

// Set to true to update out.txt files from in.go.
var updateDeadcodeTestdata = false

func init() {
	llvm.InitializeAllTargets()
	llvm.InitializeAllTargetMCs()
	llvm.InitializeAllTargetInfos()
	llvm.InitializeAllAsmParsers()
	llvm.InitializeAllAsmPrinters()
}

func TestReachabilityFromTestdata(t *testing.T) {
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
			graph, pkgName, funcNames := loadPackageGraph(t, pkgDir)
			roots := rootSymbols(pkgName, funcNames)
			if len(roots) == 0 {
				t.Fatalf("no roots found for package %s", pkgName)
			}
			res := Analyze(graph, roots, irgraph.EdgeCall|irgraph.EdgeRef)
			got := formatReachability(pkgName, funcNames, res)
			if updateDeadcodeTestdata {
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
				t.Fatal("unexpected reachability output")
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

func loadPackageGraph(t *testing.T, dir string) (*irgraph.Graph, string, []string) {
	t.Helper()
	conf := build.NewDefaultConf(build.ModeGen)
	conf.CollectIRGraph = true
	pkgs, err := build.Do([]string{dir}, conf)
	if err != nil {
		t.Fatalf("build.Do failed: %v", err)
	}
	if len(pkgs) == 0 || pkgs[0].IRGraph == nil {
		t.Fatal("missing irgraph output")
	}
	pkg := pkgs[0].Package
	return pkgs[0].IRGraph, pkg.Name, topLevelFuncNames(pkg.Syntax)
}

func topLevelFuncNames(files []*ast.File) []string {
	seen := make(map[string]bool)
	for _, f := range files {
		for _, decl := range f.Decls {
			fn, ok := decl.(*ast.FuncDecl)
			if !ok || fn.Name == nil || fn.Recv != nil {
				continue
			}
			seen[fn.Name.Name] = true
		}
	}
	var names []string
	for name := range seen {
		names = append(names, name)
	}
	sort.Strings(names)
	return names
}

func rootSymbols(pkgName string, funcNames []string) []irgraph.SymID {
	for _, name := range funcNames {
		if name == "main" {
			return []irgraph.SymID{irgraph.SymID(pkgName + "." + name)}
		}
	}
	return nil
}

func formatReachability(pkgName string, funcNames []string, res Result) []byte {
	syms := make([]string, 0, len(funcNames))
	for _, name := range funcNames {
		syms = append(syms, pkgName+"."+name)
	}
	sort.Strings(syms)
	var buf bytes.Buffer
	for _, sym := range syms {
		status := "dead"
		if res.Reachable[irgraph.SymID(sym)] {
			status = "reach"
		}
		buf.WriteString(fmt.Sprintf("%s %s\n", status, sym))
	}
	return buf.Bytes()
}
