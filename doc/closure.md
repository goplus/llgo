# Closure Implementation Notes

This document describes the current LLGo SSA closure implementation.

## Goals

- Keep function values pointing to real symbols (no global stub for every closure).
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
  - `nil` for plain functions or wrappers that ignore ctx.
  - a pointer to a heap-allocated context for free variables.
  - a pointer to a heap cell that stores a function pointer (for raw function
    pointer adaptation).

## Calling a Closure

Calls to closure values always emit:

```
write_ctx(data)
fn(args...)
restore_ctx()
```

- `write_ctx` writes to the ctx register or the fallback TLS/global slot.
- The callee reads ctx once at function entry (if it has free vars) and caches it
  in a local.
- For interface method closures, the receiver is passed as the first argument;
  the ctx register is still written for uniform semantics.
- The previous ctx value is restored after the call to avoid corrupting callers.
  This is important for nested closures and for calls that may re-enter Go (e.g.
  callbacks from C/ffi).

## Wrappers

Wrappers exist only for adaptation cases:

- **Legacy explicit-ctx functions**:
  - Name: `__llgo_stub.<fn>$ctx`
  - Signature: `func(args...)` (no explicit ctx)
  - Body: reads ctx register and forwards it as the first argument.
- **Raw function pointers**:
  - Name: `__llgo_stub._llgo_func$<hash>`
  - Signature: `func(args...)`
  - Body: treats ctx as a pointer to a stored function pointer, loads it, calls it.

Regular function declarations are not wrapped.

## Notes / Limitations

- ctx register per arch:
  - amd64: r12
  - arm64: x26
  - 386: esi
  - riscv64: x27
  - others: TLS/global fallback
- TLS/global fallback is thread-local on supported OSes; bare-metal/wasm falls
  back to a process-global slot.
- Native builds reserve the ctx register in clang with `-ffixed-*` to prevent
  register allocation clobbering.
- `FuncPCABI0` points at the real symbol (wrappers only for adaptation).
