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
type maptype = abi.MapType

type slice struct {
	array unsafe.Pointer
	len   int
	cap   int
}

func typedmemmove(typ *_type, dst, src unsafe.Pointer) {
	Typedmemmove(typ, dst, src)
}

// MakeSmallMap creates a new small map.
func MakeSmallMap() *Map {
	return makemap_small()
}

func MakeMap(t *maptype, hint int) *hmap {
	return makemap(t, hint, nil)
}

func MapAssign(t *maptype, h *Map, key unsafe.Pointer) unsafe.Pointer {
	return mapassign(t, h, key)
}

func MapAccess1(t *maptype, h *hmap, key unsafe.Pointer) unsafe.Pointer {
	return mapaccess1(t, h, key)
}

func MapAccess2(t *maptype, h *hmap, key unsafe.Pointer) (unsafe.Pointer, bool) {
	return mapaccess2(t, h, key)
}

func MapDelete(t *maptype, h *hmap, key unsafe.Pointer) {
	mapdelete(t, h, key)
}

func MapClear(t *maptype, h *hmap) {
	mapclear(t, h)
}

func NewMapIter(t *maptype, h *hmap) *hiter {
	var it hiter
	mapiterinit(t, h, &it)
	return &it
}

func MapIterNext(it *hiter) (ok bool, k unsafe.Pointer, v unsafe.Pointer) {
	if it.key == nil {
		return
	}
	ok = true
	k, v = it.key, it.elem
	mapiternext(it)
	return
}

func mapKeyEqual(t *maptype, p, q unsafe.Pointer) bool {
	if isDirectIface(t.Key) {
		switch t.Key.Size_ {
		case 0:
			return true
		case 1:
			return memequal8(p, q)
		case 2:
			return memequal16(p, q)
		case 4:
			return memequal32(p, q)
		case 8:
			return memequal64(p, q)
		}
	}
	switch t.Key.Kind() {
	case abi.String:
		return strequal(p, q)
	case abi.Complex64:
		return c64equal(p, q)
	case abi.Complex128:
		return c128equal(p, q)
	}
	return t.Key.Equal(p, q)
}
