/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
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

package gossa

import (
	"go/types"
	"testing"

	"github.com/goplus/llvm"
)

func assertPkg(t *testing.T, p *Package) {
	ctx := llvm.NewContext()
	buf := llvm.WriteBitcodeToMemoryBuffer(p.mod)
	mod, err := ctx.ParseIR(buf)
	// buf.Dispose()
	if err != nil {
		t.Fatal("ctx.ParseIR:", err)
	}
	_ = mod
}

func TestVar(t *testing.T) {
	prog := NewProgram("")
	pkg := prog.NewPackage("foo", "foo")
	pkg.NewVar("a", types.Typ[types.Int])
	assertPkg(t, pkg)
}
