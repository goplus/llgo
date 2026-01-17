# Closure Implementation Notes

This document describes the current LLGo SSA closure implementation.

## Goals

- Keep function values pointing to real symbols (no wrapper stubs).
- Pass closure ctx via a reserved register when available; otherwise fall back to
  a TLS/global slot.
- Preserve a `funcval`-like layout: `{fn, data}`.

## Representation

Closures are lowered to a 2-field struct:

```
{ fn: *func, data: unsafe.Pointer }
```

- `fn` has the original Go signature (no explicit ctx parameter).
- `data` is:
  - `nil` for plain functions.
  - a pointer to a heap-allocated context for free variables.
  - a type pointer for runtime functions like `structequal`/`arrayequal`.

## Calling a Closure

Calls to closure values emit:

```
write_ctx(data)
fn(args...)
restore_ctx()
```

- `write_ctx` writes to the ctx register or the fallback TLS/global slot.
- The callee reads ctx at function entry (if needed) and caches it in a local.
- For interface method closures, the receiver is passed as the first argument;
  the ctx register is still written for uniform semantics.
- The previous ctx value is restored after the call to avoid corrupting callers.

## Reading Ctx in Go Code

Runtime functions that need to read ctx use the `getClosurePtr` intrinsic:

```go
//go:linkname getClosurePtr llgo.getClosurePtr
func getClosurePtr() unsafe.Pointer

func structequal(p, q unsafe.Pointer) bool {
    t := getClosurePtr()
    x := (*structtype)(t)
    // ... use type info from t
}
```

This allows runtime functions to:
1. Have a clean signature matching the expected closure type
2. Read ctx from the register at runtime
3. Point to real symbols without wrapper stubs

## Notes / Limitations

- ctx register per arch:
  - amd64: r12
  - arm64: x26
  - 386: esi
  - riscv64: x27
  - others: TLS/global fallback
- TLS/global fallback is thread-local on supported OSes; bare-metal/wasm falls
  back to a process-global slot.
- Native builds reserve the ctx register by passing
  `-mllvm --reserve-regs-for-regalloc=<reg>` to clang.
- `FuncPCABI0` and `FuncPCABIInternal` return the real symbol address.


