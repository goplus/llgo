# Native libc calls and all-thread syscalls

LLGo's native pthread runtime runs a Go goroutine on its OS thread's stack.
There is no separate Go g0 stack or migrating M/P transition to emulate.
Synchronous C calls preserve the current G, its bubble, and the physical unwind
chain. A callback on the same thread reuses that context; a newly adopted C
thread starts outside any bubble.

These call ABIs are explicit:

| Entry | Target signature | Result |
| --- | --- | --- |
| Existing syscall/x/sys trampoline | C function with actual syscall arguments | Existing syscall return/errno rules |
| `runtime.libcCall` / `runtime.asmcgocall` | `int32_t (*)(void *argblock)` | Target's int32 return |
| Linux `syscall.cgocaller` | `void (*)(struct { uintptr_t *args; uintptr_t retval; } *)` | Wrapper writes errno into retval |

An argument block remains live through the synchronous call. The target owns
its errno convention; the direct bridge does not read or reinterpret errno.
The Linux credential wrappers save errno immediately, then release their gate.
Nil direct-call pointers panic; an unavailable packed cgo bridge returns
`ENOTSUP`. Arbitrary upstream Go assembly trampolines still require an actual
C ABI implementation; a symbol's name never selects an ABI.

The nine `syscall.cgo_libc_set*` pointers are initialized to typed C wrappers.
They use libc's pthread/setxid implementation, which includes libc-managed C
threads. A shared gate serializes these wrappers with LLGo all-thread calls.
Calling arbitrary credential setters directly from foreign C code bypasses
that gate and is outside the all-thread contract.

Native stack capture and profiling retain their existing signal handlers and
physical unwinder. A C callback can allocate, collect, or make a nested call.
The asynchronous all-thread handler itself runs only raw kernel operations and
atomics; it never calls Go, allocates, or acquires application locks.

## Linux ownership and barrier

Initially, `AllThreadsSyscall` supports native Linux amd64/arm64 executables.
The entry module enables it; C shared/archive libraries keep `ENOTSUP`.
Other Linux architectures retain `ENOTSUP` for this operation.

A runtime-created pthread has a registry entry before `pthread_create` runs.
The main thread is explicitly marked owned. Adopted foreign threads are
registered for callbacks and stack capture but remain unowned. Parallel GC
marker threads, foreign C threads, and emulator helper threads are outside the
owned cohort; their presence returns `ENOTSUP`. `GC_MARKERS=1` can provide a
collector configuration without parallel marker threads, but never overrides
ownership checks.

The registry lock excludes registration, attachment, and exit. An entry whose
thread is not yet attached returns `EAGAIN` before executing the syscall. All
other threads park in the existing SIGURG transport, with kernel signal masks
blocking GC/libc-private signals while parked. `/proc/self/task` validates
completeness both before and after the registered cohort is stopped; it does
not supply the cohort or replace the creation/exit barrier.

A masked transport or incomplete preparation returns `EAGAIN` without applying
the syscall. Cancellation leaves per-thread storage alive until every delayed
handler acknowledges it; a retry can also return `EAGAIN` during this interval.
The calling thread executes first. Its error returns without invoking other
threads. On success, every other participant executes once; all result words
and errno must agree. Disagreement, or a peer blocked after execution starts,
terminates the process because partial state cannot be rolled back.

Calls must be nonblocking and preserve thread lifecycle, TLS, and the signal
transport. The bridge rejects syscall families that directly replace those
mechanisms. A blocking syscall on the caller can still block the operation.
No host-cooperation API for C library modes is exposed.

The tests cover executables and both C library modes on Linux/macOS, packed
calls with GC, nested callbacks, signals and unwind, credential errors, and the
Linux native protocol under creation/exit stress plus ASan/UBSan. Library-mode
tests require `ENOTSUP`; a C-only native test supplies a complete owned cohort
for successful getpid calls and result-mismatch fail-fast validation.
