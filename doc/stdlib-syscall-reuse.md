# Proposal: Reusing Go Standard Library syscall Code with Zero-Overhead libc Linking

## Summary

This proposal describes a strategy to reuse Go standard library source code (particularly `syscall` and related packages) in LLGo by implementing compiler intrinsics that translate Go's trampoline-based syscall mechanism into direct libc function calls with zero overhead.

## Motivation

Currently, LLGo maintains separate implementations for system call interfaces. The Go standard library already has well-tested, comprehensive syscall implementations across all platforms. By reusing this code directly, we can:

1. **Reduce maintenance burden** - No need to maintain parallel implementations
2. **Improve compatibility** - Automatic support for new syscalls added to Go
3. **Achieve zero overhead** - LLGo's C-compatible stack eliminates the need for stack switching
4. **Leverage existing testing** - Go's extensive test suite validates correctness

## Background: Go's Syscall Mechanism

### Platform Categories

Go uses different syscall mechanisms across platforms:

| Platform | Mechanism | Example |
|----------|-----------|---------|
| Darwin (macOS/iOS) | libc trampoline | `syscall(abi.FuncPCABI0(libc_xxx_trampoline), ...)` |
| OpenBSD | libc trampoline | Same as Darwin |
| Linux | Raw syscall numbers | `Syscall(SYS_XXX, ...)` |
| FreeBSD | Raw syscall numbers | `Syscall(SYS_XXX, ...)` |
| Windows | DLL procedure calls | `Syscall(proc.Addr(), ...)` |
| WASI | wasm imports | `//go:wasmimport wasi_snapshot_preview1 xxx` |

### Darwin/OpenBSD Trampoline Pattern

```go
// zsyscall_darwin_arm64.go
func Lchown(path string, uid int, gid int) (err error) {
    var _p0 *byte
    _p0, err = BytePtrFromString(path)
    if err != nil {
        return
    }
    _, _, e1 := syscall(abi.FuncPCABI0(libc_lchown_trampoline),
                        uintptr(unsafe.Pointer(_p0)), uintptr(uid), uintptr(gid))
    if e1 != 0 {
        err = errnoErr(e1)
    }
    return
}

func libc_lchown_trampoline()

//go:cgo_import_dynamic libc_lchown lchown "/usr/lib/libSystem.B.dylib"
```

The assembly trampoline (`zsyscall_darwin_arm64.s`) simply jumps to the libc function:

```asm
TEXT ·libc_lchown_trampoline(SB),NOSPLIT,$0-0
    JMP libc_lchown(SB)
```

### Key Insight

The `//go:cgo_import_dynamic` directive is specific to Go's linker. For LLGo:
- LLVM's linker naturally resolves external symbols
- We only need to declare the symbol; linking handles the rest
- The trampoline function name encodes the target C function name

## Proposed Design

### Core Compiler Intrinsics

#### 1. `abi.FuncPCABI0` Intrinsic

**LLGo Directive Format:**
```go
//go:linkname FuncPCABI0 llgo.funcPCABI0
func FuncPCABI0(f interface{}) uintptr
```

This intrinsic handles two cases:

**Case A: Trampoline Function**

When the argument is a trampoline function (empty body, name matches `*_trampoline` pattern):
```go
abi.FuncPCABI0(libc_lchown_trampoline)
```

The compiler should:
1. Recognize the `libc_XXX_trampoline` or `XXX_trampoline` naming pattern
2. Extract the C function name (`lchown` or `XXX`)
3. Return the address of external symbol `@lchown`

**Case B: Regular Function/Closure**

When the argument is a regular Go function or closure:
```go
abi.FuncPCABI0(myGoFunction)
```

The compiler should:
1. Return the actual function pointer address
2. Handle closures by returning the code pointer (not the closure context)

**Detection Logic:**

```
if argument is a function reference:
    funcName = get function name
    if funcName ends with "_trampoline" AND function has empty body:
        // Trampoline case
        cFuncName = extractCFunctionName(funcName)
        return address of external symbol @cFuncName
    else:
        // Regular function case
        return function's code pointer
```

**LLVM IR Generation for Trampoline:**
```llvm
; For abi.FuncPCABI0(libc_lchown_trampoline)
; Declare external C function (signature doesn't matter for address-taking)
declare void @lchown(...)

; Return function pointer as integer
%fn_addr = ptrtoint ptr @lchown to i64
```

**LLVM IR Generation for Regular Function:**
```llvm
; For abi.FuncPCABI0(myGoFunction)
%fn_addr = ptrtoint ptr @myGoFunction to i64
```

#### 2. `syscall` Family Intrinsics

The following functions need compiler support:

