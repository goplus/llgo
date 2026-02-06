//go:build llgo_pass_ctx_by_reg && unix && amd64
// +build llgo_pass_ctx_by_reg,unix,amd64

package ffi

import "unsafe"

func makeClosureStub(fn, env unsafe.Pointer) unsafe.Pointer {
	// amd64 ctx-reg is mm0. The stub loads env into mm0 and calls fn.
	//
	// Code layout (48 bytes):
	//   sub  rsp, 8
	//   movq mm0, [rip+0x15]    ; env at +0x20
	//   mov  r11, [rip+0x16]    ; fn  at +0x28
	//   call r11
	//   add  rsp, 8
	//   ret
	//   nop x6                 ; pad to 8-byte align
	//   .quad env
	//   .quad fn
	const stubSize = 48

	p := allocExec(stubSize)
	if p == nil {
		return nil
	}

	code := [...]byte{
		0x48, 0x83, 0xec, 0x08, // sub rsp, 8
		0x0f, 0x6f, 0x05, 0x15, 0x00, 0x00, 0x00, // movq mm0, [rip+0x15]
		0x4c, 0x8b, 0x1d, 0x16, 0x00, 0x00, 0x00, // mov r11, [rip+0x16]
		0x41, 0xff, 0xd3, // call r11
		0x48, 0x83, 0xc4, 0x08, // add rsp, 8
		0xc3,                               // ret
		0x90, 0x90, 0x90, 0x90, 0x90, 0x90, // padding to 0x20
	}
	copy(unsafe.Slice((*byte)(p), len(code)), code[:])
	*(*uintptr)(unsafe.Add(p, 0x20)) = uintptr(env)
	*(*uintptr)(unsafe.Add(p, 0x28)) = uintptr(fn)

	if !protectExec(p, stubSize) {
		return nil
	}
	return p
}
