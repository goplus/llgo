package llgointrinsics

import (
	"unsafe"
)

//go:linkname funcPCABI0 llgo.funcPCABI0
func funcPCABI0(fn interface{}) uintptr

//go:linkname skip llgo.skip
func skip()

//go:linkname skipWithRet llgo.skip
func skipWithRet() uintptr

//go:linkname skipWithMultiRet llgo.skip
func skipWithMultiRet() (uintptr, uintptr)

//go:linkname libc_foo_trampoline C.foo
func libc_foo_trampoline()

//go:linkname bar_trampoline bar_trampoline
func bar_trampoline()

//go:linkname write C.write
func write(fd int, buf unsafe.Pointer, count int) int

//go:linkname write_trampoline C.write
func write_trampoline()

func UseC() uintptr {
	return funcPCABI0(write)
}

func UseCTrampoline() uintptr {
	return funcPCABI0(write_trampoline)
}

func UseLibc() uintptr {
	return funcPCABI0(libc_foo_trampoline)
}

func UseBare() uintptr {
	return funcPCABI0(bar_trampoline)
}

func UseFunc() uintptr {
	return funcPCABI0(func() {})
}

func UseClosure() uintptr {
	var x int
	return funcPCABI0(func() {
		x++
	})
}

func UseSkip() {
	skip()
	i := skipWithRet()
	print(i)
	a, b := skipWithMultiRet()
	print(a, b)
}
