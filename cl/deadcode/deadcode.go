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
	Reachable map[irgraph.SymID]bool
}

type deadcodePass struct {
	graph     *irgraph.Graph
	reachable map[irgraph.SymID]bool
	queue     []irgraph.SymID
	edgeMask  irgraph.EdgeKind
}

// Analyze computes reachability from roots using edges masked by edgeMask.
// If edgeMask is zero, it defaults to call+ref edges.
func Analyze(g *irgraph.Graph, roots []irgraph.SymID, edgeMask irgraph.EdgeKind) Result {
	pass := newDeadcodePass(g, edgeMask, len(roots))
	pass.markRoots(roots)
	pass.flood()
	return Result{Reachable: pass.reachable}
}

func newDeadcodePass(g *irgraph.Graph, edgeMask irgraph.EdgeKind, rootCount int) *deadcodePass {
	if edgeMask == 0 {
		edgeMask = irgraph.EdgeCall | irgraph.EdgeRef
	}
	return &deadcodePass{
		graph:     g,
		reachable: make(map[irgraph.SymID]bool),
		queue:     make([]irgraph.SymID, 0, rootCount),
		edgeMask:  edgeMask,
	}
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
			if kind&d.edgeMask == 0 {
				continue
			}
			d.mark(to)
		}
	}
}
