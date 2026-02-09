# runtime/internal/lib Patch Audit

This document tracks packages under `runtime/internal/lib/` and whether their
patching can be removed over time.

**How patching works**

- Alt packages live under `runtime/internal/lib/<import-path>/...` and are
  injected as patches by `internal/build/build.go` using the prefix
  `ssa/abi.PatchPathPrefix` (`github.com/goplus/llgo/runtime/internal/lib/`).
- The active patch set is enumerated in `runtime/build.go` (`hasAltPkg`).
- A package is only patched if it is in the dependency graph and in `hasAltPkg`.

**Terminology**

- "Alt package": a replacement for a standard library package, sourced from
  `runtime/internal/lib/...`.
- "Removable": we can delete the patch entry from `runtime/build.go:hasAltPkg`
  and successfully build + test using upstream sources (possibly with overlays).
- "Plan9 asm candidate": upstream uses `.s` files that are typically standalone
  CPU instructions (CRC/atomic/byte ops/syscall) and should be feasible to
  compile in llgo if we add a Plan 9 assembler pipeline.

## Inventory (current `hasAltPkg`)

Patched packages (see `runtime/build.go`):

- `hash/crc32`
- `internal/abi`
- `internal/bytealg`
- `internal/reflectlite`
- `internal/runtime/atomic`
- `internal/runtime/maps`
- `internal/runtime/syscall`
- `internal/weak`
- `reflect`
- `runtime`
- `runtime/internal/syscall`
- `sync`
- `sync/atomic`
- `syscall/js`
- `unique`
- `weak`

Present under `runtime/internal/lib/` but not currently patched (special cases):

- `internal/itoa`
- `internal/syscall/unix`

Notes:

- `internal/itoa` is imported by the patched `reflect` implementation
  (`runtime/internal/lib/reflect/value.go`), so it is currently required even
  though it is not part of `hasAltPkg`.
- `internal/syscall/unix` is not currently imported in this branch, but
  `runtime/internal/lib/runtime/vgetrandom_stub_llgo.go` keeps a stub symbol
  intended to satisfy `//go:linkname` references from that package if/when we
  re-enable code paths that need it.

## Package Notes

### `crypto/internal/boring/sig`

Purpose: provides marker symbols ("code signatures") to indicate BoringCrypto /
FIPS-only / standard crypto mode.

LLGO status (this branch):

- Not patched via `runtime/build.go:hasAltPkg`.
- Uses upstream sources from GOROOT.
- Upstream `.s` is compiled via llgo's Plan 9 asm pipeline.

Upstream:

- Go's `crypto/internal/boring/sig` declares these functions and defines them
  in assembly (`sig_*.s`).

Removal analysis:

- Removed from `hasAltPkg` in this branch. Remaining risk is keeping Plan 9 asm
  support working across Go updates.

Plan9 asm candidate:

- Yes (assembly is marker-only; no scheduler interaction expected).

### `hash/crc32`

Purpose: CRC-32 checksum (IEEE / Castagnoli / Koopman), used by `hash/crc32`,
`compress/*`, `archive/zip`, etc.

LLGO patch (baseline):

- `runtime/internal/lib/hash/crc32` provides a full generic Go implementation
  (simple + slicing-by-8) and intentionally avoids per-arch assembly for now.

Upstream:

- Has per-arch assembly fast paths (`crc32_*.s`) plus full Go fallbacks.

Removal analysis:

- Strong candidate to remove patch if we can build upstream:
  - Add Plan 9 asm compilation for `hash/crc32` (preferred for performance).
  - Or ensure the upstream Go fallbacks are selected (overlay out asm usage).
  - Or implement full (non-IEEE) CRC in pure Go in the alt package (if we want
    to keep patching).

Plan9 asm candidate:

- Yes (CRC instructions; no scheduler interaction).

Status notes (this branch):

- Plan 9 asm translation for `hash/crc32` is enabled by default on `arm64` and
  `amd64` in ABI mode 0 (set `LLGO_PLAN9ASM_PKGS=0` to disable, which re-enables
  the alt patch to keep builds working).
- In ABI mode 2, we currently rely on the alt package
  `runtime/internal/lib/hash/crc32` to avoid slice-ABI mismatches at the asm
  boundary.
- On darwin/arm64:
  - Upstream `crc32_arm64.s` is translated, using `llvm.aarch64.crc32*`
    intrinsics (with correct operand types for B/H forms).
  - `dev/llgo.sh test -abi 0 ./test/std/hash/crc32/...` passes.
