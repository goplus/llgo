//go:build !llgo
// +build !llgo

package python

import "C"
import (
	"reflect"
	"runtime"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/x/python/py"
)

//go:inline
func CStr(s string) *c.Char {
	return (*c.Char)(C.CString(s))
}

//go:inline
func AllocCStr(s string) *c.Char {
	return (*c.Char)(C.CString(s))
}

func AllocWCStr(s string) *c.Wchar {
	runes := []rune(s)
	wchars := make([]uint16, len(runes)+1)
	for i, r := range runes {
		wchars[i] = uint16(r)
	}
	wchars[len(runes)] = 0
	return (*c.Wchar)(unsafe.Pointer(&wchars[0]))
}

func GetHostMemoryUse() int {
	var m runtime.MemStats
	runtime.ReadMemStats(&m)
	return int(m.Alloc)
}

func GoString(s *c.Char) string {
	return C.GoString((*C.char)(s))
}

func GoStringN(s *c.Char, n int) string {
	return C.GoStringN((*C.char)(s), C.int(n))
}

func FuncPtr(f interface{}) unsafe.Pointer {
	val := reflect.ValueOf(f)
	if val.Kind() != reflect.Func {
		panic("not a function")
	}

	ptr := val.Pointer()
	if val.Type().Kind() == reflect.Func {
		if rf := runtime.FuncForPC(ptr); rf != nil {
			return unsafe.Pointer(rf.Entry())
		}
	}

	return unsafe.Pointer(ptr)
}

func newObject(obj *py.Object) Object {
	if obj == nil {
		py.ErrPrint()
		panic("nil Python object")
	}
	o := &pyObject{obj: obj}
	p := Object{o}
	runtime.SetFinalizer(o, finalizerCallback)
	return p
}

func RuntimeGC() {
	runtime.GC()
}
