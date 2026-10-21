package runtime

import (
	"sync/atomic"
	"unsafe"

	"github.com/xgo-dev/llgo/runtime/internal/clite/tls"
	psync "github.com/xgo-dev/llgo/runtime/internal/sync"
)

// All pools share one host key. Keys are process-wide resources, not freed
// by thread exit, and even simultaneously live pools can exceed their limit.
var poolLocalOnce psync.Once
var poolLocals tls.Handle[map[*unsafe.Pointer]unsafe.Pointer]

//go:linkname syncRuntimePoolLocalAlloc sync.runtime_poolLocalAlloc
func syncRuntimePoolLocalAlloc(victim *unsafe.Pointer) unsafe.Pointer {
	poolLocalOnce.Do(func() {
		poolLocals = tls.Alloc[map[*unsafe.Pointer]unsafe.Pointer](func(locals *map[*unsafe.Pointer]unsafe.Pointer) {
			for victim, local := range *locals {
				atomic.StorePointer(victim, local)
			}
		})
	})
	// The victim field identifies the pool and keeps its owner alive until
	// this thread's locals have been published by the TLS destructor.
	return unsafe.Pointer(victim)
}

//go:linkname syncRuntimePoolLocalGet sync.runtime_poolLocalGet
func syncRuntimePoolLocalGet(handle unsafe.Pointer) unsafe.Pointer {
	return poolLocals.Get()[(*unsafe.Pointer)(handle)]
}

//go:linkname syncRuntimePoolLocalSet sync.runtime_poolLocalSet
func syncRuntimePoolLocalSet(handle, local unsafe.Pointer) {
	locals := poolLocals.Get()
	if locals == nil {
		locals = make(map[*unsafe.Pointer]unsafe.Pointer)
		poolLocals.Set(locals)
	}
	locals[(*unsafe.Pointer)(handle)] = local
}
