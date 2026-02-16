//go:build !llgo
// +build !llgo

package cl

import (
	"testing"

	llssa "github.com/goplus/llgo/ssa"
)

func TestApplyEmbedInits_NoInitAndMissingGlobal(t *testing.T) {
	prog := llssa.NewProgram(nil)
	pkg := prog.NewPackage("p", "p")
	c := &context{prog: prog, pkg: pkg}

	// Early return path.
	c.applyEmbedInits(nil)

	// Missing global should be skipped without panic and queue should be cleared.
	c.embedInits = []embedInit{
		{
			globalName: "missing",
			kind:       embedInitFS,
			fsEntries:  []embedFileData{{name: "a.txt", data: []byte("a")}},
		},
	}
	c.applyEmbedInits(nil)
	if len(c.embedInits) != 0 {
		t.Fatalf("embedInits should be cleared after apply, got %d", len(c.embedInits))
	}
}
