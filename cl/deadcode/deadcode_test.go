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
			graph, pkgs, rootPrefix := loadPackageGraph(t, pkgDir)
			roots := rootSymbols(pkgs, rootPrefix)
			if len(roots) == 0 {
				t.Fatalf("no roots found for %s", pkgDir)
			}
			res := Analyze(graph, roots, irgraph.EdgeCall|irgraph.EdgeRef)
			got := formatReachability(pkgs, rootPrefix, res)
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

func loadPackageGraph(t *testing.T, dir string) (*irgraph.Graph, []build.Package, string) {
	t.Helper()
	conf := build.NewDefaultConf(build.ModeBuild)
	conf.CollectIRGraph = true
	conf.OutFile = filepath.Join(t.TempDir(), "deadcode-test-bin")
	pkgs, err := build.Do([]string{dir}, conf)
	if err != nil {
		t.Fatalf("build.Do failed: %v", err)
	}
	if len(pkgs) == 0 {
		t.Fatal("no packages returned")
	}
	for _, pkg := range pkgs {
		dumpGraphSummary(t, pkg)
	}
	graph := mergeGraphs(pkgs)
	if graph == nil {
		t.Fatal("missing irgraph output")
	}
	rootPrefix := rootPackagePrefix(pkgs, dir)
	if rootPrefix == "" {
		t.Fatalf("failed to identify root package for %s", dir)
	}
	return graph, pkgs, rootPrefix
}

func rootSymbols(pkgs []build.Package, rootPrefix string) []irgraph.SymID {
	entryCandidates := []string{"main", "__main_argc_argv", "_start"}
	for _, cand := range entryCandidates {
		for _, pkg := range pkgs {
			if pkg.Package == nil || pkg.IRGraph == nil {
				continue
			}
			if rootPrefix != "" && !strings.HasPrefix(pkg.Package.PkgPath, rootPrefix) {
				continue
			}
			if _, ok := pkg.IRGraph.Nodes[irgraph.SymID(cand)]; ok {
				return []irgraph.SymID{irgraph.SymID(cand)}
			}
		}
	}
	return nil
}

func formatReachability(pkgs []build.Package, rootPrefix string, res Result) []byte {
	pkgPaths := make([]string, 0, len(pkgs))
	pkgMap := make(map[string]build.Package, len(pkgs))
	for _, pkg := range pkgs {
		if pkg.Package == nil || pkg.IRGraph == nil {
			continue
		}
		pkgPath := pkg.Package.PkgPath
		if pkgPath == "" {
			continue
		}
		if rootPrefix != "" && !strings.HasPrefix(pkgPath, rootPrefix) {
			continue
		}
		if _, ok := pkgMap[pkgPath]; ok {
			continue
		}
		pkgMap[pkgPath] = pkg
		pkgPaths = append(pkgPaths, pkgPath)
	}
	sort.Strings(pkgPaths)
	var buf bytes.Buffer
	for i, pkgPath := range pkgPaths {
		pkg := pkgMap[pkgPath]
		syms := symbolsForPackage(pkg)
		if len(syms) == 0 {
			continue
		}
		if i > 0 {
			buf.WriteString("\n")
		}
		buf.WriteString(fmt.Sprintf("pkg %s\n", pkgPath))
		for _, sym := range syms {
			status := "dead"
			if res.Reachable[irgraph.SymID(sym)] {
				status = "reach"
			}
			buf.WriteString(fmt.Sprintf("%s %s\n", status, sym))
		}
	}
	return buf.Bytes()
}

func rootPackagePrefix(pkgs []build.Package, dir string) string {
	base := filepath.Base(dir)
	targetSuffix := filepath.ToSlash(filepath.Join("cl/deadcode/_testdata", base))
	for _, pkg := range pkgs {
		if pkg.Package == nil {
			continue
		}
		pkgPath := pkg.Package.PkgPath
		if pkgPath == "" {
			continue
		}
		if strings.HasSuffix(pkgPath, targetSuffix) {
			return pkgPath
		}
	}
	return ""
}

func symbolsForPackage(pkg build.Package) []string {
	g := pkg.IRGraph
	if g == nil {
		return nil
	}
	var syms []string
	for id, node := range g.Nodes {
		if node.IsIntrinsic || node.IsDecl {
			continue
		}
		name := string(id)
		syms = append(syms, name)
	}
	sort.Strings(syms)
	return syms
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

func dumpGraphSummary(t *testing.T, pkg build.Package) {
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
