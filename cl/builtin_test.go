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

package cl

import (
	"go/types"
	"testing"

	llssa "github.com/goplus/llgo/ssa"
	"golang.org/x/tools/go/ssa"
)

func TestIgnoreName(t *testing.T) {
	if !ignoreName("runtime.foo") || !ignoreName("runtime/foo") || !ignoreName("internal/abi") {
		t.Fatal("ignoreName failed")
	}
}

func TestErrImport(t *testing.T) {
	var ctx context
	pkg := types.NewPackage("foo", "foo")
	ctx.importPkg(pkg)
}

func TestErrInitLinkname(t *testing.T) {
	defer func() {
		if r := recover(); r == nil {
			t.Fatal("initLinkname: no error?")
		}
	}()
	var ctx context
	ctx.initLinkname("foo", "//go:linkname Printf printf")
}

func TestErrVarOf(t *testing.T) {
	defer func() {
		if r := recover(); r == nil {
			t.Fatal("varOf: no error?")
		}
	}()
	prog := llssa.NewProgram(nil)
	pkg := prog.NewPackage("foo", "foo")
	pkgTypes := types.NewPackage("foo", "foo")
	ctx := &context{
		pkg:    pkg,
		goTyps: pkgTypes,
	}
	ssaPkg := &ssa.Package{Pkg: pkgTypes}
	g := &ssa.Global{Pkg: ssaPkg}
	ctx.varOf(g)
}
