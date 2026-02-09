package relocgraph

import "testing"

func TestMergeAllNilAndEmpty(t *testing.T) {
	merged := MergeAll(nil, NewGraph(), nil)
	if merged == nil {
		t.Fatal("MergeAll returned nil")
	}
	if merged.Nodes == nil {
		t.Fatal("MergeAll returned graph with nil Nodes map")
	}
	if len(merged.Nodes) != 0 {
		t.Fatalf("unexpected nodes count: got %d want 0", len(merged.Nodes))
	}
	if len(merged.Relocs) != 0 {
		t.Fatalf("unexpected edges count: got %d want 0", len(merged.Relocs))
	}
}

func TestMergeFromNodeMetadataRules(t *testing.T) {
	dst := NewGraph()
	dst.Nodes["sym"] = &NodeInfo{Name: "sym", IsDecl: true, IsIntrinsic: true}

	srcDef := NewGraph()
	srcDef.Nodes["sym"] = &NodeInfo{Name: "sym", IsDecl: false, IsIntrinsic: true}
	dst.MergeFrom(srcDef)

	if got := dst.Nodes["sym"].IsDecl; got {
		t.Fatalf("IsDecl merge mismatch: got %v want false", got)
	}
	if got := dst.Nodes["sym"].IsIntrinsic; !got {
		t.Fatalf("IsIntrinsic merge mismatch after def merge: got %v want true", got)
	}

	srcNonIntrinsic := NewGraph()
	srcNonIntrinsic.Nodes["sym"] = &NodeInfo{Name: "sym", IsDecl: true, IsIntrinsic: false}
	dst.MergeFrom(srcNonIntrinsic)

	if got := dst.Nodes["sym"].IsDecl; got {
		t.Fatalf("IsDecl merge mismatch after non-intrinsic merge: got %v want false", got)
	}
	if got := dst.Nodes["sym"].IsIntrinsic; got {
		t.Fatalf("IsIntrinsic merge mismatch after non-intrinsic merge: got %v want false", got)
	}
}

func TestMergeFromCopiesNodeInfo(t *testing.T) {
	src := NewGraph()
	src.Nodes["k"] = &NodeInfo{Name: "k", IsDecl: true, IsIntrinsic: true}

	dst := NewGraph()
	dst.MergeFrom(src)

	src.Nodes["k"].IsDecl = false
	src.Nodes["k"].IsIntrinsic = false

	got := dst.Nodes["k"]
	if got == nil {
		t.Fatal("merged node missing")
	}
	if !got.IsDecl || !got.IsIntrinsic {
		t.Fatalf("merged node should not alias source node: got %+v", *got)
	}
}

func TestMergeAllAppendsEdgesInOrder(t *testing.T) {
	g1 := NewGraph()
	g1.AddEdge(Edge{Owner: "A", Target: "B", Kind: EdgeCall}, Options{})

	g2 := NewGraph()
	g2.AddEdge(Edge{Owner: "C", Target: "A", Kind: EdgeRef}, Options{})

	merged := MergeAll(g1, g2)

	if len(merged.Nodes) != 3 {
		t.Fatalf("unexpected nodes count: got %d want 3", len(merged.Nodes))
	}
	if len(merged.Relocs) != 2 {
		t.Fatalf("unexpected edges count: got %d want 2", len(merged.Relocs))
	}
	if merged.Relocs[0].Kind != EdgeCall || merged.Relocs[1].Kind != EdgeRef {
		t.Fatalf("unexpected edge order/kinds: got [%v %v]", merged.Relocs[0].Kind, merged.Relocs[1].Kind)
	}
}
