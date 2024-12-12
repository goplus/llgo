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

package bitcast

import _ "unsafe"

const (
	LLGoFiles   = "_cast/cast.c"
	LLGoPackage = "link"
)

//go:linkname ToFloat64 C.llgoToFloat64
func ToFloat64(v uintptr) float64

//go:linkname ToFloat32 C.llgoToFloat32
func ToFloat32(v uintptr) float32

//go:linkname FromFloat64 C.llgoFromFloat64
func FromFloat64(v float64) uintptr

//go:linkname FromFloat32 C.llgoFromFloat32
func FromFloat32(v float32) uintptr
