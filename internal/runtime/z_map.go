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

// Map represents a Go map.
type Map = hmap
type MapType = abi.MapType

// MakeSmallMap creates a new small map.
func MakeSmallMap() *Map {
	return makemap_small()
}

// MakeMap creates a new map.
func MakeMap(t *MapType, hint int, at *Map) *Map {
	return makemap(t, hint, at)
}

// MapAssign finds a key in map m and returns the elem address to assign.
func MapAssign(t *MapType, m *Map, key unsafe.Pointer) unsafe.Pointer {
	return mapassign(t, m, key)
}

func isReflexive(key *Type) bool {
	return true // TODO(xsw): false for float/complex type
}

func hashOf(t *Type) func(key unsafe.Pointer, hash0 uintptr) uintptr {
	if t.TFlag&abi.TFlagRegularMemory != 0 {
		switch t.Size_ {
		case 4:
			return memhash32
		case 8:
			return memhash64
		}
		return func(key unsafe.Pointer, hash0 uintptr) uintptr {
			return memhash(key, hash0, t.Size_)
		}
	}
	switch t.Kind() {
	case abi.Float32:
		return f32hash
	case abi.Float64:
		return f64hash
	case abi.Complex64:
		return c64hash
	case abi.Complex128:
		return c128hash
	case abi.String:
		return strhash
	case abi.Interface:
		i := (*interfacetype)(unsafe.Pointer(t))
		if len(i.Methods) == 0 {
			return nilinterhash
		}
		return interhash
	}
	return func(key unsafe.Pointer, hash0 uintptr) uintptr {
		return typehash(t, key, hash0)
	}
}

// MapOf creates a new map type.
func MapOf(key, elem *Type) *MapType {
	var flags uint32

	keySlot, elemSlot := key, elem
	ptrTy := Basic(abi.UnsafePointer)
	if keySlot.Size_ > 128 {
		keySlot = ptrTy
		flags |= 1
	}
	if elemSlot.Size_ > 128 {
		elemSlot = ptrTy
		flags |= 2
	}
	if isReflexive(key) {
		flags |= 4
	}

	tophashTy := ArrayOf(bucketCnt, Basic(abi.Uint8))
	keysTy := ArrayOf(bucketCnt, keySlot)
	elemsTy := ArrayOf(bucketCnt, elemSlot)

	tophash := StructField("tophash", tophashTy, 0, "", false)
	keys := StructField("keys", keysTy, tophashTy.Size_, "", false)
	elems := StructField("elems", elemsTy, keys.Offset+keysTy.Size_, "", false)
	overflow := StructField("overflow", ptrTy, elems.Offset+elemsTy.Size_, "", false)

	bucket := Struct("", overflow.Offset+ptrTy.Size_, tophash, keys, elems, overflow)

	ret := &abi.MapType{
		Type: abi.Type{
			Size_: unsafe.Sizeof(uintptr(0)),
			Hash:  uint32(abi.Map),
			Kind_: uint8(abi.Map),
		},
		Key:        key,
		Elem:       elem,
		Bucket:     bucket,
		Hasher:     hashOf(key),
		KeySize:    uint8(keySlot.Size_),  // size of key slot
		ValueSize:  uint8(elemSlot.Size_), // size of elem slot
		BucketSize: uint16(bucket.Size_),  // size of bucket
		Flags:      flags,
	}
	return ret
}
