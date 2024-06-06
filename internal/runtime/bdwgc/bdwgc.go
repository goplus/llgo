package bdwgc

import "C"
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
func RegisterFinalizer(obj c.Pointer, fn func(c.Pointer, c.Pointer), cd c.Pointer, old_fn *func(c.Pointer, c.Pointer), old_cd *c.Pointer) int

//go:linkname RegisterFinalizerNoOrder C.GC_register_finalizer_no_order
func RegisterFinalizerNoOrder(obj c.Pointer, fn func(c.Pointer, c.Pointer), cd c.Pointer, old_fn *func(c.Pointer, c.Pointer), old_cd *c.Pointer) int

//go:linkname RegisterFinalizerIgnoreSelf C.GC_register_finalizer_ignore_self
func RegisterFinalizerIgnoreSelf(obj c.Pointer, fn func(c.Pointer, c.Pointer), cd c.Pointer, old_fn *func(c.Pointer, c.Pointer), old_cd *c.Pointer) int

//go:linkname RegisterFinalizerUnreachable C.GC_register_finalizer_unreachable
func RegisterFinalizerUnreachable(obj c.Pointer, fn func(c.Pointer, c.Pointer), cd c.Pointer, old_fn *func(c.Pointer, c.Pointer), old_cd *c.Pointer) int

// -----------------------------------------------------------------------------

//go:linkname Enable C.GC_enable
func Enable()

//go:linkname Disable C.GC_disable
func Disable()

//go:linkname IsDisabled C.GC_is_disabled
func IsDisabled() int

//go:linkname Gcollect C.GC_gcollect
func Gcollect()

//go:linkname GetMemoryUse C.GC_get_memory_use
func GetMemoryUse() uintptr

// -----------------------------------------------------------------------------

//go:linkname EnableIncremental C.GC_enable_incremental
func EnableIncremental()

//go:linkname IsIncrementalMode C.GC_is_incremental_mode
func IsIncrementalMode() int

//go:linkname IncrementalProtectionNeeds C.GC_incremental_protection_needs
func IncrementalProtectionNeeds() int

//go:linkname StartIncrementalCollection C.GC_start_incremental_collection
func StartIncrementalCollection()

//go:linkname CollectALittle C.GC_collect_a_little
func CollectALittle()