| Function | Arguments | Return | Notes |
|----------|-----------|--------|-------|
| `syscall` | fn, a1, a2, a3 | r1, r2, err | 3-arg calls |
| `syscall6` | fn, a1-a6 | r1, r2, err | 6-arg calls |
| `syscall6X` | fn, a1-a6 | r1, r2, err | 64-bit result |
| `syscallPtr` | fn, a1, a2, a3 | r1, r2, err | Pointer result |
| `rawSyscall` | fn, a1, a2, a3 | r1, r2, err | No scheduler notify |
| `rawSyscall6` | fn, a1-a6 | r1, r2, err | No scheduler notify |

**LLGo Directive Format:**

```go
//go:linkname syscall llgo.syscall
func syscall(fn, a1, a2, a3 uintptr) (r1, r2, err uintptr)

//go:linkname syscall6 llgo.syscall6
func syscall6(fn, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2, err uintptr)

//go:linkname rawSyscall llgo.rawSyscall
func rawSyscall(fn, a1, a2, a3 uintptr) (r1, r2, err uintptr)

//go:linkname rawSyscall6 llgo.rawSyscall6
func rawSyscall6(fn, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2, err uintptr)
```

**LLVM IR (Indirect Call):**
```llvm
define {i64, i64, i64} @"syscall.syscall"(i64 %fn, i64 %a1, i64 %a2, i64 %a3) {
entry:
    %fn_ptr = inttoptr i64 %fn to ptr
    %result = call i64 %fn_ptr(i64 %a1, i64 %a2, i64 %a3)

    ; Check for error (result == -1)
    %is_err = icmp eq i64 %result, -1
    br i1 %is_err, label %error, label %success

error:
    ; Get errno via platform-specific method
    %errno_ptr = call ptr @__errno_location()  ; Linux/Darwin
    %errno_val = load i32, ptr %errno_ptr
    %errno_ext = zext i32 %errno_val to i64
    ret {i64, i64, i64} {i64 undef, i64 0, i64 %errno_ext}

success:
    ret {i64, i64, i64} {i64 %result, i64 0, i64 0}
}
```

### Zero-Overhead Optimization

When the compiler can prove the function pointer is a constant (which is always the case with `abi.FuncPCABI0`), it should inline the call:

**Before optimization:**
```go
syscall(abi.FuncPCABI0(libc_lchown_trampoline), arg1, arg2, arg3)
```

**After optimization (direct call):**
```llvm
%result = call i64 @lchown(ptr %arg1, i32 %arg2, i32 %arg3)
```

This eliminates the indirect call overhead entirely.

### Platform-Specific Considerations

#### Darwin/OpenBSD

- Trampoline naming: `libc_XXX_trampoline` → `XXX`
- Errno location: `__error()` on Darwin
- All syscalls go through libc

#### Linux

Linux uses raw syscall numbers, not libc trampolines:

```go
// Linux pattern
Syscall(SYS_OPENAT, dirfd, path, flags)
```

**Option A: Map to libc (Recommended)**

Map syscall numbers to corresponding libc functions:

| Syscall Number | libc Function |
|----------------|---------------|
| `SYS_OPENAT` | `openat()` |
| `SYS_READ` | `read()` |
| `SYS_WRITE` | `write()` |

This is simpler and more reliable since LLGo already links against libc.

**Option B: Inline syscall instruction**

Generate architecture-specific syscall instructions:

```llvm
; x86-64
%result = call i64 asm sideeffect "syscall",
    "={rax},{rax},{rdi},{rsi},{rdx},{r10},{r8},{r9}"
    (i64 %nr, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6)

; arm64
%result = call i64 asm sideeffect "svc #0",
    "={x0},{x8},{x0},{x1},{x2},{x3},{x4},{x5}"
    (i64 %nr, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6)
```

Option A is recommended for simplicity.

#### Windows

Windows uses a different pattern with `LazyDLL` and `LazyProc`:

```go
var modkernel32 = NewLazyDLL("kernel32.dll")
var procCloseHandle = modkernel32.NewProc("CloseHandle")

func CloseHandle(handle Handle) (err error) {
    r1, _, e1 := Syscall(procCloseHandle.Addr(), 1, uintptr(handle), 0, 0)
    // ...
}
```

For Windows, LLGo needs to:
1. Support `LazyDLL`/`LazyProc` via runtime library loading
2. Or use LLVM's dllimport mechanism for known system DLLs

#### WASI

WASI already uses `//go:wasmimport` which LLGo should support directly:

```go
//go:wasmimport wasi_snapshot_preview1 fd_read
func fd_read(fd int32, iovs *iovec, iovsLen size, nread *size) Errno
```

