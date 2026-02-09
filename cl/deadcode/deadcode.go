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
	"fmt"
	"os"
	"sort"
	"strings"

	"github.com/goplus/llgo/internal/relocgraph"
)

// Result holds the reachability outcome.
type Result struct {
	Reachable        map[relocgraph.SymID]bool
	UsedInIface      map[relocgraph.SymID]bool
	MarkableMethods  []MethodRef
	IfaceMethods     map[MethodSig]bool                // interface methods observed via useifacemethod
	ReachableMethods map[relocgraph.SymID]map[int]bool // methods confirmed reachable by iface calls
}

var verbose bool

// SetVerbose enables verbose debugging output during Analyze.
func SetVerbose(v bool) {
	verbose = v
}

// MethodSig identifies a method by name and signature type descriptor.
type MethodSig struct {
	Name string
	Typ  relocgraph.SymID
}

// MethodRef identifies a receiver's method entry by index.
type MethodRef struct {
	Type  relocgraph.SymID
	Index int
	Sig   MethodSig
}

type deadcodePass struct {
	graph            *relocgraph.Graph
	reachable        map[relocgraph.SymID]bool
	queue            []relocgraph.SymID
	usedInIface      map[relocgraph.SymID]bool
	relocsByOwner    map[relocgraph.SymID][]relocgraph.Edge
	markableMethods  []MethodRef
	ifaceMethods     map[MethodSig]bool
	reachableMethods map[relocgraph.SymID]map[int]bool
	reflectSeen      bool            // true if dynamic reflect method lookup seen
	namedMethods     map[string]bool // method names from MethodByName("constant")
}

// Analyze computes reachability from roots using call+ref edges.
func Analyze(g *relocgraph.Graph, roots []relocgraph.SymID) Result {
	pass := newDeadcodePass(g, len(roots))
	pass.markRoots(roots)
	pass.flood()
	pass.markIfaceMethods()
	res := Result{
		Reachable:        pass.reachable,
		UsedInIface:      pass.usedInIface,
		MarkableMethods:  pass.markableMethods,
		IfaceMethods:     pass.ifaceMethods,
		ReachableMethods: pass.reachableMethods,
	}
	if verbose {
		logResult(res, roots)
	}
	return res
}

func newDeadcodePass(g *relocgraph.Graph, rootCount int) *deadcodePass {
	d := &deadcodePass{
		graph:            g,
		reachable:        make(map[relocgraph.SymID]bool),
		queue:            make([]relocgraph.SymID, 0, rootCount),
		usedInIface:      make(map[relocgraph.SymID]bool),
		relocsByOwner:    make(map[relocgraph.SymID][]relocgraph.Edge),
		markableMethods:  nil,
		ifaceMethods:     make(map[MethodSig]bool),
		reachableMethods: make(map[relocgraph.SymID]map[int]bool),
		reflectSeen:      false,
		namedMethods:     make(map[string]bool),
	}
	if g != nil {
		for _, r := range g.Relocs {
			d.relocsByOwner[r.Owner] = append(d.relocsByOwner[r.Owner], r)
		}
	}
	return d
}

func (d *deadcodePass) markRoots(roots []relocgraph.SymID) {
	for _, root := range roots {
		if root == "" {
			continue
		}
		d.mark(root)
	}
}

func (d *deadcodePass) mark(sym relocgraph.SymID) {
	if sym == "" {
		return
	}
	if d.reachable[sym] {
		return
	}
	d.reachable[sym] = true
	d.queue = append(d.queue, sym)
}

func (d *deadcodePass) flood() {
	for len(d.queue) > 0 {
		cur := d.queue[0]
		d.queue = d.queue[1:]
		d.processRelocs(cur)
	}
}

func (d *deadcodePass) processRelocs(owner relocgraph.SymID) {
	relocs := d.relocsByOwner[owner]
	if len(relocs) == 0 {
		return
	}
	for i := 0; i < len(relocs); i++ {
		r := relocs[i]
		switch r.Kind {
		case relocgraph.EdgeCall, relocgraph.EdgeRef:
			d.mark(r.Target)
		case relocgraph.EdgeRelocUseIface:
			d.markUsedInIface(r.Target)
		case relocgraph.EdgeRelocUseIfaceMethod:
			name := string(r.Target)
			if r.Name != "" {
				name = r.Name
			}
			fnTyp := r.FnType
			if fnTyp == "" {
				panic("useifacemethod missing fnType")
			}
			d.ifaceMethods[MethodSig{Name: name, Typ: fnTyp}] = true
		case relocgraph.EdgeRelocUseNamedMethod:
			// MethodByName("constant") - record the specific method name
			name := r.Name
			if name == "" {
				name = string(r.Target)
			}
			d.namedMethods[name] = true
		case relocgraph.EdgeRelocReflectMethod:
			// Dynamic reflect method lookup (MethodByName with non-constant arg)
			// Give up on static analysis for methods - keep all exported methods
			d.reflectSeen = true
		case relocgraph.EdgeRelocTypeRef:
			if d.usedInIface[owner] {
				d.markUsedInIface(r.Target)
			}
		case relocgraph.EdgeRelocMethodOff:
			if !d.usedInIface[owner] {
				continue
			}
			if i+2 >= len(relocs) {
				panic("expect three consecutive reloc(methodoff) entries")
			}
			// The first reloc(methodoff) in each triple points to the method
			// type descriptor; mark it as UsedInIface so its child types are visited.
			d.markableMethods = append(d.markableMethods, MethodRef{
				Type:  owner,
				Index: int(r.Addend),
				Sig: MethodSig{
					Name: r.Name,
					Typ:  r.Target,
				},
			})
			d.markUsedInIface(r.Target)
			i += 2
			continue
		}
	}
}

