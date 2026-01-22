# Go Standard Library Syscall Mechanism Analysis by Platform

This document analyzes how Go implements system calls across different platforms, with a focus on whether LLGo can reuse this code by implementing appropriate compiler intrinsics.

## Executive Summary

| Platform | Mechanism | LLGo Compatibility | Notes |
|----------|-----------|-------------------|-------|
| Darwin (macOS/iOS) | libc trampoline | ✅ Excellent | Direct libc calls |
| OpenBSD | libc trampoline | ✅ Excellent | Same as Darwin |
| Linux | Raw syscall instruction | ⚠️ Needs mapping | Map to libc or inline asm |
| FreeBSD | Raw syscall instruction | ⚠️ Needs mapping | Same as Linux |
| NetBSD | Raw syscall instruction | ⚠️ Needs mapping | Same as Linux |
| DragonFly | Raw syscall instruction | ⚠️ Needs mapping | Same as Linux |
| Windows | DLL procedure calls | 🔧 Special handling | LazyDLL/LazyProc pattern |
| Solaris/illumos | libc via runtime | ✅ Good | Jumps to runtime syscall |
| AIX | libc via runtime | ✅ Good | Similar to Solaris |
| Plan 9 | Raw syscall + errstr | ❌ Special | Unique error handling |
| WASI | wasmimport | ✅ Native | Direct WASM imports |

---

## Trampoline Statistics

| Location | Platform | Count | Notes |
|----------|----------|-------|-------|
| `syscall/zsyscall_darwin_*.go` | Darwin | ~123 | syscall package trampolines |
| `syscall/zsyscall_openbsd_*.go` | OpenBSD | ~116 | syscall package trampolines |
| `runtime/sys_darwin_*.s` | Darwin | ~44 | runtime trampolines (open, read, write, mmap, etc.) |
| `runtime/sys_openbsd_*.s` | OpenBSD | ~31 | runtime trampolines |
| Total | Darwin+OpenBSD | ~946 | All trampoline declarations |

**Key Finding:** There are TWO levels of trampolines:
1. **syscall package trampolines** - Simple `JMP libc_xxx(SB)` instructions
2. **runtime trampolines** - More complex, handle argument unpacking and errno retrieval

---

## Platform Details

### 1. Darwin (macOS/iOS) - ANALYZED ✅

**Mechanism:** libc trampoline via `abi.FuncPCABI0`

**Source Files:**
- `syscall/zsyscall_darwin_arm64.go` - Go wrapper code
- `syscall/zsyscall_darwin_arm64.s` - Assembly trampolines
- `runtime/sys_darwin.go` - Runtime syscall implementation

**Pattern:**
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

**Assembly (zsyscall_darwin_arm64.s):**
```asm
TEXT ·libc_lchown_trampoline(SB),NOSPLIT,$0-0
    JMP libc_lchown(SB)
```

**Runtime (sys_darwin.go):**
```go
//go:linkname syscall_syscall syscall.syscall
//go:nosplit
func syscall_syscall(fn, a1, a2, a3 uintptr) (r1, r2, err uintptr) {
    args := struct{ fn, a1, a2, a3, r1, r2, err uintptr }{fn, a1, a2, a3, r1, r2, err}
    entersyscall()
    libcCall(unsafe.Pointer(abi.FuncPCABI0(syscall)), unsafe.Pointer(&args))
    exitsyscall()
    return args.r1, args.r2, args.err
}
```

**LLGo Strategy:**
1. Implement `llgo.funcPCABI0` intrinsic to detect `libc_xxx_trampoline` pattern
2. Extract C function name: `libc_lchown_trampoline` → `lchown`
3. Return address of external symbol `@lchown`
4. Implement `llgo.syscall` family to make indirect C calls via function pointer

**Key Insight:** The `//go:cgo_import_dynamic` directive is NOT needed for LLGo - LLVM's linker naturally resolves external symbols.

---

### 2. OpenBSD - ANALYZED ✅

**Mechanism:** libc trampoline (same pattern as Darwin)

**Source Files:**
- `syscall/syscall_openbsd_libc.go` - Go wrapper code
- `syscall/zsyscall_openbsd_amd64.s` - Assembly trampolines
- `runtime/sys_openbsd3.go` - Runtime syscall implementation

