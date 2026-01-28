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

	"github.com/goplus/llgo/cl/irgraph"
)

// Result holds the reachability outcome.
type Result struct {
	Reachable        map[irgraph.SymID]bool
	UsedInIface      map[irgraph.SymID]bool
	MarkableMethods  []MethodRef
	IfaceMethods     map[MethodSig]bool             // interface methods observed via useifacemethod
	ReachableMethods map[irgraph.SymID]map[int]bool // methods confirmed reachable by iface calls
}

// MethodSig identifies a method by name and signature type descriptor.
type MethodSig struct {
	Name string
	Typ  irgraph.SymID
}

// MethodRef identifies a receiver's method entry by index.
type MethodRef struct {
	Type  irgraph.SymID
	Index int
	Sig   MethodSig
}

type deadcodePass struct {
	graph            *irgraph.Graph
	reachable        map[irgraph.SymID]bool
	queue            []irgraph.SymID
	usedInIface      map[irgraph.SymID]bool
	relocsByOwner    map[irgraph.SymID][]irgraph.RelocEdge
	markableMethods  []MethodRef
	ifaceMethods     map[MethodSig]bool
	reachableMethods map[irgraph.SymID]map[int]bool
}

// Analyze computes reachability from roots using call+ref edges.
func Analyze(g *irgraph.Graph, roots []irgraph.SymID) Result {
	pass := newDeadcodePass(g, len(roots))
	pass.markRoots(roots)
	pass.flood()
	pass.markIfaceMethods()
	return Result{
		Reachable:        pass.reachable,
		UsedInIface:      pass.usedInIface,
		MarkableMethods:  pass.markableMethods,
		IfaceMethods:     pass.ifaceMethods,
		ReachableMethods: pass.reachableMethods,
	}
}

func newDeadcodePass(g *irgraph.Graph, rootCount int) *deadcodePass {
	d := &deadcodePass{
		graph:            g,
		reachable:        make(map[irgraph.SymID]bool),
		queue:            make([]irgraph.SymID, 0, rootCount),
		usedInIface:      make(map[irgraph.SymID]bool),
		relocsByOwner:    make(map[irgraph.SymID][]irgraph.RelocEdge),
		markableMethods:  nil,
		ifaceMethods:     make(map[MethodSig]bool),
		reachableMethods: make(map[irgraph.SymID]map[int]bool),
	}
	if g != nil {
		for _, r := range g.Relocs {
			d.relocsByOwner[r.Owner] = append(d.relocsByOwner[r.Owner], r)
		}
	}
	return d
}

func (d *deadcodePass) markRoots(roots []irgraph.SymID) {
	for _, root := range roots {
		if root == "" {
			continue
		}
		d.mark(root)
	}
}

func (d *deadcodePass) mark(sym irgraph.SymID) {
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

func (d *deadcodePass) processRelocs(owner irgraph.SymID) {
	relocs := d.relocsByOwner[owner]
	if len(relocs) == 0 {
		return
	}
	for i := 0; i < len(relocs); i++ {
		r := relocs[i]
		switch r.Kind {
		case irgraph.EdgeCall, irgraph.EdgeRef:
			d.mark(r.Target)
		case irgraph.EdgeRelocUseIface:
			d.markUsedInIface(r.Target)
		case irgraph.EdgeRelocUseIfaceMethod:
			name := string(r.Target)
			if r.Name != "" {
				name = r.Name
			}
			fnTyp := r.FnType
			if fnTyp == "" {
				panic("useifacemethod missing fnType")
			}
			d.ifaceMethods[MethodSig{Name: name, Typ: fnTyp}] = true
		case irgraph.EdgeRelocTypeRef:
			if d.usedInIface[owner] {
				d.markUsedInIface(r.Target)
			}
		case irgraph.EdgeRelocMethodOff:
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

func (d *deadcodePass) markUsedInIface(sym irgraph.SymID) {
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
	fmt.Println("markableMethods:", d.markableMethods)
	fmt.Println("ifaceMethods:", d.ifaceMethods)
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

func (d *deadcodePass) addReachableMethod(typ irgraph.SymID, idx int) {
	if d.reachableMethods[typ] == nil {
		d.reachableMethods[typ] = make(map[int]bool)
	}
	d.reachableMethods[typ][idx] = true
}

func (d *deadcodePass) shouldKeepMethod(m MethodRef) bool {
	if d.ifaceMethods[m.Sig] {
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
		if r.Kind != irgraph.EdgeRelocMethodOff || int(r.Addend) != m.Index {
			continue
		}
		d.mark(r.Target)
		if i+1 < len(relocs) && relocs[i+1].Kind == irgraph.EdgeRelocMethodOff {
			d.mark(relocs[i+1].Target)
		}
		if i+2 < len(relocs) && relocs[i+2].Kind == irgraph.EdgeRelocMethodOff {
			d.mark(relocs[i+2].Target)
		}
		break
	}
}