- On linux/amd64 (docker):
  - Upstream `crc32_amd64.s` is translated, including `DATA`/`GLOBL` constant
    tables and SSE4.2 CRC32 + PCLMULQDQ vector code paths.
  - `dev/docker.sh amd64 dev/llgo.sh test -abi 0 ./test/std/hash/crc32/...` passes.
- Implementation details:
  - `.s` parsing now supports `DATA`/`GLOBL` and C-style `/* ... */` comments.
  - Result slot FP offsets are computed with a word-aligned padding between args
    and results to match the Go assembler layout (needed by
    `castagnoliSSE42Triple`).

### `internal/abi`

Purpose: internal ABI and type metadata helpers used broadly by stdlib/runtime.

LLGO patch:

- `runtime/internal/lib/internal/abi/abi.go` binds stdlib `internal/abi` to
  llgo runtime ABI types (`github.com/goplus/llgo/runtime/abi`) and llgo
  intrinsics:
  - `FuncPCABI0` via `//go:linkname FuncPCABI0 llgo.funcPCABI0`
  - `Type` and `InterfaceType` mapped to llgo's ABI types
  - `TypeOf` reimplemented in terms of llgo `abi.Type`

Upstream:

- Uses runtime's internal ABI type layout and compiler intrinsics.

Removal analysis:

- Not currently removable without aligning llgo runtime ABI with upstream and
  supporting the same compiler intrinsics (`FuncPCABI*`, escape-analysis hooks).

Plan9 asm candidate:

- No (primarily ABI/type system integration, not an asm-only problem).

### `internal/bytealg`

Purpose: low-level byte/string primitives used by `bytes`, `strings`, `regexp`,
etc. Upstream uses per-arch assembly for speed.

LLGO patch (baseline):

- `runtime/internal/lib/internal/bytealg/bytealg.go` routes to libc where useful:
  - `IndexByte`, `IndexByteString` use `memchr`
  - `Equal` uses `memcmp`
  - `Compare` uses `memcmp` (clamped to -1/0/+1)
  - Other helpers are simple Go loops.

Std tests:

- `test/std/bytes` and `test/std/strings` are copied from `llgo-std-test` to
  exercise the common fast-path APIs (notably `bytes.Compare` and
  `strings.Compare`).

Upstream:

- Heavy use of Plan 9 assembly (`compare_*.s`, `index_*.s`, etc.) with generic
  Go fallbacks.

Removal analysis:

- For darwin/arm64, upstream asm can be used by llgo when Plan 9 asm translation
  is enabled for this package and the alt patch is disabled to avoid duplicate
  symbols.
- `MakeNoZero` must exist (upstream implements it in runtime via `go:linkname`);
  llgo provides a runtime implementation (currently using `AllocU`).

Plan9 asm candidate:

- Yes, but high effort: amd64 uses SSE/AVX2/SSE4.2 (e.g. `PCMPESTRI`) and arm64
  uses NEON vector ops. Supporting upstream `.s` without patching likely
  requires a much more complete Plan 9 asm pipeline than the current minimal
  prototype.

Status notes (this branch):

- On darwin/arm64, Plan 9 asm translation for `internal/bytealg` is enabled by
  default in ABI mode 0 (set `LLGO_PLAN9ASM_PKGS=0` to disable):
  - We translate and compile upstream `.s` files directly (including exported
    `TEXT ·Foo` stubs). No extra wrappers are generated.
  - `dev/llgo.sh test -abi 0 ./test/std/bytes/...` and
    `dev/llgo.sh test -abi 0 ./test/std/strings/...` pass.
- In ABI mode 2, we currently rely on the alt package
  `runtime/internal/lib/internal/bytealg` to avoid slice-ABI mismatches at the
  asm boundary.
- `runtime.memequal_varlen` is still translate-only (closure ABI via `R26`).
- The arm64 CFG translator was updated to split blocks at terminators (not just
  labels), which is required for stdlib-style fallthrough after conditional
  branches.
- Minimal NEON clusters implemented so far (arm64, `internal/bytealg/count`):
  - `VLD1.P`, `VCMEQ`, `VAND`, `VADDP` (mask-style elementwise add),
    `VUADDLV`, `VEOR`, `VADD` (scalar D[0] accumulate), `VMOV` (broadcast and
    D[0] extract).
