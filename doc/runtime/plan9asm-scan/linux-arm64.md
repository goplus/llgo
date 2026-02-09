# Plan9 Asm Scan Report (linux/arm64)

- std packages: `342`
- std packages with `.s`: `32`
- asm files scanned: `54`
- unique ops: `161`
- parser failures: `19`

## Cluster Summary

| cluster | unique ops | hits |
|---|---:|---:|
| arm64-scalar | 114 | 2380 |
| arm64-neon | 15 | 364 |
| arm64-control | 9 | 353 |
| directive | 5 | 232 |
| arm64-bit-shift | 6 | 47 |
| arm64-atomic | 12 | 38 |

## Unsupported Ops (vs current lowerers)

| op | cluster | hits | example files |
|---|---|---:|---|
| AESE | arm64-scalar | 228 | crypto/internal/fips140/aes/ctr_arm64.s, crypto/internal/fips140/aes/aes_arm64.s |
| AESMC | arm64-scalar | 208 | crypto/internal/fips140/aes/ctr_arm64.s, crypto/internal/fips140/aes/aes_arm64.s |
| STP | arm64-scalar | 173 | runtime/duff_arm64.s, runtime/memmove_arm64.s, crypto/internal/fips140/bigmod/nat_arm64.s, crypto/internal/fips140/edwards25519/field/fe_arm64.s |
| FMOVD | arm64-scalar | 52 | math/exp_arm64.s, math/dim_arm64.s, math/floor_arm64.s, math/modf_arm64.s |
| AESIMC | arm64-scalar | 46 | crypto/internal/fips140/aes/aes_arm64.s |
| JMP | arm64-scalar | 43 | sync/atomic/asm.s, crypto/internal/fips140/bigmod/nat_arm64.s, hash/crc32/crc32_arm64.s, runtime/asm.s |
| SUB | arm64-scalar | 42 | internal/bytealg/index_arm64.s, runtime/memmove_arm64.s, runtime/sys_linux_arm64.s, crypto/internal/fips140/aes/aes_arm64.s |
| CBNZ | arm64-control | 32 | internal/runtime/atomic/atomic_arm64.s, internal/bytealg/equal_arm64.s, runtime/sys_linux_arm64.s, crypto/internal/fips140/sha256/sha256block_arm64.s |
| VST1 | arm64-neon | 27 | crypto/internal/fips140/aes/aes_arm64.s, crypto/internal/fips140/aes/ctr_arm64.s, internal/chacha8rand/chacha8_arm64.s, crypto/internal/fips140/subtle/xor_arm64.s |
| EORW | arm64-scalar | 24 | crypto/internal/fips140/aes/aes_arm64.s, crypto/internal/fips140/subtle/xor_arm64.s |
| SHA1H | arm64-scalar | 20 | crypto/sha1/sha1block_arm64.s |
| SHA1SU0 | arm64-scalar | 16 | crypto/sha1/sha1block_arm64.s |
| SHA1SU1 | arm64-scalar | 16 | crypto/sha1/sha1block_arm64.s |
| SHA256H | arm64-scalar | 16 | crypto/internal/fips140/sha256/sha256block_arm64.s |
| SHA256H2 | arm64-scalar | 16 | crypto/internal/fips140/sha256/sha256block_arm64.s |
| STPW | arm64-scalar | 15 | crypto/internal/fips140/aes/aes_arm64.s |
| ADDS | arm64-scalar | 14 | crypto/internal/fips140/aes/ctr_arm64.s, crypto/internal/fips140/bigmod/nat_arm64.s, internal/bytealg/indexbyte_arm64.s |
| AESD | arm64-scalar | 14 | crypto/internal/fips140/aes/aes_arm64.s |
| ADC | arm64-scalar | 13 | crypto/internal/fips140/aes/ctr_arm64.s, crypto/internal/fips140/bigmod/nat_arm64.s |
| BL | arm64-control | 13 | runtime/sys_linux_arm64.s |
| FSUBD | arm64-scalar | 13 | math/exp_arm64.s, math/modf_arm64.s |
| SHA256SU0 | arm64-scalar | 12 | crypto/internal/fips140/sha256/sha256block_arm64.s |
| SHA256SU1 | arm64-scalar | 12 | crypto/internal/fips140/sha256/sha256block_arm64.s |
| CALL | arm64-scalar | 10 | reflect/asm_arm64.s, runtime/sys_linux_arm64.s |
| SHA1P | arm64-scalar | 10 | crypto/sha1/sha1block_arm64.s |
| FCMPD | arm64-scalar | 9 | math/exp_arm64.s |
| FMADDD | arm64-scalar | 9 | math/exp_arm64.s |
| LDPW | arm64-scalar | 9 | crypto/internal/fips140/aes/aes_arm64.s |
| FMULD | arm64-scalar | 8 | math/exp_arm64.s |
| LDAXRW | arm64-atomic | 8 | internal/runtime/atomic/atomic_arm64.s, runtime/sys_linux_arm64.s |
| VREV32 | arm64-neon | 8 | crypto/internal/fips140/sha256/sha256block_arm64.s, crypto/sha1/sha1block_arm64.s |
| VREV64 | arm64-neon | 8 | crypto/internal/fips140/sha512/sha512block_arm64.s |
| MUL | arm64-scalar | 7 | crypto/internal/fips140/bigmod/nat_arm64.s, runtime/sys_linux_arm64.s |
| ADCS | arm64-scalar | 6 | crypto/internal/fips140/bigmod/nat_arm64.s |
| CMPW | arm64-scalar | 5 | internal/bytealg/compare_arm64.s, internal/runtime/atomic/atomic_arm64.s, runtime/sys_linux_arm64.s |
| LDAXR | arm64-atomic | 5 | internal/runtime/atomic/atomic_arm64.s |
| LSR | arm64-bit-shift | 5 | internal/bytealg/indexbyte_arm64.s, math/exp_arm64.s, crypto/internal/fips140/edwards25519/field/fe_arm64.s |
| MRS | arm64-scalar | 5 | internal/cpu/cpu_arm64.s, internal/runtime/sys/dit_arm64.s |
| SHA1C | arm64-scalar | 5 | crypto/sha1/sha1block_arm64.s |
| SHA1M | arm64-scalar | 5 | crypto/sha1/sha1block_arm64.s |
| STLXR | arm64-atomic | 5 | internal/runtime/atomic/atomic_arm64.s |
| UMULH | arm64-scalar | 4 | crypto/internal/fips140/bigmod/nat_arm64.s |
| VDUP | arm64-neon | 4 | crypto/sha1/sha1block_arm64.s |
| FMSUBD | arm64-scalar | 3 | math/exp_arm64.s |
| LDAXRB | arm64-atomic | 3 | internal/runtime/atomic/atomic_arm64.s |
| LSLW | arm64-bit-shift | 3 | crypto/internal/fips140/aes/aes_arm64.s |
| VLD4R | arm64-neon | 3 | internal/chacha8rand/chacha8_arm64.s |
| ANDS | arm64-scalar | 2 | internal/bytealg/count_arm64.s, internal/bytealg/indexbyte_arm64.s |
| CBNZW | arm64-control | 2 | runtime/sys_linux_arm64.s |
| FADDD | arm64-scalar | 2 | math/exp_arm64.s |
| FCSELD | arm64-scalar | 2 | math/exp_arm64.s |
| FCVTZSD | arm64-scalar | 2 | math/exp_arm64.s |
| FDIVD | arm64-scalar | 2 | math/exp_arm64.s |
| FMOVS | arm64-scalar | 2 | crypto/sha1/sha1block_arm64.s |
| FRINTZD | arm64-scalar | 2 | math/floor_arm64.s, math/modf_arm64.s |
| LDAR | arm64-scalar | 2 | internal/runtime/atomic/atomic_arm64.s |
| LDCLRALW | arm64-scalar | 2 | internal/runtime/atomic/atomic_arm64.s |
| LDORALW | arm64-scalar | 2 | internal/runtime/atomic/atomic_arm64.s |
| MOVH | arm64-scalar | 2 | runtime/memmove_arm64.s |
| MSR | arm64-scalar | 2 | internal/runtime/sys/dit_arm64.s |
| SCVTFD | arm64-scalar | 2 | math/exp_arm64.s |
| UBFX | arm64-scalar | 2 | internal/runtime/sys/dit_arm64.s |
| ANDSW | arm64-scalar | 1 | crypto/internal/fips140/aes/aes_arm64.s |
| CASALD | arm64-atomic | 1 | internal/runtime/atomic/atomic_arm64.s |
| CBZW | arm64-control | 1 | runtime/sys_linux_arm64.s |
| CSELW | arm64-scalar | 1 | crypto/internal/fips140/aes/aes_arm64.s |
| DMB | arm64-atomic | 1 | runtime/atomic_arm64.s |
| FABSD | arm64-scalar | 1 | math/exp_arm64.s |
| FMAXD | arm64-scalar | 1 | math/dim_arm64.s |
| FMIND | arm64-scalar | 1 | math/dim_arm64.s |
| FNMSUBD | arm64-scalar | 1 | math/exp_arm64.s |
| FNMULD | arm64-scalar | 1 | math/exp_arm64.s |
| FRINTMD | arm64-scalar | 1 | math/floor_arm64.s |
| FRINTPD | arm64-scalar | 1 | math/floor_arm64.s |
| LDADDALD | arm64-scalar | 1 | internal/runtime/atomic/atomic_arm64.s |
| LDCLRALD | arm64-scalar | 1 | internal/runtime/atomic/atomic_arm64.s |
| LDORALD | arm64-scalar | 1 | internal/runtime/atomic/atomic_arm64.s |
| MADD | arm64-scalar | 1 | crypto/internal/fips140/edwards25519/field/fe_arm64.s |
| NOP | arm64-scalar | 1 | runtime/sys_linux_arm64.s |
| PRFM | arm64-scalar | 1 | crypto/internal/fips140/sha512/sha512block_arm64.s |
| STLR | arm64-scalar | 1 | internal/runtime/atomic/atomic_arm64.s |
| STLRB | arm64-scalar | 1 | internal/runtime/atomic/atomic_arm64.s |
| TBNZ | arm64-control | 1 | crypto/internal/fips140/aes/aes_arm64.s |
| UDIV | arm64-scalar | 1 | runtime/sys_linux_arm64.s |
| VLD1R | arm64-neon | 1 | internal/chacha8rand/chacha8_arm64.s |

