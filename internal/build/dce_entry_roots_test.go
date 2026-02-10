//go:build !llgo
// +build !llgo

package build

import (
	"testing"

	"github.com/goplus/llgo/internal/relocgraph"
)

func TestDCEEntryRootsFromGraphMain(t *testing.T) {
	g := relocgraph.NewGraph()
	g.Nodes[relocgraph.SymID("main")] = &relocgraph.NodeInfo{Name: "main"}

	roots, err := dceEntryRootsFromGraph(g)
	if err != nil {
		t.Fatalf("dceEntryRootsFromGraph failed: %v", err)
	}
	if len(roots) != 1 || roots[0] != relocgraph.SymID("main") {
		t.Fatalf("unexpected roots: %v", roots)
	}
}

func TestDCEEntryRootsFromGraphWasmMain(t *testing.T) {
	g := relocgraph.NewGraph()
	g.Nodes[relocgraph.SymID("__main_argc_argv")] = &relocgraph.NodeInfo{Name: "__main_argc_argv"}

	roots, err := dceEntryRootsFromGraph(g)
	if err != nil {
		t.Fatalf("dceEntryRootsFromGraph failed: %v", err)
	}
	if len(roots) != 1 || roots[0] != relocgraph.SymID("__main_argc_argv") {
		t.Fatalf("unexpected roots: %v", roots)
	}
}

func TestDCEEntryRootsFromGraphDeclError(t *testing.T) {
	g := relocgraph.NewGraph()
	g.Nodes[relocgraph.SymID("__main_argc_argv")] = &relocgraph.NodeInfo{
		Name:   "__main_argc_argv",
		IsDecl: true,
	}

	_, err := dceEntryRootsFromGraph(g)
	if err == nil {
		t.Fatal("expected declaration-only root error, got nil")
	}
}
