package runtime

import (
	"unsafe"

	"github.com/goplus/llgo/runtime/internal/clite/sync/atomic"
	llrt "github.com/goplus/llgo/runtime/internal/runtime"
	_ "unsafe"
)

type weakHandle struct {
	pfn unsafe.Pointer // func() unsafe.Pointer
}

func llgoRegisterWeakPointer(p unsafe.Pointer) unsafe.Pointer {
	n := uintptr(p) ^ 0xffff // hide from simple escape analysis
	fn := func() unsafe.Pointer {
		return unsafe.Pointer(n ^ 0xffff)
	}
	wh := &weakHandle{
		pfn: unsafe.Pointer(&fn),
	}
	llrt.AddCleanupPtr(p, func() {
		atomic.Store(&wh.pfn, nil)
	})
	return unsafe.Pointer(wh)
}

func llgoMakeStrongFromWeak(u unsafe.Pointer) unsafe.Pointer {
	wh := (*weakHandle)(u)
	if pfn := atomic.Load(&wh.pfn); pfn != nil {
		return (*(*func() unsafe.Pointer)(pfn))()
	}
	return nil
}

//go:linkname weak_runtime_registerWeakPointer weak.runtime_registerWeakPointer
func weak_runtime_registerWeakPointer(p unsafe.Pointer) unsafe.Pointer {
	return llgoRegisterWeakPointer(p)
}

//go:linkname weak_runtime_makeStrongFromWeak weak.runtime_makeStrongFromWeak
func weak_runtime_makeStrongFromWeak(u unsafe.Pointer) unsafe.Pointer {
	return llgoMakeStrongFromWeak(u)
}

//go:linkname internal_weak_runtime_registerWeakPointer internal/weak.runtime_registerWeakPointer
func internal_weak_runtime_registerWeakPointer(p unsafe.Pointer) unsafe.Pointer {
	return llgoRegisterWeakPointer(p)
}

//go:linkname internal_weak_runtime_makeStrongFromWeak internal/weak.runtime_makeStrongFromWeak
func internal_weak_runtime_makeStrongFromWeak(u unsafe.Pointer) unsafe.Pointer {
	return llgoMakeStrongFromWeak(u)
}