## Top Ops

| op | cluster | hits |
|---|---|---:|
| MOVD | arm64-scalar | 519 |
| AESE | arm64-scalar | 228 |
| AESMC | arm64-scalar | 208 |
| TEXT | directive | 197 |
| STP | arm64-scalar | 173 |
| RET | arm64-control | 157 |
| LDP | arm64-scalar | 118 |
| VMOV | arm64-neon | 111 |
| MOVW | arm64-scalar | 95 |
| CMP | arm64-scalar | 92 |
| VLD1 | arm64-neon | 77 |
| B | arm64-control | 62 |
| CBZ | arm64-control | 54 |
| VADD | arm64-neon | 54 |
| FMOVD | arm64-scalar | 52 |
| ADD | arm64-scalar | 49 |
| AESIMC | arm64-scalar | 46 |
| BNE | arm64-scalar | 44 |
| VEOR | arm64-neon | 44 |
| JMP | arm64-scalar | 43 |
| SUB | arm64-scalar | 42 |
| SVC | arm64-scalar | 42 |
| MOVBU | arm64-scalar | 40 |
| REV | arm64-bit-shift | 34 |
| CBNZ | arm64-control | 32 |
| TBZ | arm64-control | 31 |
| MOVWU | arm64-scalar | 28 |
| VST1 | arm64-neon | 27 |
| BEQ | arm64-scalar | 25 |
| EORW | arm64-scalar | 24 |
| SHA1H | arm64-scalar | 20 |
| AND | arm64-scalar | 19 |
| MOVB | arm64-scalar | 19 |
| BHI | arm64-scalar | 18 |
| DATA | directive | 17 |
| MOVHU | arm64-scalar | 17 |
| SHA1SU0 | arm64-scalar | 16 |
| SHA1SU1 | arm64-scalar | 16 |
| SHA256H | arm64-scalar | 16 |
| SHA256H2 | arm64-scalar | 16 |

