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
	res := Analyze(g, []irgraph.SymID{"A"})
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
	res := Analyze(g, []irgraph.SymID{"pkgA.Entry", "plugin.Init"})
	assertReachable(t, res, "pkgA.Entry", "pkgA.Helper", "plugin.Init", "plugin.Hook")
}

func TestFloodUsesCallAndRef(t *testing.T) {
	// Simulated shape:
	//   main.A -> lib.DoWork (call)
	//   main.A -> lib.Config (ref)
	g := &irgraph.Graph{Edges: map[irgraph.SymID]map[irgraph.SymID]irgraph.EdgeKind{
		"main.A": {
			"lib.DoWork": irgraph.EdgeCall,
			"lib.Config": irgraph.EdgeRef,
		},
	}}
	res := Analyze(g, []irgraph.SymID{"main.A"})
	assertReachable(t, res, "main.A", "lib.DoWork", "lib.Config")
}

func TestFloodCycle(t *testing.T) {
	// Simulated shape:
	//   pkg.Init -> pkg.Step1 -> pkg.Step2 -> pkg.Init (cycle)
	g := &irgraph.Graph{Edges: map[irgraph.SymID]map[irgraph.SymID]irgraph.EdgeKind{
		"pkg.Init":  {"pkg.Step1": irgraph.EdgeCall},
		"pkg.Step1": {"pkg.Step2": irgraph.EdgeCall},
		"pkg.Step2": {"pkg.Init": irgraph.EdgeCall},
	}}
	res := Analyze(g, []irgraph.SymID{"pkg.Init"})
	assertReachable(t, res, "pkg.Init", "pkg.Step1", "pkg.Step2")
}

