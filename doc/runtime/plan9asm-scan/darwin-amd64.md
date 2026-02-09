# Plan9 Asm Scan Report (darwin/amd64)

- std packages: `345`
- std packages with `.s`: `37`
- asm files scanned: `61`
- unique ops: `186`
- parser failures: `24`

## Cluster Summary

| cluster | unique ops | hits |
|---|---:|---:|
| x86-scalar | 65 | 18758 |
| x86-bit-shift | 20 | 2905 |
| x86-simd | 58 | 1405 |
| x86-control | 27 | 878 |
| directive | 5 | 682 |
| x86-atomic | 7 | 29 |
| x86-crc | 4 | 16 |

## Unsupported Ops (vs current lowerers)

| op | cluster | hits | example files |
|---|---|---:|---|
| RORQ | x86-bit-shift | 736 | crypto/internal/fips140/sha512/sha512block_amd64.s |
| ROLQ | x86-bit-shift | 696 | crypto/internal/fips140/sha3/sha3_amd64.s |
| AESENC | x86-scalar | 585 | crypto/internal/fips140/aes/gcm/gcm_amd64.s, crypto/internal/fips140/aes/ctr_amd64.s, crypto/internal/fips140/aes/aes_amd64.s |
| RORL | x86-bit-shift | 576 | crypto/internal/fips140/sha256/sha256block_amd64.s |
| ADCQ | x86-scalar | 509 | crypto/internal/fips140/nistec/p256_asm_amd64.s, crypto/internal/fips140/bigmod/nat_amd64.s, crypto/internal/fips140/edwards25519/field/fe_amd64.s, vendor/golang.org/x/crypto/internal/poly1305/sum_amd64.s |
| MOVUPS | x86-scalar | 363 | runtime/duff_amd64.s, crypto/internal/fips140/aes/ctr_amd64.s, crypto/internal/fips140/aes/aes_amd64.s, runtime/preempt_amd64.s |
| MULQ | x86-scalar | 246 | crypto/internal/fips140/nistec/p256_asm_amd64.s, crypto/internal/fips140/bigmod/nat_amd64.s, crypto/internal/fips140/edwards25519/field/fe_amd64.s, vendor/golang.org/x/crypto/internal/poly1305/sum_amd64.s |
| NOTQ | x86-scalar | 212 | crypto/internal/fips140/sha3/sha3_amd64.s, crypto/internal/fips140/sha512/sha512block_amd64.s |
| RORXL | x86-bit-shift | 192 | crypto/internal/fips140/sha256/sha256block_amd64.s |
| RORXQ | x86-bit-shift | 144 | crypto/internal/fips140/sha512/sha512block_amd64.s |
| CALL | x86-control | 103 | crypto/internal/fips140/nistec/p256_asm_amd64.s, crypto/internal/fips140/aes/aes_amd64.s, syscall/asm_darwin_amd64.s, reflect/asm_amd64.s |
| SHRL | x86-bit-shift | 97 | crypto/internal/fips140/sha256/sha256block_amd64.s, internal/bytealg/indexbyte_amd64.s |
| PSHUFD | x86-simd | 94 | crypto/internal/fips140/aes/gcm/gcm_amd64.s, crypto/internal/fips140/sha256/sha256block_amd64.s, crypto/internal/fips140/aes/aes_amd64.s, crypto/internal/fips140/nistec/p256_asm_amd64.s |
| SBBQ | x86-scalar | 78 | crypto/internal/fips140/nistec/p256_asm_amd64.s |
| ADCXQ | x86-scalar | 75 | crypto/internal/fips140/bigmod/nat_amd64.s |
| ADOXQ | x86-scalar | 75 | crypto/internal/fips140/bigmod/nat_amd64.s |
| MULXQ | x86-scalar | 72 | crypto/internal/fips140/bigmod/nat_amd64.s |
| NOTL | x86-scalar | 64 | crypto/internal/fips140/sha256/sha256block_amd64.s |
| ROLL | x86-bit-shift | 64 | crypto/md5/md5block_amd64.s |
| BSWAPL | x86-bit-shift | 63 | crypto/internal/fips140/aes/gcm/gcm_amd64.s, crypto/internal/fips140/sha256/sha256block_amd64.s |
| CMOVQCS | x86-control | 60 | crypto/internal/fips140/nistec/p256_asm_amd64.s |
| PSHUFB | x86-simd | 58 | crypto/internal/fips140/aes/gcm/gcm_amd64.s, crypto/internal/fips140/aes/ctr_amd64.s, crypto/internal/fips140/sha256/sha256block_amd64.s |
| PAND | x86-simd | 53 | crypto/internal/fips140/nistec/p256_asm_amd64.s, crypto/internal/fips140/aes/gcm/gcm_amd64.s, hash/crc32/crc32_amd64.s, internal/bytealg/equal_amd64.s |
| VPSRLQ | x86-simd | 52 | crypto/internal/fips140/sha512/sha512block_amd64.s, crypto/internal/fips140/sha256/sha256block_amd64.s |
| VPXOR | x86-simd | 52 | crypto/internal/fips140/sha256/sha256block_amd64.s, crypto/internal/fips140/sha512/sha512block_amd64.s |
| AESENCLAST | x86-scalar | 45 | crypto/internal/fips140/aes/gcm/gcm_amd64.s, crypto/internal/fips140/aes/ctr_amd64.s, crypto/internal/fips140/aes/aes_amd64.s |
| VMOVDQA | x86-simd | 41 | crypto/internal/fips140/sha256/sha256block_amd64.s, runtime/memmove_amd64.s |
| PADDD | x86-simd | 38 | crypto/internal/fips140/sha256/sha256block_amd64.s, internal/chacha8rand/chacha8_amd64.s |
| SHA256RNDS2 | x86-bit-shift | 32 | crypto/internal/fips140/sha256/sha256block_amd64.s |
| AESKEYGENASSIST | x86-scalar | 31 | crypto/internal/fips140/aes/aes_amd64.s |
| JEQ | x86-control | 29 | internal/bytealg/compare_amd64.s, internal/bytealg/count_amd64.s, internal/bytealg/equal_amd64.s, crypto/internal/fips140/bigmod/nat_amd64.s |
| VPOR | x86-simd | 28 | crypto/internal/fips140/sha512/sha512block_amd64.s, crypto/internal/fips140/sha256/sha256block_amd64.s |
| VPSLLQ | x86-simd | 24 | crypto/internal/fips140/sha512/sha512block_amd64.s |
| IMUL3Q | x86-scalar | 22 | crypto/internal/fips140/edwards25519/field/fe_amd64.s |
| VPADDD | x86-simd | 22 | crypto/internal/fips140/sha256/sha256block_amd64.s |
| VPADDQ | x86-simd | 22 | crypto/internal/fips140/sha512/sha512block_amd64.s |
| VPSHUFB | x86-simd | 20 | crypto/internal/fips140/sha256/sha256block_amd64.s, crypto/internal/fips140/sha512/sha512block_amd64.s |
| VPSRLD | x86-simd | 20 | crypto/internal/fips140/sha256/sha256block_amd64.s |
| CMOVQEQ | x86-control | 18 | crypto/internal/fips140/nistec/p256_asm_amd64.s |
| JNZ | x86-control | 18 | internal/bytealg/indexbyte_amd64.s, internal/runtime/atomic/atomic_amd64.s, runtime/memmove_amd64.s, crypto/internal/fips140/subtle/xor_amd64.s |
| DECQ | x86-scalar | 17 | crypto/internal/fips140/aes/gcm/gcm_amd64.s, crypto/internal/fips140/nistec/p256_asm_amd64.s, crypto/internal/fips140/aes/aes_amd64.s, hash/crc32/crc32_amd64.s |
| VZEROUPPER | x86-simd | 17 | runtime/memmove_amd64.s, internal/bytealg/compare_amd64.s, internal/bytealg/count_amd64.s, internal/bytealg/equal_amd64.s |
| JZ | x86-control | 16 | internal/bytealg/index_amd64.s, internal/bytealg/indexbyte_amd64.s, crypto/internal/fips140/sha512/sha512block_amd64.s, crypto/internal/fips140/subtle/xor_amd64.s |
| PINSRQ | x86-simd | 16 | crypto/internal/fips140/aes/ctr_amd64.s, crypto/internal/fips140/aes/gcm/gcm_amd64.s |
| PSLLDQ | x86-simd | 16 | crypto/internal/fips140/aes/gcm/gcm_amd64.s, crypto/internal/fips140/aes/aes_amd64.s |
| VPALIGNR | x86-simd | 16 | crypto/internal/fips140/sha256/sha256block_amd64.s, crypto/internal/fips140/sha512/sha512block_amd64.s |
| VPERM2F128 | x86-simd | 16 | crypto/internal/fips140/sha512/sha512block_amd64.s |
| NOP | x86-scalar | 14 | crypto/internal/fips140/sha3/sha3_amd64.s, runtime/preempt_amd64.s |
| PALIGNR | x86-simd | 14 | crypto/internal/fips140/sha256/sha256block_amd64.s |
| AESDEC | x86-scalar | 13 | crypto/internal/fips140/aes/aes_amd64.s |
| MOVOA | x86-scalar | 13 | hash/crc32/crc32_amd64.s |
| SHA256MSG1 | x86-bit-shift | 12 | crypto/internal/fips140/sha256/sha256block_amd64.s |
| SHA256MSG2 | x86-bit-shift | 12 | crypto/internal/fips140/sha256/sha256block_amd64.s |
| PCMPEQL | x86-simd | 10 | crypto/internal/fips140/nistec/p256_asm_amd64.s |
| SHUFPS | x86-bit-shift | 10 | crypto/internal/fips140/aes/aes_amd64.s |
| MOVW | x86-scalar | 8 | internal/bytealg/index_amd64.s, runtime/memmove_amd64.s |
| PANDN | x86-simd | 8 | crypto/internal/fips140/nistec/p256_asm_amd64.s |
| VMOVNTDQ | x86-simd | 8 | runtime/memmove_amd64.s |
| VPSHUFD | x86-simd | 8 | crypto/internal/fips140/sha256/sha256block_amd64.s |
| VPSLLD | x86-simd | 8 | crypto/internal/fips140/sha256/sha256block_amd64.s |
| JCC | x86-control | 5 | syscall/asm_darwin_amd64.s |
| SALQ | x86-scalar | 5 | internal/bytealg/count_amd64.s |
| CMOVQNE | x86-control | 4 | crypto/internal/fips140/nistec/p256_asm_amd64.s |
| CMPXCHGQ | x86-atomic | 4 | internal/runtime/atomic/atomic_amd64.s |
| MOVAPS | x86-scalar | 4 | crypto/internal/fips140/aes/aes_amd64.s |
| MOVD | x86-scalar | 4 | internal/bytealg/count_amd64.s, internal/bytealg/indexbyte_amd64.s |
| PREFETCHNTA | x86-simd | 4 | runtime/memmove_amd64.s |
| VPBLENDD | x86-simd | 4 | crypto/internal/fips140/sha512/sha512block_amd64.s |
| VPERM2I128 | x86-simd | 4 | crypto/internal/fips140/sha256/sha256block_amd64.s |
| INCL | x86-scalar | 3 | internal/chacha8rand/chacha8_amd64.s |
| JLS | x86-control | 3 | runtime/memmove_amd64.s |
| JLT | x86-control | 3 | internal/bytealg/indexbyte_amd64.s, internal/bytealg/count_amd64.s |
| PADDL | x86-simd | 3 | crypto/internal/fips140/nistec/p256_asm_amd64.s |
| PINSRB | x86-simd | 3 | crypto/internal/fips140/aes/gcm/gcm_amd64.s |
| REP | x86-scalar | 3 | runtime/memmove_amd64.s |
| ADJSP | x86-scalar | 2 | runtime/preempt_amd64.s |
| CPUID | x86-scalar | 2 | internal/cpu/cpu_x86.s, vendor/golang.org/x/sys/cpu/cpu_gc_x86.s |
| IMULQ | x86-scalar | 2 | vendor/golang.org/x/crypto/internal/poly1305/sum_amd64.s |
| MOVSQ | x86-scalar | 2 | runtime/memmove_amd64.s |
| PBLENDW | x86-simd | 2 | crypto/internal/fips140/sha256/sha256block_amd64.s |
| PSUBL | x86-simd | 2 | crypto/internal/fips140/nistec/p256_asm_amd64.s |
| SFENCE | x86-atomic | 2 | runtime/memmove_amd64.s |
| XGETBV | x86-scalar | 2 | internal/cpu/cpu_x86.s, vendor/golang.org/x/sys/cpu/cpu_gc_x86.s |
| AESDECLAST | x86-scalar | 1 | crypto/internal/fips140/aes/aes_amd64.s |
| AESIMC | x86-scalar | 1 | crypto/internal/fips140/aes/aes_amd64.s |
| ANDB | x86-scalar | 1 | internal/runtime/atomic/atomic_amd64.s |
| CLD | x86-scalar | 1 | runtime/memmove_amd64.s |
| DECL | x86-scalar | 1 | internal/chacha8rand/chacha8_amd64.s |
| MOVSB | x86-scalar | 1 | runtime/memmove_amd64.s |
| PEXTRB | x86-simd | 1 | crypto/internal/fips140/aes/gcm/gcm_amd64.s |
| PINSRD | x86-simd | 1 | crypto/internal/fips140/aes/gcm/gcm_amd64.s |
| POPCNTQ | x86-simd | 1 | internal/bytealg/count_amd64.s |
| POPFQ | x86-simd | 1 | runtime/preempt_amd64.s |
| POPQ | x86-simd | 1 | runtime/preempt_amd64.s |
| PSLLL | x86-simd | 1 | crypto/internal/fips140/aes/gcm/gcm_amd64.s |
| PSRAL | x86-simd | 1 | crypto/internal/fips140/aes/gcm/gcm_amd64.s |
| PSRLL | x86-simd | 1 | crypto/internal/fips140/aes/gcm/gcm_amd64.s |
| PUSHFQ | x86-simd | 1 | runtime/preempt_amd64.s |
| PUSHQ | x86-simd | 1 | runtime/preempt_amd64.s |
| SHLL | x86-bit-shift | 1 | internal/bytealg/indexbyte_amd64.s |
| STD | x86-scalar | 1 | runtime/memmove_amd64.s |
| XADDQ | x86-scalar | 1 | internal/runtime/atomic/atomic_amd64.s |
| XORB | x86-scalar | 1 | crypto/internal/fips140/subtle/xor_amd64.s |

