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

import "github.com/goplus/llgo/cl/irgraph"

// Result holds the reachability outcome.
type Result struct {
	Reachable   map[irgraph.SymID]bool
	UsedInIface map[irgraph.SymID]bool
}

type deadcodePass struct {
	graph         *irgraph.Graph
	reachable     map[irgraph.SymID]bool
	queue         []irgraph.SymID
	usedInIface   map[irgraph.SymID]bool
	relocsByOwner map[irgraph.SymID][]irgraph.RelocEdge
}

// Analyze computes reachability from roots using call+ref edges.
func Analyze(g *irgraph.Graph, roots []irgraph.SymID) Result {
	pass := newDeadcodePass(g, len(roots))
	pass.markRoots(roots)
	pass.flood()
	return Result{Reachable: pass.reachable, UsedInIface: pass.usedInIface}
}

func newDeadcodePass(g *irgraph.Graph, rootCount int) *deadcodePass {
	d := &deadcodePass{
		graph:         g,
		reachable:     make(map[irgraph.SymID]bool),
		queue:         make([]irgraph.SymID, 0, rootCount),
		usedInIface:   make(map[irgraph.SymID]bool),
		relocsByOwner: make(map[irgraph.SymID][]irgraph.RelocEdge),
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
		for to, kind := range d.graph.Edges[cur] {
			if kind&(irgraph.EdgeCall|irgraph.EdgeRef) == 0 {
				continue
			}
			d.mark(to)
		}
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
		case irgraph.EdgeRelocUseIface:
			d.markUsedInIface(r.Target)
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
			d.markUsedInIface(r.Target)
			i += 2
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
