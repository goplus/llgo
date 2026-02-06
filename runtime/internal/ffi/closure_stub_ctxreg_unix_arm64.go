//go:build llgo_pass_ctx_by_reg && unix && arm64
// +build llgo_pass_ctx_by_reg,unix,arm64

package ffi

import "unsafe"

func makeClosureStub(fn, env unsafe.Pointer) unsafe.Pointer {
	// AArch64 stub layout (48 bytes):
	//   stp x26, x30, [sp, #-16]!
	//   adr x16, lit
	//   ldr x26, [x16]        ; env
	//   ldr x17, [x16, #8]    ; fn
	//   blr x17
	//   ldp x26, x30, [sp], #16
	//   ret
	//   nop                  ; pad to 8-byte align
	// lit:
	//   .quad env
	//   .quad fn
	const stubSize = 48

	p := allocExec(stubSize)
	if p == nil {
		return nil
	}

	insn := [...]uint32{
		0xa9bf7bfa, // stp x26, x30, [sp, #-16]!
		0x100000f0, // adr x16, 0x20
		0xf940021a, // ldr x26, [x16]
		0xf9400611, // ldr x17, [x16, #8]
		0xd63f0220, // blr x17
		0xa8c17bfa, // ldp x26, x30, [sp], #16
		0xd65f03c0, // ret
		0xd503201f, // nop
	}
	copy(unsafe.Slice((*uint32)(p), len(insn)), insn[:])

	*(*uintptr)(unsafe.Add(p, 0x20)) = uintptr(env)
	*(*uintptr)(unsafe.Add(p, 0x28)) = uintptr(fn)

	clearICache(p, stubSize)
	if !protectExec(p, stubSize) {
		return nil
	}
	clearICache(p, stubSize)
	return p
}
