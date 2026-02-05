# Closure Implementation Notes

This document describes the current LLGo SSA closure implementation (2‑word
closure ABI).

## Goals

- Keep function values pointing to **real symbols** (no wrapper stubs).
- Use a **2‑word closure value** `{fn, env}`.
- Pass closure ctx via a **reserved register** when available; otherwise pass
  it as an implicit first parameter with conditional call sites.
- Treat C function pointers as **first‑class**: store the real C symbol in
  `fn` and avoid wrappers.

## Representation

Closures are lowered to a 2‑field value:

```
type closure struct {
    fn  *func
    env unsafe.Pointer // nil if no ctx
}
```

- `env` points to a context object that stores free variables (a struct with
  captured fields), or is `nil` when no ctx is needed.
- `fn` is the real function symbol (Go or C). For closures it expects ctx
  according to the target’s calling convention (see below).
- There is **no `hasCtx` field**; `env == nil` is the sole indicator.

## Calling Convention

### Targets with a ctx register

Call sites write the env pointer into the reserved ctx register (if non‑nil)
then call the function with its original signature:

```
write_ctx(env)
fn(args...)
```

Closure bodies read the ctx register once at entry and use it as the env base.

### Targets without a ctx register

Call sites branch on `env == nil` and choose the correct signature:

```
if env != nil {
    fn(ctx, args...)
} else {
    fn(args...)
}
```

Closure bodies accept an explicit ctx parameter and use it as the env base.

## getClosurePtr

`getClosurePtr` returns the env pointer:

- On ctx‑register targets it reads the ctx register.
- On no‑reg targets it uses the explicit ctx parameter.

## Context Register Mapping

| GOARCH | Register | Notes |
|---|---|---|
| amd64 | mm0 | disable x87 via `-mno-80387` |
| 386 | mm0 | disable x87 via `-mfpmath=sse -msse2 -mno-80387` |
| arm64 | x26 | reserved via clang target-feature |
| riscv64 | x27 | reserved via clang target-feature |
| riscv32 | x27 | reserved via clang target-feature |
| wasm | - | conditional ctx param |
| arm | - | conditional ctx param |

Native builds reserve the ctx reg via clang target-feature `+reserve-<reg>`
(arm64/riscv64). x86/x86_64 use compiler flags to disable x87 so MM0 is not
clobbered by `long double` operations. Inline asm uses minimal constraints and
does not add side effects or memory clobbers.

## Covered Scenarios

- Plain functions (no env).
- Closures with captured variables.
- Method values / method expressions.
- Interface method values.
- Variadic functions.
- `go:linkname` to C (`C.xxx`) and `llgo:type C` callback parameters.
- `defer` / `go` invocation of closure values.
- `FuncPCABI0` points at the real symbol.
