Proposal draft (prepared from the analysis docs in llgo-closure-ctxreg-docs-20260122, updated 2026-01-22).

# Proposal: LLGo Syscall Intrinsics for Full Go Stdlib Reuse

## Goals

- Reuse Go standard library syscall wrappers without assembly trampolines.
- Provide a small, explicit set of LLGo intrinsics to cover **all** supported OSes.
- Clarify how to handle scheduler hooks (`entersyscall`/`exitsyscall`) without
  generating code at call sites.

## Non-Goals

- Rewriting Go's runtime or syscall package code.
- Supporting JS/WASM syscall (uses `syscall/js` runtime layer, not traditional syscalls).

## Background

Go uses multiple syscall mechanisms depending on platform:

- **Darwin/OpenBSD/iOS**: libc trampolines (`abi.FuncPCABI0(libc_xxx_trampoline)`).
- **Linux/FreeBSD/NetBSD/DragonFly/Android**: raw syscall numbers (`Syscall(SYS_XXX, ...)`).
- **Windows**: DLL proc calls (`LazyDLL`/`LazyProc` + `SyscallN`).
- **Solaris/illumos**: sysvicall6 with libc pointer indirection.
- **AIX**: syscall6 with libc pointer indirection.
- **WASI**: `//go:wasmimport`.
- **Plan 9**: raw syscall numbers with `ErrorString` return type.
- **JS (GOOS=js/wasm)**: no traditional syscall (uses `syscall/js` and runtime shims).

## Proposed Intrinsics

### 1. `llgo.funcPCABI0`

**Purpose:** Convert trampoline functions into C symbol addresses.

- Detect `*_trampoline` symbols with empty bodies.
- Apply name extraction rules:
  - `libc_XXX_trampoline` -> `XXX`
  - `XXX_trampoline` -> `XXX`
- Return the external symbol address as `uintptr`.

### 2. Syscall Intrinsics by Platform Category

#### Category A: `llgo.syscall` (single intrinsic, variadic)

**Purpose:** Implement all libc-trampoline-based syscall wrappers (`syscall`,
`syscall6`, `syscall6X`, `syscallPtr`, `rawSyscall`, `rawSyscall6`) via a single
intrinsic. Uses function pointer from `abi.FuncPCABI0`.

```go
//go:linkname syscall llgo.syscall
func syscall(fn uintptr, args ...uintptr) (r1, r2, err uintptr)
```

**Wrapper policy:** The standard library wrapper symbols (e.g.
`syscall.syscall`, `syscall.syscall6`, `syscall.syscall6X`, `syscall.syscallPtr`,
`syscall.rawSyscall`, `syscall.rawSyscall6`) should be **Go wrappers** in
`runtime/internal/lib` that call `llgo.syscall` with the appropriate argument
count. No additional syscall intrinsics are required.

Behavior:
- Cast `fn` to function pointer and call directly with N arguments.
- Check result == -1 and fetch errno via `__error()` (Darwin/FreeBSD) or `__errno()` (OpenBSD).
- Return `(r1, r2, err)` as required by Go's `syscall` package.

#### Category B: `llgo.Syscall` (Linux, FreeBSD, NetBSD, DragonFly)

**Purpose:** Support syscall-number-based calls. Maps syscall numbers to libc functions.

```go
//go:linkname Syscall llgo.Syscall
func Syscall(trap, a1, a2, a3 uintptr) (r1, r2 uintptr, err Errno)

//go:linkname Syscall6 llgo.Syscall6
func Syscall6(trap, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2 uintptr, err Errno)

//go:linkname RawSyscall llgo.RawSyscall
func RawSyscall(trap, a1, a2, a3 uintptr) (r1, r2 uintptr, err Errno)

//go:linkname RawSyscall6 llgo.RawSyscall6
func RawSyscall6(trap, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2 uintptr, err Errno)
```

Implementation options:
1. **Map to libc** (recommended): Look up libc function by syscall number
2. **Inline syscall**: Generate platform-specific syscall instruction

Android note: Bionic/SECCOMP can block raw syscalls, so libc mapping is safer.

#### Category C: `llgo.sysvicall6` (Solaris, Illumos)

**Purpose:** Support SYSV-style libc calls with pointer indirection.

```go
//go:linkname sysvicall6 llgo.sysvicall6
func sysvicall6(trap, nargs, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2, err uintptr)

//go:linkname rawSysvicall6 llgo.rawSysvicall6
func rawSysvicall6(trap, nargs, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2, err uintptr)
```

The first argument is a pointer to `libcFunc` variable. LLGo should:
1. Dereference to get function pointer
2. Call with the given arguments
3. Fetch errno via `___errno()`