**Key Difference from Darwin:**
OpenBSD 7.5+ no longer supports indirect syscalls. The `syscallInternal` function reroutes specific syscalls to libc stubs:

```go
// syscall_openbsd_libc.go
func syscallInternal(trap, a1, a2, a3 uintptr) (r1, r2 uintptr, err Errno) {
    if trap == SYS_IOCTL {
        return syscallX(abi.FuncPCABI0(libc_ioctl_trampoline), a1, a2, a3)
    }
    return 0, 0, ENOSYS
}
```

**Assembly Pattern (zsyscall_openbsd_amd64.s):**
```asm
TEXT ·libc_getgroups_trampoline(SB),NOSPLIT,$0-0
    JMP libc_getgroups(SB)
TEXT ·libc_setgroups_trampoline(SB),NOSPLIT,$0-0
    JMP libc_setgroups(SB)
// ... many more trampolines
```

**LLGo Strategy:** Same as Darwin - the trampoline pattern is identical.

---

### 3. Linux - ANALYZED ✅

**Mechanism:** Raw syscall instruction with syscall numbers

**Source Files:**
- `syscall/zsyscall_linux_amd64.go` - Go wrapper code
- `syscall/asm_linux_amd64.s` - Assembly syscall wrappers
- `internal/runtime/syscall/asm_linux_*.s` - Low-level syscall

**Pattern:**
```go
// zsyscall_linux_amd64.go
func faccessat(dirfd int, path string, mode uint32) (err error) {
    var _p0 *byte
    _p0, err = BytePtrFromString(path)
    if err != nil {
        return
    }
    _, _, e1 := Syscall(SYS_FACCESSAT, uintptr(dirfd), uintptr(unsafe.Pointer(_p0)), uintptr(mode))
    if e1 != 0 {
        err = errnoErr(e1)
    }
    return
}
```

**Assembly (asm_linux_amd64.s):**
```asm
// func rawVforkSyscall(trap, a1, a2, a3 uintptr) (r1, err uintptr)
TEXT ·rawVforkSyscall(SB),NOSPLIT|NOFRAME,$0-48
    MOVQ    a1+8(FP), DI
    MOVQ    a2+16(FP), SI
    MOVQ    a3+24(FP), DX
    MOVQ    $0, R10
    MOVQ    $0, R8
    MOVQ    $0, R9
    MOVQ    trap+0(FP), AX  // syscall entry
    POPQ    R12 // preserve return address
    SYSCALL
    PUSHQ   R12
    // ... error handling

// func rawSyscallNoError(trap, a1, a2, a3 uintptr) (r1, r2 uintptr)
TEXT ·rawSyscallNoError(SB),NOSPLIT,$0-48
    MOVQ    a1+8(FP), DI
    MOVQ    a2+16(FP), SI
    MOVQ    a3+24(FP), DX
    MOVQ    trap+0(FP), AX  // syscall entry
    SYSCALL
    MOVQ    AX, r1+32(FP)
    MOVQ    DX, r2+40(FP)
    RET

// func gettimeofday(tv *Timeval) (err uintptr) - uses vDSO
TEXT ·gettimeofday(SB),NOSPLIT,$0-16
    MOVQ    tv+0(FP), DI
    MOVQ    $0, SI
    MOVQ    runtime·vdsoGettimeofdaySym(SB), AX
    TESTQ   AX, AX
    JZ fallback
    CALL    AX
    // ... vDSO path
fallback:
    MOVL    $SYS_gettimeofday, AX
    SYSCALL
    // ...
```

**Special Functions:**
- `rawVforkSyscall` - Special handling for vfork (preserves return address)
- `rawSyscallNoError` - Syscalls that don't return errors
- `gettimeofday` - Uses vDSO for optimization

**LLGo Strategy Options:**

**Option A: Map to libc (Recommended)**
Map syscall numbers to corresponding libc functions:
| Syscall Number | libc Function |
|----------------|---------------|
| `SYS_OPENAT` | `openat()` |
| `SYS_READ` | `read()` |
| `SYS_WRITE` | `write()` |
| `SYS_FACCESSAT` | `faccessat()` |

