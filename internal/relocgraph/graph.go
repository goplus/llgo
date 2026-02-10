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

package relocgraph

import (
	"strings"

	"github.com/goplus/llvm"
)

// SymID is the unique identifier of a symbol in the graph.
type SymID string

// EdgeKind describes why a dependency exists.
type EdgeKind uint8

const (
	EdgeCall EdgeKind = 1 << iota
	// EdgeRef captures non-call references to a function, such as function
	// values stored in globals or passed as arguments.
	EdgeRef
	// EdgeRelocUseIface marks interface conversions recorded via reloc metadata.
	EdgeRelocUseIface
	// EdgeRelocUseIfaceMethod marks interface method calls recorded via reloc metadata.
	EdgeRelocUseIfaceMethod
	// EdgeRelocUseNamedMethod marks named method usage recorded via reloc metadata.
	EdgeRelocUseNamedMethod
	// EdgeRelocMethodOff marks method table entries recorded via reloc metadata.
	EdgeRelocMethodOff
	// EdgeRelocReflectMethod marks reflect-based method lookups recorded via reloc metadata.
	EdgeRelocReflectMethod
	// EdgeRelocTypeRef marks type-descriptor child-type edges recorded during SSA lowering.
	// This mirrors Go linker's deadcode "UsedInIface child-type propagation" behavior:
	// when a type is used in interface semantics, its child types participate too.
	// TODO: after adding IsGoType-style symbol metadata, we can likely replace this
	// dedicated edge with filtered directref propagation (owner/target both Go types).
	EdgeRelocTypeRef
)

const EdgeRelocMask = EdgeRelocUseIface | EdgeRelocUseIfaceMethod | EdgeRelocUseNamedMethod | EdgeRelocMethodOff | EdgeRelocReflectMethod | EdgeRelocTypeRef

// NodeInfo holds metadata about a symbol.
type NodeInfo struct {
	Name        SymID
	IsDecl      bool
	IsIntrinsic bool
}

// Graph is a directed dependency graph.
type Graph struct {
	Nodes  map[SymID]*NodeInfo
	Relocs []Edge
}

// NewGraph creates an empty graph with initialized node storage.
func NewGraph() *Graph {
	return &Graph{
		Nodes:  make(map[SymID]*NodeInfo),
		Relocs: nil,
	}
}

// Build constructs a dependency graph from an LLVM module.
func Build(mod llvm.Module) *Graph {
	g := NewGraph()
	for gv := mod.FirstGlobal(); !gv.IsNil(); gv = llvm.NextGlobal(gv) {
		name := SymID(gv.Name())
		isIntrinsic := strings.HasPrefix(gv.Name(), "llvm.")
		g.ensureNode(name, gv.IsDeclaration(), isIntrinsic)
		if isIntrinsic {
			continue
		}
		// Global initializers can embed function pointers (e.g. func values stored
		// in globals). Record them as reference edges so they are visible to later
		// reachability logic even when no direct call exists.
		if init := gv.Initializer(); !init.IsNil() {
			g.addRefEdgesFromValue(name, init)
		}
	}
	for fn := mod.FirstFunction(); !fn.IsNil(); fn = llvm.NextFunction(fn) {
		name := SymID(fn.Name())
		isIntrinsic := strings.HasPrefix(fn.Name(), "llvm.")
		g.ensureNode(name, fn.IsDeclaration(), isIntrinsic)
		if fn.IsDeclaration() {
			continue
		}
		if isIntrinsic {
			continue
		}
		callerID := SymID(fn.Name())
		for bb := fn.FirstBasicBlock(); !bb.IsNil(); bb = llvm.NextBasicBlock(bb) {
			for instr := bb.FirstInstruction(); !instr.IsNil(); instr = llvm.NextInstruction(instr) {
				if call := instr.IsACallInst(); !call.IsNil() {
					g.addCallEdge(fn, call.CalledValue())
					// Scan operands except the callee to capture function pointers
					// passed as arguments or stored in temporaries.
					g.addRefEdgesFromOperands(callerID, call, call.CalledValue())
					continue
				}
				if inv := instr.IsAInvokeInst(); !inv.IsNil() {
					g.addCallEdge(fn, inv.CalledValue())
					// Same as call: track non-callee operands as ref edges.
					g.addRefEdgesFromOperands(callerID, inv, inv.CalledValue())
					continue
				}
				// For other instructions, any operand that resolves to a function
				// value is treated as a reference edge.
				g.addRefEdgesFromOperands(callerID, instr, llvm.Value{})
			}
		}
	}
	return g
}

