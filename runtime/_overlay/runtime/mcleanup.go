//go:build go1.24
// +build go1.24

package runtime

import (
	"internal/abi"
	"unsafe"
)

func AddCleanup[T, S any](ptr *T, cleanup func(S), arg S) Cleanup {
	ptr = abi.Escape(ptr)

	// The pointer to the object must be valid.
	if ptr == nil {
		panic("runtime.AddCleanup: ptr is nil")
	}

	// Check that arg is not equal to ptr.
	if kind := abi.TypeOf(arg).Kind(); kind == abi.Pointer || kind == abi.UnsafePointer {
		if unsafe.Pointer(ptr) == *((*unsafe.Pointer)(unsafe.Pointer(&arg))) {
			panic("runtime.AddCleanup: ptr is equal to arg, cleanup will never run")
		}
	}
	fn := func() {
		cleanup(arg)
	}
	cancel := addCleanupPtr(unsafe.Pointer(ptr), fn)
	return Cleanup{cancel}
}

func addCleanupPtr(ptr unsafe.Pointer, fn func()) (cancel func()) {
	panic("todo")
}

type Cleanup struct {
	cancel func()
}

func (c Cleanup) Stop() {
	c.cancel()
}
