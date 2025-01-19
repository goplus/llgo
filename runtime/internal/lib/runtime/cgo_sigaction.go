// Copyright 2016 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Support for sanitizers. See runtime/cgo/sigaction.go.

//go:build (linux && amd64) || (freebsd && amd64) || (linux && arm64) || (linux && ppc64le)

package runtime

/*
#include <signal.h>
*/
import "C"

import "unsafe"

func asanread(addr unsafe.Pointer, sz uintptr)
func asanwrite(addr unsafe.Pointer, sz uintptr)
func asanunpoison(addr unsafe.Pointer, sz uintptr)
func asanpoison(addr unsafe.Pointer, sz uintptr)
func asanregisterglobals(addr unsafe.Pointer, sz uintptr)

func msanread(addr unsafe.Pointer, sz uintptr)
func msanwrite(addr unsafe.Pointer, sz uintptr)
func msanmalloc(addr unsafe.Pointer, sz uintptr)
func msanfree(addr unsafe.Pointer, sz uintptr)
func msanmove(dst, src unsafe.Pointer, sz uintptr)

func sysSigaction(sig uint32, new, old *sigactiont) {
	C.sigaction(C.int(sig), (*C.struct_sigaction)(unsafe.Pointer(new)), (*C.struct_sigaction)(unsafe.Pointer(old)))
}

//go:nosplit
func sigaction(sig uint32, new, old *sigactiont) {
	// racewalk.go avoids adding sanitizing instrumentation to package runtime,
	// but we might be calling into instrumented C functions here,
	// so we need the pointer parameters to be properly marked.
	//
	// Mark the input as having been written before the call
	// and the output as read after.
	if msanenabled && new != nil {
		msanwrite(unsafe.Pointer(new), unsafe.Sizeof(*new))
	}
	if asanenabled && new != nil {
		asanwrite(unsafe.Pointer(new), unsafe.Sizeof(*new))
	}
	if inForkedChild {
		sysSigaction(sig, new, old)
	} else {
		// We need to call _cgo_sigaction, which means we need a big enough stack
		// for C.  To complicate matters, we may be in libpreinit (before the
		// runtime has been initialized) or in an asynchronous signal handler (with
		// the current thread in transition between goroutines, or with the g0
		// system stack already in use).

		var ret int32
		ret = int32(C.sigaction(C.int(sig), (*C.struct_sigaction)(unsafe.Pointer(new)), (*C.struct_sigaction)(unsafe.Pointer(old))))

		const EINVAL = 22
		if ret == EINVAL {
			// libc reserves certain signals — normally 32-33 — for pthreads, and
			// returns EINVAL for sigaction calls on those signals.  If we get EINVAL,
			// fall back to making the syscall directly.
			sysSigaction(sig, new, old)
		}
	}

	if msanenabled && old != nil {
		msanread(unsafe.Pointer(old), unsafe.Sizeof(*old))
	}
	if asanenabled && old != nil {
		asanread(unsafe.Pointer(old), unsafe.Sizeof(*old))
	}
}