// BuildPackageGraph merges module-derived edges and SSA-produced edges.
func BuildPackageGraph(mod llvm.Module, ssaEdges []Edge) *Graph {
	b := NewBuilder()
	b.AddEdges(ssaEdges)
	b.AddModule(mod)
	return b.Graph()
}

// Builder incrementally collects graph edges from multiple sources
// (SSA reloc edges and LLVM module call/ref edges).
type Builder struct {
	graph   *Graph
	pending []Edge
}

// NewBuilder returns a graph builder.
func NewBuilder() *Builder {
	return &Builder{}
}

// AddEdge adds one edge into the builder.
func (b *Builder) AddEdge(edge Edge) {
	normalized, ok := normalizeEdge(edge)
	if !ok {
		return
	}
	if b.graph != nil {
		b.graph.appendEdge(normalized)
		return
	}
	b.pending = append(b.pending, normalized)
}

// AddEdges adds many edges into the builder.
func (b *Builder) AddEdges(edges []Edge) {
	for _, edge := range edges {
		b.AddEdge(edge)
	}
}

// AddModule scans one LLVM module and merges its edges into the builder graph.
func (b *Builder) AddModule(mod llvm.Module) {
	mg := Build(mod)
	if b.graph == nil {
		b.graph = mg
	} else {
		b.graph.MergeFrom(mg)
	}
	if len(b.pending) != 0 {
		b.graph.AddEdges(b.pending)
		b.pending = nil
	}
}

// Edges returns a snapshot of collected edges.
func (b *Builder) Edges() []Edge {
	if b.graph != nil {
		out := make([]Edge, len(b.graph.Relocs))
		copy(out, b.graph.Relocs)
		return out
	}
	if len(b.pending) == 0 {
		return nil
	}
	out := make([]Edge, len(b.pending))
	copy(out, b.pending)
	return out
}

// Graph materializes and returns the current graph.
func (b *Builder) Graph() *Graph {
	if b.graph == nil {
		b.graph = NewGraph()
	}
	if len(b.pending) != 0 {
		b.graph.AddEdges(b.pending)
		b.pending = nil
	}
	return b.graph
}

// Edge records a symbol dependency edge with optional metadata fields used by
// reloc-style records from SSA lowering.
type Edge struct {
	Owner  SymID
	Target SymID
	Kind   EdgeKind
	Addend int64
	Name   string // optional info (e.g., iface method name)
	FnType SymID  // optional func type symbol (e.g., iface method func type)
}

// RelocRecord is kept as an alias for SSA call sites.
type RelocRecord = Edge

// AddEdge inserts one dependency edge into the graph.
// Both module-derived call/ref edges and SSA-produced reloc edges must use this
// entry point so normalization rules stay consistent.
func (g *Graph) AddEdge(edge Edge) {
	normalized, ok := normalizeEdge(edge)
	if !ok {
		return
	}
	g.appendEdge(normalized)
}

func (g *Graph) appendEdge(edge Edge) {
	g.ensureNode(edge.Owner, false, strings.HasPrefix(string(edge.Owner), "llvm."))
	if edge.Target != "" {
		g.ensureNode(edge.Target, false, strings.HasPrefix(string(edge.Target), "llvm."))
	}
	g.Relocs = append(g.Relocs, edge)
}

func normalizeEdge(edge Edge) (Edge, bool) {
	if edge.Owner == "" {
		return Edge{}, false
	}
	if strings.HasPrefix(string(edge.Owner), "llvm.") {
		return Edge{}, false
	}
	if edge.Kind == EdgeRelocUseNamedMethod && edge.Name == "" {
		edge.Name = string(edge.Target)
	}
	if edge.Target == "" {
		// methodoff relocs must preserve three-entry-per-method grouping
		// even when target is empty (skipped methods from other packages).
		if edge.Kind != EdgeRelocMethodOff {
			return Edge{}, false
		}
		return edge, true
	}
	if strings.HasPrefix(string(edge.Target), "llvm.") {
		return Edge{}, false
	}
	return edge, true
}

func (g *Graph) ensureNode(id SymID, isDecl, isIntrinsic bool) {
	if id == "" {
		return
	}
	if _, ok := g.Nodes[id]; ok {
		return
	}
	g.Nodes[id] = &NodeInfo{
		Name:        id,
		IsDecl:      isDecl,
		IsIntrinsic: isIntrinsic,
	}
}

func (g *Graph) addCallEdge(caller llvm.Value, callee llvm.Value) {
	fn := resolveFuncValue(callee)
	if fn.IsNil() {
		return
	}
	name := fn.Name()
	if name == "" {
		return
	}
	g.AddEdge(Edge{
		Owner:  SymID(caller.Name()),
		Target: SymID(name),
		Kind:   EdgeCall,
	})
}

