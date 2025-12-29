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

	"github.com/goplus/llgo/runtime/abi"
)

type Kind = abi.Kind
type Type = abi.Type

// -----------------------------------------------------------------------------

// StructField returns a struct field.
func StructField(name string, typ *Type, off uintptr, tag string, embedded bool) abi.StructField {
	return abi.StructField{
		Name_:     name,
		Typ:       typ,
		Offset:    off,
		Tag_:      tag,
		Embedded_: embedded,
	}
}

// Struct returns a struct type.
func Struct(pkgPath string, size uintptr, fields ...abi.StructField) *Type {
	if t := rtypeList.findStruct(pkgPath, size, fields); t != nil {
		return t
	}
	ret := &abi.StructType{
		Type: Type{
			Size_: size,
			Kind_: uint8(abi.Struct),
			Str_:  structStr(fields),
		},
		PkgPath_: pkgPath,
		Fields:   fields,
	}
	var hash uint32 = 9059
	var comparable bool = true
	var typalign uint8
	for _, f := range fields {
		ft := f.Typ
		if ft.Align_ > typalign {
			typalign = ft.Align_
		}
		if f.Typ.PtrBytes != 0 {
			ret.PtrBytes = f.Offset + f.Typ.PtrBytes
		}
		comparable = comparable && (ft.Equal != nil)
		if f.Embedded_ {
			hash += 8861
		}
		hash += hashString(f.Tag_)
		hash += hashString(f.Name_)
		hash += f.Typ.Hash
	}
	ret.Hash = hash
	ret.Align_ = typalign
	ret.FieldAlign_ = typalign
	if comparable {
		if size == 0 {
			ret.Equal = memequal0
		} else {
			ret.Equal = func(p, q unsafe.Pointer) bool {
				for _, ft := range fields {
					pi := add(p, ft.Offset)
					qi := add(q, ft.Offset)
					if !ft.Typ.Equal(pi, qi) {
						return false
					}
				}
				return true
			}
		}
	}
	if isRegularMemory(&ret.Type) {
		ret.TFlag = abi.TFlagRegularMemory
	}
	if len(fields) == 1 && isDirectIface(fields[0].Typ) {
		ret.Kind_ |= abi.KindDirectIface
	}
	if len(fields) == 2 && fields[0].Name_ == "$f" && fields[0].Typ.Kind() == abi.Func &&
		fields[1].Name_ == "$data" && fields[1].Typ.Kind() == abi.UnsafePointer {
		ret.TFlag |= abi.TFlagClosure
		ret.Str_ = funcStr(fields[0].Typ.FuncType())
	}
	rtypeList.addType(&ret.Type)
	return &ret.Type
}

// -----------------------------------------------------------------------------

// PointerTo returns the pointer type with element elem.
func PointerTo(elem *Type) *Type {
	ret := elem.PtrToThis_
	if ret == nil {
		ret = newPointer(elem)
		elem.PtrToThis_ = ret
	}
	return ret
}

const pointerAlign = uint8(unsafe.Alignof(uintptr(0)))

func newPointer(elem *Type) *Type {
	ptr := &abi.PtrType{
		Type: Type{
			Size_:       unsafe.Sizeof(uintptr(0)),
			PtrBytes:    pointerSize,
			Hash:        9067 + 2*elem.Hash,
			Align_:      pointerAlign,
			FieldAlign_: pointerAlign,
			Kind_:       uint8(abi.Pointer) | abi.KindDirectIface,
			Equal:       memequalptr,
			TFlag:       abi.TFlagRegularMemory,
		},
		Elem: elem,
	}
	if (elem.TFlag & abi.TFlagExtraStar) != 0 {
		ptr.Str_ = "**" + elem.Str_
	} else {
		ptr.TFlag |= abi.TFlagExtraStar
		ptr.Str_ = elem.Str_
	}
	return &ptr.Type
}