**Option B: Inline syscall instruction**
Generate architecture-specific inline assembly:
```llvm
; x86-64
%result = call i64 asm sideeffect "syscall",
    "={rax},{rax},{rdi},{rsi},{rdx},{r10},{r8},{r9}"
    (i64 %nr, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6)
```

**Recommendation:** Option A is simpler and more maintainable.

---

### 4. FreeBSD - ANALYZED ✅

**Mechanism:** Raw syscall instruction (same as Linux)

**Source Files:**
- `syscall/asm_freebsd_arm64.s` - Assembly syscall wrappers
- `syscall/asm_unix_amd64.s` - Shared with DragonFly/NetBSD

**Assembly (asm_freebsd_arm64.s):**
```asm
#define SYS_syscall 0

// func Syscall(trap uintptr, a1, a2, a3 uintptr) (r1, r2, err uintptr)
TEXT ·Syscall(SB),NOSPLIT,$0-56
    BL  runtime·entersyscall<ABIInternal>(SB)
    MOVD    trap+0(FP), R8  // syscall entry
    MOVD    a1+8(FP), R0
    MOVD    a2+16(FP), R1
    MOVD    a3+24(FP), R2
    SVC $SYS_syscall
    BCC ok
    // error handling...
ok:
    MOVD    R0, r1+32(FP)
    MOVD    R1, r2+40(FP)
    MOVD    ZR, err+48(FP)
    BL  runtime·exitsyscall<ABIInternal>(SB)
    RET
```

**LLGo Strategy:** Same as Linux - map to libc or use inline syscall.

---

### 5. NetBSD/DragonFly - ANALYZED ✅

**Mechanism:** Raw syscall instruction

**Source Files:**
- `syscall/asm_unix_amd64.s` - Shared between DragonFly, FreeBSD, NetBSD

**Assembly (asm_unix_amd64.s):**
```asm
//go:build dragonfly || freebsd || netbsd

TEXT ·Syscall(SB),NOSPLIT,$0-56
    CALL    runtime·entersyscall<ABIInternal>(SB)
    MOVQ    trap+0(FP), AX  // syscall entry
    MOVQ    a1+8(FP), DI
    MOVQ    a2+16(FP), SI
    MOVQ    a3+24(FP), DX
    SYSCALL
    JCC ok
    // error handling...
ok:
    MOVQ    AX, r1+32(FP)
    MOVQ    DX, r2+40(FP)
    MOVQ    $0, err+48(FP)
    CALL    runtime·exitsyscall<ABIInternal>(SB)
    RET
```

**LLGo Strategy:** Same as Linux/FreeBSD.

---

### 6. Solaris/illumos - ANALYZED ✅

**Mechanism:** Jumps to runtime implementations which use libc

**Source Files:**
- `syscall/asm_solaris_amd64.s` - Assembly stubs
- `runtime/syscall_solaris.go` - Runtime implementations

**Assembly (asm_solaris_amd64.s):**
```asm
// System calls for solaris/amd64 are implemented in ../runtime/syscall_solaris.go

TEXT ·sysvicall6(SB),NOSPLIT,$0
    JMP runtime·syscall_sysvicall6(SB)

TEXT ·rawSysvicall6(SB),NOSPLIT,$0
    JMP runtime·syscall_rawsysvicall6(SB)

TEXT ·chdir(SB),NOSPLIT,$0
    JMP runtime·syscall_chdir(SB)

TEXT ·Syscall(SB),NOSPLIT,$0
    JMP runtime·syscall_syscall(SB)

// Many specific syscalls jump to runtime...
TEXT ·execve(SB),NOSPLIT,$0
    JMP runtime·syscall_execve(SB)
```

**Runtime (syscall_solaris.go):**
```go
var (
    libc_chdir,
    libc_chroot,
    libc_close,
    libc_execve,
    // ... many libc function pointers
    libc_wait4 libcFunc
)

//go:nosplit
//go:linkname syscall_sysvicall6
//go:cgo_unsafe_args
func syscall_sysvicall6(fn, nargs, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2, err uintptr) {
    call := libcall{
        fn:   fn,
        n:    nargs,
        args: uintptr(unsafe.Pointer(&a1)),
    }
    entersyscallblock()
    asmcgocall(unsafe.Pointer(&asmsysvicall6x), unsafe.Pointer(&call))
    exitsyscall()
    return call.r1, call.r2, call.err
}
```