- Additional arm64 clusters added for `internal/bytealg/indexbyte`:
  - NZCV flag tracking for `ADDS`/`SUBS`/`CMP` to support carry-based branches
    (`BHS`/`BLS`/`HI`/`LO`).
  - Scalar ops: `LSL`, `LSR` (reg shift masked), `NEG`, `RBIT`, `CLZ`.
  - NEON ops: `VORR`, `VADDP` (pairwise add for `.B16` and `.D2`), `VMOV`
    broadcast for `.S4`.
- `internal/build/plan9asm.go` signature/layout logic now supports stdlib-style
  FP offsets for strings and slices by flattening them into header words:
  - string: base, len
  - slice: base, len, cap
- Actual translation of the bytealg opcode corpus is still incomplete (SIMD,
  control-flow, and ABIInternal-heavy files remain the blocker).

### `internal/cpu`

Purpose: CPU feature detection (cpuid, system registers).

LLGO status (this branch):

- Not patched via `runtime/build.go:hasAltPkg`.
- Uses upstream sources from GOROOT.
- Upstream `.s` is compiled via llgo's Plan 9 asm pipeline.

Upstream:

- Uses asm on multiple architectures (`cpu_*.s`).

Removal analysis:

- Removed from `hasAltPkg` in this branch. Remaining risk is supporting the
  relevant `.s` files across platforms (notably `cpu_x86.s`).

Plan9 asm candidate:

- Yes (feature probing; no scheduler interaction).

### `internal/reflectlite`

Purpose: subset of reflect used by runtime and parts of stdlib without pulling
full `reflect`.

LLGO patch:

- Multiple files (`value.go`, `type.go`, `reflectlite.go`) use `//go:linkname`
  to llgo runtime internals like:
  - `ChanLen`, `MapLen`
  - `New`, `IfaceE2I`, `Typedmemmove`
  - `Implements`
- Ties reflectlite behavior to llgo ABI types (`github.com/goplus/llgo/runtime/abi`)
  and llgo runtime implementation (`github.com/goplus/llgo/runtime/internal/runtime`).

Upstream:

- Relies on exact runtime layouts, compiler intrinsics, and (sometimes) small
  assembly shims.

Removal analysis:

- Not currently removable without making llgo runtime match upstream runtime
  internals and linknames closely, or by replacing with overlays that redirect
  those internal hooks.

Plan9 asm candidate:

- No (dominant issues are ABI/runtime integration, not `.s`).

Status notes (this branch):

- Added runtime-side linkname shims to keep reflect/reflectlite offset and
  runtime hooks centralized in `runtime` instead of scattering implementations
  in leaf packages:
  - `reflect.resolveNameOff`
  - `reflect.resolveTypeOff`
  - `internal/reflectlite.resolveNameOff`
  - `internal/reflectlite.resolveTypeOff`
  - `internal/reflectlite.unsafe_New`
  - `internal/reflectlite.ifaceE2I`
  - `internal/reflectlite.typedmemmove`
- This removes the previous immediate link errors when trying upstream
  `internal/reflectlite`, but behavior is still not fully compatible (for
  example `test/std/time` regresses in `errors.As` paths), so the alt patch is
  still required for now.

### `internal/runtime/atomic`

Purpose: runtime-internal atomics, including variants with special GC behavior.

LLGO patch:

- `runtime/internal/lib/internal/runtime/atomic/atomic.go` implements a small
  subset on top of the patched `sync/atomic`:
  - `LoadAcquintptr`, `StoreReluintptr`
  - `StorepNoWB` (no write barrier)
  - pointer CAS/store helpers

Upstream:

- Uses per-arch assembly and carefully-defined memory order semantics.

Removal analysis:

- Removable if llgo can compile upstream atomics assembly, or if llgo intrinsics
  fully cover upstream semantics (including no-write-barrier behavior).
- Current status in this branch:
  - `arm64` and `amd64`, ABI mode 0/1: upstream `.s` translation is enabled by
    default and the alt patch is disabled.
  - ABI mode 2 still uses the alt package.

Validation notes:

- Local darwin/arm64:
  - `./dev/llgo.sh run -a -abi 0 ./chore/abi0demo` -> `907060870`
  - `./dev/llgo.sh run -a -abi 1 ./chore/abi0demo` -> `907060870`
  - `./dev/llgo.sh test -abi 0 ./test/std/hash/crc32/...` PASS
  - `./dev/llgo.sh test -abi 1 ./test/std/hash/crc32/...` PASS
