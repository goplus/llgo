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

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/internal/abi"
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

func hdrSizeOf(kind abi.Kind) uintptr {
	switch kind {
	case abi.Array:
		return arrayTypeHdrSize
	case abi.Chan:
		return chanTypeHdrSize
	case abi.Func:
		return funcTypeHdrSize
	case abi.Interface:
		return interfaceTypeHdrSize
	case abi.Map:
		return mapTypeHdrSize
	case abi.Pointer:
		return ptrTypeHdrSize
	case abi.Slice:
		return sliceTypeHdrSize
	case abi.Struct:
		return structTypeHdrSize
	default:
		return typeHdrSize
	}
}

type rtype struct {
	*abi.Type
	named string
}

var rtypeList []*rtype

// NewNamed returns an uninitialized named type.
func NewNamed(name string, kind abi.Kind, size uintptr, methods, ptrMethods int) *Type {
	for _, typ := range rtypeList {
		if typ.named == name {
			return typ.Type
		}
	}
	ret := newUninitedNamed(kind, size, methods)
	ret.PtrToThis_ = newUninitedNamed(abi.Pointer, pointerSize, ptrMethods)
	rtypeList = append(rtypeList, &rtype{Type: ret, named: name})
	return ret
}

func lastSlash(s string) int {
	i := len(s) - 1
	for i >= 0 && s[i] != '/' {
		i--
	}
	return i
}

func pkgName(path string) string {
	i := lastSlash(path)
	return path[i+1:]
}

// InitNamed initializes an uninitialized named type.
func InitNamed(ret *Type, pkgPath, name string, underlying *Type, methods, ptrMethods []Method) {
	// skip initialized
	if ret.TFlag != abi.TFlagUninited {
		return
	}
	ptr := ret.PtrToThis_
	if pkgPath != "" {
		name = pkgName(pkgPath) + "." + name
	}
	ret.Hash = 9157 + hashString(pkgPath) + hashString(name)
	doInitNamed(ret, pkgPath, name, underlying, methods)
	doInitNamed(ptr, pkgPath, name, newPointer(ret), ptrMethods)
	ret.PtrToThis_ = ptr
	ptr.TFlag |= abi.TFlagExtraStar
}

func newUninitedNamed(kind abi.Kind, size uintptr, methods int) *Type {
	allocSize := hdrSizeOf(kind) + uncommonTypeHdrSize + uintptr(methods)*methodSize
	ret := (*Type)(AllocU(allocSize))
	ret.Size_ = size
	ret.Kind_ = uint8(kind)
	ret.TFlag = abi.TFlagUninited
	return ret
}

func doInitNamed(ret *Type, pkgPath, fullName string, underlying *Type, methods []Method) {
	tflag := underlying.TFlag
	if tflag&abi.TFlagUncommon != 0 {
		panic("runtime: underlying type is already named")
	}

	kind := ret.Kind()
	if ret.TFlag != abi.TFlagUninited || kind != underlying.Kind() {
		panic("initNamed: unexpected named type")
	}

	ptr := unsafe.Pointer(ret)
	baseSize := hdrSizeOf(kind)
	c.Memcpy(ptr, unsafe.Pointer(underlying), baseSize)

	ret.TFlag = tflag | abi.TFlagNamed | abi.TFlagUncommon
	ret.Str_ = fullName
	ret.Equal = underlying.Equal
	ret.Size_ = underlying.Size_

	n := len(methods)
	xcount := uint16(0)
	for _, m := range methods {
		if !m.Exported() {
			break
		}
		xcount++
	}
	uncommon := (*abi.UncommonType)(c.Advance(ptr, int(baseSize)))
	uncommon.PkgPath_ = pkgPath
	uncommon.Mcount = uint16(n)
	uncommon.Xcount = xcount
	uncommon.Moff = uint32(uncommonTypeHdrSize)

	extraOff := int(baseSize + uncommonTypeHdrSize)
	data := (*abi.Method)(c.Advance(ptr, extraOff))
	copy(unsafe.Slice(data, n), methods)
}

// Func returns a function type.
func Func(in, out []*Type, variadic bool) *FuncType {
	ret := &FuncType{
		Type: Type{
			Size_:       2 * unsafe.Sizeof(uintptr(0)),
			PtrBytes:    2 * pointerSize,
			Align_:      uint8(pointerAlign),
			FieldAlign_: uint8(pointerAlign),
			Kind_:       uint8(abi.Func),
			Str_:        "func(...)",
		},
		In:  in,
		Out: out,
	}
	var hash uint32 = 9091
	if variadic {
		hash *= 8863
		ret.TFlag |= abi.TFlagVariadic
	}
	hash += 3*hashTuple(in) + 5*hashTuple(out)
	ret.Hash = hash
	return ret
}

