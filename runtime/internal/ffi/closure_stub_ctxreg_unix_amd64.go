//go:build llgo_pass_ctx_by_reg && unix && amd64
// +build llgo_pass_ctx_by_reg,unix,amd64

package ffi

import "unsafe"

func makeClosureStub(fn, env unsafe.Pointer, stackBytes uint32) unsafe.Pointer {
	_ = stackBytes

	// amd64 ctx-reg is mm0. The stub loads env into mm0 and calls fn.
	//
	// Code layout (48 bytes):
	//   movq mm0, [rip+0x19]    ; env at +0x20
	//   mov  r11, [rip+0x1a]    ; fn  at +0x28
	//   jmp  r11                ; tailcall to preserve stack args
	//   nop x15                 ; pad to 0x20
	//   .quad env
	//   .quad fn
	const stubSize = 48

	p := allocExec(stubSize)
	if p == nil {
		return nil
	}

	code := [...]byte{
		0x0f, 0x6f, 0x05, 0x19, 0x00, 0x00, 0x00, // movq mm0, [rip+0x19]
		0x4c, 0x8b, 0x1d, 0x1a, 0x00, 0x00, 0x00, // mov r11, [rip+0x1a]
		0x41, 0xff, 0xe3, // jmp r11
		0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90,
		0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, // padding to 0x20
	}
	copy(unsafe.Slice((*byte)(p), len(code)), code[:])
	*(*uintptr)(unsafe.Add(p, 0x20)) = uintptr(env)
	*(*uintptr)(unsafe.Add(p, 0x28)) = uintptr(fn)

	if !protectExec(p, stubSize) {
		return nil
	}
	return p
}