#### Category D: AIX (wrapper around `llgo.syscall`)

**Purpose:** AIX uses libc function pointers plus an explicit `nargs` parameter.
We can implement the standard wrapper in Go and call `llgo.syscall` with the
appropriate number of arguments. No new intrinsic is required.

Pattern in `zsyscall_aix_ppc64.go`:
```go
_, _, e1 := syscall6(uintptr(unsafe.Pointer(&libc_Dup2)), 2, uintptr(old), uintptr(new), 0, 0, 0, 0)
```

`syscall6` should be a Go wrapper that forwards the first `nargs` arguments to
`llgo.syscall` and fetches errno via `_Errno()`.

#### Category E: `llgo.SyscallWindows` (Windows)

**Purpose:** Support Windows DLL procedure calls.

```go
//go:linkname Syscall llgo.SyscallWindows
func Syscall(trap, nargs, a1, a2, a3 uintptr) (r1, r2 uintptr, err Errno)

//go:linkname Syscall6 llgo.Syscall6Windows
func Syscall6(trap, nargs, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2 uintptr, err Errno)

//go:linkname Syscall9 llgo.Syscall9Windows
func Syscall9(trap, nargs, a1, a2, a3, a4, a5, a6, a7, a8, a9 uintptr) (r1, r2 uintptr, err Errno)

// ... Syscall12, Syscall15, Syscall18

//go:linkname SyscallN llgo.SyscallNWindows
func SyscallN(trap uintptr, args ...uintptr) (r1, r2 uintptr, err Errno)
```

Additional runtime support needed:
- `LazyDLL.Load()` → calls `LoadLibraryW`
- `LazyProc.Find()` → calls `GetProcAddress`
- Error handling via `GetLastError()`

#### Category F: `llgo.SyscallPlan9` (Plan 9)

**Purpose:** Support Plan 9 syscalls with `ErrorString` return type.

```go
//go:linkname Syscall llgo.SyscallPlan9
func Syscall(trap, a1, a2, a3 uintptr) (r1, r2 uintptr, err ErrorString)

//go:linkname Syscall6 llgo.Syscall6Plan9
func Syscall6(trap, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2 uintptr, err ErrorString)
```

**Key insight:** Plan 9 is **fully reusable** because `ErrorString` implements `error`:
```go
type ErrorString string
func (e ErrorString) Error() string { return string(e) }

// In zsyscall_plan9_*.go:
func open(path string, mode int) (fd int, err error) {
    r0, _, e1 := Syscall(SYS_OPEN, ...)  // e1 is ErrorString
    if int32(r0) == -1 {
        err = e1  // ErrorString implements error interface
    }
    return
}
```

Error handling: Call `errstr()` on failure to get error string.

#### Category G: WASI

```go
//go:wasmimport wasi_snapshot_preview1 fd_read
func fd_read(fd int32, iovs *iovec, iovsLen size, nread *size) Errno
```

**Compiler support:** Generate WASM import declarations directly. No syscall intrinsics required.

### 3. `llgo.skip` (No-op Call Marker)

**Purpose:** Remove calls while preserving types.

Usage example:

```go
//go:linkname entersyscall llgo.skip
//go:linkname exitsyscall llgo.skip
func entersyscall()
func exitsyscall()
```

Behavior:

- Any call to `llgo.skip` emits no code at call site.
- Symbol declaration is also suppressed.

---

## Complete Platform Reuse Summary

| Package/File | Platform | Can Reuse? | Required Intrinsics |
|--------------|----------|------------|---------------------|
| `zsyscall_darwin_*.go` | Darwin | ✅ 100% | `llgo.funcPCABI0` + `llgo.syscall` |
| `zsyscall_openbsd_*.go` | OpenBSD | ✅ 100% | Same as Darwin |
| `zsyscall_linux_*.go` | Linux | ✅ 100% | `llgo.Syscall` (number mapping) |
| `zsyscall_freebsd_*.go` | FreeBSD | ✅ 100% | Same as Linux |
| `zsyscall_netbsd_*.go` | NetBSD | ✅ 100% | Same as Linux |
| `zsyscall_dragonfly_*.go` | DragonFly | ✅ 100% | Same as Linux |
| `zsyscall_solaris_*.go` | Solaris | ✅ 100% | `llgo.sysvicall6` |
| `zsyscall_aix_*.go` | AIX | ✅ 100% | `llgo.syscall` (Go wrapper) |
| `zsyscall_windows.go` | Windows | ✅ 100% | `llgo.SyscallWindows` + runtime |
| `fs_wasip1.go` | WASI | ✅ 100% | `//go:wasmimport` |
| `syscall_js.go` | JS/WASM | N/A | Uses `syscall/js` package |
| `zsyscall_plan9_*.go` | Plan 9 | ✅ 100% | `llgo.SyscallPlan9` |
| `zsyscall_*.s` | All | ❌ Skip | Assembly not needed |

