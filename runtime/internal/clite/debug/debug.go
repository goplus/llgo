package debug

/*
#cgo linux LDFLAGS: -lunwind
*/
import "C"
import (
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
)

const (
	LLGoPackage = "link"
	LLGoFiles   = "_wrap/debug.c"
)

type Info struct {
	Fname *c.Char
	Fbase c.Pointer
	Sname *c.Char
	Saddr c.Pointer
}

//go:linkname Address C.llgo_address
func Address() unsafe.Pointer

//go:linkname Addrinfo C.llgo_addrinfo
func Addrinfo(addr unsafe.Pointer, info *Info) c.Int

//go:linkname stacktrace C.llgo_stacktrace
func stacktrace(skip c.Int, ctx unsafe.Pointer, fn func(ctx, pc, offset, sp unsafe.Pointer, name *c.Char) c.Int)

type Frame struct {
	PC     uintptr
	Offset uintptr
	SP     unsafe.Pointer
	Name   string
}

func StackTrace(skip int, fn func(fr *Frame) bool) {
	stacktrace(c.Int(1+skip), unsafe.Pointer(&fn), func(ctx, pc, offset, sp unsafe.Pointer, name *c.Char) c.Int {
		fn := *(*func(fr *Frame) bool)(ctx)
		if !fn(&Frame{uintptr(pc), uintptr(offset), sp, c.GoString(name)}) {
			return 0
		}
		return 1
	})
}
