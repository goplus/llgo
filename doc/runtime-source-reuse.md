# GOROOT runtime reuse

LLGo selects source from the **same resolved GOROOT and Go version as the
application**. The build parser uses its existing source overlay to replace
declaration-only runtime files in memory. The selected bytes participate in
the ordinary package fingerprint; `//line` records retain their GOROOT source
locations. Neither source tree is modified.

## Current ownership

| Code | Owner | Boundary |
| --- | --- | --- |
| `countrunes`, `decoderune`, `encoderune`, UTF-8 constants | GOROOT `runtime/utf8.go` | Compiled into LLGo's low-level runtime; no Go scheduler, stack, GC or metadata dependencies |
| String iteration and string/rune conversions | LLGo low-level runtime | Existing compiler entry points; a small adapter handles Go 1.27's unsigned decoder offsets |
| `setCrashFD` (Go 1.23+) | GOROOT `runtime/runtime.go` | Only this declaration is selected, including its linkname |
| `crashFD`, `panicking`, fatal output and descriptor initialization | LLGo standard-runtime replacement | Atomic operations and output delivery remain LLGo-owned |
| Other standard-runtime replacement declarations | LLGo | Unchanged until individually reviewed |
| `newproc`, stack switching, TLS, GC metadata, write barriers | LLGo low-level runtime/backend | Full Go runtime and scheduler assembly remain gated |

`internal/build/runtime_source.go` is the checked selection list. UTF-8
imports, new declarations, and changed helper signatures fail explicitly.
The selected crash-output function's signature is checked; new dependencies
must type-check against LLGo's remaining runtime. The normal type checker
rejects duplicate definitions. This is an initial migration, not a complete
runtime symbol-ownership or closure-ABI audit for #2165.

The declarations in `runtime/internal/runtime/utf8*.go` and
`runtime/internal/lib/runtime/crash_fd_go123.go` let `cmd/go` collect package
metadata before LLGo applies its source view. They do not contain alternate
algorithm implementations. Adding another reused subsystem requires an
explicit selection, compatible boundary types, removal of its old bodies,
and runtime tests.

## Replacement-package assembly decision (#2128)

The current syscall implementation uses a source patch that suppresses GOROOT
assembly. It is no longer an alternate replacement package. The same selective
assembly question still applies.

| Candidate | Dependencies / assumptions | Decision |
| --- | --- | --- |
| Linux `syscall.rawSyscallNoError` | Kernel return registers; callers use the first result for process/user IDs and `umask` | Keep the existing libc bridge. This small helper does not remove libc from an LLGo executable. No claim of a general two-register raw-syscall ABI is made. |
| Linux amd64 `syscall.gettimeofday` | `runtime.vdsoGettimeofdaySym`, ELF symbol/version lookup and initialization before foreign C-library entry; raw syscall fallback | Keep libc's time implementation and errno adapter. libc already owns vDSO selection and kernel fallback; duplicating that loader for this single helper has no demonstrated benefit. |
| Linux `syscall.rawVforkSyscall` | Special stack/return-address treatment around process creation | Exclude; it must not be enabled as a side effect of selecting the same `.s` file. |
| Runtime syscall/clock assembly | Go `g`/TLS, scheduler/syscall state and platform-specific register conventions | Keep platform backends; not self-contained replacement candidates. |
| `mstart`, `mcall`, `systemstack`, `morestack` | Go stack growth, g0, register ABI, stack maps and preemption | Blocked by the scheduler/stack/GC compatibility gate. |

The inventory does not establish multiple independent helpers with a material
benefit from a new replacement-assembly selector. The proposal's necessity
gate therefore selects **keep bridges**. Ordinary-package Plan 9 translation
and its ABI checks remain available; this decision introduces no vDSO loader
or assembly allowlist.

`TestGettimeofdayAndRawFallback` compares the libc path with a direct kernel
time syscall and checks return/errno behavior, including a preceding failed
syscall. This is an explicit raw-syscall reference, not forced execution of
libc's internal fallback or proof that libc used vDSO. Native executable and
C-library tests exercise the same adapters without owning process startup.
Android, unsupported architectures, Wasm and embedded backends retain their
existing selection.

## Validation

- Source identity, source-change cache invalidation, missing/changed helpers
  and new-dependency rejection are tested beside the build implementation.
- Runtime tests cover every Unicode scalar value, invalid scalar values,
  all two-byte inputs, truncated/overlong UTF-8 and string/rune iteration.
- The existing `runtime/debug` descriptor test exercises `SetCrashOutput`.
- Run the runtime/syscall tests in executable, `c-shared` and `c-archive`
  modes on the relevant native targets; run UTF-8 on the Wasm profiles too.

Remaining #2165 work includes the complete compiler/stdlib ownership report,
further standard-runtime subsystems, and the separately gated closure,
metadata, stack and scheduler ABI work. These source selections do not
establish compatibility with the full upstream runtime.