## Top Ops

| op | cluster | hits |
|---|---|---:|
| MOVQ | x86-scalar | 5187 |
| XORQ | x86-scalar | 2844 |
| MOVL | x86-scalar | 1595 |
| ADDQ | x86-scalar | 1581 |
| ADDL | x86-scalar | 1160 |
| XORL | x86-scalar | 990 |
| ANDQ | x86-scalar | 799 |
| MOVOU | x86-scalar | 797 |
| RORQ | x86-bit-shift | 736 |
| ROLQ | x86-bit-shift | 696 |
| AESENC | x86-scalar | 585 |
| RORL | x86-bit-shift | 576 |
| ADCQ | x86-scalar | 509 |
| ANDL | x86-scalar | 466 |
| PXOR | x86-simd | 370 |
| ORQ | x86-scalar | 368 |
| MOVUPS | x86-scalar | 363 |
| TEXT | directive | 346 |
| JMP | x86-control | 296 |
| MULQ | x86-scalar | 246 |
| NOTQ | x86-scalar | 212 |
| DATA | directive | 207 |
| RORXL | x86-bit-shift | 192 |
| SHRQ | x86-bit-shift | 184 |
| PCLMULQDQ | x86-simd | 159 |
| RORXQ | x86-bit-shift | 144 |
| RET | x86-control | 141 |
| CMPQ | x86-scalar | 126 |
| CALL | x86-control | 103 |
| SUBQ | x86-scalar | 99 |
| SHRL | x86-bit-shift | 97 |
| BYTE | directive | 96 |
| LEAQ | x86-scalar | 94 |
| PSHUFD | x86-simd | 94 |
| ORL | x86-scalar | 83 |
| VMOVDQU | x86-simd | 82 |
| SBBQ | x86-scalar | 78 |
| ADCXQ | x86-scalar | 75 |
| ADOXQ | x86-scalar | 75 |
| MULXQ | x86-scalar | 72 |

