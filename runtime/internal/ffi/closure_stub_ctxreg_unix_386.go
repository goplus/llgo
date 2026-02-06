//go:build llgo_pass_ctx_by_reg && unix && 386
// +build llgo_pass_ctx_by_reg,unix,386

package ffi

import "unsafe"

func makeClosureStub(fn, env unsafe.Pointer, stackBytes uint32) unsafe.Pointer {
	_ = stackBytes

	// 386 ctx-reg is mm0. The stub loads env into mm0 and tailcalls fn.
	//
	// Code layout (16 bytes):
	//   mov  eax, imm32(env)
	//   movd mm0, eax
	//   mov  eax, imm32(fn)
	//   jmp  eax
	//   nop
	const stubSize = 16

	p := allocExec(stubSize)
	if p == nil {
		return nil
	}

	code := [...]byte{
		0xB8, 0, 0, 0, 0, // mov eax, imm32(env)
		0x0F, 0x6E, 0xC0, // movd mm0, eax
		0xB8, 0, 0, 0, 0, // mov eax, imm32(fn)
		0xFF, 0xE0, // jmp eax
		0x90, // nop
	}
	copy(unsafe.Slice((*byte)(p), len(code)), code[:])

	*(*uint32)(unsafe.Add(p, 1)) = uint32(uintptr(env))
	*(*uint32)(unsafe.Add(p, 9)) = uint32(uintptr(fn))

	if !protectExec(p, stubSize) {
		return nil
	}
	return p
}
