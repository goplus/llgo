# Plan9 Asm Corpus And Instruction Clusters

This document defines what "complete Plan9 asm support" means for llgo.

We intentionally do **not** aim to implement the full historical Plan 9
assembler language. Instead, we target:

- the subset of Go stdlib `.s` files selected by `go list -json` for a given
  `GOOS/GOARCH`, and
- the operand/addressing forms those files actually use.

## Workflow

1. Scan the corpus with:

   ```sh
   go run ./chore/plan9asmscan -goos linux -goarch amd64 -format md -out /tmp/scan-linux-amd64.md
   go run ./chore/plan9asmscan -goos linux -goarch arm64 -format md -out /tmp/scan-linux-arm64.md
   go run ./chore/plan9asmscan -goos darwin -goarch amd64 -format md -out /tmp/scan-darwin-amd64.md
   go run ./chore/plan9asmscan -goos darwin -goarch arm64 -format md -out /tmp/scan-darwin-arm64.md
   ```

2. Group opcodes into clusters. A cluster is considered **complete** only when:

- parser accepts every file in the corpus for that cluster
- translator can emit `.ll` for those functions
- generated objects link and the relevant std tests pass on:
  - host
  - `dev/docker.sh amd64`
  - `dev/docker.sh arm64`

## Initial Clusters (expected for `internal/bytealg`)

These are the clusters we already know we need for `internal/bytealg` on
`linux/amd64` and `linux/arm64`.

### x86-64 Scalar + Control Flow

Includes:

- register moves and arithmetic (`MOV*`, `ADD*`, `SUB*`, `AND*`, `OR*`, `XOR*`)
- comparisons and tests (`CMP*`, `TEST*`)
- shifts and bit ops (`SHL*`, `SHR*`, `SAR*`, `BSF*`, `BSR*`, `BSWAP*`)
- conditional set/move (`SET*`, `CMOV*`)
- branches (`J*`, `JMP`, `RET`) and labels
- pseudo alignment (`PCALIGN`)

### x86 SIMD (SSE2)

Includes:

- XMM register loads/stores (`MOVOU`)
- vector compare/bitwise (`PCMPEQB`, `PAND`)
- mask extraction (`PMOVMSKB`)
- shuffles/unpacks (`PSHUFL`, `PUNPCKLBW`)

### x86 SIMD (SSE4.2)

Includes:

- substring compare instruction used by stdlib (`PCMPESTRI`)

### x86 SIMD (AVX2)

Includes:

- YMM loads/stores (`VMOVDQU`)
- vector compare/bitwise (`VPCMPEQB`, `VPAND`)
- broadcasts/tests (`VPBROADCASTB`, `VPTEST`)
- mask extraction (`VPMOVMSKB`)
- state management (`VZEROUPPER`)

### arm64 Scalar + Control Flow

Includes:

- moves/arithmetic (`MOV*`, `ADD`, `SUB`, `SUBS`, `ADDS`, `EOR`, `AND`, `ANDS`, `BIC`)
- comparisons (`CMP`, `CMPW`)
- shifts (`LSL`, `LSR`)
- branches (`B*`, `CBZ/CBNZ`, `TBZ`, `RET`) and labels
- conditional select/negate/inc (`CSEL`, `CSET`, `CNEG`, `CINC`)
- bit ops (`RBIT`, `CLZ`, `NEG`)
- pseudo alignment (`PCALIGN`)

### arm64 SIMD (NEON)

Includes:

- vector loads (`VLD1.P`)
- vector compares/bitwise (`VCMEQ`, `VAND`, `VORR`, `VEOR`)
- horizontal reductions (`VADDP`, `VUADDLV`)
- register moves/extract (`VMOV`, lane forms like `V?.D[0]`)

## Current Scan Snapshot

Generated reports are tracked in:

- `doc/runtime/plan9asm-scan/linux-amd64.md`
- `doc/runtime/plan9asm-scan/linux-arm64.md`
- `doc/runtime/plan9asm-scan/darwin-amd64.md`
- `doc/runtime/plan9asm-scan/darwin-arm64.md`

Priority clusters inferred from current scan:

1. `amd64` scalar+bit rounds for crypto:
   `ADCQ/SBBQ`, `RORQ/RORL/ROLQ`, `MULQ/MULXQ`, `CMOVQ*`.
2. `amd64` SIMD crypto set:
   `AESENC/AESENCLAST/AESDEC/AESKEYGENASSIST`, `VPXOR/VPADDD/VPALIGNR`,
   `VMOVDQA`, `PSHUFD/PSHUFB`, `VPSRLQ/VPSLLQ`.
3. `arm64` crypto scalar set:
   `AESE/AESMC/AESD/AESIMC`, `SHA1*`, `SHA256*`, `STP/LDP*`, `ADCS`.
4. `arm64` NEON set:
   `VST1`, `VREV32/VREV64`, `VLD4R` (already identified in `internal/chacha8rand`).
5. Cross-cutting runtime/syscall stubs:
   `JMP/CALL/BL` paths that appear in small trampoline files.
