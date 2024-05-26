// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package runtime

import (
	"unsafe"

	"github.com/goplus/llgo/internal/abi"
	"github.com/goplus/llgo/internal/runtime/c"
)

type eface struct {
	_type *_type
	data  unsafe.Pointer
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

// -----------------------------------------------------------------------------

type (
	Eface = eface
	Iface = iface
	Itab  = itab
)

type FuncType = abi.FuncType
type InterfaceType = abi.InterfaceType

// ToEface converts an iface to an eface.
func ToEface(i Iface) Eface {
	return Eface{i.tab._type, i.data}
}

// -----------------------------------------------------------------------------

const (
	typeHdrSize         = unsafe.Sizeof(abi.Type{})
	funcTypeHdrSize     = unsafe.Sizeof(abi.FuncType{})
	uncommonTypeHdrSize = unsafe.Sizeof(abi.UncommonType{})
	methodSize          = unsafe.Sizeof(abi.Method{})
	pointerSize         = unsafe.Sizeof(uintptr(0))
	itabHdrSize         = unsafe.Sizeof(itab{}) - pointerSize
)

// Func returns a function type.
func Func(in, out []*Type, variadic bool) *FuncType {
	n := len(in) + len(out)
	ptr := AllocU(funcTypeHdrSize + uintptr(n)*pointerSize)
	c.Memset(ptr, 0, funcTypeHdrSize)

	ret := (*abi.FuncType)(ptr)
	ret.Size_ = pointerSize
	ret.Hash = uint32(abi.Func) // TODO(xsw): hash
	ret.Kind_ = uint8(abi.Func)
	ret.InCount = uint16(len(in))
	ret.OutCount = uint16(len(out))
	if variadic {
		ret.OutCount |= 1 << 15
	}

	data := (**Type)(c.Advance(ptr, int(funcTypeHdrSize)))
	params := unsafe.Slice(data, n)
	copy(params, in)
	copy(params[len(in):], out)
	return ret
}

// Imethod returns an interface method.
func Imethod(name Name, typ *FuncType) abi.Imethod {
	return abi.Imethod{
		Name_: name,
		Typ_:  typ,
	}
}

// Method returns a method.
func Method(name Name, typ *FuncType, ifn, tfn abi.Text) abi.Method {
	return abi.Method{
		Name_: name,
		Mtyp_: typ,
		Ifn_:  ifn,
		Tfn_:  tfn,
	}
}

// Named returns a named type.
func Named(pkgPath, name Name, underlying *Type, methods []abi.Method) *Type {
	tflag := underlying.TFlag
	size := typeHdrSize
	n := len(methods)
	if n > 0 || pkgPath.Bytes != nil {
		size += uncommonTypeHdrSize + uintptr(n)*methodSize
		tflag |= abi.TFlagUncommon
	}
	ptr := AllocU(size)

	ret := (*Type)(ptr)
	*ret = *underlying
	ret.TFlag = tflag | abi.TFlagNamed
	ret.Str_ = name

	xcount := 0
	for _, m := range methods {
		if !m.Exported() {
			break
		}
		xcount++
	}

	uncommon := (*abi.UncommonType)(c.Advance(ptr, int(typeHdrSize)))
	*uncommon = abi.UncommonType{
		PkgPath_: pkgPath,
		Mcount:   uint16(n),
		Xcount:   uint16(xcount),
		Moff:     uint32(uncommonTypeHdrSize),
	}

	data := (*abi.Method)(c.Advance(ptr, int(typeHdrSize+uncommonTypeHdrSize)))
	copy(unsafe.Slice(data, n), methods)
	return ret
}

// Interface returns an interface type.
func Interface(pkgPath string, methods []abi.Imethod) *Type {
	var npkg abi.Name
	if len(pkgPath) > 0 {
		npkg = abi.NewName(pkgPath, "", false, false)
	}
	ret := &abi.InterfaceType{
		Type: Type{
			Size_: unsafe.Sizeof(eface{}),
			Hash:  uint32(abi.Interface), // TODO(xsw): hash
			Kind_: uint8(abi.Interface),
		},
		PkgPath: npkg,
		Methods: methods,
	}
	return &ret.Type
}

// NewItab returns a new itab.
func NewItab(inter *InterfaceType, typ *Type) *Itab {
	n := len(inter.Methods)
	size := itabHdrSize + uintptr(n)*pointerSize
	ptr := AllocU(size)

	ret := (*Itab)(ptr)
	ret.inter = inter
	ret._type = typ
	ret.hash = typ.Hash

	u := typ.Uncommon()
	if u == nil {
		ret.fun[0] = 0
	} else {
		data := (*uintptr)(c.Advance(ptr, int(itabHdrSize)))
		mthds := methods(u, inter.PkgPath)
		for i, m := range inter.Methods {
			fn := findMethod(mthds, m)
			if fn == nil {
				ret.fun[0] = 0
				break
			}
			*c.Advance(data, i) = uintptr(fn)
		}
	}
	return ret
}

func findMethod(mthds []abi.Method, im abi.Imethod) abi.Text {
	imName := im.Name_.Name()
	for _, m := range mthds {
		mName := m.Name_.Name()
		if mName >= imName {
			if mName == imName && m.Mtyp_ == im.Typ_ {
				return m.Ifn_
			}
			break
		}
	}
	return nil
}

func methods(u *abi.UncommonType, from abi.Name) []abi.Method {
	if u.PkgPath_.Name() == from.Name() {
		return u.Methods()
	}
	return u.ExportedMethods()
}

// -----------------------------------------------------------------------------