func NewNamedInterface(pkgPath, name string) *InterfaceType {
	ret := &struct {
		abi.InterfaceType
		u abi.UncommonType
	}{
		abi.InterfaceType{
			Type: Type{
				Size_:       unsafe.Sizeof(eface{}),
				PtrBytes:    2 * pointerSize,
				Align_:      uint8(pointerAlign),
				FieldAlign_: uint8(pointerAlign),
				Kind_:       uint8(abi.Interface),
				Str_:        name,
				TFlag:       abi.TFlagNamed | abi.TFlagUncommon,
			},
			PkgPath_: pkgPath,
		},
		abi.UncommonType{
			PkgPath_: pkgPath,
		},
	}
	return &ret.InterfaceType
}

func InitNamedInterface(ret *InterfaceType, methods []Imethod) {
	ret.Methods = methods
	if len(methods) == 0 {
		ret.Equal = nilinterequal
	} else {
		ret.Equal = interequal
	}
	var hash uint32 = 9103
	// Hash methods.
	for _, m := range methods {
		// Use shallow hash on method signature to
		// avoid anonymous interface cycles.
		hash += 3*hashString(m.Name()) + 5*shallowHash(&m.Typ_.Type)
	}
	ret.Hash = hash
}

// Interface returns an interface type.
// Don't call NewNamed for named interface type.
func Interface(pkgPath, name string, methods []Imethod) *InterfaceType {
	ret := &abi.InterfaceType{
		Type: Type{
			Size_:       unsafe.Sizeof(eface{}),
			PtrBytes:    2 * pointerSize,
			Align_:      uint8(pointerAlign),
			FieldAlign_: uint8(pointerAlign),
			Kind_:       uint8(abi.Interface),
			Str_:        name,
		},
		PkgPath_: pkgPath,
		Methods:  methods,
	}
	if len(methods) == 0 {
		ret.Equal = nilinterequal
	} else {
		ret.Equal = interequal
	}
	var hash uint32 = 9103
	// Hash methods.
	for _, m := range methods {
		// Use shallow hash on method signature to
		// avoid anonymous interface cycles.
		hash += 3*hashString(m.Name()) + 5*shallowHash(&m.Typ_.Type)
	}
	ret.Hash = hash
	return ret
}

// NewItab returns a new itab.
func NewItab(inter *InterfaceType, typ *Type) *Itab {
	if typ == nil {
		return nil
	}
	n := len(inter.Methods)
	size := itabHdrSize + uintptr(n)*pointerSize
	ptr := AllocU(size)

	ret := (*itab)(ptr)
	ret.inter = inter
	ret._type = typ
	ret.hash = typ.Hash

	u := typ.Uncommon()
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
		}
	}
	return ret
}

