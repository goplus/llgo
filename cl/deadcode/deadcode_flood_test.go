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
	g := &irgraph.Graph{Relocs: []irgraph.RelocEdge{
		{Owner: "A", Target: "B", Kind: irgraph.EdgeCall},
		{Owner: "B", Target: "C", Kind: irgraph.EdgeRef},
	}}
	res := Analyze(g, []irgraph.SymID{"A"})
	assertReachable(t, res, "A", "B", "C")
}

func TestFloodMultipleRoots(t *testing.T) {
	// Simulated shape:
	//   main.main -> pkgA.Entry -> pkgA.Helper (call)
	//   plugin.Init -> plugin.Hook (ref)
	g := &irgraph.Graph{Relocs: []irgraph.RelocEdge{
		{Owner: "pkgA.Entry", Target: "pkgA.Helper", Kind: irgraph.EdgeCall},
		{Owner: "plugin.Init", Target: "plugin.Hook", Kind: irgraph.EdgeRef},
	}}
	res := Analyze(g, []irgraph.SymID{"pkgA.Entry", "plugin.Init"})
	assertReachable(t, res, "pkgA.Entry", "pkgA.Helper", "plugin.Init", "plugin.Hook")
}

func TestFloodUsesCallAndRef(t *testing.T) {
	// Simulated shape:
	//   main.A -> lib.DoWork (call)
	//   main.A -> lib.Config (ref)
	g := &irgraph.Graph{Relocs: []irgraph.RelocEdge{
		{Owner: "main.A", Target: "lib.DoWork", Kind: irgraph.EdgeCall},
		{Owner: "main.A", Target: "lib.Config", Kind: irgraph.EdgeRef},
	}}
	res := Analyze(g, []irgraph.SymID{"main.A"})
	assertReachable(t, res, "main.A", "lib.DoWork", "lib.Config")
}

func TestFloodCycle(t *testing.T) {
	// Simulated shape:
	//   pkg.Init -> pkg.Step1 -> pkg.Step2 -> pkg.Init (cycle)
	g := &irgraph.Graph{Relocs: []irgraph.RelocEdge{
		{Owner: "pkg.Init", Target: "pkg.Step1", Kind: irgraph.EdgeCall},
		{Owner: "pkg.Step1", Target: "pkg.Step2", Kind: irgraph.EdgeCall},
		{Owner: "pkg.Step2", Target: "pkg.Init", Kind: irgraph.EdgeCall},
	}}
	res := Analyze(g, []irgraph.SymID{"pkg.Init"})
	assertReachable(t, res, "pkg.Init", "pkg.Step1", "pkg.Step2")
}