- Docker arm64:
  - `./dev/docker.sh arm64 ./dev/llgo.sh test -abi 0 ./test/std/hash/crc32/...` PASS

Plan9 asm candidate:

- Yes (atomic instructions; must obey Go memory model; `StorepNoWB` is GC-aware).

### `internal/runtime/maps`

Purpose: internal helpers for the runtime's map implementation.

LLGO patch:

- ABI mode 0/1 on `arm64`/`amd64`: package patching is disabled and upstream
  `internal/runtime/maps` is used.
- ABI mode 2 (and other arches for now): keeps using
  `runtime/internal/lib/internal/runtime/maps/maps.go`, which rebinds runtime
  hooks via `//go:linkname` to llgo runtime internals:
  - `fastrand64`, `fatal`
  - `Typedmemmove`, `Typedmemclr`
  - `newobject`, `newarray`
  - `mapKeyError` currently returns `nil` (possible correctness gap vs upstream).

Upstream:

- Expects to call into the standard runtime's internal helpers.

Removal analysis:

- ABI mode 0/1 (`arm64`/`amd64`): removed from alt patching path.
- ABI mode 2 and other arches: still patched.

Plan9 asm candidate:

- No (mostly runtime hook wiring).

### `internal/runtime/syscall`

Purpose: runtime-level syscall glue (varies by OS/arch).

LLGO patch:

- `runtime/internal/lib/internal/runtime/syscall/syscall_linux_llgo.go` (linux)
  implements `Syscall6` using libc `syscall` and `clite/os.Errno()`.
- This avoids all upstream `asm_linux_*.s` syscall stubs.
- ABI mode 0/1 on `arm64`/`amd64`: patching is disabled and upstream
  `internal/runtime/syscall` asm is translated.

Upstream:

- Uses Plan 9 assembly syscall stubs for multiple architectures.

Removal analysis:

- ABI mode 0/1 (`arm64`/`amd64`): removed from alt patching path via upstream
  asm translation.
- Translation status:
  - `amd64`: `SYSCALL` + `JLS` path is lowered.
  - `arm64`: `SVC` + `CMN` + `BCC` path is lowered.
  - Raw syscall instructions are modeled through libc `syscall` + `cliteErrno`
    normalization in the translator, then existing asm post-processing computes
    `(r1, r2, errno)` layout.
- ABI mode 2 and other arches: still patched.

Plan9 asm candidate:

- Yes (raw syscalls; generally no scheduler interaction in the stub itself).

### `runtime/internal/syscall`

Purpose: llgo-specific runtime syscall package (does not exist upstream).

LLGO patch:

- `runtime/internal/lib/runtime/internal/syscall/syscall_linux_llgo.go` (linux)
  provides `Syscall6` via libc `syscall`.

Removal analysis:

- Not removable unless llgo runtime architecture changes; this is not a standard
  library patch but a llgo-defined package.

### `internal/weak` and `weak`

Purpose: weak pointers support.

LLGO patch:

- `internal/weak` remains llgo-only.
- `weak`:
  - ABI mode 0/1 on `arm64`/`amd64`: package patching is disabled and upstream
    `weak` is used.
  - ABI mode 2 (and other arches for now): keeps using
    `runtime/internal/lib/weak/weak.go`.
- Runtime now provides upstream weak hooks via `//go:linkname`:
  - `weak.runtime_registerWeakPointer`
  - `weak.runtime_makeStrongFromWeak`

Upstream:

- `internal/weak` does not exist in standard Go (llgo-specific).
- `weak` exists in Go, but depends on runtime support.

Removal analysis:

- `internal/weak`: not removable (llgo-only package).
- `weak`: ABI mode 0/1 (`arm64`/`amd64`) removed from alt patching path;
  ABI mode 2 and other arches remain patched.

Plan9 asm candidate:

- No (runtime API integration).

### `sync` and `sync/atomic`

Purpose: synchronization primitives and atomics used pervasively.

LLGO patch:

- `sync/atomic`:
  - ABI mode 0/1 on `arm64`/`amd64`: upstream `asm.s` is translated and linked,
    and package patching is disabled.
  - ABI mode 2 (and other arches for now): keeps using
    `runtime/internal/lib/sync/atomic/*`.