func (g *Graph) addRefEdgesFromValue(caller SymID, v llvm.Value) {
	// Walk a value tree (constants + constant expressions) and record any
	// function pointer it embeds. This captures func values stored in globals,
	// composite literals, or casted constants.
	visited := make(map[llvm.Value]bool)
	var walk func(llvm.Value)
	walk = func(val llvm.Value) {
		if val.IsNil() {
			return
		}
		if visited[val] {
			return
		}
		visited[val] = true
		if fn := resolveFuncValue(val); !fn.IsNil() {
			name := fn.Name()
			if name == "" {
				return
			}
			g.AddEdge(Edge{
				Owner:  caller,
				Target: SymID(name),
				Kind:   EdgeRef,
			})
			return
		}
		if gv := resolveGlobalValue(val); !gv.IsNil() {
			name := gv.Name()
			if name == "" {
				return
			}
			g.AddEdge(Edge{
				Owner:  caller,
				Target: SymID(name),
				Kind:   EdgeRef,
			})
			return
		}
		// Recurse through operands to find nested function pointers.
		n := val.OperandsCount()
		for i := 0; i < n; i++ {
			walk(val.Operand(i))
		}
	}
	walk(v)
}

func (g *Graph) addRefEdgesFromOperands(caller SymID, v llvm.Value, skip llvm.Value) {
	// Scan each operand for function pointers and emit EdgeRef. The "skip"
	// operand is typically the direct callee, already covered by EdgeCall.
	n := v.OperandsCount()
	for i := 0; i < n; i++ {
		op := v.Operand(i)
		if !skip.IsNil() && op.C == skip.C {
			continue
		}
		g.addRefEdgesFromValue(caller, op)
	}
}

func resolveFuncValue(v llvm.Value) llvm.Value {
	// Resolve a function symbol from common constant expressions that wrap it.
	if fn := v.IsAFunction(); !fn.IsNil() {
		return fn
	}
	if ce := v.IsAConstantExpr(); !ce.IsNil() {
		op := ce.Opcode()
		if op == llvm.BitCast || op == llvm.PtrToInt || op == llvm.IntToPtr {
			operand := ce.Operand(0)
			if fn := operand.IsAFunction(); !fn.IsNil() {
				return fn
			}
		}
	}
	return llvm.Value{}
}

func resolveGlobalValue(v llvm.Value) llvm.Value {
	sym := resolveSymbolValue(v)
	if sym.IsNil() {
		return llvm.Value{}
	}
	if fn := sym.IsAFunction(); !fn.IsNil() {
		return llvm.Value{}
	}
	return sym
}

// AddEdges injects SSA-collected edges into the graph.
func (g *Graph) AddEdges(edges []Edge) {
	for _, e := range edges {
		g.AddEdge(e)
	}
}

// MergeFrom merges another graph into g in place.
func (g *Graph) MergeFrom(src *Graph) {
	if g == nil || src == nil {
		return
	}
	if g.Nodes == nil {
		g.Nodes = make(map[SymID]*NodeInfo)
	}
	for id, srcNode := range src.Nodes {
		if srcNode == nil {
			continue
		}
		if dstNode, ok := g.Nodes[id]; ok {
			// "Declaration-ness" is merged with logical AND:
			// if any source says this symbol has a real definition
			// (IsDecl=false), the merged result must be a definition.
			dstNode.IsDecl = dstNode.IsDecl && srcNode.IsDecl
			// "Intrinsic-ness" is also merged with logical AND:
			// if any source observes a non-intrinsic symbol
			// (IsIntrinsic=false), we should not keep it marked intrinsic.
			dstNode.IsIntrinsic = dstNode.IsIntrinsic && srcNode.IsIntrinsic
			continue
		}
		n := *srcNode
		g.Nodes[id] = &n
	}
	g.Relocs = append(g.Relocs, src.Relocs...)
}

// MergeAll merges multiple graphs and returns a new graph.
func MergeAll(graphs ...*Graph) *Graph {
	merged := NewGraph()
	for _, g := range graphs {
		merged.MergeFrom(g)
	}
	return merged
}

func resolveSymbolValue(v llvm.Value) llvm.Value {
	if v.IsNil() {
		return llvm.Value{}
	}
	if gv := v.IsAGlobalValue(); !gv.IsNil() {
		return gv
	}
	if ce := v.IsAConstantExpr(); !ce.IsNil() {
		switch ce.Opcode() {
		case llvm.BitCast, llvm.PtrToInt, llvm.IntToPtr, llvm.GetElementPtr:
			return resolveSymbolValue(ce.Operand(0))
		}
	}
	return llvm.Value{}
}
