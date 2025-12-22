# Closure Implementation Notes

This document describes the current LLGo SSA closure implementation.

## Goals

- Pass closure context (ctx) via a **dedicated register** (like Go's official implementation), eliminating stub overhead.
- Keep function values pointing to **real symbols** (no global stub for every closure).
- Preserve a `funcval`-like layout: `{fn, data}`.

## Context Register

The closure context pointer is passed via a dedicated CPU register:

| GOARCH | Register | Constraint |
|--------|----------|------------|
| amd64 | R12 | `{r12}` |
| arm64 | X26 | `{x26}` |
| arm | R8 | `{r8}` |
| 386 | ESI | `{esi}` |
| riscv64 | X27 | `{x27}` |
| wasm | (none) | fallback to global |

For platforms without register support, a module-local global variable `__llgo_closure_ctx` is used as fallback.

### Thread-Local Storage (TLS)

When using the global fallback, TLS is used for thread safety on supported platforms:

| GOOS | TLS Support |
|------|-------------|
| linux, darwin, windows, freebsd, netbsd, openbsd, dragonfly, solaris, illumos, aix, android, ios | ✅ Yes |
| js, wasip1 (wasm) | ❌ No |
| empty / unknown / bare-metal | ❌ No |

Empty GOOS is treated as bare-metal (no TLS, single-threaded safe).

## Closure Representation

Closures are lowered to a 2-field struct:

```
{ fn: *func, data: unsafe.Pointer }
```

- `fn` is the closure function (signature does NOT include ctx parameter).
- `data` is:
  - `nil` for plain functions without free variables.
  - a pointer to a heap-allocated context for closures with free variables.

## Calling a Closure

Before calling a closure, the caller:
1. Writes `data` to the ctx register (inline asm)
2. Calls `fn` directly (no ctx parameter in signature)

```llvm
; Write ctx to register
call void asm sideeffect "", "{r12}"(ptr %data)
; Call function
%result = call i64 %fn(i64 %arg)
```

The closure function reads ctx from the register at entry:
```llvm
%ctx = call ptr asm sideeffect "", "={r12}"()
%captured = load { i64 }, ptr %ctx
```

## Closure Scenarios

### Generates Wrapper (Bound Function)

| Scenario | Wrapper Name | Reason |
|----------|--------------|--------|
| Pointer receiver method value (`s.Add`) | `(*S).Add$bound` | Unpack receiver from ctx |
| Value receiver method value (`s.Inc`) | `S.Inc$bound` | Copy receiver value from ctx |
| Interface method value (`i.Add`) | `interface{...}.Add$bound` | Lookup vtable, extract data |
| Method expression (`(*T).Add`) | `Add$thunk` | Signature adaptor (not ctx-related) |
| goroutine wrapper | `_llgo_routine$N` | Thread entry point, sets ctx register |

### No Wrapper Needed

| Scenario | Reason |
|----------|--------|
| Anonymous closure (no free vars) | `data = nil`, direct call |
| Anonymous closure (with free vars) | Reads ctx from register directly |
| Global function as closure | Direct call, no ctx needed |
| `go:linkname` C function | Direct C call |
| `llgo:link` C function | Direct C call |
| `llgo:type C` callback | C ABI, no ctx register |
| IIFE | Same as anonymous closure |
| defer closure | Same as anonymous closure |
| go closure | Uses `_llgo_routine$N` wrapper for thread setup |
| Closure as parameter | Caller sets ctx register |
| Nested closure | Each level reads from ctx register |

## Bound Wrapper Internals

### Method Value (`s.Add` → `(*S).Add$bound`)

```llvm
define i64 @"(*S).Add$bound"(i64 %arg) {
  %ctx = call ptr asm sideeffect "", "={r12}"()
  %receiver = load ptr, ptr %ctx
  %result = call i64 @"(*S).Add"(ptr %receiver, i64 %arg)
  ret i64 %result
}
```

### Interface Method Value

```llvm
define i64 @"interface{...}.Add$bound"(i64 %arg) {
  %ctx = call ptr asm sideeffect "", "={r12}"()
  %iface = load { ptr, ptr }, ptr %ctx
  %data = call ptr @IfacePtrData(%iface)
  %itab = extractvalue %iface, 0
  %fn = load ptr, getelementptr ptr, ptr %itab, i64 3  ; vtable lookup
  %result = call i64 %fn(ptr %data, i64 %arg)
  ret i64 %result
}
```

## Test Coverage

All scenarios are covered in:
- `test/closure_test.go` - Runtime tests
- `ssa/ssa_test.go` - IR-level tests
- `cl/_testgo/closureall/in.go` - Comprehensive compilation test

## Notes / Limitations

- Python closures are intentionally out of scope.
- The ctx register must be callee-saved and not used for C ABI parameters.
- TinyGo target configurations (`targets/*.json`) define embedded platforms that use fallback.
