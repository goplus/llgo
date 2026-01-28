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

package deadcode_test

import (
	"bytes"
	"fmt"
	"os"
	"path/filepath"
	"runtime"
	"sort"
	"strings"
	"testing"

	"github.com/goplus/llgo/cl/deadcode"
	"github.com/goplus/llgo/cl/irgraph"
	"github.com/goplus/llgo/internal/build"
	"github.com/qiniu/x/test"
)

// Set to true to update out.txt files from in.go.
var updateDeadcodeTestdata = false

func TestReachabilityFromTestdata(t *testing.T) {
	if runtime.GOOS != "linux" {
		t.Skip("deadcode testdata is linux-only due to platform-specific symbols")
	}
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
			graph, pkgs := loadPackageGraph(t, pkgDir)
			roots, err := rootSymbols(pkgs)
			if err != nil {
				t.Fatal(err)
			}
			if len(roots) == 0 {
				t.Fatalf("no roots found for %s", pkgDir)
			}
			res := deadcode.Analyze(graph, roots)
			got := formatReachability(pkgs, res)
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

func loadPackageGraph(t *testing.T, dir string) (*irgraph.Graph, []build.Package) {
	t.Helper()
	conf := build.NewDefaultConf(build.ModeBuild)
	conf.DCE = true
	conf.CollectIRGraph = true
	conf.ForceRebuild = true
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
	return graph, pkgs
}

func rootSymbols(pkgs []build.Package) ([]irgraph.SymID, error) {
	entryCandidates := []string{"main", "_start"}
	var roots []irgraph.SymID
	for _, cand := range entryCandidates {
		var defs []irgraph.SymID
		foundDecl := false
		for _, pkg := range pkgs {
			if pkg.Package == nil || pkg.IRGraph == nil {
				continue
			}
			if node, ok := pkg.IRGraph.Nodes[irgraph.SymID(cand)]; ok {
				if node.IsDecl {
					foundDecl = true
					continue
				}
				defs = append(defs, irgraph.SymID(cand))
			}
		}
		if len(defs) == 1 {
			roots = append(roots, defs[0])
			continue
		}
		if len(defs) > 1 {
			return nil, fmt.Errorf("multiple definitions for root symbol %q", cand)
		}
		if foundDecl {
			return nil, fmt.Errorf("root symbol %q only has declarations", cand)
		}
	}
	return roots, nil
}

func formatReachability(pkgs []build.Package, res deadcode.Result) []byte {
	// Some low-level runtime/C symbols can vary by toolchain/linker flags,
	// so keep tests stable by ignoring them.
	ignoredReach := map[string]struct{}{
		"llgoToFloat32":   {},
		"llgoToFloat64":   {},
		"llgo_stacktrace": {},
		"malloc":          {},
		"fwrite":          {},
		"strlen":          {},
		"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange": {},
	}
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
		symSet := make(map[string]struct{}, len(syms))
		for _, sym := range syms {
			symSet[sym] = struct{}{}
		}
		var reachable []string
		for _, sym := range syms {
			if res.Reachable[irgraph.SymID(sym)] {
				if _, ok := ignoredReach[sym]; ok {
					continue
				}
				reachable = append(reachable, sym)
			}
		}
		var reachMethods []string
		for typ, idxs := range res.ReachableMethods {
			if !strings.HasPrefix(string(typ), pkgPath) {
				continue
			}
			for idx := range idxs {
				reachMethods = append(reachMethods, fmt.Sprintf("%s[%d]", typ, idx))
			}
		}
		if len(reachable) == 0 {
			continue
		}
		if i > 0 {
			buf.WriteString("\n")
		}
		buf.WriteString(fmt.Sprintf("pkg %s\n", pkgPath))
		for _, sym := range reachable {
			buf.WriteString(fmt.Sprintf("reach %s\n", sym))
		}
		sort.Strings(reachMethods)
		for _, line := range reachMethods {
			buf.WriteString(fmt.Sprintf("reachmethod %s\n", line))
		}
	}
	return buf.Bytes()
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
				Nodes:  make(map[irgraph.SymID]*irgraph.NodeInfo),
				Relocs: nil,
			}
		}
		for id, node := range pkg.IRGraph.Nodes {
			if _, ok := merged.Nodes[id]; ok {
				continue
			}
			merged.Nodes[id] = node
		}
		if len(pkg.IRGraph.Relocs) != 0 {
			merged.Relocs = append(merged.Relocs, pkg.IRGraph.Relocs...)
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
	for _, r := range g.Relocs {
		if r.Kind&irgraph.EdgeCall != 0 {
			callCnt++
		}
		if r.Kind&irgraph.EdgeRef != 0 {
			refCnt++
		}
		if r.Kind&irgraph.EdgeRelocMask != 0 {
			relocCnt++
		}
	}
	t.Logf("[deadcode] pkg %s: nodes=%d edges=%d call=%d ref=%d reloc=%d", name, len(g.Nodes), countEdges(g), callCnt, refCnt, relocCnt)
}

func countEdges(g *irgraph.Graph) int {
	return len(g.Relocs)
}
