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
)

type Kind = abi.Kind
type Type = abi.Type

// -----------------------------------------------------------------------------
var (
	tyBasic [abi.UnsafePointer + 1]*Type
)

func basicEqual(kind Kind, size uintptr) func(a, b unsafe.Pointer) bool {
	switch kind {
	case abi.Bool, abi.Int, abi.Int8, abi.Int16, abi.Int32, abi.Int64,
		abi.Uint, abi.Uint8, abi.Uint16, abi.Uint32, abi.Uint64, abi.Uintptr:
		switch size {
		case 1:
			return memequal8
		case 2:
			return memequal16
		case 4:
			return memequal32
		case 8:
			return memequal64
		}
	case abi.Float32:
		return f32equal
	case abi.Float64:
		return f64equal
	case abi.Complex64:
		return c64equal
	case abi.Complex128:
		return c128equal
	case abi.String:
		return strequal
	case abi.UnsafePointer:
		return memequalptr
	}
	panic("unreachable")
}

func basicFlags(kind Kind) abi.TFlag {
	switch kind {
	case abi.Float32, abi.Float64, abi.Complex64, abi.Complex128, abi.String:
		return 0
	}
	return abi.TFlagRegularMemory
}

func Basic(_kind Kind) *Type {
	kind := _kind & abi.KindMask
	if tyBasic[kind] == nil {
		name, size, align := basicTypeInfo(kind)
		var bytes uintptr
		if kind == abi.String {
			bytes = pointerSize
		}
		tyBasic[kind] = &Type{
			Size_:       size,
			PtrBytes:    bytes,
			Hash:        uint32(kind), // TODO(xsw): hash
			Align_:      uint8(align),
			FieldAlign_: uint8(align),
			Kind_:       uint8(_kind),
			Equal:       basicEqual(kind, size),
			TFlag:       basicFlags(kind),
			Str_:        name,
		}
	}
	return tyBasic[kind]
}

func basicTypeInfo(kind abi.Kind) (string, uintptr, uintptr) {
	switch kind {
	case abi.Bool:
		return "bool", unsafe.Sizeof(false), unsafe.Alignof(false)
	case abi.Int:
		return "int", unsafe.Sizeof(0), unsafe.Alignof(0)
	case abi.Int8:
		return "int8", 1, 1
	case abi.Int16:
		return "int16", 2, 2
	case abi.Int32:
		return "int32", 4, 4
	case abi.Int64:
		return "int64", 8, 8
	case abi.Uint:
		return "uint", unsafe.Sizeof(uint(0)), unsafe.Alignof(uint(0))
	case abi.Uint8:
		return "uint8", 1, 1
	case abi.Uint16:
		return "uint16", 2, 2
	case abi.Uint32:
		return "uint32", 4, 4
	case abi.Uint64:
		return "uint64", 8, 8
	case abi.Uintptr:
		return "uintptr", unsafe.Sizeof(uintptr(0)), unsafe.Alignof(uintptr(0))
	case abi.Float32:
		return "float32", 4, 4
	case abi.Float64:
		return "float64", 8, 8
	case abi.Complex64:
		return "complex64", 8, 4
	case abi.Complex128:
		return "complex128", 16, 8
	case abi.String:
		return "string", unsafe.Sizeof(String{}), unsafe.Alignof("")
	case abi.UnsafePointer:
		return "unsafe.Pointer", unsafe.Sizeof(unsafe.Pointer(nil)), unsafe.Alignof(unsafe.Pointer(nil))
	}
	panic("unreachable")
}

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
	ret := &abi.StructType{
		Type: Type{
			Size_: size,
			Hash:  uint32(abi.Struct), // TODO(xsw): hash
			Kind_: uint8(abi.Struct),
			Str_:  "struct {...}",
		},
		PkgPath_: pkgPath,
		Fields:   fields,
	}
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
	}
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
			Hash:        uint32(abi.Pointer), // TODO(xsw): hash
			Align_:      pointerAlign,
			FieldAlign_: pointerAlign,
			Kind_:       uint8(abi.Pointer),
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

// SliceOf returns the slice type with element elem.
func SliceOf(elem *Type) *Type {
	ret := &abi.SliceType{
		Type: Type{
			Size_:       unsafe.Sizeof([]int{}),
			PtrBytes:    pointerSize,
			Hash:        uint32(abi.Slice),
			Align_:      pointerAlign,
			FieldAlign_: pointerAlign,
			Kind_:       uint8(abi.Slice),
			Str_:        "[]" + elem.String(),
		},
		Elem: elem,
	}
	return &ret.Type
}

// ArrayOf returns the array type with element elem and length.
func ArrayOf(length uintptr, elem *Type) *Type {
	ret := &abi.ArrayType{
		Type: Type{
			Size_:       length * elem.Size_,
			Hash:        uint32(abi.Array),
			Align_:      elem.Align_,
			FieldAlign_: elem.FieldAlign_,
			Kind_:       uint8(abi.Array),
			Str_:        "[...]" + elem.String(), // TODO(xsw): itoa
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
	return &ret.Type
}

func ChanOf(dir int, strChan string, elem *Type) *Type {
	ret := &abi.ChanType{
		Type: Type{
			Size_:       pointerSize,
			PtrBytes:    pointerSize,
			Hash:        uint32(abi.Chan),
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
	return &ret.Type
}

func MapOf(key, elem *Type, bucket *Type, flags int) *Type {
	ret := &abi.MapType{
		Type: Type{
			Size_:       unsafe.Sizeof(uintptr(0)),
			PtrBytes:    pointerSize,
			Hash:        uint32(abi.Map),
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
	return &ret.Type
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

// -----------------------------------------------------------------------------
