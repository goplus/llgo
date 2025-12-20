# Closure Implementation Notes

This document describes the current LLGo SSA closure implementation.

## Goals

- Keep function values pointing to **real symbols** (no global stub for every
  closure).
- Preserve a `funcval`-like layout: `{fn, data}`.
- Use an explicit `ctx` parameter in the call ABI (no runtime branching).

## Representation

Closures are lowered to a 2-field struct:

```
{ fn: *func, data: unsafe.Pointer }
```

- `fn` is always a function whose signature **includes** a `__llgo_ctx`
  parameter.
- `data` is:
  - `nil` for plain functions or wrappers that ignore ctx.
  - a pointer to a heap-allocated context for free variables.
  - a pointer to a heap cell that stores a function pointer (for `func` values
    represented as raw function pointers).

## Calling a Closure

`Builder.Call` always emits:

```
fn(ctx, args...)
```

There is no runtime `ctx==nil` check and no sentinel. Any function value that
does not naturally accept a ctx is adapted at conversion time (see below).

## Function Value -> Closure Wrappers

To keep the explicit-ctx ABI while avoiding mismatched calls:

- **Function declarations** without ctx are wrapped by a thin adapter:
  - Name: `__llgo_stub.<fn>` (see `closureStub`)
  - Signature: `func(__llgo_ctx unsafe.Pointer, args...)`
  - Body: ignores ctx, calls the original function.
  - Linkage: `linkonce`
- **Function pointers** use a generic wrapper:
  - Name: `__llgo_stub._llgo_func$<hash>`
  - Signature: `func(__llgo_ctx unsafe.Pointer, args...)`
  - Body: treats `__llgo_ctx` as a pointer to a stored function pointer, loads
    it, and calls it.
  - Linkage: `linkonce`

This is the only remaining use of the `__llgo_stub.` prefix; it is no longer
used to generate a global stub for every closure. The prefix and `__llgo_ctx`
names are defined alongside each other in `ssa/package.go`.

## Interface Method Values

Interface method signatures in `go/types` include a receiver. When turning an
interface method into a closure:

- The receiver parameter is dropped from the closure signature.
- The resulting closure is built with `{fn, data}` and will be wrapped if it
  does not already accept `__llgo_ctx`.

## Covered Scenarios

- Plain functions (no free variables).
- Closures with captured variables (`__llgo_ctx`).
- Method values / method expressions.
- Interface method values (receiver dropped).
- Variadic functions (`__llgo_va_list`).
- `go:linkname` to C (`C.xxx`) and `llgo:type C` callback parameters.
- `defer` / `go` invocation of closure values.
- `FuncPCABI0` points at the real symbol (wrappers only for ctx adaptation).

## Tests

SSA unit tests cover:

- Closure values with and without ctx.
- Dynamic closure call path (always ctx).
- Closure signatures derived from interface methods (receiver removed).

Runtime tests (via `gentests`) validate generated IR for runtime and testdata.

## Notes / Limitations

- Python closures are intentionally out of scope for now.