func TestFloodEmptyInputs(t *testing.T) {
	res := Analyze(nil, nil)
	if len(res.Reachable) != 0 {
		t.Fatalf("expected empty reachability, got %v", res.Reachable)
	}
	res = Analyze(&irgraph.Graph{Edges: map[irgraph.SymID]map[irgraph.SymID]irgraph.EdgeKind{}}, nil)
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
	res := Analyze(g, []irgraph.SymID{"main"})
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

func TestUsedInIfaceMethodOffPropagation(t *testing.T) {
	// Simulated shape:
	//   type InterfaceX interface { MethodA(); MethodB() }
	//   type TypeA struct{ /* ... */ }
	//   func CallSite() { var a TypeA; var i InterfaceX = a }
	//
	// Relocs:
	// - useiface: CallSite -> TypeA
	// - methodoff (triples): TypeA -> MethodAType/MethodAIfn/MethodATfn
	//                         TypeA -> MethodBType/MethodBIfn/MethodBTfn
	g := &irgraph.Graph{
		Edges: map[irgraph.SymID]map[irgraph.SymID]irgraph.EdgeKind{
			"main":     {"CallSite": irgraph.EdgeCall},
			"CallSite": {"TypeA": irgraph.EdgeRef},
		},
		Relocs: []irgraph.RelocEdge{
			{Owner: "CallSite", Target: "TypeA", Kind: irgraph.EdgeRelocUseIface},
			{Owner: "TypeA", Target: "MethodAType", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
			{Owner: "TypeA", Target: "MethodAIfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
			{Owner: "TypeA", Target: "MethodATfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
			{Owner: "TypeA", Target: "MethodBType", Kind: irgraph.EdgeRelocMethodOff, Addend: 1},
			{Owner: "TypeA", Target: "MethodBIfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 1},
			{Owner: "TypeA", Target: "MethodBTfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 1},
		},
	}
	res := Analyze(g, []irgraph.SymID{"main"})
	if !res.UsedInIface["TypeA"] {
		t.Fatalf("expected UsedInIface to include TypeA")
	}
	if !res.UsedInIface["MethodAType"] {
		t.Fatalf("expected UsedInIface to include MethodAType")
	}
	if !res.UsedInIface["MethodBType"] {
		t.Fatalf("expected UsedInIface to include MethodBType")
	}
	if res.UsedInIface["MethodAIfn"] || res.UsedInIface["MethodATfn"] {
		t.Fatalf("expected method function pointers to stay out of UsedInIface")
	}
	if res.UsedInIface["MethodBIfn"] || res.UsedInIface["MethodBTfn"] {
		t.Fatalf("expected method function pointers to stay out of UsedInIface")
	}
	assertMarkableMethods(t, res, map[string][]int{
		"TypeA": {0, 1},
	})
}

func TestMethodOffIgnoredWithoutUseIface(t *testing.T) {
	// Simulated shape:
	//   TypeA is referenced, but never converted to an interface.
	// Relocs:
	// - methodoff triples exist, but no useiface marker is present.
	g := &irgraph.Graph{
		Edges: map[irgraph.SymID]map[irgraph.SymID]irgraph.EdgeKind{
			"main":     {"CallSite": irgraph.EdgeCall},
			"CallSite": {"TypeA": irgraph.EdgeRef},
		},
		Relocs: []irgraph.RelocEdge{
			{Owner: "TypeA", Target: "MethodAType", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
			{Owner: "TypeA", Target: "MethodAIfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
			{Owner: "TypeA", Target: "MethodATfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
		},
	}
	res := Analyze(g, []irgraph.SymID{"main"})
	if len(res.UsedInIface) != 0 {
		t.Fatalf("expected UsedInIface empty, got %v", res.UsedInIface)
	}
	if len(res.MarkableMethods) != 0 {
		t.Fatalf("expected no markable methods, got %v", res.MarkableMethods)
	}
}

func TestMethodOffIgnoredWhenCallsiteUnreachable(t *testing.T) {
	// Simulated shape:
	//   useiface exists on CallSite, but CallSite is not reachable from roots.
	g := &irgraph.Graph{
		Edges: map[irgraph.SymID]map[irgraph.SymID]irgraph.EdgeKind{
			"main": {"Other": irgraph.EdgeCall},
		},
		Relocs: []irgraph.RelocEdge{
			{Owner: "CallSite", Target: "TypeA", Kind: irgraph.EdgeRelocUseIface},
			{Owner: "TypeA", Target: "MethodAType", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
			{Owner: "TypeA", Target: "MethodAIfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
			{Owner: "TypeA", Target: "MethodATfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
		},
	}
	res := Analyze(g, []irgraph.SymID{"main"})
	if len(res.UsedInIface) != 0 {
		t.Fatalf("expected UsedInIface empty, got %v", res.UsedInIface)
	}
	if len(res.MarkableMethods) != 0 {
		t.Fatalf("expected no markable methods, got %v", res.MarkableMethods)
	}
}

func TestMarkableMethodsMultipleTypes(t *testing.T) {
	// Simulated shape:
	//   type InterfaceX interface { MethodA(); MethodB() }
	//   type InterfaceY interface { MethodC() }
	//   type TypeA struct{ /* ... */ }
	//   type TypeB struct{ /* ... */ } // also has MethodD not in InterfaceY
	//   func CallSiteA() { var a TypeA; var i InterfaceX = a }
	//   func CallSiteB() { var b TypeB; var j InterfaceY = b }
	//
	// Method index mapping (from methodoff addend):
	//   TypeA idx=0 -> MethodA
	//   TypeA idx=1 -> MethodB
	//   TypeB idx=0 -> MethodC
	//   TypeB idx=1 -> MethodD (not required by InterfaceY)
	//
	// This mirrors Go's deadcode strategy: once a type is seen to be
	// used-in-interface, we collect its full method list as "markable"
	// candidates. Filtering down to only the interface-used methods
	// happens in later phases.
	g := &irgraph.Graph{
		Edges: map[irgraph.SymID]map[irgraph.SymID]irgraph.EdgeKind{
			"main":      {"CallSiteA": irgraph.EdgeCall, "CallSiteB": irgraph.EdgeCall},
			"CallSiteA": {"TypeA": irgraph.EdgeRef},
			"CallSiteB": {"TypeB": irgraph.EdgeRef},
		},
		Relocs: []irgraph.RelocEdge{
			{Owner: "CallSiteA", Target: "TypeA", Kind: irgraph.EdgeRelocUseIface},
			{Owner: "CallSiteB", Target: "TypeB", Kind: irgraph.EdgeRelocUseIface},
			{Owner: "TypeA", Target: "MethodAType", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
			{Owner: "TypeA", Target: "MethodAIfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
			{Owner: "TypeA", Target: "MethodATfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
			{Owner: "TypeA", Target: "MethodBType", Kind: irgraph.EdgeRelocMethodOff, Addend: 1},
			{Owner: "TypeA", Target: "MethodBIfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 1},
			{Owner: "TypeA", Target: "MethodBTfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 1},
			{Owner: "TypeB", Target: "MethodCType", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
			{Owner: "TypeB", Target: "MethodCIfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
			{Owner: "TypeB", Target: "MethodCTfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
			{Owner: "TypeB", Target: "MethodDType", Kind: irgraph.EdgeRelocMethodOff, Addend: 1},
			{Owner: "TypeB", Target: "MethodDIfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 1},
			{Owner: "TypeB", Target: "MethodDTfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 1},
		},
	}
	res := Analyze(g, []irgraph.SymID{"main"})
	assertMarkableMethods(t, res, map[string][]int{
		"TypeA": {0, 1},
		"TypeB": {0, 1},
	})
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

func assertMarkableMethods(t *testing.T, res Result, want map[string][]int) {
	t.Helper()
	got := make(map[string]map[int]bool)
	for _, ref := range res.MarkableMethods {
		typ := string(ref.Type)
		if got[typ] == nil {
			got[typ] = make(map[int]bool)
		}
		got[typ][ref.Index] = true
	}
	if len(got) != len(want) {
		t.Fatalf("markable methods mismatch: got %v want %v", got, want)
	}
	for typ, idxs := range want {
		gotIdxs, ok := got[typ]
		if !ok {
			t.Fatalf("markable methods missing type %q", typ)
		}
		for _, idx := range idxs {
			if !gotIdxs[idx] {
				t.Fatalf("markable methods missing %q idx=%d", typ, idx)
			}
		}
	}
}
