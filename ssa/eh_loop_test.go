//go:build !llgo

package ssa_test

import (
	"strings"
	"testing"

	"github.com/goplus/llgo/ssa"
	"github.com/goplus/llgo/ssa/ssatest"
)

func TestDeferInLoopIR(t *testing.T) {
	prog := ssatest.NewProgram(t, nil)
	pkg := prog.NewPackage("foo", "foo")

	callee := pkg.NewFunc("callee", ssa.NoArgsNoRet, ssa.InGo)
	cb := callee.MakeBody(1)
	cb.Return()
	cb.EndBuild()

	fn := pkg.NewFunc("main", ssa.NoArgsNoRet, ssa.InGo)
	b := fn.MakeBody(1)
	fn.SetRecover(fn.MakeBlock())

	// Ensure entry block has a terminator like real codegen
	b.Return()
	b.SetBlockEx(fn.Block(0), ssa.BeforeLast, true)

	b.Defer(ssa.DeferInLoop, callee.Expr)
	b.EndBuild()

	ir := pkg.Module().String()
	if !strings.Contains(ir, "icmp ne ptr") {
		t.Fatalf("expected loop defer condition in IR, got:\n%s", ir)
	}
}