---

## Errno Retrieval Functions by Platform

| Platform | Function | Notes |
|----------|----------|-------|
| Darwin (macOS/iOS) | `__error()` | Returns `*int` |
| FreeBSD | `__error()` | Same as Darwin |
| DragonFly | `__error()` | Same as Darwin |
| Linux (glibc/musl) | `__errno_location()` | Returns `*int` |
| OpenBSD | `__errno()` | Returns `*int` |
| NetBSD | `__errno()` | Returns `*int` |
| Solaris/Illumos | `___errno()` | Returns `*int` |
| AIX | `_Errno()` | Returns `*int` |
| Windows | `GetLastError()` | Returns error code directly |
| Plan 9 | `errstr()` | Returns error string |

---

## Runtime Trampolines Analysis

The `runtime` package on Darwin/OpenBSD uses its own set of trampolines (separate from syscall package). These are **not blockers** for syscall package reuse since LLGo has its own runtime:

| Category | Trampolines |
|----------|-------------|
| I/O | `write`, `read`, `open`, `close` |
| Memory | `mmap`, `munmap`, `madvise` |
| Threading | `pthread_create`, `pthread_mutex_*`, `pthread_cond_*`, `pthread_attr_*` |
| Time/Sleep | `nanotime`, `usleep` |
| Signals | `raise`, `pthread_kill`, `sigaction`, `sigprocmask` |
| Events | `kevent`, `kqueue` |

For LLGo's runtime, implement these as direct C calls:
```go
// In LLGo runtime (runtime/c package)
//go:linkname write C.write
func write(fd int32, p unsafe.Pointer, n int32) int32
```

---

## Intrinsic Summary Table

| Intrinsic | Platforms | First Arg | Error Handling |
|-----------|-----------|-----------|----------------|
| `llgo.funcPCABI0` | Darwin, OpenBSD | trampoline func | Returns C symbol address |
| `llgo.syscall` | Darwin, OpenBSD | Function pointer | `__error()` / `__errno()` |
| `llgo.Syscall` | Linux, FreeBSD, NetBSD, DragonFly | Syscall number | `__errno_location()` / `__error()` / `__errno()` |
| `llgo.sysvicall6` | Solaris, Illumos | `*libcFunc` | `___errno()` |
| `llgo.syscall` | AIX | `*libcFunc` (via wrapper) | `_Errno()` |
| `llgo.SyscallWindows` | Windows | Proc address | `GetLastError()` |
| `llgo.SyscallPlan9` | Plan 9 | Syscall number | `errstr()` → ErrorString |
| `llgo.skip` | All | N/A | No-op call site + skip declaration |

---

## Implementation Plan

### Phase 1: Darwin/OpenBSD (Proof of Concept)
1. Implement `llgo.funcPCABI0` intrinsic
2. Implement `llgo.syscall` family intrinsics (lowercase)
3. Use `llgo.skip` for `entersyscall`/`exitsyscall`
4. Skip all `.s` files in syscall package
5. Test with `zsyscall_darwin_arm64.go`

### Phase 2: Linux
1. Create syscall number → libc function mapping
2. Implement `llgo.Syscall` (capital S) for numeric syscalls
3. Test with `zsyscall_linux_amd64.go`

### Phase 3: Other Unix-like
1. FreeBSD, NetBSD, DragonFly - reuse Linux intrinsics with platform-specific errno
2. Solaris - implement `llgo.sysvicall6`
3. AIX - implement Go wrapper around `llgo.syscall`

### Phase 4: Windows
1. Implement `LazyDLL`/`LazyProc` in LLGo runtime
2. Implement `Syscall`/`Syscall6`/.../`SyscallN`
3. Test with `zsyscall_windows.go`

### Phase 5: Special Platforms
1. WASI - Support `//go:wasmimport` directive
2. Plan 9 - Implement `llgo.SyscallPlan9` with ErrorString return
3. JS/WASM - Implement `syscall/js` package (no syscall reuse)

---

## Open Questions

- Should we standardize on fixed arity (3/6/9) or use variadic `llgo.syscallN`?
- How much syscall number → libc mapping should be auto-generated from Go's `zsysnum_*` files vs. a maintained table?
- Do we need to preserve scheduler hooks for certain LLGo configurations?

---

## Appendix A: Platform Mechanisms and LLGo Implications

