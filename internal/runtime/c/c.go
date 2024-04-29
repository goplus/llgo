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

package c

import "C"
import "unsafe"

const (
	LLGoPackage = "decl"
)

//go:linkname String llgo.cstr
func String(string) *int8

//go:linkname Alloca llgo.alloca
func Alloca(size uintptr) unsafe.Pointer

//go:linkname Unreachable llgo.unreachable
func Unreachable()

//go:linkname Malloc C.malloc
func Malloc(size uintptr) unsafe.Pointer

//go:linkname Memcpy C.memcpy
func Memcpy(dst, src unsafe.Pointer, n uintptr) unsafe.Pointer

//go:linkname Printf C.printf
func Printf(format *int8, __llgo_va_list ...any) C.int
