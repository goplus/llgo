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

type Interface = iface

type InterfaceType = abi.InterfaceType

type Type = abi.Type

var (
	TyAny = &InterfaceType{}
)

func MakeAny(typ *Type, data unsafe.Pointer) Interface {
	return Interface{
		tab:  &itab{inter: TyAny, _type: typ, hash: 0, fun: [1]uintptr{0}},
		data: data,
	}
}