- `sync`:
  - ABI mode 0/1 on `arm64`/`amd64`: package patching is disabled and upstream
    `sync` is used.
  - ABI mode 2 (and other arches for now): keeps using
    `runtime/internal/lib/sync/*`.

Upstream:

- `sync/atomic` uses per-arch assembly stubs and is sensitive to the Go memory model.
- `sync` is tightly coupled to runtime (semaphores, scheduler, race detector).

Removal analysis:

- `sync/atomic`: for ABI mode 0/1 (`arm64`/`amd64`) this is now switched to
  upstream asm translation; remaining work is ABI mode 2 and other arches.
- `sync`: for ABI mode 0/1 (`arm64`/`amd64`) this is now switched to upstream
  package usage; remaining work is ABI mode 2 and other arches.

Plan9 asm candidate:

- `sync/atomic`: Yes.
- `sync`: No.

### `syscall/js`

Purpose: JS/Wasm interop.

LLGO patch:

- `runtime/internal/lib/syscall/js/emval.go` binds to emscripten/embind glue via
  `//go:linkname` into `C.llgo_emval_*` and uses `runtime/internal/embind`.

Upstream:

- Uses wasm/js-specific assembly and runtime integration.

Removal analysis:

- Not currently removable; llgo's JS glue is fundamentally different from upstream.

### `unique`

Purpose: unique values/handles (used by stdlib features).

LLGO patch:

- `runtime/internal/lib/unique/unique.go` uses `//go:linkname` to
  `runtime_registerUniqueMapCleanup` and contains darwin stubs (`zllgo_stub_darwin.go`).

Removal analysis:

- Potentially removable if llgo runtime fully supports upstream unique cleanup
  hooks without patching.

Plan9 asm candidate:

- No (runtime hook wiring).

### `reflect` and `runtime`

Purpose: core runtime and reflection.

LLGO patch:

- Large, deeply integrated replacements under:
  - `runtime/internal/lib/reflect`
  - `runtime/internal/lib/runtime`
- Patching is not merely to avoid assembly; it rewires ABI/runtime internals.

Removal analysis:

- Not currently removable. Even with Plan 9 asm support, upstream `runtime` and
  parts of `reflect` depend on Go's goroutine stack model, ABI, stack maps, and
  GC invariants.

Plan9 asm candidate:

- No (asm is the easy part; the runtime model compatibility is the blocker).

## Next Candidates to Evaluate (removal-focused)

These are the most likely patches to remove via Plan 9 assembly support or
generic fallbacks, because their upstream asm is mostly CPU-instruction-level:

- `hash/crc32` (also needs correctness for non-IEEE polynomials)
- `internal/bytealg`
- `internal/runtime/atomic`
- `internal/runtime/syscall`
- `sync/atomic`

## Upstream Assembly: Dependency Classification (for Plan 9 asm integration)

This is a rough guide for which upstream `.s` files are likely "easy" vs "hard"
to support in llgo.

Easy: leaf CPU primitives

- Typical characteristics: no calls into the scheduler, no stack growth logic,
  no goroutine-local state; just CPU instructions with well-defined memory
  ordering.
- Candidate packages from the current patch set:
  - `sync/atomic` and `internal/runtime/atomic` (atomics and barriers)
  - `internal/bytealg` (memcmp/memchr/index/compare helpers)
  - `hash/crc32` (CRC instructions / table updates)
  - `internal/cpu` (feature probing like CPUID, system registers) (already unpatched)
  - `crypto/internal/boring/sig` (marker symbols) (already unpatched)
- Caveat: atomics must match the Go memory model (ordering and alignment).

Easy: raw syscall stubs

- Typical characteristics: minimal wrappers around `syscall`/`svc` instructions,
  returning raw register results and errno; usually do not call
  `entersyscall`/`exitsyscall` directly (those are typically handled by higher
  layers in Go's syscall/runtime code).
- Candidate packages from the current patch set:
  - `internal/runtime/syscall` (upstream has `asm_linux_*.s` stubs)

Hard: ABI/stack/GC integration

- Typical characteristics: manipulate stack frames, spill registers according
  to Go ABI, or require stack maps / write barriers to be correct; may assume
  the upstream goroutine stack model.
- Candidate packages from the current patch set:
  - `runtime` (upstream runtime is dominated by this)
  - parts of `reflect` (dynamic call machinery and ABI bridging)
