package llgointrinsics

import _ "unsafe"

//go:linkname funcPCABI0 llgo.funcPCABI0
func funcPCABI0(fn interface{}) uintptr

//go:linkname skip llgo.skip
func skip()

//go:linkname libc_foo_trampoline C.foo
func libc_foo_trampoline()

//go:linkname bar_trampoline trampoline.bar
func bar_trampoline()

func UseLibc() uintptr {
	return funcPCABI0(libc_foo_trampoline)
}

func UseBare() uintptr {
	return funcPCABI0(bar_trampoline)
}

func UseSkip() {
	skip()
}
