# Go stdlib syscall trampolines on Darwin (notes)

This document summarizes how Go’s standard library performs libc trampoline calls on Darwin
and why LLGo must match that calling shape to stay compatible.

## 1) The standard library call chain (Darwin)

**Call site (syscall package):**
Generated `zsyscall_darwin_*.go` uses small-`rawSyscall` with a trampoline function pointer:

```go
r0, _, e1 := rawSyscall(abi.FuncPCABI0(libc_open_trampoline),
    uintptr(unsafe.Pointer(p)), uintptr(mode), uintptr(perm))
```

Key points:
- The argument is a **function pointer** (`FuncPCABI0(libc_*_trampoline)`), not a syscall number.
- `rawSyscall` (lowercase) is declared in `syscall` but **implemented in runtime** via `linkname`.

**Runtime implementation (Go, runtime/sys_darwin.go):**
`syscall_rawSyscall` wraps args in a struct and invokes `libcCall`:

```go
//go:linkname syscall_rawSyscall syscall.rawSyscall
func syscall_rawSyscall(fn, a1, a2, a3 uintptr) (r1, r2, err uintptr) {
    args := struct{ fn, a1, a2, a3, r1, r2, err uintptr }{fn, a1, a2, a3, r1, r2, err}
    libcCall(unsafe.Pointer(abi.FuncPCABI0(syscall)), unsafe.Pointer(&args))
    return args.r1, args.r2, args.err
}
```

**Runtime implementation (asm, runtime/sys_darwin_*.s):**
`runtime.syscall` is an assembly function that:
- loads the `args` struct fields (fn, a1, a2, a3…)
- **calls the libc function pointer**
- stores `r1/r2/err` back into the struct

## 2) RawSyscall (uppercase) is a different path

The `RawSyscall` / `RawSyscall6` (uppercase) functions in `syscall/asm_darwin_*.s` use the
`SYSCALL` instruction directly with a kernel syscall number. They are not part of the
libc trampoline path above.

This is why LLGo’s libc trampoline support must mimic **rawSyscall (lowercase)** behavior,
not the uppercase `RawSyscall` path.

## 3) Why varargs breaks trampolines

On Darwin, libc functions like `open` are variadic. If LLGo generates:

```
call i64 @open(i64, i64, i64, ...)
```

LLVM uses a variadic call ABI, which can produce incorrect register/stack layout.
A common symptom is that `open(path, O_CREAT|..., 0666)` creates a file with mode `000`,
then subsequent `open` fails with `EACCES` (permission denied).

## 4) C wrapper workaround (open$INODE64 issue)

Darwin may resolve `open` to `open$INODE64` internally. A safe workaround is to provide a
fixed-arity C wrapper and trampoline to that wrapper, avoiding variadic ABI issues and
symbol aliasing.

Example (C):

```c
int llgo_open(const char *path, int flags, int mode) {
    return open(path, flags, mode);
}
```

Example (Go trampoline stub):

```go
// func llgo_open_trampoline() {}
// rawSyscall(FuncPCABI0(llgo_open_trampoline), ...)
```

The trampoline name (`llgo_open_trampoline`) maps to the C symbol `llgo_open` using
`extractTrampolineCName` (`*_trampoline` suffix stripped).

## 5) What LLGo should mirror

To match Go stdlib behavior on Darwin:
- Keep `rawSyscall` (lowercase) semantics as **libc call with errno**.
- Avoid LLVM varargs for trampolines; use **fixed-arity calls** where possible.
- Use C wrappers for variadic libc APIs (e.g. `open`) if needed.

