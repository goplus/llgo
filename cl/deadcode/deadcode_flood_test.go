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
	"sort"
	"testing"

	"github.com/goplus/llgo/cl/irgraph"
)

func TestFloodReachability(t *testing.T) {
	g := &irgraph.Graph{Edges: map[irgraph.SymID]map[irgraph.SymID]irgraph.EdgeKind{
		"A": {"B": irgraph.EdgeCall},
		"B": {"C": irgraph.EdgeRef},
	}}
	res := Analyze(g, []irgraph.SymID{"A"}, 0)
	assertReachable(t, res, "A", "B", "C")
}

func TestFloodMultipleRoots(t *testing.T) {
	// Simulated shape:
	//   main.main -> pkgA.Entry -> pkgA.Helper (call)
	//   plugin.Init -> plugin.Hook (ref)
	g := &irgraph.Graph{Edges: map[irgraph.SymID]map[irgraph.SymID]irgraph.EdgeKind{
		"pkgA.Entry":  {"pkgA.Helper": irgraph.EdgeCall},
		"plugin.Init": {"plugin.Hook": irgraph.EdgeRef},
	}}
	res := Analyze(g, []irgraph.SymID{"pkgA.Entry", "plugin.Init"}, 0)
	assertReachable(t, res, "pkgA.Entry", "pkgA.Helper", "plugin.Init", "plugin.Hook")
}

func TestFloodEdgeMask(t *testing.T) {
	// Simulated shape:
	//   main.A -> lib.DoWork (call)
	//   main.A -> lib.Config (ref)
	g := &irgraph.Graph{Edges: map[irgraph.SymID]map[irgraph.SymID]irgraph.EdgeKind{
		"main.A": {
			"lib.DoWork": irgraph.EdgeCall,
			"lib.Config": irgraph.EdgeRef,
		},
	}}
	resCall := Analyze(g, []irgraph.SymID{"main.A"}, irgraph.EdgeCall)
	assertReachable(t, resCall, "main.A", "lib.DoWork")

	resRef := Analyze(g, []irgraph.SymID{"main.A"}, irgraph.EdgeRef)
	assertReachable(t, resRef, "main.A", "lib.Config")
}

func TestFloodCycle(t *testing.T) {
	// Simulated shape:
	//   pkg.Init -> pkg.Step1 -> pkg.Step2 -> pkg.Init (cycle)
	g := &irgraph.Graph{Edges: map[irgraph.SymID]map[irgraph.SymID]irgraph.EdgeKind{
		"pkg.Init":  {"pkg.Step1": irgraph.EdgeCall},
		"pkg.Step1": {"pkg.Step2": irgraph.EdgeCall},
		"pkg.Step2": {"pkg.Init": irgraph.EdgeCall},
	}}
	res := Analyze(g, []irgraph.SymID{"pkg.Init"}, 0)
	assertReachable(t, res, "pkg.Init", "pkg.Step1", "pkg.Step2")
}

func TestFloodEmptyInputs(t *testing.T) {
	res := Analyze(nil, nil, 0)
	if len(res.Reachable) != 0 {
		t.Fatalf("expected empty reachability, got %v", res.Reachable)
	}
	res = Analyze(&irgraph.Graph{Edges: map[irgraph.SymID]map[irgraph.SymID]irgraph.EdgeKind{}}, nil, 0)
	if len(res.Reachable) != 0 {
		t.Fatalf("expected empty reachability, got %v", res.Reachable)
	}
}

func TestUsedInIfacePropagation(t *testing.T) {
	// Simulated shape:
	//
	//   type InterfaceX interface { MethodA(); MethodB() }
	//   type TypeA struct { /* ... */ }
	//   func CallSite() { var a TypeA; var i InterfaceX = a }
	//
	// Relocs:
	// - useiface: CallSite -> TypeA (TypeA converted to InterfaceX)
	// - typeref:  TypeA -> MethodAType / MethodBType (child types to propagate)
	g := &irgraph.Graph{
		Edges: map[irgraph.SymID]map[irgraph.SymID]irgraph.EdgeKind{
			"main":     {"CallSite": irgraph.EdgeCall},
			"CallSite": {"TypeA": irgraph.EdgeRef},
		},
		Relocs: []irgraph.RelocEdge{
			{Owner: "CallSite", Target: "TypeA", Kind: irgraph.EdgeRelocUseIface},
			{Owner: "TypeA", Target: "MethodAType", Kind: irgraph.EdgeRelocTypeRef},
			{Owner: "TypeA", Target: "MethodBType", Kind: irgraph.EdgeRelocTypeRef},
		},
	}
	res := Analyze(g, []irgraph.SymID{"main"}, 0)
	if !res.UsedInIface["TypeA"] {
		t.Fatalf("expected UsedInIface to include TypeA")
	}
	if !res.UsedInIface["MethodAType"] {
		t.Fatalf("expected UsedInIface to include MethodAType")
	}
	if !res.UsedInIface["MethodBType"] {
		t.Fatalf("expected UsedInIface to include MethodBType")
	}
}

func assertReachable(t *testing.T, res Result, syms ...string) {
	t.Helper()
	want := make([]string, 0, len(syms))
	for _, sym := range syms {
		want = append(want, sym)
		if !res.Reachable[irgraph.SymID(sym)] {
			t.Fatalf("expected %q reachable", sym)
		}
	}
	got := make([]string, 0, len(res.Reachable))
	for sym := range res.Reachable {
		got = append(got, string(sym))
	}
	sort.Strings(want)
	sort.Strings(got)
	if len(got) != len(want) {
		t.Fatalf("reachable mismatch: got %v want %v", got, want)
	}
	for i := range got {
		if got[i] != want[i] {
			t.Fatalf("reachable mismatch: got %v want %v", got, want)
		}
	}
}