| Platform | Mechanism | Key Go Sources (examples) | LLGo Implication |
|----------|-----------|---------------------------|-----------------|
| Darwin / iOS | libc trampoline | `syscall/zsyscall_darwin_*.go` | `llgo.funcPCABI0` + `llgo.syscall` |
| OpenBSD | libc trampoline | `syscall/zsyscall_openbsd_*.go` | Same as Darwin |
| Linux | raw syscall numbers | `syscall/zsyscall_linux_*.go` | Map syscall numbers → libc |
| Android | raw syscall numbers | `syscall/syscall_linux.go` | Same as Linux, prefer libc for SECCOMP |
| FreeBSD / NetBSD / DragonFly | raw syscall numbers | `syscall/zsyscall_*bsd_*.go` | Same as Linux strategy |
| Solaris / illumos | sysvicall → libc | `syscall/zsyscall_solaris_*.go` | `llgo.sysvicall6` |
| AIX | syscall6 via libc | `syscall/zsyscall_aix_*.go` | `llgo.syscall` (wrapper) |
| Windows | DLL proc calls | `syscall/zsyscall_windows.go` | `llgo.SyscallWindows` + LazyDLL |
| WASI | wasm imports | `syscall/fs_wasip1.go` | `//go:wasmimport` |
| JS (GOOS=js/wasm) | no syscall | `syscall/js` | No syscall reuse |
| Plan 9 | syscall + errstr | `syscall/zsyscall_plan9_*.go` | `llgo.SyscallPlan9` with ErrorString |

## Appendix B: Trampoline Name Extraction Rules

Extraction is based on `*_trampoline` suffix:

```
libc_XXX_trampoline  -> XXX
XXX_trampoline       -> XXX
```

Suggested detection algorithm:

```go
func extractCFunctionName(trampoline string) string {
    if !strings.HasSuffix(trampoline, "_trampoline") {
        return ""
    }
    base := strings.TrimSuffix(trampoline, "_trampoline")
    if strings.HasPrefix(base, "libc_") {
        return strings.TrimPrefix(base, "libc_")
    }
    return base
}
```

## Appendix C: Darwin/OpenBSD Call Chain (Why Intrinsics Work)

Go's syscall path on Darwin/OpenBSD includes multiple layers:

1. `syscall` wrappers call `syscall(abi.FuncPCABI0(libc_xxx_trampoline), ...)`
2. Runtime wrapper `syscall_syscall` builds an args struct
3. `libcCall` + `asmcgocall` switch to system stack
4. `runtime.syscall` trampoline unpacks args and calls libc

LLGo can bypass layers 2-4 by:

- Recognizing `abi.FuncPCABI0(libc_xxx_trampoline)` and returning `@xxx`
- Lowering `syscall()` directly to a libc call with errno handling

## Appendix D: Example Snippets

### D1. Darwin/OpenBSD Wrapper Pattern

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

func libc_lchown_trampoline()
```

### D2. Direct Call Lowering (illustrative)

```llvm
; abi.FuncPCABI0(libc_lchown_trampoline) -> @lchown
%result = call i32 @lchown(ptr %cstr, i32 %uid, i32 %gid)
%is_err = icmp eq i32 %result, -1
br i1 %is_err, label %get_errno, label %done
```

### D3. Windows LazyDLL / Proc Pattern

```go
var modkernel32 = NewLazyDLL("kernel32.dll")
var procReadFile = modkernel32.NewProc("ReadFile")

func ReadFile(handle Handle, buf []byte, done *uint32, ov *Overlapped) (err error) {
    r1, _, e1 := Syscall6(procReadFile.Addr(), 5,
        uintptr(handle), uintptr(unsafe.Pointer(&buf[0])), uintptr(len(buf)),
        uintptr(unsafe.Pointer(done)), uintptr(unsafe.Pointer(ov)), 0)
    if r1 == 0 {
        err = errnoErr(e1)
    }
    return
}
```

### D4. WASI Import Pattern

```go
//go:wasmimport wasi_snapshot_preview1 fd_read
//go:noescape
func fd_read(fd int32, iovs *iovec, iovsLen size, nread *size) Errno
```

### D5. Plan 9 Pattern (Fully Reusable)

```go
// ErrorString implements error interface
type ErrorString string
func (e ErrorString) Error() string { return string(e) }

func open(path string, mode int) (fd int, err error) {
    r0, _, e1 := Syscall(SYS_OPEN, uintptr(unsafe.Pointer(_p0)), uintptr(mode), 0)
    fd = int(r0)
    if int32(r0) == -1 {
        err = e1  // e1 is ErrorString, implements error
    }
    return
}
```

### D6. No-op Call Marker

```go
//go:linkname entersyscall llgo.skip
//go:linkname exitsyscall llgo.skip
func entersyscall()
func exitsyscall()
```
