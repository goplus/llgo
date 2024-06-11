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

func InterfaceEqual(x, y any, xeface, yeface bool) bool {
	return efaceEqual(unpackEface(x, xeface), unpackEface(y, yeface))
}

func unpackEface(i any, emtpy bool) eface {
	if emtpy {
		return *(*eface)(unsafe.Pointer(&i))
	}
	e := (*iface)(unsafe.Pointer(&i))
	if e.tab == nil {
		return eface{}
	}
	return eface{e.tab._type, e.data}
}

func efaceEqual(v, u eface) bool {
	if v.Kind() == abi.Interface {
		v = v.Elem()
	}
	if u.Kind() == abi.Interface {
		u = u.Elem()
	}
	if v._type == nil || u._type == nil {
		return v._type == u._type
	}
	if v._type != u._type {
		return false
	}
	if v._type.Kind_&abi.KindDirectIface != 0 {
		return v.data == u.data
	}
	switch v.Kind() {
	case abi.Bool,
		abi.Int, abi.Int8, abi.Int16, abi.Int32, abi.Int64,
		abi.Uint, abi.Uint8, abi.Uint16, abi.Uint32, abi.Uint64, abi.Uintptr,
		abi.Float32, abi.Float64:
		return *(*uintptr)(v.data) == *(*uintptr)(u.data)
	case abi.Complex64, abi.Complex128:
		panic("TODO complex")
	case abi.String:
		return *(*string)(v.data) == *(*string)(u.data)
	case abi.Pointer, abi.UnsafePointer:
		return v.data == u.data
	case abi.Array:
		n := v._type.Len()
		tt := v._type.ArrayType()
		index := func(data unsafe.Pointer, i int) eface {
			offset := i * int(tt.Elem.Size_)
			return eface{tt.Elem, c.Advance(data, offset)}
		}
		for i := 0; i < n; i++ {
			if !efaceEqual(index(v.data, i), index(u.data, i)) {
				return false
			}
		}
		return true
	case abi.Struct:
		st := v._type.StructType()
		field := func(data unsafe.Pointer, ft *abi.StructField) eface {
			return eface{ft.Typ, c.Advance(data, int(ft.Offset))}
		}
		for _, ft := range st.Fields {
			if !efaceEqual(field(v.data, &ft), field(u.data, &ft)) {
				return false
			}
		}
		return true
	case abi.Func, abi.Map, abi.Slice:
		break
	}
	panic("not comparable")
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
		if v._type.Kind_&abi.KindDirectIface != 0 {
			ptr = *(*unsafe.Pointer)(ptr)
		}
		if ptr == nil {
			return eface{}
		}
		return eface{v._type.Elem(), ptr}
	}
	panic("invalid eface elem")
}
