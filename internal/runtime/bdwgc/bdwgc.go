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

package bdwgc

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoPackage = "link: $LLGO_LIB_BDWGC; $(pkg-config --libs bdw-gc); -lgc"
)

// -----------------------------------------------------------------------------

//go:linkname Init C.GC_init
func Init()

//go:linkname Malloc C.GC_malloc
func Malloc(size uintptr) c.Pointer

//go:linkname Realloc C.GC_realloc
func Realloc(ptr c.Pointer, size uintptr) c.Pointer

//go:linkname Free C.GC_free
func Free(ptr c.Pointer)

// -----------------------------------------------------------------------------

//go:linkname RegisterFinalizer C.GC_register_finalizer
func RegisterFinalizer(
	obj c.Pointer,
	fn func(c.Pointer, c.Pointer), cd c.Pointer,
	oldFn *func(c.Pointer, c.Pointer), oldCd *c.Pointer)

//go:linkname RegisterFinalizerNoOrder C.GC_register_finalizer_no_order
func RegisterFinalizerNoOrder(
	obj c.Pointer,
	fn func(c.Pointer, c.Pointer), cd c.Pointer,
	oldFn *func(c.Pointer, c.Pointer), oldCd *c.Pointer)

//go:linkname RegisterFinalizerIgnoreSelf C.GC_register_finalizer_ignore_self
func RegisterFinalizerIgnoreSelf(
	obj c.Pointer,
	fn func(c.Pointer, c.Pointer), cd c.Pointer,
	oldFn *func(c.Pointer, c.Pointer), oldCd *c.Pointer)

//go:linkname RegisterFinalizerUnreachable C.GC_register_finalizer_unreachable
func RegisterFinalizerUnreachable(
	obj c.Pointer,
	fn func(c.Pointer, c.Pointer), cd c.Pointer,
	oldFn *func(c.Pointer, c.Pointer), oldCd *c.Pointer)

// -----------------------------------------------------------------------------

//go:linkname Enable C.GC_enable
func Enable()

//go:linkname Disable C.GC_disable
func Disable()

//go:linkname IsDisabled C.GC_is_disabled
func IsDisabled() c.Int

//go:linkname Gcollect C.GC_gcollect
func Gcollect()

//go:linkname GetMemoryUse C.GC_get_memory_use
func GetMemoryUse() uintptr

// -----------------------------------------------------------------------------

//go:linkname EnableIncremental C.GC_enable_incremental
func EnableIncremental()

//go:linkname IsIncrementalMode C.GC_is_incremental_mode
func IsIncrementalMode() c.Int

//go:linkname IncrementalProtectionNeeds C.GC_incremental_protection_needs
func IncrementalProtectionNeeds() c.Int

//go:linkname StartIncrementalCollection C.GC_start_incremental_collection
func StartIncrementalCollection()

//go:linkname CollectALittle C.GC_collect_a_little
func CollectALittle()