func (d *deadcodePass) markUsedInIface(sym relocgraph.SymID) {
	if sym == "" {
		return
	}
	if d.usedInIface[sym] {
		return
	}
	d.usedInIface[sym] = true
	if d.reachable[sym] {
		d.reachable[sym] = false
		d.mark(sym)
	}
}

func (d *deadcodePass) markIfaceMethods() {
	for {
		if len(d.markableMethods) == 0 {
			break
		}
		rem := d.markableMethods[:0]
		for _, m := range d.markableMethods {
			if d.shouldKeepMethod(m) {
				d.markMethod(m)
			} else {
				rem = append(rem, m)
			}
		}
		d.markableMethods = rem
		if len(d.queue) == 0 {
			break
		}
		d.flood()
	}
}

func (d *deadcodePass) addReachableMethod(typ relocgraph.SymID, idx int) {
	if d.reachableMethods[typ] == nil {
		d.reachableMethods[typ] = make(map[int]bool)
	}
	d.reachableMethods[typ][idx] = true
}

func (d *deadcodePass) shouldKeepMethod(m MethodRef) bool {
	// Always keep Error methods for error interface
	if m.Sig.Name == "Error" || strings.HasSuffix(m.Sig.Name, ".Error") {
		return true
	}
	// Keep methods matching interface method signatures
	if d.ifaceMethods[m.Sig] {
		return true
	}
	// Keep methods matching MethodByName("constant") calls
	if d.namedMethods[m.Sig.Name] {
		return true
	}
	// If dynamic reflect method lookup seen, keep all methods
	if d.reflectSeen {
		return true
	}
	return false
}

func (d *deadcodePass) markMethod(m MethodRef) {
	// Avoid re-processing the same method entry.
	if d.reachableMethods[m.Type] != nil && d.reachableMethods[m.Type][m.Index] {
		return
	}
	d.addReachableMethod(m.Type, m.Index)
	relocs := d.relocsByOwner[m.Type]
	for i := 0; i < len(relocs); i++ {
		r := relocs[i]
		if r.Kind != relocgraph.EdgeRelocMethodOff || int(r.Addend) != m.Index {
			continue
		}
		d.mark(r.Target)
		if i+1 < len(relocs) && relocs[i+1].Kind == relocgraph.EdgeRelocMethodOff {
			d.mark(relocs[i+1].Target)
		}
		if i+2 < len(relocs) && relocs[i+2].Kind == relocgraph.EdgeRelocMethodOff {
			d.mark(relocs[i+2].Target)
		}
		break
	}
}

func logResult(res Result, roots []relocgraph.SymID) {
	fmt.Fprintln(os.Stderr, "[deadcode] roots:", roots)
	fmt.Fprintf(os.Stderr, "[deadcode] reachable=%d usedInIface=%d ifaceMethods=%d markable=%d reachableMethods=%d\n",
		len(res.Reachable), len(res.UsedInIface), len(res.IfaceMethods), len(res.MarkableMethods), len(res.ReachableMethods))

	if len(res.ReachableMethods) > 0 {
		fmt.Fprintln(os.Stderr, "[deadcode] reachable methods:")
		types := make([]string, 0, len(res.ReachableMethods))
		for t := range res.ReachableMethods {
			types = append(types, string(t))
		}
		sort.Strings(types)
		for _, t := range types {
			idxs := res.ReachableMethods[relocgraph.SymID(t)]
			var list []int
			for i := range idxs {
				list = append(list, i)
			}
			sort.Ints(list)
			fmt.Fprintf(os.Stderr, "  %s -> %v\n", t, list)
		}
	}
	if len(res.IfaceMethods) > 0 {
		fmt.Fprintln(os.Stderr, "[deadcode] iface method demands:")
		var ms []MethodSig
		for m := range res.IfaceMethods {
			ms = append(ms, m)
		}
		sort.Slice(ms, func(i, j int) bool {
			if ms[i].Name == ms[j].Name {
				return ms[i].Typ < ms[j].Typ
			}
			return ms[i].Name < ms[j].Name
		})
		for _, m := range ms {
			fmt.Fprintf(os.Stderr, "  %s :: %s\n", m.Name, m.Typ)
		}
	}
}
