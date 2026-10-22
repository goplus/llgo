# GDB runtime acceptance

The same fixture runs in GDB with `LLGO_GDB_INTEGRATION=1 go test
./cmd/internal/gdb -run '^TestGDBIntegration$' -count=1 -v` from the repository
root. Set `LLGO` and `LLGO_GDB` to select the compiler and debugger. `CC` is
parsed with Go's compiler-argument quoting rules and must build the same native
target, including its architecture and CRT. The fallback C programs explicitly
request DWARF 4, including when Clang otherwise defaults to CodeView.

The CI matrix runs Linux amd64 and Windows amd64, 386 and ARM64 with both
Microsoft and GNU ABIs. Linux ARM64 has also been exercised locally in a native
container; it is not an additional CI runner in this matrix. The Windows jobs
install Python-enabled MSYS2 GDB 18+ in an independent
directory, including its multiarch executable. GDB reads the native PE and
DWARF metadata for the selected target; both ABI profiles are tested with their
actual compiler/CRT.

The `TestGDBIntegration` gate verifies source stops, values, raw-C/schema
fallback, three distinct native threads and the complete main application
stack. `TestGDBCompleteWorkerUnwind` separately checks each of the two blocked
worker stacks, requires their own application closure frames, and checks that
backtrace commands preserve the selected thread. It stays strict on every
host: a partial stack or unexpected signal fails, with no platform skip or
expected-failure conversion.

| Native target | GDB values, registry, main stack | GDB complete blocked-worker unwind | LLDB runtime suite |
| --- | --- | --- | --- |
| Linux amd64 | Required CI gate | Required CI gate | Required CI gate |
| Linux ARM64 | Locally exercised in a native container | Locally exercised in a native container | Not part of this CI matrix |
| Windows amd64 / 386, GNU and MSVC | Required CI gate | Required CI gate | Required CI gate |
| Windows ARM64, GNU and MSVC | Required CI gate | Unavailable with stock GDB 18: native target omits PAC masks | Required CI gate |
| macOS Intel | Required CI gate | Unavailable with stock GDB 17/18: dyld 17 shared libraries are not loaded | Required CI gate |
| macOS Apple Silicon | Native process target unavailable; remote sessions remain usable | Native process target unavailable | Required CI gate |

The unavailable entries are toolchain limitations, not successful full-unwind
coverage. Intel macOS also reproduces the truncated system frames with a plain
C pthread condition-variable fixture. GDB's
[Darwin shared-library reader](https://github.com/RTEMS/sourceware-mirror-binutils-gdb/blob/gdb-18-branch/gdb/solib-darwin.c)
accepts dyld versions only through 15; the tested host uses version 17. On
Windows ARM64 the blocked stack contains an authenticated return address that
GDB leaves signed. Its native target lacks the
[pointer-authentication mask feature](https://sourceware.org/gdb/current/onlinedocs/gdb.html/AArch64-Features.html)
required by GDB's unwinder. LLGo does not rewrite inferior registers or stack
memory to make these backtraces appear complete. Use LLDB for full native
worker-stack inspection on these hosts.

Darwin GDB uses debugger-local Mach ports in its native thread identifiers.
The adapter asks the host kernel for each port's system thread ID so that it
can match the runtime registry. Remote target identifiers are not passed to
host Mach APIs. Intel macOS native launch additionally needs a debugger with
permission to obtain task ports. The dedicated Intel CI job launches the executable
suspended with Darwin's `posix_spawn`, then uses GDB's native attach path. This
avoids GDB 17's fork/exec hang in `decode_message`/`wait4` before `_dyld_start`
executes. The helper preserves GDB's normal disabled-ASLR layout and all
acceptance assertions, and reaps the inferior after GDB finishes. Only GDB runs
through `sudo -n` on the ephemeral runner; compilation and Go test orchestration
remain unprivileged. It also runs the full native LLDB
suite using Apple's signed `/usr/bin/lldb`. Apple Silicon GDB native process
debugging is not supported; the native acceptance command reports that limitation directly.
`llgo gdb` still supports cross-target/remote sessions on Apple Silicon.