**LLGo Strategy:**
- The pattern already uses libc function pointers
- LLGo can directly call libc functions
- Need to handle `sysvicall6` pattern

---

### 7. AIX - ANALYZED ✅

**Mechanism:** libc via runtime with `//go:cgo_import_dynamic`

**Source Files:**
- `syscall/asm_aix_ppc64.s` - Assembly stubs
- `runtime/syscall_aix.go` - Runtime implementations

**Assembly (asm_aix_ppc64.s):**
```asm
// System calls for aix/ppc64 are implemented in ../runtime/syscall_aix.go

TEXT ·syscall6(SB),NOSPLIT,$0
    JMP runtime·syscall_syscall6(SB)

TEXT ·rawSyscall6(SB),NOSPLIT,$0
    JMP runtime·syscall_rawSyscall6(SB)

TEXT ·RawSyscall(SB),NOSPLIT,$0
    JMP runtime·syscall_RawSyscall(SB)

TEXT ·Syscall(SB),NOSPLIT,$0
    JMP runtime·syscall_Syscall(SB)
```

**Runtime (syscall_aix.go):**
```go
//go:cgo_import_dynamic libc_chdir chdir "libc.a/shr_64.o"
//go:cgo_import_dynamic libc_chroot chroot "libc.a/shr_64.o"
//go:cgo_import_dynamic libc_execve execve "libc.a/shr_64.o"
// ... more imports

var (
    libc_chdir,
    libc_chroot,
    libc_execve,
    // ...
    libc_setpgid libFunc
)

// Syscall returns EINVAL - must use specific functions
//go:linkname syscall_Syscall
func syscall_Syscall(fn, a1, a2, a3 uintptr) (r1, r2, err uintptr) {
    return 0, 0, _EINVAL
}

// RawSyscall panics - not supported on AIX
//go:linkname syscall_RawSyscall
func syscall_RawSyscall(trap, a1, a2, a3 uintptr) (r1, r2, err uintptr) {
    panic("RawSyscall not available on AIX")
}

// syscall6 works via libc
//go:linkname syscall_syscall6
func syscall_syscall6(fn, nargs, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2, err uintptr) {
    c := libcall{
        fn:   fn,
        n:    nargs,
        args: uintptr(unsafe.Pointer(&a1)),
    }
    entersyscallblock()
    asmcgocall(unsafe.Pointer(&asmsyscall6), unsafe.Pointer(&c))
    exitsyscall()
    return c.r1, 0, c.err
}
```

**LLGo Strategy:**
- Similar to Solaris - uses libc function pointers
- The `//go:cgo_import_dynamic` can be ignored by LLGo
- Direct libc linking via LLVM

---

### 8. Plan 9 - ANALYZED ✅

**Mechanism:** Raw syscall with string-based error handling

**Source Files:**
- `syscall/asm_plan9_amd64.s` - Assembly implementations

**Assembly (asm_plan9_amd64.s):**
```asm
#define SYS_ERRSTR 41  /* from zsysnum_plan9.go */

//func Syscall(trap, a1, a2, a3 uintptr) (r1, r2 uintptr, err string)
TEXT ·Syscall(SB),NOSPLIT,$168-64
    NO_LOCAL_POINTERS
    CALL    runtime·entersyscall<ABIInternal>(SB)
    MOVQ    trap+0(FP), BP  // syscall entry
    // copy args down
    LEAQ    a1+8(FP), SI
    LEAQ    sysargs-160(SP), DI
    CLD
    MOVSQ
    MOVSQ
    MOVSQ
    SYSCALL
    MOVQ    AX, r1+32(FP)
    MOVQ    $0, r2+40(FP)
    CMPL    AX, $-1
    JNE ok3

    // Error handling - get error string
    LEAQ    errbuf-128(SP), AX
    MOVQ    AX, sysargs-160(SP)
    MOVQ    $128, sysargs1-152(SP)
    MOVQ    $SYS_ERRSTR, BP
    SYSCALL
    CALL    runtime·exitsyscall(SB)
    // Convert to Go string...
    CALL    runtime·gostring(SB)
    // ...
```

**Key Difference:** Plan 9 returns error as a **string**, not an errno number. This requires special handling in the syscall return type.