func setPointer(ptr *abi.PtrType, elem *Type) {
	ptr.PtrBytes = pointerSize
	ptr.Hash = uint32(abi.Pointer) // TODO(xsw): hash
	ptr.Align_ = pointerAlign
	ptr.FieldAlign_ = pointerAlign
	ptr.Kind_ = uint8(abi.Pointer) | abi.KindDirectIface
	ptr.Equal = memequalptr
	ptr.Elem = elem
	ptr.Str_ = elem.Str_
	ptr.TFlag |= abi.TFlagRegularMemory | abi.TFlagExtraStar
}

// SliceOf returns the slice type with element elem.
func SliceOf(elem *Type) *Type {
	if t := rtypeList.findElem(abi.Slice, elem, 0); t != nil {
		return t
	}
	ret := &abi.SliceType{
		Type: Type{
			Size_:       unsafe.Sizeof([]int{}),
			PtrBytes:    pointerSize,
			Hash:        9049 + 2*elem.Hash,
			Align_:      pointerAlign,
			FieldAlign_: pointerAlign,
			Kind_:       uint8(abi.Slice),
			Str_:        "[]" + elem.String(),
		},
		Elem: elem,
	}
	rtypeList.addType(&ret.Type)
	return &ret.Type
}

// ArrayOf returns the array type with element elem and length.
func ArrayOf(length uintptr, elem *Type) *Type {
	if t := rtypeList.findElem(abi.Array, elem, length); t != nil {
		return t
	}
	ret := &abi.ArrayType{
		Type: Type{
			Size_:       length * elem.Size_,
			Hash:        9043 + 2*uint32(length) + 3*elem.Hash,
			Align_:      elem.Align_,
			FieldAlign_: elem.FieldAlign_,
			Kind_:       uint8(abi.Array),
			Str_:        "[" + string(itoa(make([]byte, 20), uint64(length))) + "]" + elem.String(),
		},
		Elem:  elem,
		Slice: SliceOf(elem),
		Len:   length,
	}
	if length != 0 && elem.PtrBytes != 0 {
		ret.PtrBytes = ret.Size_ - elem.Size_ + elem.PtrBytes
	}
	if eequal := elem.Equal; eequal != nil {
		if elem.Size_ == 0 {
			ret.Equal = memequal0
		} else {
			ret.Equal = func(p, q unsafe.Pointer) bool {
				for i := uintptr(0); i < length; i++ {
					pi := add(p, i*elem.Size_)
					qi := add(q, i*elem.Size_)
					if !eequal(pi, qi) {
						return false
					}
				}
				return true
			}
		}
	}
	if ret.Len == 0 || ret.Elem.TFlag&abi.TFlagRegularMemory != 0 {
		ret.TFlag = abi.TFlagRegularMemory
	}
	if ret.Len == 1 && isDirectIface(ret.Elem) {
		ret.Kind_ |= abi.KindDirectIface
	}
	rtypeList.addType(&ret.Type)
	return &ret.Type
}

func ChanOf(dir int, strChan string, elem *Type) *Type {
	if t := rtypeList.findElem(abi.Chan, elem, uintptr(dir)); t != nil {
		return t
	}
	ret := &abi.ChanType{
		Type: Type{
			Size_:       pointerSize,
			PtrBytes:    pointerSize,
			Hash:        9127 + 2*uint32(dir) + 3*elem.Hash,
			Align_:      pointerAlign,
			TFlag:       abi.TFlagRegularMemory,
			FieldAlign_: pointerAlign,
			Kind_:       uint8(abi.Chan),
			Equal:       memequalptr,
			Str_:        strChan + " " + elem.String(),
		},
		Elem: elem,
		Dir:  abi.ChanDir(dir),
	}
	rtypeList.addType(&ret.Type)
	return &ret.Type
}