## Parser Failures (first 40)

- `crypto/internal/boring/bcache/stub.s`: `no TEXT directive found`
- `crypto/internal/fips140/aes/gcm/gcm_arm64.s`: `line 13: invalid reg in reg list "[ACC0.B16]": "ACC0.B16"`
- `crypto/internal/fips140/check/checktest/asm.s`: `no TEXT directive found`
- `crypto/internal/fips140/nistec/p256_asm_arm64.s`: `line 62: invalid reg in reg list "(t0, t1)": "t0"`
- `crypto/md5/md5block_arm64.s`: `line 5: unsupported operand: "$~63"`
- `internal/abi/abi_test.s`: `line 3: GLOBL invalid size "$PTRSIZE": "GLOBL internal∕abi·FuncPCTestFnAddr(SB), NOPTR, $PTRSIZE"`
- `internal/abi/stub.s`: `no TEXT directive found`
- `internal/cpu/cpu.s`: `no TEXT directive found`
- `internal/reflectlite/asm.s`: `no TEXT directive found`
- `internal/runtime/sys/empty.s`: `no TEXT directive found`
- `math/big/arith_arm64.s`: `line 113: unsupported operand: "$~0x3"`
- `os/signal/sig.s`: `no TEXT directive found`
- `runtime/asm_arm64.s`: `line 49: DATA inside TEXT not supported: "DATA\truntime·mainPC+0(SB)/8,$runtime·main<ABIInternal>(SB)"`
- `runtime/debug/debug.s`: `no TEXT directive found`
- `runtime/ints.s`: `no TEXT directive found`
- `runtime/memclr_arm64.s`: `line 80: unsupported operand: "$~0"`
- `runtime/preempt_arm64.s`: `line 23: invalid reg in reg list "(F0, F1)": "F0"`
- `runtime/rt0_linux_arm64.s`: `line 37: DATA inside TEXT not supported: "DATA _rt0_arm64_linux_lib_argc<>(SB)/8, $0"`
- `vendor/golang.org/x/crypto/chacha20/chacha_arm64.s`: `line 11: unsupported operand: "$~255"`