**LLGo Strategy:**
- Plan 9 is a niche platform
- May require custom implementation or skip initially
- Error string handling is unique to Plan 9

---

### 9. Windows - ANALYZED ✅

**Mechanism:** DLL procedure calls via `LazyDLL`/`LazyProc`

**Source Files:**
- `syscall/zsyscall_windows.go` - Generated syscall wrappers
- `syscall/dll_windows.go` - DLL loading infrastructure
- `runtime/syscall_windows.go` - Runtime support

**Pattern (zsyscall_windows.go):**
```go
var (
    modkernel32 = NewLazyDLL(sysdll.Add("kernel32.dll"))
    modws2_32   = NewLazyDLL(sysdll.Add("ws2_32.dll"))
    // ...

    procCloseHandle    = modkernel32.NewProc("CloseHandle")
    procCreateFileW    = modkernel32.NewProc("CreateFileW")
    procReadFile       = modkernel32.NewProc("ReadFile")
    // ...
)

func CloseHandle(handle Handle) (err error) {
    r1, _, e1 := Syscall(procCloseHandle.Addr(), 1, uintptr(handle), 0, 0)
    if r1 == 0 {
        err = errnoErr(e1)
    }
    return
}

func CreateProcessAsUser(...) (err error) {
    r1, _, e1 := Syscall12(procCreateProcessAsUserW.Addr(), 11, ...)
    if r1 == 0 {
        err = errnoErr(e1)
    }
    return
}
```

**DLL Infrastructure (dll_windows.go):**
```go
type DLL struct {
    Name   string
    Handle Handle
}

type LazyDLL struct {
    mu   sync.Mutex
    dll  *DLL
    Name string
}

type LazyProc struct {
    mu   sync.Mutex
    Name string
    l    *LazyDLL
    proc *Proc
}

func (p *LazyProc) Addr() uintptr {
    p.mustFind()
    return p.proc.addr
}

// Syscall variants
func Syscall(trap, nargs, a1, a2, a3 uintptr) (r1, r2 uintptr, err Errno)
func Syscall6(trap, nargs, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2 uintptr, err Errno)
func Syscall9(...) // up to Syscall18
func SyscallN(trap uintptr, args ...uintptr) (r1, r2 uintptr, err Errno)
```

**LLGo Strategy Options:**

**Option A: Implement LazyDLL runtime (Recommended)**
- Implement `LoadLibrary`, `GetProcAddress` via libc/Windows API
- Keep the existing Go pattern, just provide runtime support

**Option B: Static DLL imports via LLVM**
- Use LLVM's `dllimport` mechanism for known system DLLs
- Requires mapping proc names to DLL exports

**Complexity:** Windows requires special handling due to:
1. UTF-16 string conversion for W-suffix functions
2. Dynamic DLL loading
3. Multiple calling conventions (stdcall, cdecl)

---

### 10. WASI (WebAssembly) - ANALYZED ✅

**Mechanism:** `//go:wasmimport` directive for WASM imports

**Source Files:**
- `syscall/fs_wasip1.go` - File system operations
- `syscall/syscall_wasip1.go` - Syscall definitions
- `syscall/os_wasip1.go` - OS-level functions

**Pattern:**
```go
//go:wasmimport wasi_snapshot_preview1 fd_close
//go:noescape
func fd_close(fd int32) Errno

//go:wasmimport wasi_snapshot_preview1 fd_read
//go:noescape
func fd_read(fd int32, iovs *iovec, iovsLen size, nread *size) Errno

//go:wasmimport wasi_snapshot_preview1 fd_write
//go:noescape
func fd_write(fd int32, iovs *iovec, iovsLen size, nwritten *size) Errno

//go:wasmimport wasi_snapshot_preview1 path_open
//go:noescape
func path_open(fd int32, dirflags lookupflags, path *byte, pathLen size,
               oflags oflags, fsRightsBase rights, fsRightsInheriting rights,
               fdflags fdflags, resultOpenedFd *int32) Errno

//go:wasmimport wasi_snapshot_preview1 proc_exit
func ProcExit(code int32)
```

**LLGo Strategy:**
- LLGo should directly support `//go:wasmimport` directive
- Maps to WASM import declarations
- No trampoline needed - direct function import

