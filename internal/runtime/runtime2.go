// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package runtime

import (
	"unsafe"
)

type eface struct {
	_type *_type
	data  unsafe.Pointer
}

/*
func efaceOf(ep *any) *eface {
	return (*eface)(unsafe.Pointer(ep))
}

type iface struct {
	tab  *itab
	data unsafe.Pointer
}

// layout of Itab known to compilers
// allocated in non-garbage-collected memory
// Needs to be in sync with
// ../cmd/compile/internal/reflectdata/reflect.go:/^func.WriteTabs.
type itab struct {
	inter *interfacetype
	_type *_type
	hash  uint32 // copy of _type.hash. Used for type switches.
	_     [4]byte
	fun   [1]uintptr // variable sized. fun[0]==0 means _type does not implement inter.
}

func MakeInterface(inter *InterfaceType, typ *Type, data unsafe.Pointer) Interface {
	tab := &itab{inter: inter, _type: typ, hash: 0, fun: [1]uintptr{0}}
	return Interface{
		tab: tab, data: data,
	}
}
*/
