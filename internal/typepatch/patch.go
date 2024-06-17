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

type typesPackage struct {
	path      string
	name      string
	scope     *types.Scope
	imports   []*types.Package
	complete  bool
	fake      bool   // scope lookup errors are silently dropped if package is fake (internal use only)
	cgo       bool   // uses of this package will be rewritten into uses of declarations from _cgo_gotypes.go
	goVersion string // minimum Go version required for package (by Config.GoVersion, typically from go.mod)
}

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

const (
	tagPatched = 0x17
)

func IsPatched(pkg *types.Package) bool {
	if pkg == nil {
		return false
	}
	p := (*typesPackage)(unsafe.Pointer(pkg))
	return *(*uint8)(unsafe.Pointer(&p.complete)) == tagPatched
}

func setPatched(pkg *types.Package) {
	p := (*typesPackage)(unsafe.Pointer(pkg))
	*(*uint8)(unsafe.Pointer(&p.complete)) = tagPatched
}

func setScope(pkg *types.Package, scope *types.Scope) {
	p := (*typesPackage)(unsafe.Pointer(pkg))
	p.scope = scope
}

func setPkgAndParent(o types.Object, pkg *types.Package, parent *types.Scope) {
	data := (*iface)(unsafe.Pointer(&o)).data
	(*object)(data).pkg = pkg
	(*object)(data).parent = parent
}

func getElems(scope *types.Scope) map[string]types.Object {
	s := (*typesScope)(unsafe.Pointer(scope))
	return s.elems
}

func setElems(scope *types.Scope, elems map[string]types.Object) {
	s := (*typesScope)(unsafe.Pointer(scope))
	s.elems = elems
}

func Pkg(pkg, alt *types.Package) *types.Package {
	ret := *pkg
	scope := *pkg.Scope()

	old := getElems(&scope)
	elems := make(map[string]types.Object, len(old))
	for name, o := range old {
		elems[name] = o
	}

	altScope := alt.Scope()
	for name, o := range getElems(altScope) {
		setPkgAndParent(o, &ret, &scope)
		elems[name] = o
	}
	setElems(&scope, elems)
	setScope(&ret, &scope)
	setPatched(pkg)
	return &ret
}