**LLVM IR equivalent:**
```llvm
declare i32 @"wasi_snapshot_preview1.fd_close"(i32) #wasm_import
declare i32 @"wasi_snapshot_preview1.fd_read"(i32, ptr, i32, ptr) #wasm_import
```

---

## Additional Assembly Beyond Trampolines

Beyond the syscall trampolines, Go's syscall package contains additional assembly for:

### 1. vDSO Support (Linux)
```asm
// Uses runtime·vdsoGettimeofdaySym for fast gettimeofday
TEXT ·gettimeofday(SB),NOSPLIT,$0-16
    MOVQ    runtime·vdsoGettimeofdaySym(SB), AX
    TESTQ   AX, AX
    JZ fallback
    CALL    AX
    // ...
```

### 2. Fork/Exec Helpers (Various)
Special handling for fork, vfork, execve that must not use Go stack.

### 3. Signal Handling
Platform-specific signal delivery mechanisms.

---

## Errno Retrieval by Platform

| Platform | Errno Function | Notes |
|----------|---------------|-------|
| Darwin | `__error()` | Returns `int*` |
| Linux | `__errno_location()` | Returns `int*` |
| FreeBSD | `__error()` | Same as Darwin |
| OpenBSD | `__errno()` | Returns `int*` |
| Windows | `GetLastError()` | Returns DWORD |
| Solaris | `___errno()` | Returns `int*` |
| AIX | `_Errno()` | Returns `int*` |

---

## Recommendations for LLGo Implementation

### Phase 1: Darwin/OpenBSD (Highest Priority)
1. Implement `llgo.funcPCABI0` intrinsic
2. Implement `llgo.syscall` family
3. Extract C function names from trampoline pattern
4. Direct libc linking

### Phase 2: Linux/FreeBSD/NetBSD
1. Map syscall numbers to libc functions
2. Or implement inline syscall assembly

### Phase 3: Windows
1. Implement LazyDLL/LazyProc runtime
2. Handle UTF-16 conversion
3. Support multiple Syscall variants

### Phase 4: WASI
1. Support `//go:wasmimport` directive
2. Generate WASM import declarations

### Deferred: Plan 9, AIX, Solaris
- Lower priority platforms
- May require platform-specific patches

---

## Next Steps

- [ ] Analyze runtime assembly files for additional patterns
- [ ] Document syscall function signatures per platform
- [ ] Identify all trampoline naming patterns
- [ ] Create test cases for each platform category

---

## Appendix A: Runtime Trampolines (Darwin/OpenBSD)

The runtime package has its own set of trampolines that are **different** from syscall package trampolines. These are more complex because they:
1. Handle argument unpacking from a struct pointer
2. Handle errno retrieval inline
3. Are used by the Go runtime itself (not just the syscall package)

### Example: runtime/sys_darwin_arm64.s

```asm
// Simple trampoline - just unpacks args and calls libc
TEXT runtime·close_trampoline(SB),NOSPLIT,$0
    MOVW    0(R0), R0       // arg 1 fd
    BL  libc_close(SB)
    RET

// Complex trampoline - unpacks args, calls libc, handles errno
TEXT runtime·write_trampoline(SB),NOSPLIT,$0
    MOVD    8(R0), R1       // arg 2 buf
    MOVW    16(R0), R2      // arg 3 count
    MOVW    0(R0), R0       // arg 1 fd
    BL  libc_write(SB)
    MOVD    $-1, R1
    CMP R0, R1
    BNE noerr
    BL  libc_error(SB)      // get errno pointer
    MOVW    (R0), R0
    NEG R0, R0              // caller expects negative errno value
noerr:
    RET

// Variadic function trampoline - passes variadic arg on stack
TEXT runtime·open_trampoline(SB),NOSPLIT,$0
    SUB $16, RSP
    MOVW    8(R0), R1       // arg 2 flags
    MOVW    12(R0), R2      // arg 3 mode
    MOVW    R2, (RSP)       // arg 3 is variadic, pass on stack
    MOVD    0(R0), R0       // arg 1 pathname
    BL  libc_open(SB)
    ADD $16, RSP
    RET

// Multi-return value trampoline - stores result in struct
TEXT runtime·mmap_trampoline(SB),NOSPLIT,$0
    MOVD    R0, R19
    MOVD    0(R19), R0      // arg 1 addr
    MOVD    8(R19), R1      // arg 2 len
    MOVW    16(R19), R2     // arg 3 prot
    MOVW    20(R19), R3     // arg 4 flags
    MOVW    24(R19), R4     // arg 5 fd
    MOVW    28(R19), R5     // arg 6 off
    BL  libc_mmap(SB)
    MOVD    $0, R1
    MOVD    $-1, R2
    CMP R0, R2
    BNE ok
    BL  libc_error(SB)
    MOVW    (R0), R1
    MOVD    $0, R0
ok:
    MOVD    R0, 32(R19)     // store result
    MOVD    R1, 40(R19)     // store errno
    RET
```

