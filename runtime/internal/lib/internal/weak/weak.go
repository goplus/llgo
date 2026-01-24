package weak

import (
	"unsafe"

	"github.com/goplus/llgo/runtime/internal/clite/sync/atomic"
	"github.com/goplus/llgo/runtime/internal/runtime"
)

type weak struct {
	pfn unsafe.Pointer // func ptr
}

//go:linkname runtime_registerWeakPointer
func runtime_registerWeakPointer(p unsafe.Pointer) unsafe.Pointer {
	n := uintptr(p) ^ 0xffff //hides the pointer from escape analysis
	fn := func() unsafe.Pointer {
		return unsafe.Pointer(n ^ 0xffff)
	}
	wh := &weak{
		pfn: unsafe.Pointer(&fn),
	}
	runtime.AddCleanupPtr(p, func() {
		atomic.Store(&wh.pfn, nil)
	})
	return unsafe.Pointer(wh)
}

//go:linkname runtime_makeStrongFromWeak
func runtime_makeStrongFromWeak(u unsafe.Pointer) unsafe.Pointer {
	wh := (*weak)(u)
	if pfn := atomic.Load(&wh.pfn); pfn != nil {
		return (*(*func() unsafe.Pointer)(pfn))()
	}
	return nil
}
