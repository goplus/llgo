//go:build 386 || amd64

package cpu

import (
	_ "unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
)

const (
	LLGoPackage = "link"
	LLGoFiles   = "_wrap/cpu_x86.c"
)

//go:linkname c_getcpuid C.llgo_getcpuid
func c_getcpuid(eaxArg, ecxArg uint32, eax, ebx, ecx, edx *c.Uint)

func cpuid(eaxArg, ecxArg uint32) (eax, ebx, ecx, edx uint32) {
	c_getcpuid(
		c.Uint(eaxArg),
		c.Uint(ecxArg),
		(*c.Uint)(&eax),
		(*c.Uint)(&ebx),
		(*c.Uint)(&ecx),
		(*c.Uint)(&edx),
	)
	return
}
