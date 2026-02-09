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
	// EdgeRelocTypeRef marks type descriptor child-type references recorded via reloc metadata.
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

// Options controls graph construction.
type Options struct {
	IncludeIntrinsics bool
	IncludeDecls      bool
}

// Build constructs a dependency graph from an LLVM module.
func Build(mod llvm.Module, opts Options) *Graph {
	g := &Graph{
		Nodes:  make(map[SymID]*NodeInfo),
		Relocs: nil,
	}
	for gv := mod.FirstGlobal(); !gv.IsNil(); gv = llvm.NextGlobal(gv) {
		name := SymID(gv.Name())
		isIntrinsic := strings.HasPrefix(gv.Name(), "llvm.")
		g.ensureNode(name, gv.IsDeclaration(), isIntrinsic)
		if isIntrinsic && !opts.IncludeIntrinsics {
			continue
		}
		// Global initializers can embed function pointers (e.g. func values stored
		// in globals). Record them as reference edges so they are visible to later
		// reachability logic even when no direct call exists.
		if init := gv.Initializer(); !init.IsNil() {
			g.addRefEdgesFromValue(name, init, opts)
		}
	}
	for fn := mod.FirstFunction(); !fn.IsNil(); fn = llvm.NextFunction(fn) {
		name := SymID(fn.Name())
		isIntrinsic := strings.HasPrefix(fn.Name(), "llvm.")
		g.ensureNode(name, fn.IsDeclaration(), isIntrinsic)
		if fn.IsDeclaration() && !opts.IncludeDecls {
			continue
		}
		if isIntrinsic && !opts.IncludeIntrinsics {
			continue
		}
		callerID := SymID(fn.Name())
		for bb := fn.FirstBasicBlock(); !bb.IsNil(); bb = llvm.NextBasicBlock(bb) {
			for instr := bb.FirstInstruction(); !instr.IsNil(); instr = llvm.NextInstruction(instr) {
				if call := instr.IsACallInst(); !call.IsNil() {
					g.addCallEdge(fn, call.CalledValue(), opts)
					// Scan operands except the callee to capture function pointers
					// passed as arguments or stored in temporaries.
					g.addRefEdgesFromOperands(callerID, call, call.CalledValue(), opts)
					continue
				}
				if inv := instr.IsAInvokeInst(); !inv.IsNil() {
					g.addCallEdge(fn, inv.CalledValue(), opts)
					// Same as call: track non-callee operands as ref edges.
					g.addRefEdgesFromOperands(callerID, inv, inv.CalledValue(), opts)
					continue
				}
				// For other instructions, any operand that resolves to a function
				// value is treated as a reference edge.
				g.addRefEdgesFromOperands(callerID, instr, llvm.Value{}, opts)
			}
		}
	}
	return g
}

// BuildModuleEdges scans one LLVM module and returns call/ref edges.
func BuildModuleEdges(mod llvm.Module, opts Options) []Edge {
	g := Build(mod, opts)
	if len(g.Relocs) == 0 {
		return nil
	}
	out := make([]Edge, len(g.Relocs))
	copy(out, g.Relocs)
	return out
}

// BuildPackageGraph merges module-derived edges and SSA-produced edges.
func BuildPackageGraph(mod llvm.Module, ssaEdges []Edge, opts Options) *Graph {
	g := Build(mod, opts)
	if len(ssaEdges) != 0 {
		g.AddEdges(ssaEdges, opts)
	}
	return g
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
func (g *Graph) AddEdge(edge Edge, opts Options) {
	if edge.Owner == "" {
		return
	}
	if strings.HasPrefix(string(edge.Owner), "llvm.") && !opts.IncludeIntrinsics {
		return
	}
	if edge.Kind == EdgeRelocUseNamedMethod && edge.Name == "" {
		edge.Name = string(edge.Target)
	}
	if edge.Target == "" {
		// methodoff relocs must preserve three-entry-per-method grouping
		// even when target is empty (skipped methods from other packages).
		if edge.Kind == EdgeRelocMethodOff {
			g.ensureNode(edge.Owner, false, strings.HasPrefix(string(edge.Owner), "llvm."))
			g.Relocs = append(g.Relocs, edge)
		}
		return
	}
	if strings.HasPrefix(string(edge.Target), "llvm.") && !opts.IncludeIntrinsics {
		return
	}
	g.ensureNode(edge.Owner, false, strings.HasPrefix(string(edge.Owner), "llvm."))
	g.ensureNode(edge.Target, false, strings.HasPrefix(string(edge.Target), "llvm."))
	g.Relocs = append(g.Relocs, edge)
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

func (g *Graph) addCallEdge(caller llvm.Value, callee llvm.Value, opts Options) {
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
	}, opts)
}

func (g *Graph) addRefEdgesFromValue(caller SymID, v llvm.Value, opts Options) {
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
			}, opts)
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
			}, opts)
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

func (g *Graph) addRefEdgesFromOperands(caller SymID, v llvm.Value, skip llvm.Value, opts Options) {
	// Scan each operand for function pointers and emit EdgeRef. The "skip"
	// operand is typically the direct callee, already covered by EdgeCall.
	n := v.OperandsCount()
	for i := 0; i < n; i++ {
		op := v.Operand(i)
		if !skip.IsNil() && op.C == skip.C {
			continue
		}
		g.addRefEdgesFromValue(caller, op, opts)
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
func (g *Graph) AddEdges(edges []Edge, opts Options) {
	for _, e := range edges {
		g.AddEdge(e, opts)
	}
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
