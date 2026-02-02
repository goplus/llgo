# Closure Implementation Notes

This document describes the LLGo SSA closure implementation.

## Goals

- Keep function values pointing to real symbols (no wrapper stubs).
- Pass closure ctx via a reserved register when available; otherwise pass
  it as an implicit first parameter with conditional call sites.
- Represent closures as pointers to objects with inline env fields.

## Representation

Closures are lowered to a pointer to a heap/const object:

```
type funcval struct {
    fn     *func
    hasCtx uintptr
    env    // inline, variadic
}

type closure = *funcval
```

- The runtime/ABI only sees `*funcval` (a pointer), never the struct value.
- `fn` always has the original Go signature (no explicit ctx parameter).
- `hasCtx` is a fixed-size flag word (0/1) to keep a stable header size and to
  support conditional calling on targets without a ctx register.
- `env` is stored inline immediately after the header.
- For plain functions, there are no env fields (object size == 2 pointers).
- For runtime helpers (e.g. `structequal`/`arrayequal`/`typehashFromCtx`), `env`
  typically contains a single type pointer.

**Nil/Equality:** a closure value is a pointer. `nil` is a null pointer, and
comparisons (`==`/`!=`) compare the closure pointer directly (not the `fn`
field). This avoids dereferencing nil closures.

## Calling Convention

Calls to closure values emit (when a ctx register is available):

```
write_ctx(env_ptr)
fn(args...)
```

- `env_ptr` is computed as `closure_ptr + 2*ptrSize` (skip `fn` + `hasCtx`).
- `write_ctx` writes to the ctx register.
- The callee reads ctx at function entry (register or implicit param)
  and caches it.
- No restore is needed after the call.

On targets without a ctx register, closure calls use a conditional call based
on `hasCtx`:

```
if hasCtx {
    fn(ctx, args...)
} else {
    fn(args...)
}
```

## Reading Ctx in Go Code

Runtime functions that need to read ctx use the `getClosurePtr` intrinsic:

```go
//go:linkname getClosurePtr llgo.getClosurePtr
func getClosurePtr() unsafe.Pointer

func structequal(p, q unsafe.Pointer) bool {
    t := getClosurePtr() // returns env[0] (the first env slot value)
    x := (*structtype)(t)
    // ... use type info from t
}
```

Semantics:

- On ctx-register targets, `getClosurePtr` reads the ctx register, treats it as
  a pointer to the env slot area, **loads env[0]**, and returns that value.
- On no-register targets, runtime helpers use an explicit `ctx` parameter and
  read `*(**T)(ctx)` (env[0] is passed as the first slot).

## Context Register by Architecture

| GOARCH   | Register | Notes |
|----------|----------|-------|
| amd64    | mm0      | Use `-msse2` to keep MMX free |
| 386      | mm0      | Use `-msse2` to keep MMX free |
| arm64    | x26      | Reserved via target-feature |
| riscv64  | x27      | Reserved via target-feature |
| wasm     | -        | Uses conditional ctx param |
| arm      | -        | Uses conditional ctx param |

## Register Access Semantics

- `llvm.read_register`/`llvm.write_register` are used on targets that support
  reserving a general register via target-feature (arm64/riscv64). This lets
  the backend use the reserved register directly without extra moves.
- The read is intentionally performed once at function entry and cached.
  LLVM may legally move the read across calls because it has no side effects.
  This is safe on callee-saved targets (arm64/riscv64) since the ABI requires
  callees to preserve the register value.
- On x86/x86_64, MMX regs are caller-saved and LLVM intrinsic support is
  limited. The x86 path is treated as a separate special case and keeps
  inline asm with side effects (and memory clobber) to prevent reordering
  across calls, since caller-saved regs may be clobbered by C calls.

## Notes

- Native builds reserve the ctx register using target features
  (`+reserve-<reg>`) on platforms that support it (arm64/riscv64). For x86/x86_64,
  `-msse2` is used to keep MMX regs free for the ctx register.
- `FuncPCABI0` and `FuncPCABIInternal` return the real symbol address.
- Interface method closures pass receiver as first argument; ctx register
  is still written for uniform semantics.
- Targets without a ctx register use a conditional call based on `hasCtx` to
  decide whether to pass an implicit env parameter.

## `__llgo_closure_const$...` Constants

You will see many globals like:

```
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr"
    = private constant { ptr, i64 }
      { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", i64 0 }
```

These are **constant closure objects** (funcval) emitted into read‑only data.
They serve two purposes:

1. **Carry env without allocation.** The closure ABI requires a pointer to a
   `funcval` with inline env. For helpers like `typehashFromCtx`,
   `structequal`, `arrayequal`, or `memequal*`, the env is usually a single
   type pointer. Emitting a constant `funcval` avoids heap allocation and keeps
   startup deterministic.
2. **Dedup/identity.** Each unique `(fn, env...)` pair gets its own constant
   symbol, so the closure pointer is stable and can be reused by type metadata
   (e.g. map hashers and equal funcs) across the program.

The suffix `.<n>` appears when multiple distinct closure values are derived
from the same function (different env types/instances). This is an intentional
optimization and part of the ABI representation.
