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

package ssa

import (
	"go/types"
	"testing"
)

/*
func asmPkg(t *testing.T, p *Package) {
	b, err := p.CodeGen(AssemblyFile)
	if err != nil {
		t.Fatal("ctx.ParseIR:", err)
	}
	if v := string(b); v != "" {
		t.Log(v)
	}
}
*/

func assertPkg(t *testing.T, p Package, expected string) {
	if v := p.String(); v != expected {
		t.Fatalf("\n==> got:\n%s\n==> expected:\n%s\n", v, expected)
	}
}

func TestVar(t *testing.T) {
	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")
	pkg.NewVar("a", types.Typ[types.Int])
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

@a = external global i64
`)
}

func TestStruct(t *testing.T) {
	empty := types.NewStruct(nil, nil)

	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")
	pkg.NewVar("a", empty)
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

@a = external global {}
`)
}

func TestNamedStruct(t *testing.T) {
	src := types.NewPackage("bar", "foo/bar")
	empty := types.NewNamed(types.NewTypeName(0, src, "Empty", nil), types.NewStruct(nil, nil), nil)

	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")
	pkg.NewVar("a", empty)
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

%Empty = type {}

@a = external global %Empty
`)
}

func TestFunc(t *testing.T) {
	prog := NewProgram(nil)
	pkg := prog.NewPackage("bar", "foo/bar")
	params := types.NewTuple(types.NewVar(0, nil, "a", types.Typ[types.Int]))
	sig := types.NewSignatureType(nil, nil, nil, params, nil, false)
	pkg.NewFunc("fn", sig)
	assertPkg(t, pkg, `; ModuleID = 'foo/bar'
source_filename = "foo/bar"

declare void @fn(i64)
`)
}