### Runtime Trampoline Categories

| Category | Example | Complexity |
|----------|---------|------------|
| Simple | `close_trampoline` | Low - just unpack and call |
| With errno | `write_trampoline` | Medium - check result, get errno |
| Variadic | `open_trampoline` | Medium - pass args on stack |
| Multi-return | `mmap_trampoline` | High - store results in struct |

### LLGo Strategy for Runtime Trampolines

For LLGo, these runtime trampolines can be **simplified**:

1. **Direct C calls** - LLGo can call libc functions directly without trampolines
2. **Inline errno handling** - Generate errno retrieval at call sites
3. **Normal calling convention** - No need for special argument unpacking

**Example transformation:**

Original Go runtime call:
```go
// runtime uses libcCall with trampoline
libcCall(unsafe.Pointer(abi.FuncPCABI0(write_trampoline)), unsafe.Pointer(&args))
```

LLGo can generate directly:
```llvm
%result = call i64 @write(i32 %fd, ptr %buf, i64 %count)
%is_err = icmp eq i64 %result, -1
br i1 %is_err, label %get_errno, label %done
get_errno:
  %errno_ptr = call ptr @__error()
  %errno = load i32, ptr %errno_ptr
  ; ...
```

---

## Appendix B: Trampoline Name Extraction Rules

### Pattern 1: syscall package (Darwin/OpenBSD)
```
libc_XXX_trampoline  →  XXX
```
Examples:
- `libc_lchown_trampoline` → `lchown`
- `libc_open_trampoline` → `open`
- `libc_mmap_trampoline` → `mmap`

### Pattern 2: runtime package (Darwin/OpenBSD)
```
runtime·XXX_trampoline  →  libc_XXX
```
Examples:
- `runtime·open_trampoline` → `libc_open`
- `runtime·write_trampoline` → `libc_write`
- `runtime·mmap_trampoline` → `libc_mmap`

### Pattern 3: pthread functions
```
pthread_XXX_trampoline  →  pthread_XXX
```
Examples:
- `pthread_create_trampoline` → `pthread_create`
- `pthread_mutex_lock_trampoline` → `pthread_mutex_lock`

### Detection Algorithm

```go
func extractCFunctionName(trampolineName string) string {
    if !strings.HasSuffix(trampolineName, "_trampoline") {
        return "" // not a trampoline
    }

    base := strings.TrimSuffix(trampolineName, "_trampoline")

    // Pattern 1: libc_XXX_trampoline → XXX
    if strings.HasPrefix(base, "libc_") {
        return strings.TrimPrefix(base, "libc_")
    }

    // Pattern 2 & 3: XXX_trampoline → XXX
    return base
}
```

---

## Appendix C: syscall vs rawSyscall Distinction

Go distinguishes between `syscall` and `rawSyscall`:

| Function | entersyscall | exitsyscall | Use Case |
|----------|-------------|-------------|----------|
| `syscall` | ✅ Yes | ✅ Yes | Normal syscalls |
| `rawSyscall` | ❌ No | ❌ No | Time-critical, no blocking |

### entersyscall/exitsyscall Purpose

These functions notify the Go scheduler:
- **entersyscall**: Mark goroutine as "in syscall", scheduler may start another goroutine
- **exitsyscall**: Re-acquire P (processor) for goroutine

### LLGo Implications

For LLGo with cooperative scheduling:
- May still need scheduler integration for proper goroutine handling
- Or can simplify if using native threads per goroutine

For single-threaded mode:
- Can ignore enter/exit syscall notifications
- Direct C calls without scheduler involvement