This maps directly to WASM import declarations.

## Implementation Plan

### Phase 1: Darwin/OpenBSD Support

1. **Implement `llgo.funcPCABI0` intrinsic**
   - Add intrinsic recognition in compiler
   - Detect trampoline functions by name pattern and empty body
   - Generate external symbol references for trampolines
   - Return regular function pointers for non-trampolines

2. **Implement `llgo.syscall` family intrinsics**
   - `llgo.syscall`, `llgo.syscall6`, `llgo.rawSyscall`, `llgo.rawSyscall6`
   - Generate indirect C function calls
   - Add platform-specific errno retrieval

3. **Register intrinsics in patch system**
   - Add `internal/abi` to `hasAltPkg` or use overlay for `FuncPCABI0`
   - Add `syscall` package functions via overlay

### Phase 2: Linux Support

1. Implement syscall number to libc function mapping
2. Handle `Syscall`/`RawSyscall` with numeric trap arguments
3. Special handling for syscalls without libc equivalents

### Phase 3: Optimization

1. Constant propagation for `FuncPCABI0` results
2. Inline direct calls when function pointer is known
3. Eliminate redundant errno checks

### Phase 4: Windows/WASI Support

1. Implement `LazyDLL`/`LazyProc` runtime support
2. Add `//go:wasmimport` directive support

## Trampoline Name Extraction Rules

| Platform | Pattern | Extraction |
|----------|---------|------------|
| Darwin | `libc_XXX_trampoline` | `XXX` |
| OpenBSD | `libc_XXX_trampoline` | `XXX` |
| Runtime | `pthread_XXX_trampoline` | `pthread_XXX` |
| Runtime | `XXX_trampoline` | `XXX` |

General rule: Remove `_trampoline` suffix, and `libc_` prefix if present.

## Compatibility Notes

### What We Don't Need

1. **`//go:cgo_import_dynamic`** - This is for Go's linker; LLVM handles symbol resolution automatically
2. **Assembly trampolines** - LLGo calls libc directly without intermediate jumps
3. **Stack switching** - LLGo uses C-compatible stack throughout

### What We Need to Handle

1. **Empty function declarations** - `func libc_xxx_trampoline()` must be recognized as trampoline markers
2. **Errno access** - Platform-specific errno location functions
3. **Scheduler integration** - `syscall` vs `rawSyscall` distinction for goroutine scheduling

## Example: Complete Lchown Flow

**Go Source (unchanged):**
```go
func Lchown(path string, uid int, gid int) (err error) {
    var _p0 *byte
    _p0, err = BytePtrFromString(path)
    if err != nil {
        return
    }
    _, _, e1 := syscall(abi.FuncPCABI0(libc_lchown_trampoline),
                        uintptr(unsafe.Pointer(_p0)), uintptr(uid), uintptr(gid))
    if e1 != 0 {
        err = errnoErr(e1)
    }
    return
}
```

**LLGo Compiled (optimized):**
```llvm
define void @"syscall.Lchown"(ptr %path.ptr, i64 %path.len, i32 %uid, i32 %gid, ptr %err.ret) {
    ; BytePtrFromString conversion...
    %cstr = call ptr @runtime.BytePtrFromString(ptr %path.ptr, i64 %path.len)

    ; Direct libc call (zero overhead)
    %result = call i32 @lchown(ptr %cstr, i32 %uid, i32 %gid)

    ; Error handling
    %failed = icmp eq i32 %result, -1
    br i1 %failed, label %error, label %done

error:
    %errno_ptr = call ptr @__error()
    %errno = load i32, ptr %errno_ptr
    ; Convert to error interface...
    br label %done

done:
    ret void
}

declare i32 @lchown(ptr, i32, i32)
declare ptr @__error()
```

## Risks and Mitigations

| Risk | Mitigation |
|------|------------|
| ABI differences between platforms | Test on each target platform; use platform-specific errno functions |
| Missing libc functions for some syscalls | Fall back to inline syscall assembly for Linux |
| Windows DLL loading complexity | Implement minimal LazyDLL runtime or use static imports |
| Vararg functions (open, fcntl, ioctl) | Handle known vararg functions specially |

## Success Criteria

1. Go's `syscall` package tests pass on Darwin/Linux
2. Zero indirect call overhead for constant function pointers
3. No assembly code required for basic syscall support
4. Seamless fallback to libc for all platforms

## References

- Go source: `/src/syscall/zsyscall_darwin_*.go`
- Go runtime: `/src/runtime/sys_darwin.go`
- LLVM calling conventions: https://llvm.org/docs/LangRef.html#calling-conventions