func TestFloodEmptyInputs(t *testing.T) {
	res := Analyze(nil, nil)
	if len(res.Reachable) != 0 {
		t.Fatalf("expected empty reachability, got %v", res.Reachable)
	}
	res = Analyze(&irgraph.Graph{Relocs: nil}, nil)
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
		Relocs: []irgraph.RelocEdge{
			{Owner: "main", Target: "CallSite", Kind: irgraph.EdgeCall},
			{Owner: "CallSite", Target: "TypeA", Kind: irgraph.EdgeRef},
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
		Relocs: []irgraph.RelocEdge{
			{Owner: "main", Target: "CallSite", Kind: irgraph.EdgeCall},
			{Owner: "CallSite", Target: "TypeA", Kind: irgraph.EdgeRef},
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

func TestUseIfaceMethodRecorded(t *testing.T) {
	const ftype = "_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac"
	g := &irgraph.Graph{
		Relocs: []irgraph.RelocEdge{
			{Owner: "main", Target: "CallSite", Kind: irgraph.EdgeCall},
			{Owner: "CallSite", Target: ftype, Kind: irgraph.EdgeRelocUseIfaceMethod, Addend: 1, Name: "IfaceSym", FnType: ftype},
		},
	}
	res := Analyze(g, []irgraph.SymID{"main"})
	key := MethodSig{Name: "IfaceSym", Typ: ftype}
	if !res.IfaceMethods[key] {
		t.Fatalf("expected iface method usage recorded for IfaceSym")
	}
}

func TestUseIfaceMethodMarksConcreteMethod(t *testing.T) {
	// Shape:
	//   type I interface{ M() }
	//   type T struct{}
	//   func Use(i I) { i.M() }
	// Relocs (simplified):
	//   useiface: Use -> T
	//   useifacemethod: Use -> I, name=M
	//   methodoff triple on T at index 0 (name=M) -> Mtyp/Mifn/Mtfn
	//   another method (idx=1) should stay unreachable
	g := &irgraph.Graph{
		Relocs: []irgraph.RelocEdge{
			{Owner: "main", Target: "Use", Kind: irgraph.EdgeCall},
			{Owner: "Use", Target: "T", Kind: irgraph.EdgeRef},
			{Owner: "Use", Target: "T", Kind: irgraph.EdgeRelocUseIface},
			{Owner: "Use", Target: "I", Kind: irgraph.EdgeRelocUseIfaceMethod, Addend: 0, Name: "M", FnType: "T.M$type"},
			{Owner: "T", Target: "T.M$type", Kind: irgraph.EdgeRelocMethodOff, Addend: 0, Name: "M"},
			{Owner: "T", Target: "T.M$ifn", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
			{Owner: "T", Target: "T.M$tfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
			{Owner: "T", Target: "T.N$type", Kind: irgraph.EdgeRelocMethodOff, Addend: 1, Name: "N"},
			{Owner: "T", Target: "T.N$ifn", Kind: irgraph.EdgeRelocMethodOff, Addend: 1},
			{Owner: "T", Target: "T.N$tfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 1},
		},
	}
	res := Analyze(g, []irgraph.SymID{"main"})
	assertReachable(t, res, "main", "Use", "T", "T.M$type", "T.M$ifn", "T.M$tfn")
	assertReachableMethods(t, res, map[string][]int{
		"T": {0},
	})
	if res.Reachable[irgraph.SymID("T.N$type")] || res.Reachable[irgraph.SymID("T.N$ifn")] || res.Reachable[irgraph.SymID("T.N$tfn")] {
		t.Fatalf("unexpected reachability for unused method N")
	}
}

func TestMarkableMethodsFromChildTypes(t *testing.T) {
	// Simulated shape:
	//   type InterfaceX interface { MethodA() }
	//   type TypeA struct{ Child ChildType }
	//   type ChildType struct{ /* ... */ }
	//   func CallSite() { var a TypeA; var i InterfaceX = a }
	//
	// Relocs:
	// - useiface: CallSite -> TypeA
	// - typeref:  TypeA -> ChildType (type descriptor references child type)
	// - methodoff triples for TypeA and ChildType
	//
	// Expectation: once TypeA is used in an interface, we collect markable
	// methods for TypeA and also for ChildType because it is a child type
	// reachable from TypeA's type descriptor.
	g := &irgraph.Graph{
		Relocs: []irgraph.RelocEdge{
			{Owner: "main", Target: "CallSite", Kind: irgraph.EdgeCall},
			{Owner: "CallSite", Target: "TypeA", Kind: irgraph.EdgeRef},
			{Owner: "TypeA", Target: "ChildType", Kind: irgraph.EdgeRef},
			{Owner: "CallSite", Target: "TypeA", Kind: irgraph.EdgeRelocUseIface},
			{Owner: "TypeA", Target: "ChildType", Kind: irgraph.EdgeRelocTypeRef},
			{Owner: "TypeA", Target: "MethodAType", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
			{Owner: "TypeA", Target: "MethodAIfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
			{Owner: "TypeA", Target: "MethodATfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
			{Owner: "ChildType", Target: "ChildMethodType", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
			{Owner: "ChildType", Target: "ChildMethodIfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
			{Owner: "ChildType", Target: "ChildMethodTfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
		},
	}
	res := Analyze(g, []irgraph.SymID{"main"})
	assertMarkableMethods(t, res, map[string][]int{
		"TypeA":     {0},
		"ChildType": {0},
	})
}

func TestIfaceChainCrossPackage(t *testing.T) {
	// Package A:
	//   interface IA { M() }
	//   type T implements IA.M; inside M it converts a bpkg.K to bpkg.U and calls N().
	//
	// Package B (simulated by symbols with prefix bpkg.):
	//   interface U { N() }
	//   type K implements N() and N2(); only N is used via iface, N2 should stay unreachable.
	//
	// Reloc graph (simplified):
	//   useiface: Use -> T
	//   useifacemethod: Use -> IA (name=M, idx=0)
	//   methodoff(T): idx=0 -> Mtyp/Mifn/Mtfn
	//   inside T.M: useiface: T.M -> bpkg.K; useifacemethod: T.M -> bpkg.U (name=N, idx=0)
	//   methodoff(bpkg.K): idx=0 -> N typ/ifn/tfn, idx=1 -> N2 typ/ifn/tfn
	g := &irgraph.Graph{
		Relocs: []irgraph.RelocEdge{
			// roots
			{Owner: "main", Target: "Use", Kind: irgraph.EdgeCall},
			// IA.M
			{Owner: "Use", Target: "T", Kind: irgraph.EdgeRef},
			{Owner: "Use", Target: "T", Kind: irgraph.EdgeRelocUseIface},
			{Owner: "Use", Target: "IA", Kind: irgraph.EdgeRelocUseIfaceMethod, Addend: 0, Name: "M", FnType: "T.M$type"},
			{Owner: "T", Target: "T.M$type", Kind: irgraph.EdgeRelocMethodOff, Addend: 0, Name: "M"},
			{Owner: "T", Target: "T.M$ifn", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
			{Owner: "T", Target: "T.M$tfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
			// inside T.M: assign K to U and call N
			{Owner: "T.M$ifn", Target: "bpkg.K", Kind: irgraph.EdgeRef},
			{Owner: "T.M$ifn", Target: "bpkg.K", Kind: irgraph.EdgeRelocUseIface},
			{Owner: "T.M$ifn", Target: "bpkg.U", Kind: irgraph.EdgeRelocUseIfaceMethod, Addend: 0, Name: "bpkg.N", FnType: "bpkg.K.N$type"},
			// bpkg.K methodoff entries
			{Owner: "bpkg.K", Target: "bpkg.K.N$type", Kind: irgraph.EdgeRelocMethodOff, Addend: 0, Name: "bpkg.N"},
			{Owner: "bpkg.K", Target: "bpkg.K.N$ifn", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
			{Owner: "bpkg.K", Target: "bpkg.K.N$tfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
			{Owner: "bpkg.K", Target: "bpkg.K.N2$type", Kind: irgraph.EdgeRelocMethodOff, Addend: 1, Name: "bpkg.N2"},
			{Owner: "bpkg.K", Target: "bpkg.K.N2$ifn", Kind: irgraph.EdgeRelocMethodOff, Addend: 1},
			{Owner: "bpkg.K", Target: "bpkg.K.N2$tfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 1},
		},
	}
	res := Analyze(g, []irgraph.SymID{"main"})
	assertReachable(t, res,
		"main", "Use", "T", "T.M$type", "T.M$ifn", "T.M$tfn",
		"bpkg.K", "bpkg.K.N$type", "bpkg.K.N$ifn", "bpkg.K.N$tfn")
	assertReachableMethods(t, res, map[string][]int{
		"T":      {0},
		"bpkg.K": {0},
	})
	if res.Reachable[irgraph.SymID("bpkg.K.N2$type")] ||
		res.Reachable[irgraph.SymID("bpkg.K.N2$ifn")] ||
		res.Reachable[irgraph.SymID("bpkg.K.N2$tfn")] {
		t.Fatalf("unexpected reachability for bpkg.K.N2")
	}
}

func TestMethodOffIgnoredWithoutUseIface(t *testing.T) {
	// Simulated shape:
	//   TypeA is referenced, but never converted to an interface.
	// Relocs:
	// - methodoff triples exist, but no useiface marker is present.
	g := &irgraph.Graph{
		Relocs: []irgraph.RelocEdge{
			{Owner: "main", Target: "CallSite", Kind: irgraph.EdgeCall},
			{Owner: "CallSite", Target: "TypeA", Kind: irgraph.EdgeRef},
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
		Relocs: []irgraph.RelocEdge{
			{Owner: "main", Target: "Other", Kind: irgraph.EdgeCall},
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
		Relocs: []irgraph.RelocEdge{
			{Owner: "main", Target: "CallSiteA", Kind: irgraph.EdgeCall},
			{Owner: "main", Target: "CallSiteB", Kind: irgraph.EdgeCall},
			{Owner: "CallSiteA", Target: "TypeA", Kind: irgraph.EdgeRef},
			{Owner: "CallSiteB", Target: "TypeB", Kind: irgraph.EdgeRef},
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

func assertReachableMethods(t *testing.T, res Result, want map[string][]int) {
	t.Helper()
	got := make(map[string]map[int]bool)
	for typ, idxs := range res.ReachableMethods {
		for idx := range idxs {
			typStr := string(typ)
			if got[typStr] == nil {
				got[typStr] = make(map[int]bool)
			}
			got[typStr][idx] = true
		}
	}
	for typ, idxs := range want {
		gotIdxs := got[typ]
		for _, idx := range idxs {
			if !gotIdxs[idx] {
				t.Fatalf("reachable methods missing %q idx=%d", typ, idx)
			}
		}
	}
}

// TestReflectMethodKeepsAllMethods verifies that when EdgeRelocReflectMethod is seen,
// all methods of UsedInIface types are kept (reflectSeen = true).
func TestReflectMethodKeepsAllMethods(t *testing.T) {
	g := &irgraph.Graph{
		Relocs: []irgraph.RelocEdge{
			{Owner: "main", Target: "caller", Kind: irgraph.EdgeCall},
			{Owner: "caller", Target: "TypeT", Kind: irgraph.EdgeRef},
			{Owner: "caller", Target: "TypeT", Kind: irgraph.EdgeRelocUseIface},
			// Dynamic reflect method lookup - should keep all methods
			{Owner: "caller", Target: "caller", Kind: irgraph.EdgeRelocReflectMethod},
			// TypeT has two methods
			{Owner: "TypeT", Target: "FooType", Kind: irgraph.EdgeRelocMethodOff, Addend: 0, Name: "Foo"},
			{Owner: "TypeT", Target: "FooIfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
			{Owner: "TypeT", Target: "FooTfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
			{Owner: "TypeT", Target: "BarType", Kind: irgraph.EdgeRelocMethodOff, Addend: 1, Name: "Bar"},
			{Owner: "TypeT", Target: "BarIfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 1},
			{Owner: "TypeT", Target: "BarTfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 1},
		},
	}
	res := Analyze(g, []irgraph.SymID{"main"})
	// With reflectSeen=true, all methods should be reachable
	assertReachableMethods(t, res, map[string][]int{
		"TypeT": {0, 1},
	})
}

// TestNamedMethodKeepsSpecificMethod verifies that EdgeRelocUseNamedMethod
// keeps only the method with the matching name.
func TestNamedMethodKeepsSpecificMethod(t *testing.T) {
	g := &irgraph.Graph{
		Relocs: []irgraph.RelocEdge{
			{Owner: "main", Target: "caller", Kind: irgraph.EdgeCall},
			{Owner: "caller", Target: "TypeT", Kind: irgraph.EdgeRef},
			{Owner: "caller", Target: "TypeT", Kind: irgraph.EdgeRelocUseIface},
			// MethodByName("Foo") - should only keep Foo
			{Owner: "caller", Target: "Foo", Kind: irgraph.EdgeRelocUseNamedMethod, Name: "Foo"},
			// TypeT has two methods: Foo and Bar
			{Owner: "TypeT", Target: "FooType", Kind: irgraph.EdgeRelocMethodOff, Addend: 0, Name: "Foo"},
			{Owner: "TypeT", Target: "FooIfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
			{Owner: "TypeT", Target: "FooTfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 0},
			{Owner: "TypeT", Target: "BarType", Kind: irgraph.EdgeRelocMethodOff, Addend: 1, Name: "Bar"},
			{Owner: "TypeT", Target: "BarIfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 1},
			{Owner: "TypeT", Target: "BarTfn", Kind: irgraph.EdgeRelocMethodOff, Addend: 1},
		},
	}
	res := Analyze(g, []irgraph.SymID{"main"})
	// Only Foo should be reachable (index 0), not Bar (index 1)
	assertReachableMethods(t, res, map[string][]int{
		"TypeT": {0},
	})
	// Bar should not be in reachable methods
	if res.ReachableMethods["TypeT"][1] {
		t.Fatal("Bar method should not be reachable")
	}
}
