//go:build 386 || amd64

package cpu

import (
	_ "unsafe"
)

const (
	LLGoPackage = "link"
	LLGoFiles   = "_wrap/cpu_x86.ll"
)

//go:linkname c_getcpuid C.llgo_getcpuid
func c_getcpuid(eaxArg, ecxArg uint32, eax, ebx, ecx, edx *uint32)

func cpuid(eaxArg, ecxArg uint32) (eax, ebx, ecx, edx uint32) {
	c_getcpuid(
		eaxArg,
		ecxArg,
		&eax,
		&ebx,
		&ecx,
		&edx,
	)
	return
}
