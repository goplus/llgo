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

// typedef unsigned int uint;
import "C"
import "unsafe"

const (
	LLGoPackage = "decl"
)

type (
	Char    = int8
	Int     = C.int
	Uint    = C.uint
	Pointer = unsafe.Pointer
	FilePtr = unsafe.Pointer
)

//go:linkname Stdin __stdinp
var Stdin FilePtr

//go:linkname Stdout __stdoutp
var Stdout FilePtr

//go:linkname Stderr __stderrp
var Stderr FilePtr

//go:linkname Str llgo.cstr
func Str(string) *Char

//go:linkname Advance llgo.advance
func Advance(ptr Pointer, offset int) Pointer

//go:linkname Alloca llgo.alloca
func Alloca(size uintptr) Pointer

//go:linkname AllocaCStr llgo.allocaCStr
func AllocaCStr(s string) *Char

//go:linkname Unreachable llgo.unreachable
func Unreachable()

//go:linkname Rand C.rand
func Rand() Int

//go:linkname Malloc C.malloc
func Malloc(size uintptr) Pointer

//go:linkname Memcpy C.memcpy
func Memcpy(dst, src Pointer, n uintptr) Pointer

//go:linkname Memset C.memset
func Memset(s Pointer, c Int, n uintptr) Pointer

//go:linkname Printf C.printf
func Printf(format *Char, __llgo_va_list ...any) Int

//go:linkname Fprintf C.fprintf
func Fprintf(fp FilePtr, format *Char, __llgo_va_list ...any) Int

//go:linkname Qsort C.qsort
func Qsort(base Pointer, count, elem uintptr, compar func(a, b Pointer) Int)
