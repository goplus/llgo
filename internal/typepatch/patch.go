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

package typepatch

import (
	"go/token"
	"go/types"
	"unsafe"
)

type typesScope struct {
	parent   *types.Scope
	children []*types.Scope
	number   int
	elems    map[string]types.Object // TODO(xsw): ensure offset of elems
	pos, end token.Pos
	comment  string
	isFunc   bool
}

type object struct {
	parent *types.Scope
	pos    token.Pos
	pkg    *types.Package // TODO(xsw): ensure offset of pkg
	unused [8]byte
}

type iface struct {
	tab  unsafe.Pointer
	data unsafe.Pointer
}

func setPkg(o types.Object, pkg *types.Package) {
	data := (*iface)(unsafe.Pointer(&o)).data
	(*object)(data).pkg = pkg
}

func setObject(scope *types.Scope, name string, o types.Object) {
	s := (*typesScope)(unsafe.Pointer(scope))
	s.elems[name] = o
}

func Pkg(pkg, alt *types.Package) *types.Package {
	scope := pkg.Scope()
	altScope := alt.Scope()
	for _, name := range altScope.Names() {
		o := altScope.Lookup(name)
		setPkg(o, pkg)
		setObject(scope, name, o)
	}
	return pkg
}
