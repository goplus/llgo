//go:build !llgo
// +build !llgo

package dcepass

import (
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/goplus/llgo/cl/deadcode"
	"github.com/goplus/llgo/cl/irgraph"
	"github.com/goplus/llvm"
)

func TestClearUnreachableMethods(t *testing.T) {
	ctx := llvm.NewContext()
	defer ctx.Dispose()

	in := filepath.Join("testll", "constclear", "test.ll")
	raw, err := os.ReadFile(in)
	if err != nil {
		t.Fatalf("read ll: %v", err)
	}
	buf, err := llvm.NewMemoryBufferFromFile(in)
	if err != nil {
		t.Fatalf("memory buffer: %v", err)
	}
	mod, err := ctx.ParseIR(buf)
	if err != nil {
		t.Fatalf("parse ll: %v", err)
	}
	origModLine := firstModuleLine(string(raw))

	res := deadcode.Result{
		Reachable: map[irgraph.SymID]bool{},
		ReachableMethods: map[irgraph.SymID]map[int]bool{
			"*_llgo_github.com/goplus/llgo/_demo/a.A": {0: true},
		},
	}

	stats := Apply(mod, res, Options{})
	if stats.DroppedMethod != 1 {
		t.Fatalf("DroppedMethod = %d, want 1", stats.DroppedMethod)
	}

	g := mod.NamedGlobal("*_llgo_github.com/goplus/llgo/_demo/a.A")
	if g.IsNil() {
		t.Fatalf("global not found")
	}
	init := g.Initializer()
	methods := init.Operand(init.OperandsCount() - 1)
	m0 := methods.Operand(0)
	m1 := methods.Operand(1)

	if m0.Operand(1).IsNull() || m0.Operand(2).IsNull() || m0.Operand(3).IsNull() {
		t.Fatalf("reachable method cleared unexpectedly")
	}
	if m1.Operand(1).IsNull() || !m1.Operand(2).IsNull() || !m1.Operand(3).IsNull() {
		t.Fatalf("unreachable method not cleared")
	}

	// Keep original module identifier when emitting updated IR.
	outText := fixModuleID(mod.String(), origModLine)
	out := filepath.Join("testll", "constclear", "out.ll")
	if err := os.WriteFile(out, []byte(outText), 0o644); err != nil {
		t.Fatalf("write out.ll: %v", err)
	}
}

// Regression: Error methods must keep Ifn/Tfn even when not listed in ReachableMethods.
func TestErrorMethodKept(t *testing.T) {
	ctx := llvm.NewContext()
	defer ctx.Dispose()

	in := filepath.Join("testll", "errortest", "test.ll")
	raw, err := os.ReadFile(in)
	if err != nil {
		t.Fatalf("read ll: %v", err)
	}
	buf, err := llvm.NewMemoryBufferFromFile(in)
	if err != nil {
		t.Fatalf("memory buffer: %v", err)
	}
	mod, err := ctx.ParseIR(buf)
	if err != nil {
		t.Fatalf("parse ll: %v", err)
	}

	res := deadcode.Result{
		Reachable:        make(map[irgraph.SymID]bool),
		ReachableMethods: make(map[irgraph.SymID]map[int]bool), // intentionally empty
	}

	Apply(mod, res, Options{})

	g := mod.NamedGlobal("*_llgo_github.com/goplus/llgo/_demo/b.Demo")
	if g.IsNil() {
		t.Fatalf("global not found")
	}
	init := g.Initializer()
	methods := init.Operand(init.OperandsCount() - 1)
	// method[1] is Error; its Ifn/Tfn should stay non-null.
	errMethod := methods.Operand(1)
	if errMethod.Operand(2).IsNull() || errMethod.Operand(3).IsNull() {
		t.Fatalf("Error method Ifn/Tfn cleared unexpectedly")
	}

	origLine := firstModuleLine(string(raw))
	outText := fixModuleID(mod.String(), origLine)
	out := filepath.Join("testll", "errortest", "out.ll")
	if err := os.WriteFile(out, []byte(outText), 0o644); err != nil {
		t.Fatalf("write out.ll: %v", err)
	}
}

func TestApplyIfacemethodDCE(t *testing.T) {
	ctx := llvm.NewContext()
	defer ctx.Dispose()

	in := filepath.Join("testll", "ifacemethoddce", "test.ll")
	raw, err := os.ReadFile(in)
	if err != nil {
		t.Fatalf("read ll: %v", err)
	}
	buf, err := llvm.NewMemoryBufferFromFile(in)
	if err != nil {
		t.Fatalf("memory buffer: %v", err)
	}
	mod, err := ctx.ParseIR(buf)
	if err != nil {
		t.Fatalf("parse ll: %v", err)
	}

	res := deadcode.Result{
		Reachable: make(map[irgraph.SymID]bool),
		ReachableMethods: map[irgraph.SymID]map[int]bool{
			"_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T":  {0: true},
			"*_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T": {0: true},
		},
	}
	stats := Apply(mod, res, Options{})
	if stats.DroppedMethod == 0 {
		t.Fatalf("expected some methods to be dropped")
	}

	origLine := firstModuleLine(string(raw))
	outText := fixModuleID(mod.String(), origLine)
	out := filepath.Join("testll", "ifacemethoddce", "out.ll")
	if err := os.WriteFile(out, []byte(outText), 0o644); err != nil {
		t.Fatalf("write out.ll: %v", err)
	}
}

func firstModuleLine(s string) string {
	for _, line := range strings.SplitN(s, "\n", 3) {
		if strings.HasPrefix(line, "; ModuleID =") {
			return line
		}
	}
	return ""
}

func fixModuleID(ir, origLine string) string {
	if origLine == "" {
		return ir
	}
	lines := strings.Split(ir, "\n")
	for i, line := range lines {
		if strings.HasPrefix(line, "; ModuleID =") {
			lines[i] = origLine
			break
		}
	}
	return strings.Join(lines, "\n")
}
