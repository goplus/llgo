//go:build linux && !baremetal && !wasm

package runtime

import (
	"unsafe"

	c "github.com/xgo-dev/llgo/runtime/internal/clite"
	clitesyscall "github.com/xgo-dev/llgo/runtime/internal/clite/syscall"
)

// cgoArgset matches the pinned Go runtime's credential-wrapper ABI. Arguments
// remain live for the synchronous call; errno is returned in retval.
type cgoArgset struct {
	args   *uintptr
	retval uintptr
}

//go:linkname c_cgoArgsetCall C.llgo_cgo_argset_call
func c_cgoArgsetCall(fn unsafe.Pointer, args *cgoArgset)

//go:linkname syscall_cgocaller syscall.cgocaller
//go:uintptrescapes
func syscall_cgocaller(fn unsafe.Pointer, args ...uintptr) uintptr {
	if fn == nil {
		return uintptr(clitesyscall.ENOTSUP)
	}
	var ptr *uintptr
	if len(args) != 0 {
		ptr = &args[0]
	}
	call := cgoArgset{args: ptr}
	c_cgoArgsetCall(fn, &call)
	KeepAlive(args)
	return call.retval
}

//go:linkname c_setuid C.llgo_cgo_setuid
func c_setuid(*cgoArgset)

//go:linkname c_seteuid C.llgo_cgo_seteuid
func c_seteuid(*cgoArgset)

//go:linkname c_setgid C.llgo_cgo_setgid
func c_setgid(*cgoArgset)

//go:linkname c_setegid C.llgo_cgo_setegid
func c_setegid(*cgoArgset)

//go:linkname c_setreuid C.llgo_cgo_setreuid
func c_setreuid(*cgoArgset)

//go:linkname c_setregid C.llgo_cgo_setregid
func c_setregid(*cgoArgset)

//go:linkname c_setresuid C.llgo_cgo_setresuid
func c_setresuid(*cgoArgset)

//go:linkname c_setresgid C.llgo_cgo_setresgid
func c_setresgid(*cgoArgset)

//go:linkname c_setgroups C.llgo_cgo_setgroups
func c_setgroups(*cgoArgset)

//go:linkname cgoSetuid syscall.cgo_libc_setuid
var cgoSetuid = c.Func(c_setuid)

//go:linkname cgoSeteuid syscall.cgo_libc_seteuid
var cgoSeteuid = c.Func(c_seteuid)

//go:linkname cgoSetgid syscall.cgo_libc_setgid
var cgoSetgid = c.Func(c_setgid)

//go:linkname cgoSetegid syscall.cgo_libc_setegid
var cgoSetegid = c.Func(c_setegid)

//go:linkname cgoSetreuid syscall.cgo_libc_setreuid
var cgoSetreuid = c.Func(c_setreuid)

//go:linkname cgoSetregid syscall.cgo_libc_setregid
var cgoSetregid = c.Func(c_setregid)

//go:linkname cgoSetresuid syscall.cgo_libc_setresuid
var cgoSetresuid = c.Func(c_setresuid)

//go:linkname cgoSetresgid syscall.cgo_libc_setresgid
var cgoSetresgid = c.Func(c_setresgid)

//go:linkname cgoSetgroups syscall.cgo_libc_setgroups
var cgoSetgroups = c.Func(c_setgroups)
