package dce

import (
	"testing"

	llvm "github.com/goplus/llvm"
)

func TestAnalyzeEmpty(t *testing.T) {
	got, err := Analyze(nil, nil)
	if err != nil {
		t.Fatalf("Analyze(nil, nil) error = %v", err)
	}
	if len(got) != 0 {
		t.Fatalf("Analyze(nil, nil) = %#v, want empty result", got)
	}
}

func TestBuildInputEmpty(t *testing.T) {
	input, err := BuildInput([]llvm.Module{})
	if err != nil {
		t.Fatalf("BuildInput(empty) error = %v", err)
	}
	if input.OrdinaryEdges == nil {
		t.Fatal("BuildInput(empty) returned nil OrdinaryEdges")
	}
	if input.TypeChildren == nil {
		t.Fatal("BuildInput(empty) returned nil TypeChildren")
	}
}
