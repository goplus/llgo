//go:build !llgo
// +build !llgo

package relocgraph

import (
	"os"
	"path/filepath"
	"testing"

	"github.com/goplus/llvm"
)

func TestBuildSkipsIntrinsicCallEdges(t *testing.T) {
	mod := parseModuleFromSource(t, `
source_filename = "intrinsic"

declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)

define void @caller(ptr %dst, ptr %src) {
entry:
  call void @llvm.memcpy.p0.p0.i64(ptr %dst, ptr %src, i64 4, i1 false)
  ret void
}
`)
	defer mod.Dispose()

	g := Build(mod)
	if hasEdge(g, "caller", "llvm.memcpy.p0.p0.i64", EdgeCall) {
		t.Fatal("unexpected intrinsic edge")
	}
	if node, ok := g.Nodes["llvm.memcpy.p0.p0.i64"]; !ok || !node.IsIntrinsic || !node.IsDecl {
		t.Fatalf("unexpected intrinsic node metadata: %+v", node)
	}
}

func TestBuildKeepsDeclAsTarget(t *testing.T) {
	mod := parseModuleFromSource(t, `
source_filename = "decl"

declare void @ext_decl()

define void @caller() {
entry:
  call void @ext_decl()
  ret void
}
`)
	defer mod.Dispose()

	g := Build(mod)
	if !hasEdge(g, "caller", "ext_decl", EdgeCall) {
		t.Fatal("missing call edge to declaration target")
	}
	node, ok := g.Nodes["ext_decl"]
	if !ok {
		t.Fatal("missing declaration node")
	}
	if !node.IsDecl {
		t.Fatalf("declaration node IsDecl=false: %+v", *node)
	}
}

func hasEdge(g *Graph, owner, target SymID, kind EdgeKind) bool {
	for _, e := range g.Relocs {
		if e.Owner == owner && e.Target == target && e.Kind == kind {
			return true
		}
	}
	return false
}

func parseModuleFromSource(t *testing.T, src string) llvm.Module {
	t.Helper()
	ctx := llvm.NewContext()
	t.Cleanup(ctx.Dispose)

	file := filepath.Join(t.TempDir(), "mod.ll")
	if err := os.WriteFile(file, []byte(src), 0o644); err != nil {
		t.Fatalf("WriteFile failed: %v", err)
	}
	buf, err := llvm.NewMemoryBufferFromFile(file)
	if err != nil {
		t.Fatalf("NewMemoryBufferFromFile failed: %v", err)
	}
	mod, err := ctx.ParseIR(buf)
	if err != nil {
		t.Fatalf("ParseIR failed: %v", err)
	}
	return mod
}
