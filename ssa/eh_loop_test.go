//go:build !llgo

/*
 * Copyright (c) 2025 The GoPlus Authors (goplus.org). All rights reserved.
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
