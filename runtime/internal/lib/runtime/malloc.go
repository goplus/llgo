package runtime

import (
	"unsafe"

	"github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/bdwgc"
	"github.com/goplus/llgo/runtime/internal/lib/runtime/internal/sys"
)

const (
	_TinySizeClass = int8(2)

	tinySizeClass = _TinySizeClass

	_NumStackOrders = 4 // linux/darwin/bsd
)

type notInHeap struct{ _ sys.NotInHeap }

type persistentAlloc struct {
	base *notInHeap
	off  uintptr
}

func mallocgc(size uintptr, typ *_type, needzero bool) unsafe.Pointer {
	p := bdwgc.Malloc(size)
	if needzero {
		clite.Memset(p, 0, size)
	}
	return p
}
