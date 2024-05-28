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

type interfacetype = abi.InterfaceType

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

type Imethod = abi.Imethod
type Method = abi.Method
type FuncType = abi.FuncType
type InterfaceType = abi.InterfaceType

// ToEface converts an iface to an eface.
func ToEface(i Iface) Eface {
	return Eface{i.tab._type, i.data}
}

// -----------------------------------------------------------------------------

const (
	typeHdrSize          = unsafe.Sizeof(abi.Type{})
	arrayTypeHdrSize     = unsafe.Sizeof(abi.ArrayType{})
	chanTypeHdrSize      = unsafe.Sizeof(abi.ChanType{})
	funcTypeHdrSize      = unsafe.Sizeof(abi.FuncType{})
	interfaceTypeHdrSize = unsafe.Sizeof(abi.InterfaceType{})
	mapTypeHdrSize       = unsafe.Sizeof(abi.MapType{})
	ptrTypeHdrSize       = unsafe.Sizeof(abi.PtrType{})
	sliceTypeHdrSize     = unsafe.Sizeof(abi.SliceType{})
	structTypeHdrSize    = unsafe.Sizeof(abi.StructType{})
	uncommonTypeHdrSize  = unsafe.Sizeof(abi.UncommonType{})
	methodSize           = unsafe.Sizeof(abi.Method{})
	pointerSize          = unsafe.Sizeof(uintptr(0))
	itabHdrSize          = unsafe.Sizeof(itab{}) - pointerSize
)

var hdrSizes = [...]uintptr{
	arrayTypeHdrSize,
	chanTypeHdrSize,
	funcTypeHdrSize,
	interfaceTypeHdrSize,
	mapTypeHdrSize,
	ptrTypeHdrSize,
	sliceTypeHdrSize,
	typeHdrSize,
	structTypeHdrSize,
}

func hdrSizeOf(kind abi.Kind) uintptr {
	if kind >= abi.Array && kind <= abi.Struct {
		return hdrSizes[kind-abi.Array]
	}
	return typeHdrSize
}

// Named returns a named type.
func Named(pkgPath, name string, underlying *Type, methods, ptrMethods []Method) *Type {
	tflag := underlying.TFlag
	if tflag&abi.TFlagUncommon != 0 {
		panic("runtime: underlying type is already named")
	}

	kind := underlying.Kind()
	n := len(methods)
	if kind == abi.Interface {
		if n > 0 {
			panic("runtime: interface type cannot have methods")
		}
		ret := *underlying.InterfaceType()
		ret.PkgPath_ = pkgPath
		ret.Str_ = name
		return &ret.Type
	}

	ret := newNamed(pkgPath, name, underlying, methods)
	ret.PtrToThis_ = newNamed(pkgPath, "*"+name, newPointer(ret), ptrMethods)
	return ret
}

func newNamed(pkgPath, name string, underlying *Type, methods []Method) *Type {
	tflag := underlying.TFlag
	kind := underlying.Kind()
	n := len(methods)

	baseSize := hdrSizeOf(kind)
	extraSize := uintptr(0)
	if kind == abi.Func {
		f := underlying.FuncType()
		extraSize = uintptr(f.In()+f.Out()) * pointerSize
	}

	size := baseSize + extraSize
	if n > 0 || pkgPath != "" {
		size += uncommonTypeHdrSize + uintptr(n)*methodSize
		tflag |= abi.TFlagUncommon
	}

	ptr := AllocU(size)
	c.Memcpy(ptr, unsafe.Pointer(underlying), baseSize)

	ret := (*Type)(ptr)
	ret.TFlag = tflag | abi.TFlagNamed
	ret.Str_ = name

	xcount := 0
	for _, m := range methods {
		if !m.Exported() {
			break
		}
		xcount++
	}
	uncommon := (*abi.UncommonType)(c.Advance(ptr, int(baseSize)))
	uncommon.PkgPath_ = pkgPath
	uncommon.Mcount = uint16(n)
	uncommon.Xcount = uint16(xcount)
	uncommon.Moff = uint32(uncommonTypeHdrSize + extraSize)

	extraOff := int(baseSize + uncommonTypeHdrSize)
	if extraSize > 0 {
		src := c.Advance(unsafe.Pointer(underlying), int(baseSize))
		dest := c.Advance(unsafe.Pointer(ptr), extraOff)
		c.Memcpy(dest, src, extraSize)
		extraOff += int(extraSize)
	}

	data := (*abi.Method)(c.Advance(ptr, extraOff))
	copy(unsafe.Slice(data, n), methods)

	println("==> Named:", pkgPath, name, ret, ret.Uncommon())
	return ret
}

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

// Interface returns an interface type.
func Interface(pkgPath string, methods []Imethod) *InterfaceType {
	ret := &abi.InterfaceType{
		Type: Type{
			Size_: unsafe.Sizeof(eface{}),
			Hash:  uint32(abi.Interface), // TODO(xsw): hash
			Kind_: uint8(abi.Interface),
		},
		PkgPath_: pkgPath,
		Methods:  methods,
	}
	return ret
}

// NewItab returns a new itab.
func NewItab(inter *InterfaceType, typ *Type) *Itab {
	n := len(inter.Methods)
	size := itabHdrSize + uintptr(n)*pointerSize
	ptr := AllocU(size)

	ret := (*itab)(ptr)
	ret.inter = inter
	ret._type = typ
	ret.hash = typ.Hash

	u := typ.Uncommon()
	println("==> NewItab Uncommon:", typ, u)
	if u == nil {
		ret.fun[0] = 0
	} else {
		data := (*uintptr)(c.Advance(ptr, int(itabHdrSize)))
		mthds := methods(u, inter.PkgPath_)
		for i, m := range inter.Methods {
			fn := findMethod(mthds, m)
			if fn == nil {
				ret.fun[0] = 0
				break
			}
			*c.Advance(data, i) = uintptr(fn)
			println("==> NewItab:", ret, i, fn)
		}
	}
	return ret
}

func findMethod(mthds []abi.Method, im abi.Imethod) abi.Text {
	imName := im.Name_
	for _, m := range mthds {
		mName := m.Name_
		if mName >= imName {
			println("==> findMethod:", mName, imName, m.Mtyp_, im.Typ_, m.Ifn_)
			if mName == imName && m.Mtyp_ == im.Typ_ {
				println("==> findMethod", mName, m.Ifn_)
				return m.Ifn_
			}
			break
		}
	}
	return nil
}

func methods(u *abi.UncommonType, from string) []abi.Method {
	if u.PkgPath_ == from {
		return u.Methods()
	}
	return u.ExportedMethods()
}

// -----------------------------------------------------------------------------
