; cpuid helper for llgo's stdlib overlay.
;
; This is used by runtime/internal/lib/internal/cpu/cpu_x86.go via //go:linkname
; to C.llgo_getcpuid. We implement it in LLVM IR to avoid depending on C headers
; or compiler-specific builtins while still emitting the real CPUID instruction.
;
; Signature (C ABI):
;   void llgo_getcpuid(uint32 eax, uint32 ecx, uint32* a, uint32* b, uint32* c, uint32* d)
;
; NOTE: This file is compiled via LLGoFiles using clang, so it must stay compatible
; with the LLVM version shipped with the llgo toolchain.

declare { i32, i32, i32, i32 } @llvm.x86.cpuid(i32, i32)

define void @llgo_getcpuid(i32 %eax, i32 %ecx, ptr %a, ptr %b, ptr %c, ptr %d) {
entry:
  %r = call { i32, i32, i32, i32 } @llvm.x86.cpuid(i32 %eax, i32 %ecx)
  %ra = extractvalue { i32, i32, i32, i32 } %r, 0
  %rb = extractvalue { i32, i32, i32, i32 } %r, 1
  %rc = extractvalue { i32, i32, i32, i32 } %r, 2
  %rd = extractvalue { i32, i32, i32, i32 } %r, 3
  store i32 %ra, ptr %a, align 4
  store i32 %rb, ptr %b, align 4
  store i32 %rc, ptr %c, align 4
  store i32 %rd, ptr %d, align 4
  ret void
}

