package dce

import llvm "github.com/goplus/llvm"

// BuildInput constructs the phase-1 analyzer input from LLVM modules.
// The implementation is intentionally staged: this skeleton establishes the
// package boundary so later commits can fill in ordinary edges, type child
// edges, and llgo.* metadata scanning without changing the analyzer API.
func BuildInput(mods []llvm.Module) (Input, error) {
	for _, mod := range mods {
		_ = mod
	}
	return Input{
		OrdinaryEdges: make(map[string]map[string]struct{}),
		TypeChildren:  make(map[string]map[string]struct{}),
	}, nil
}
