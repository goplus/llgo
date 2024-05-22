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

type Eface = eface

// -----------------------------------------------------------------------------

func MakeAnyIntptr(typ *Type, data uintptr) Eface {
	return eface{
		_type: typ, data: unsafe.Pointer(data),
	}
}

func MakeAnyString(data string) Eface {
	typ := basicTypes[abi.String]
	return eface{
		_type: typ, data: unsafe.Pointer(&data),
	}
}

func I2Int(v Eface, t *Type) uintptr {
	if v._type == t {
		return uintptr(v.data)
	}
	panic("I2Int: type mismatch")
}

func CheckI2Int(v Eface, t *Type) (uintptr, bool) {
	if v._type == t {
		return uintptr(v.data), true
	}
	return 0, false
}

func I2String(v Eface) string {
	if v._type.Kind() == abi.String {
		return *(*string)(v.data)
	}
	panic("I2String: type mismatch")
}

func CheckI2String(v Eface) (string, bool) {
	if v._type.Kind() == abi.String {
		return *(*string)(v.data), true
	}
	return "", false
}

// -----------------------------------------------------------------------------
