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
	verbose := os.Getenv("LLGO_DEADCODE_VERBOSE") != ""
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
			graph, pkgPath, pkgName, funcNames := loadPackageGraph(t, pkgDir, verbose)
			symMap := resolveFuncSymbols(graph, pkgPath, pkgName, funcNames)
			roots := rootSymbols(symMap)
			if len(roots) == 0 {
				t.Fatalf("no roots found for package %s", pkgName)
			}
			res := Analyze(graph, roots, irgraph.EdgeCall|irgraph.EdgeRef)
			got := formatReachability(funcNames, symMap, res)
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

func loadPackageGraph(t *testing.T, dir string, verbose bool) (*irgraph.Graph, string, string, []string) {
	t.Helper()
	conf := build.NewDefaultConf(build.ModeGen)
	conf.CollectIRGraph = true
	pkgs, err := build.Do([]string{dir}, conf)
	if err != nil {
		t.Fatalf("build.Do failed: %v", err)
	}
	if len(pkgs) == 0 {
		t.Fatal("no packages returned")
	}
	if verbose {
		for _, pkg := range pkgs {
			dumpGraphSummary(t, pkg, verbose)
		}
	}
	graph := mergeGraphs(pkgs)
	if graph == nil {
		t.Fatal("missing irgraph output")
	}
	pkg := pkgs[0].Package
	return graph, pkg.PkgPath, pkg.Name, topLevelFuncNames(pkg.Syntax)
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

func rootSymbols(symMap map[string]irgraph.SymID) []irgraph.SymID {
	if sym, ok := symMap["main"]; ok && sym != "" {
		return []irgraph.SymID{sym}
	}
	return nil
}

func formatReachability(funcNames []string, symMap map[string]irgraph.SymID, res Result) []byte {
	syms := make([]string, 0, len(funcNames))
	for _, name := range funcNames {
		sym := symMap[name]
		if sym == "" {
			continue
		}
		syms = append(syms, string(sym))
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

func resolveFuncSymbols(g *irgraph.Graph, pkgPath, pkgName string, funcNames []string) map[string]irgraph.SymID {
	symMap := make(map[string]irgraph.SymID, len(funcNames))
	pathPrefix := pkgPath + "."
	namePrefix := pkgName + "."
	for _, fn := range funcNames {
		candidates := []string{pathPrefix + fn, namePrefix + fn}
		for _, cand := range candidates {
			if _, ok := g.Nodes[irgraph.SymID(cand)]; ok {
				symMap[fn] = irgraph.SymID(cand)
				break
			}
		}
		if symMap[fn] != "" {
			continue
		}
		suffix := "." + fn
		for id := range g.Nodes {
			name := string(id)
			if strings.HasSuffix(name, suffix) {
				symMap[fn] = id
				break
			}
		}
	}
	return symMap
}

func mergeGraphs(pkgs []build.Package) *irgraph.Graph {
	var merged *irgraph.Graph
	for _, pkg := range pkgs {
		if pkg.IRGraph == nil {
			continue
		}
		if merged == nil {
			merged = &irgraph.Graph{
				Nodes: make(map[irgraph.SymID]*irgraph.NodeInfo),
				Edges: make(map[irgraph.SymID]map[irgraph.SymID]irgraph.EdgeKind),
			}
		}
		for id, node := range pkg.IRGraph.Nodes {
			if _, ok := merged.Nodes[id]; ok {
				continue
			}
			merged.Nodes[id] = node
		}
		for from, tos := range pkg.IRGraph.Edges {
			if merged.Edges[from] == nil {
				merged.Edges[from] = make(map[irgraph.SymID]irgraph.EdgeKind)
			}
			for to, kind := range tos {
				merged.Edges[from][to] |= kind
			}
		}
	}
	return merged
}

func dumpGraphSummary(t *testing.T, pkg build.Package, verbose bool) {
	if !verbose {
		return
	}
	name := "<nil>"
	if pkg.Package != nil {
		name = pkg.Package.PkgPath
	}
	g := pkg.IRGraph
	if g == nil {
		t.Logf("[deadcode] pkg %s: no graph", name)
		return
	}
	var callCnt, refCnt, relocCnt int
	for _, tos := range g.Edges {
		for _, kind := range tos {
			if kind&irgraph.EdgeCall != 0 {
				callCnt++
			}
			if kind&irgraph.EdgeRef != 0 {
				refCnt++
			}
			if kind&irgraph.EdgeRelocMask != 0 {
				relocCnt++
			}
		}
	}
	t.Logf("[deadcode] pkg %s: nodes=%d edges=%d call=%d ref=%d reloc=%d", name, len(g.Nodes), countEdges(g), callCnt, refCnt, relocCnt)
}

func countEdges(g *irgraph.Graph) int {
	total := 0
	for _, tos := range g.Edges {
		total += len(tos)
	}
	return total
}
