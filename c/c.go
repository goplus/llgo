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
	Float   = float32
	Pointer = unsafe.Pointer
	FilePtr = unsafe.Pointer
)

type integer interface {
	~int | ~uint | ~uintptr | ~int32 | ~uint32 | ~int64 | ~uint64
}

//go:linkname Str llgo.cstr
func Str(string) *Char

//go:linkname Advance llgo.advance
func Advance(ptr Pointer, offset int) Pointer

// llgo:link Index llgo.index
func Index[T any, I integer](ptr *T, offset I) T { return *ptr }

//go:linkname Alloca llgo.alloca
func Alloca(size uintptr) Pointer

//go:linkname AllocaCStr llgo.allocaCStr
func AllocaCStr(s string) *Char

//go:linkname Unreachable llgo.unreachable
func Unreachable()

//go:linkname Malloc C.malloc
func Malloc(size uintptr) Pointer

//go:linkname Memcpy C.memcpy
func Memcpy(dst, src Pointer, n uintptr) Pointer

//go:linkname Memset C.memset
func Memset(s Pointer, c Int, n uintptr) Pointer

// -----------------------------------------------------------------------------

//go:linkname Rand C.rand
func Rand() Int

//go:linkname Qsort C.qsort
func Qsort(base Pointer, count, elem uintptr, compar func(a, b Pointer) Int)

// -----------------------------------------------------------------------------

//go:linkname Stdin __stdinp
var Stdin FilePtr

//go:linkname Stdout __stdoutp
var Stdout FilePtr

//go:linkname Stderr __stderrp
var Stderr FilePtr

//go:linkname Printf C.printf
func Printf(format *Char, __llgo_va_list ...any) Int

//go:linkname Fprintf C.fprintf
func Fprintf(fp FilePtr, format *Char, __llgo_va_list ...any) Int

// -----------------------------------------------------------------------------

//go:linkname Time C.time
func Time(*int32) int32

// -----------------------------------------------------------------------------

type Option struct {
	Name   *Char
	HasArg Int
	Flag   *Int
	Val    Int
}

//go:linkname Argc __llgo_argc
var Argc Int

//go:linkname Argv __llgo_argv
var Argv **Char

//go:linkname Optarg optarg
var Optarg *Char

//go:linkname Optind optind
var Optind Int

//go:linkname Opterr opterr
var Opterr Int

//go:linkname Optopt optopt
var Optopt Int

//go:linkname Getopt C.getopt
func Getopt(argc Int, argv **Char, optstring *Char) Int

//go:linkname GetoptLong C.getopt_long
func GetoptLong(argc Int, argv **Char, optstring *Char, longopts *Option, longindex *Int) Int

//go:linkname GetoptLongOnly C.getopt_long_only
func GetoptLongOnly(argc Int, argv **Char, optstring *Char, longopts *Option, longindex *Int) Int

// -----------------------------------------------------------------------------