func MapOf(key, elem *Type, bucket *Type, flags int) *Type {
	if t := rtypeList.findMap(key, elem); t != nil {
		return t
	}
	ret := &abi.MapType{
		Type: Type{
			Size_:       unsafe.Sizeof(uintptr(0)),
			PtrBytes:    pointerSize,
			Hash:        9109 + 2*key.Hash + 3*elem.Hash,
			Align_:      pointerAlign,
			FieldAlign_: pointerAlign,
			Kind_:       uint8(abi.Map),
			Str_:        "map[" + key.String() + "]" + elem.String(),
		},
		Key:        key,
		Elem:       elem,
		Bucket:     bucket,
		KeySize:    uint8(key.Size_),
		ValueSize:  uint8(elem.Size_),
		BucketSize: uint16(bucket.Size_),
		Flags:      uint32(flags),
	}
	ret.Hasher = func(p unsafe.Pointer, seed uintptr) uintptr {
		return typehash(key, p, seed)
	}
	rtypeList.addType(&ret.Type)
	return &ret.Type
}

// Func returns a function type.
func Func(in, out []*Type, variadic bool) *FuncType {
	if t := rtypeList.findFunc(in, out, variadic); t != nil {
		return t
	}
	ret := &FuncType{
		Type: Type{
			Size_:       2 * unsafe.Sizeof(uintptr(0)),
			PtrBytes:    2 * pointerSize,
			Align_:      uint8(pointerAlign),
			FieldAlign_: uint8(pointerAlign),
			Kind_:       uint8(abi.Func),
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
	ret.Str_ = funcStr(ret)
	rtypeList.addType(&ret.Type)
	return ret
}

func isRegularMemory(t *_type) bool {
	switch t.Kind() {
	case abi.Func, abi.Map, abi.Slice, abi.String, abi.Interface:
		return false
	case abi.Float32, abi.Float64, abi.Complex64, abi.Complex128:
		return false
	case abi.Array:
		at := t.ArrayType()
		b := isRegularMemory(at.Elem)
		if b {
			return true
		}
		if at.Len == 0 {
			return true
		}
		return b
	case abi.Struct:
		st := t.StructType()
		n := len(st.Fields)
		switch n {
		case 0:
			return true
		case 1:
			f := st.Fields[0]
			if f.Name_ == "_" {
				return false
			}
			return isRegularMemory(f.Typ)
		default:
			for i := 0; i < n; i++ {
				f := st.Fields[i]
				if f.Name_ == "_" || !isRegularMemory(f.Typ) || ispaddedfield(st, i) {
					return false
				}
			}
		}
	}
	return true
}

// ispaddedfield reports whether the i'th field of struct type t is followed
// by padding.
func ispaddedfield(st *structtype, i int) bool {
	end := st.Size()
	if i+1 < len(st.Fields) {
		end = st.Fields[i+1].Offset
	}
	fd := st.Fields[i]
	return fd.Offset+fd.Typ.Size_ != end
}

func structStr(fields []abi.StructField) string {
	repr := make([]byte, 0, 64)
	repr = append(repr, "struct {"...)
	for i, st := range fields {
		if i > 0 {
			repr = append(repr, ';')
		}
		repr = append(repr, ' ')
		if !st.Embedded_ {
			repr = append(repr, st.Name_...)
			repr = append(repr, ' ')
		}
		repr = append(repr, st.Typ.String()...)
	}
	if len(fields) > 0 {
		repr = append(repr, ' ')
	}
	repr = append(repr, '}')
	return string(repr)
}

func funcStr(ft *abi.FuncType) string {
	repr := make([]byte, 0, 64)
	repr = append(repr, "func("...)
	for i, t := range ft.In {
		if i > 0 {
			repr = append(repr, ", "...)
		}
		if ft.Variadic() && i == len(ft.In)-1 {
			repr = append(repr, "..."...)
			repr = append(repr, (*abi.SliceType)(unsafe.Pointer(t)).Elem.String()...)
		} else {
			repr = append(repr, t.String()...)
		}
	}
	repr = append(repr, ')')
	out := ft.Out
	if len(out) == 1 {
		repr = append(repr, ' ')
	} else if len(out) > 1 {
		repr = append(repr, " ("...)
	}
	for i, t := range out {
		if i > 0 {
			repr = append(repr, ", "...)
		}
		repr = append(repr, t.String()...)
	}
	if len(out) > 1 {
		repr = append(repr, ')')
	}
	return string(repr)
}

func isDirectIface(t *_type) bool {
	return t.Kind_&abi.KindDirectIface != 0
}

type rtypes struct {
	types []*abi.Type
}

func (r *rtypes) findNamed(pkgPath string, name string) *Type {
	for _, typ := range r.types {
		if typ.TFlag&(abi.TFlagNamed|abi.TFlagUncommon) != 0 &&
			typ.Str_ == name && typ.Uncommon().PkgPath_ == pkgPath {
			return typ
		}
	}
	return nil
}

func (r *rtypes) findElem(kind abi.Kind, elem *Type, extra uintptr) *Type {
	for _, typ := range r.types {
		if typ.Kind() == kind && typ.Elem() == elem {
			switch kind {
			case abi.Chan:
				if uintptr(typ.ChanDir()) == extra {
					return typ
				}
			case abi.Array:
				if uintptr(typ.Len()) == extra {
					return typ
				}
			default:
				return typ
			}
		}
	}
	return nil
}

func (r *rtypes) findMap(key, elem *Type) *Type {
	for _, typ := range r.types {
		if typ.Kind() == abi.Map {
			if mt := typ.MapType(); mt.Key == key && mt.Elem == elem {
				return typ
			}
		}
	}
	return nil
}

func eqFields(s1, s2 []abi.StructField) bool {
	n := len(s1)
	if n != len(s2) {
		return false
	}
	for i := 0; i < n; i++ {
		f1, f2 := s1[i], s2[i]
		if f1.Name_ != f2.Name_ || f1.Embedded_ != f2.Embedded_ || f1.Typ != f2.Typ {
			return false
		}
	}
	return true
}

func (r *rtypes) findStruct(pkgPath string, size uintptr, fields []abi.StructField) *Type {
	for _, typ := range r.types {
		if typ.Kind() == abi.Struct && typ.Size() == size {
			if st := typ.StructType(); (st.IsClosure() || st.PkgPath_ == pkgPath) && eqFields(st.Fields, fields) {
				return typ
			}
		}
	}
	return nil
}

func eqImethods(s1, s2 []Imethod) bool {
	n := len(s1)
	if n != len(s2) {
		return false
	}
	for i := 0; i < n; i++ {
		f1, f2 := s1[i], s2[i]
		if f1.Name_ != f2.Name_ || f1.Typ_ != f2.Typ_ {
			return false
		}
	}
	return true
}

func (r *rtypes) findInterface(pkgPath string, methods []Imethod) *abi.InterfaceType {
	for _, typ := range r.types {
		if typ.Kind() == abi.Interface {
			if it := typ.InterfaceType(); it.PkgPath_ == pkgPath && eqImethods(it.Methods, methods) {
				return it
			}
		}
	}
	return nil
}

func eqTypes(s1, s2 []*Type) bool {
	n := len(s1)
	if n != len(s2) {
		return false
	}
	for i := 0; i < n; i++ {
		if s1[i] != s2[i] {
			return false
		}
	}
	return true
}

func (r *rtypes) findFunc(in, out []*Type, variadic bool) *abi.FuncType {
	for _, typ := range r.types {
		if typ.Kind() == abi.Func {
			if ft := typ.FuncType(); ft.Variadic() == variadic && eqTypes(ft.In, in) && eqTypes(ft.Out, out) {
				return ft
			}
		}
	}
	return nil
}

func (r *rtypes) addType(typ *Type) {
	r.types = append(r.types, typ)
}

var rtypeList rtypes

func initTypes(typs *[]*abi.Type) {
	rtypeList.types = *typs
}

// hashString computes the Fowler–Noll–Vo hash of s.
func hashString(s string) uint32 {
	var h uint32
	for i := 0; i < len(s); i++ {
		h ^= uint32(s[i])
		h *= 16777619
	}
	return h
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
