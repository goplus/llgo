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

// Analyze computes reachability from roots using edges masked by edgeMask.
// If edgeMask is zero, it defaults to call+ref edges.
func Analyze(g *irgraph.Graph, roots []irgraph.SymID, edgeMask irgraph.EdgeKind) Result {
	if edgeMask == 0 {
		edgeMask = irgraph.EdgeCall | irgraph.EdgeRef
	}
	reachable := make(map[irgraph.SymID]bool)
	queue := make([]irgraph.SymID, 0, len(roots))
	for _, root := range roots {
		if root == "" || reachable[root] {
			continue
		}
		reachable[root] = true
		queue = append(queue, root)
	}
	for len(queue) > 0 {
		cur := queue[0]
		queue = queue[1:]
		for to, kind := range g.Edges[cur] {
			if kind&edgeMask == 0 {
				continue
			}
			if reachable[to] {
				continue
			}
			reachable[to] = true
			queue = append(queue, to)
		}
	}
	return Result{Reachable: reachable}
}
