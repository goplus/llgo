//go:build llgo
// +build llgo

package python

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/bdwgc"
	"github.com/goplus/llgo/c/wchar"
	"github.com/goplus/llgo/internal/runtime"
	"github.com/goplus/llgo/x/python/py"
)

//go:inline
func CStr(s string) *c.Char {
	return c.AllocCStr(s)
}

//go:inline
func AllocCStr(s string) *c.Char {
	return c.AllocCStr(s)
}

//go:inline
func AllocWCStr(s string) *c.Wchar {
	return wchar.AllocWCStr(s)
}

func GetHostMemoryUse() int {
	return int(bdwgc.GetMemoryUse())
}

func GoString(s *c.Char) string {
	if s == nil {
		return ""
	}
	return c.GoString(s)
}

func GoStringN(s *c.Char, n int) string {
	if s == nil {
		return ""
	}
	return c.GoString(s, n)
}

//go:linkname FuncPtr llgo.funcAddr
func FuncPtr(f any) unsafe.Pointer

func newObject(obj *py.Object) Object {
	if obj == nil {
		py.ErrPrint()
		panic("nil Python object")
	}
	o := &pyObject{obj: obj}
	p := Object{o}
	f := finalizerCallback
	fn := *(**c.Pointer)(c.Pointer(&f))
	runtime.SetFinalizer(o, fn)
	return p
}

func RuntimeGC() {
	runtime.GC()
}