## Parser Failures (first 40)

- `crypto/internal/boring/bcache/stub.s`: `no TEXT directive found`
- `crypto/internal/fips140/check/checktest/asm.s`: `no TEXT directive found`
- `crypto/sha1/sha1block_amd64.s`: `line 2994: DATA inside TEXT not supported: "DATA K_XMM_AR<>+0(SB)/4, $0x5a827999"`
- `internal/abi/abi_test.s`: `line 3: GLOBL invalid size "$PTRSIZE": "GLOBL internal∕abi·FuncPCTestFnAddr(SB), NOPTR, $PTRSIZE"`
- `internal/abi/stub.s`: `no TEXT directive found`
- `internal/cpu/cpu.s`: `no TEXT directive found`
- `internal/reflectlite/asm.s`: `no TEXT directive found`
- `internal/runtime/sys/empty.s`: `no TEXT directive found`
- `math/big/arith_amd64.s`: `line 28: unsupported operand: "ADDQ $4"`
- `math/dim_amd64.s`: `line 9: unsupported operand: "$~(1<<63)"`
- `math/exp_amd64.s`: `line 1: DATA invalid immediate "$0.5": "DATA exprodata<>+0(SB)/8, $0.5"`
- `math/floor_amd64.s`: `line 3: unsupported operand: "$~(1<<63)"`
- `math/hypot_amd64.s`: `line 3: unsupported operand: "$~(1<<63)"`
- `math/log_amd64.s`: `line 3: unsupported operand: "$~(1<<63)"`
- `os/signal/sig.s`: `no TEXT directive found`
- `runtime/asm_amd64.s`: `line 16: unsupported operand: "$~15"`
- `runtime/debug/debug.s`: `no TEXT directive found`
- `runtime/ints.s`: `no TEXT directive found`
- `runtime/memclr_amd64.s`: `line 88: unsupported operand: "$~31"`
- `runtime/sys_darwin_amd64.s`: `line 62: GLOBL inside TEXT not supported: "GLOBL timebase<>(SB),NOPTR,$(machTimebaseInfo__size)"`
- `runtime/test_amd64.s`: `line 3: unsupported operand: "$~0xf"`
- `vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_amd64.s`: `line 4528: DATA inside TEXT not supported: "DATA ·chacha20Constants<>+0(SB)/4, $0x61707865"`
- `vendor/golang.org/x/net/route/empty.s`: `no TEXT directive found`
- `vendor/golang.org/x/sys/cpu/asm_darwin_x86_gc.s`: `line 3: GLOBL inside TEXT not supported: "GLOBL\t·libc_sysctl_trampoline_addr(SB), RODATA, $8"`
