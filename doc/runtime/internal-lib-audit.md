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

- `crypto/internal/boring/sig`
- `hash/crc32`
- `internal/abi`
- `internal/bytealg`
- `internal/cpu`
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

Present under `runtime/internal/lib/` but not currently patched (can likely be
deleted after confirming no references):

- `internal/itoa`
- `internal/syscall/unix`

## Package Notes

### `crypto/internal/boring/sig`

Purpose: provides marker symbols ("code signatures") to indicate BoringCrypto /
FIPS-only / standard crypto mode.

LLGO patch:

- `runtime/internal/lib/crypto/internal/boring/sig/sig.go` defines:
  - `BoringCrypto()`
  - `FIPSOnly()`
  - `StandardCrypto()`
- Alt package removes upstream `.s` definitions entirely.

Upstream:

- Go's `crypto/internal/boring/sig` declares these functions and defines them
  in assembly (`sig_*.s`).

Removal analysis:

- Removable if llgo can compile upstream Plan 9 assembly for this package, or
  if we keep a small overlay that provides the Go definitions without patching
  the whole package.

Plan9 asm candidate:

- Yes (assembly is marker-only; no scheduler interaction expected).

### `hash/crc32`

Purpose: CRC-32 checksum (IEEE / Castagnoli / Koopman), used by `hash/crc32`,
`compress/*`, `archive/zip`, etc.

LLGO patch (current state is incomplete):

- `runtime/internal/lib/hash/crc32/crc32.go` implements IEEE CRC only via
  `runtime/internal/clite/zlib`:
  - `MakeTable` panics for non-IEEE.
  - `New`, `Update` panic for non-IEEE tables.
- This is correctness-risky for any code using Castagnoli/Koopman.

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

LLGO patch:

- `runtime/internal/lib/internal/bytealg/bytealg.go` routes to libc where useful:
  - `IndexByte`, `IndexByteString` use `memchr`
  - `Equal` uses `memcmp`
  - `MakeNoZero` allocates unzeroed memory via `runtime.AllocU`
  - Other helpers are simple Go loops.

Upstream:

- Heavy use of Plan 9 assembly (`compare_*.s`, `index_*.s`, etc.) with generic
  Go fallbacks.

Removal analysis:

- Removable if llgo can build upstream `internal/bytealg`:
  - Add Plan 9 asm compilation (preferred for performance).
  - Or force the generic fallbacks (requires careful overlays to avoid pulling
    `.s` into the build graph).
- `MakeNoZero` semantics must remain correct under llgo GC (no leaking of
  uninitialized bytes).

Plan9 asm candidate:

- Yes (pure CPU ops; does not require scheduler, but must obey Go memory model).

### `internal/cpu`

Purpose: CPU feature detection (cpuid, system registers).

LLGO patch:

- `runtime/internal/lib/internal/cpu/cpu_x86.go` implements `cpuid` using a C
  helper (`_wrap/cpu_x86.c`) and `//go:linkname` to `C.llgo_getcpuid`.

Upstream:

- Uses asm on multiple architectures (`cpu_*.s`).

Removal analysis:

- Removable if llgo can compile upstream Plan 9 asm, or if we standardize on
  LLVM/Clang builtins for feature probing across targets.

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

Plan9 asm candidate:

- Yes (atomic instructions; must obey Go memory model; `StorepNoWB` is GC-aware).

### `internal/runtime/maps`

Purpose: internal helpers for the runtime's map implementation.

LLGO patch:

- `runtime/internal/lib/internal/runtime/maps/maps.go` rebinds runtime hooks via
  `//go:linkname` to llgo runtime internals:
  - `fastrand64`, `fatal`
  - `Typedmemmove`, `Typedmemclr`
  - `newobject`, `newarray`
- `mapKeyError` currently returns `nil` (possible correctness gap vs upstream).

Upstream:

- Expects to call into the standard runtime's internal helpers.

Removal analysis:

- Not currently removable unless llgo runtime can expose equivalent internal
  hooks under upstream names, or we avoid patching by providing a compatible
  overlay layer.

Plan9 asm candidate:

- No (mostly runtime hook wiring).

### `internal/runtime/syscall`

Purpose: runtime-level syscall glue (varies by OS/arch).

LLGO patch:

- `runtime/internal/lib/internal/runtime/syscall/syscall_linux_llgo.go` (linux)
  implements `Syscall6` using libc `syscall` and `clite/os.Errno()`.
- This avoids all upstream `asm_linux_*.s` syscall stubs.

Upstream:

- Uses Plan 9 assembly syscall stubs for multiple architectures.

Removal analysis:

- Removable if llgo can compile upstream syscall stubs in Plan 9 asm, provided
  the calling convention matches llgo's expectations.

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

- `runtime/internal/lib/internal/weak/weak.go` and `runtime/internal/lib/weak/weak.go`
  declare runtime hooks via `//go:linkname`:
  - `runtime_registerWeakPointer`
  - `runtime_makeStrongFromWeak`
- `weak/weak.go` uses `runtime/internal/clite/sync/atomic` and llgo runtime internals.

Upstream:

- `internal/weak` does not exist in standard Go (llgo-specific).
- `weak` exists in Go, but depends on runtime support.

Removal analysis:

- `internal/weak`: not removable (llgo-only package).
- `weak`: likely removable only if llgo runtime implements the same public weak
  pointer runtime hooks as upstream.

Plan9 asm candidate:

- No (runtime API integration).

### `sync` and `sync/atomic`

Purpose: synchronization primitives and atomics used pervasively.

LLGO patch:

- `runtime/internal/lib/sync/atomic/*` and `runtime/internal/lib/sync/atomic/*`
  route operations to llgo atomic intrinsics:
  - `llgo.atomicXchg`, `llgo.atomicCmpXchg`, `llgo.atomicAdd`, `llgo.atomicLoad`,
    `llgo.atomicStore`, and/or `llgo.atomicAnd`/`llgo.atomicOr`.
- `runtime/internal/lib/sync/sync.go` uses pthread mutex/rwlock via
  `runtime/internal/clite/pthread/sync` and exposes a subset of the sync API on
  top of that runtime.

Upstream:

- `sync/atomic` uses per-arch assembly stubs and is sensitive to the Go memory model.
- `sync` is tightly coupled to runtime (semaphores, scheduler, race detector).

Removal analysis:

- `sync/atomic`: strong Plan 9 asm candidate; can be removed if llgo can compile
  upstream asm or provide fully-correct Go fallbacks + memory barriers.
- `sync`: not an asm-only problem; removal requires runtime-level integration
  to match upstream `sync` expectations (or to keep using pthread-based sync).

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

- `crypto/internal/boring/sig`
- `hash/crc32` (also needs correctness for non-IEEE polynomials)
- `internal/bytealg`
- `internal/cpu`
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
  - `internal/cpu` (feature probing like CPUID, system registers)
  - `crypto/internal/boring/sig` (marker symbols)
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