func findMethod(mthds []abi.Method, im abi.Imethod) abi.Text {
	imName := im.Name_
	for _, m := range mthds {
		mName := m.Name_
		if mName >= imName {
			if mName == imName && m.Mtyp_ == im.Typ_ {
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

func IfaceType(i iface) *abi.Type {
	if i.tab == nil {
		return nil
	}
	return i.tab._type
}

func IfacePtrData(i iface) unsafe.Pointer {
	if i.tab == nil {
		panic(errorString("invalid memory address or nil pointer dereference").Error())
	}
	switch i.tab._type.Kind() {
	case abi.Bool, abi.Int, abi.Int8, abi.Int16, abi.Int32, abi.Int64,
		abi.Uint, abi.Uint8, abi.Uint16, abi.Uint32, abi.Uint64, abi.Uintptr,
		abi.Float32, abi.Float64, abi.Array, abi.Struct:
		if isDirectIface(i.tab._type) {
			return unsafe.Pointer(&i.data)
		}
	}
	return i.data
}

// Implements reports whether the type V implements the interface type T.
func Implements(T, V *abi.Type) bool {
	if V == nil {
		return false
	}
	if T.Kind() != abi.Interface {
		return false
	}
	t := (*abi.InterfaceType)(unsafe.Pointer(T))

	if len(t.Methods) == 0 {
		return true
	}

	// The same algorithm applies in both cases, but the
	// method tables for an interface type and a concrete type
	// are different, so the code is duplicated.
	// In both cases the algorithm is a linear scan over the two
	// lists - T's methods and V's methods - simultaneously.
	// Since method tables are stored in a unique sorted order
	// (alphabetical, with no duplicate method names), the scan
	// through V's methods must hit a match for each of T's
	// methods along the way, or else V does not implement T.
	// This lets us run the scan in overall linear time instead of
	// the quadratic time  a naive search would require.
	// See also ../runtime/iface.go.
	if V.Kind() == abi.Interface {
		v := (*abi.InterfaceType)(unsafe.Pointer(V))
		i := 0
		for j := 0; j < len(v.Methods); j++ {
			tm := &t.Methods[i]
			vm := &v.Methods[j]
			if vm.Name_ == tm.Name_ && vm.Typ_ == tm.Typ_ {
				if i++; i >= len(t.Methods) {
					return true
				}
			}
		}
		return false
	}

	v := V.Uncommon()
	if v == nil {
		return false
	}
	i := 0
	vmethods := v.Methods()
	for j := 0; j < int(v.Mcount); j++ {
		tm := &t.Methods[i]
		vm := vmethods[j]
		if vm.Name_ == tm.Name_ && vm.Mtyp_ == tm.Typ_ {
			if i++; i >= len(t.Methods) {
				return true
			}
		}
	}
	return false
}

func EfaceEqual(v, u eface) bool {
	if v._type == nil || u._type == nil {
		return v._type == u._type
	}
	if v._type != u._type {
		return false
	}
	if isDirectIface(v._type) {
		return v.data == u.data
	}
	if equal := v._type.Equal; equal != nil {
		return equal(v.data, u.data)
	}
	panic(errorString("comparing uncomparable type " + v._type.String()).Error())
}

func (v eface) Kind() abi.Kind {
	if v._type == nil {
		return abi.Invalid
	}
	return v._type.Kind()
}

func (v eface) Elem() eface {
	switch v.Kind() {
	case abi.Interface:
		var i any
		tt := (*abi.InterfaceType)(unsafe.Pointer(v._type))
		if len(tt.Methods) == 0 {
			i = *(*any)(v.data)
		} else {
			i = (any)(*(*interface {
				M()
			})(v.data))
		}
		return *(*eface)(unsafe.Pointer(&i))
	case abi.Pointer:
		ptr := v.data
		if isDirectIface(v._type) {
			ptr = *(*unsafe.Pointer)(ptr)
		}
		if ptr == nil {
			return eface{}
		}
		return eface{v._type.Elem(), ptr}
	}
	panic("invalid eface elem")
}

func SetDirectIface(t *abi.Type) {
	t.Kind_ |= abi.KindDirectIface
}

func isDirectIface(t *_type) bool {
	return t.Kind_&abi.KindDirectIface != 0
}

func SetClosure(t *abi.Type) {
	t.TFlag |= abi.TFlagClosure
}

func hashTuple(tuple []*Type) uint32 {
	// See go/types.identicalTypes for rationale.
	n := len(tuple)
	hash := 9137 + 2*uint32(n)
	for i := 0; i < n; i++ {
		hash += 3 * tuple[i].Hash
	}
	return hash
}

// shallowHash computes a hash of t without looking at any of its
// element Types, to avoid potential anonymous cycles in the types of
// interface methods.
//
// When an unnamed non-empty interface type appears anywhere among the
// arguments or results of an interface method, there is a potential
// for endless recursion. Consider:
//
//	type X interface { m() []*interface { X } }
//
// The problem is that the Methods of the interface in m's result type
// include m itself; there is no mention of the named type X that
// might help us break the cycle.
// (See comment in go/types.identical, case *Interface, for more.)
func shallowHash(t *abi.Type) uint32 {
	// t is the type of an interface method (Signature),
	// its params or results (Tuples), or their immediate
	// elements (mostly Slice, Pointer, Basic, Named),
	// so there's no need to optimize anything else.

	if t.HasName() {
		return 9157 + hashString(t.Uncommon().PkgPath_) + hashString(t.Str_)
	}

	switch t.Kind() {
	case abi.Bool, abi.Int, abi.Int8, abi.Int16, abi.Int32, abi.Int64,
		abi.Uint, abi.Uint8, abi.Uint16, abi.Uint32, abi.Uint64, abi.Uintptr,
		abi.Float32, abi.Float64, abi.Complex64, abi.Complex128, abi.String, abi.UnsafePointer:
		return 45212177 * uint32(t.Kind())

	case abi.Func:
		t := t.FuncType()
		var hash uint32 = 604171
		if t.Variadic() {
			hash *= 971767
		}
		// The Signature/Tuple recursion is always finite
		// and invariably shallow.
		return hash + 1062599*shallowHashTuple(t.In) + 1282529*shallowHashTuple(t.Out)

	case abi.Array:
		return 1524181 + 2*uint32(t.ArrayType().Len)

	case abi.Slice:
		return 2690201

	case abi.Struct:
		return 3326489

	case abi.Pointer:
		return 4393139

	case abi.Interface:
		return 2124679 // no recursion here

	case abi.Map:
		return 9109

	case abi.Chan:
		return 9127
	}

	panic("shallowHash:" + t.String())
}

func shallowHashTuple(tuple []*Type) uint32 {
	n := len(tuple)
	hash := 9137 + 2*uint32(n)
	for i := 0; i < n; i++ {
		hash += 53471161 * shallowHash(tuple[i])
	}
	return hash
}

// -----------------------------------------------------------------------------
