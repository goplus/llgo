# Go command-line compatibility

LLGo compiles Go source through its own frontend, LLVM backend and runtime.
Accepting a flag in the Go package loader does not implement that flag in LLGo.
The reviewed public command and flag inventory is pinned to `.go-version` in
[`cmd/internal/compat/go1.27.json`](../../cmd/internal/compat/go1.27.json).
[`manifest.go`](../../cmd/internal/compat/manifest.go) records each command and
flag's status, owner and limits, separately from LLGo extensions. CI checks the
inventory against public help from the pinned Go executable. After a toolchain
upgrade, run `python3 dev/check_cli_surface.py --update` and review the resulting
surface and contract changes together.

`fmt`, `doc`, `mod` and `work` delegate to Go unchanged. `fix`, `generate`, `get`,
`list` and `vet` delegate with LLGo source tags and target selection. Their
compiler controls describe the delegated Go operation, not an LLGo executable.
`env` combines Go environment queries with explicit LLGo queries. Go telemetry
is intentionally omitted. Native build, run, test, install, cleanup, version and
tool workflows implement a documented subset; unsupported controls fail.

Native package commands accept a leading `-C dir` or `-C=dir` after the command
name. It applies before relative source, output, module and overlay paths.
`GOFLAGS`, including persisted `go env -w` defaults, are parsed before command
flags, so explicit options take precedence. Defaults belonging only to other
commands are skipped, as in Go. `-C` is not permitted in `GOFLAGS`.
Unimplemented instrumentation cannot bypass validation through environment
settings.

`-mod` and `-modfile` select the source module graph. `-modcacherw` leaves newly
downloaded module directories writable. `-overlay` accepts Go's `Replace` JSON
object for Go source replacement, addition and deletion. Relative logical and
backing paths are resolved after `-C`; runtime loads and the LLGo parser share
that source view. Non-Go replacements (including embedded data and C headers)
are rejected until all native consumers support them. Runtime file operations
see the ordinary filesystem, as with Go's build overlay.
Empty replacement maps are valid. Logical paths that resolve to the same
absolute path are rejected, as in Go.

The portable `-gcflags` subset is `-lang`, `-N`, `-l` (0/1 or boolean), and global
`-d=converthash` settings. Unpatterned and `all=` lists configure the global LLGo
frontend; gc diagnostics, selective hash patterns and other package patterns
are rejected. The `-ldflags` subset is `-s`, `-w`, `-extld` and `-extldflags` with
unpatterned or `all=` lists. These configure LLGo's native linker. Other linker
options are rejected rather than discarded.

Repeated `-gcflags` lists use Go's last-matching-list rule within these supported
scopes. For example, command-line `-gcflags=-N` replaces `GOFLAGS=-gcflags=-m`;
the superseded compiler option is not validated. A later `all=` list replaces
both scopes, while an unpatterned list does not replace an earlier `all=` list
for dependencies. Any unsupported compiler options that remain applicable are
rejected. Malformed argument lists and unsupported package patterns are always
rejected, including in superseded lists. For `-ldflags`, malformed syntax and
invalid values of recognized options are still rejected in superseded lists.

`-race`, `-msan`, `-asan`, `-pgo`, `-linkshared`, compiler selection and gc object
archive controls have no implemented LLGo backend contract. `-n`, `-work`,
`-trimpath`, `-buildvcs` and build JSON are also rejected pending native artifact
support. `-buildmode` supports `exe`, `c-archive` and `c-shared`; gc shared-package,
plugin, PIE and other modes are rejected. `-buildenv` has been removed because it
had no consumer. `clean` exposes
only its implemented package tags, verbosity and directory selection; cleanup
planning and cache controls are pending. Size reports belong to `build`, and
LTO pass plugins belong to build-producing commands rather than `monitor`.

`test` rejects execution trace and block/mutex profile controls, including their
reserved `-test.*` spellings after `-args`. LLGo does not produce those runtime
samples. CPU and allocation profiles retain LLGo's runtime semantics. Reserved
`-test.*` spellings are recorded separately; other test aliases work after
`-args`, and driver alias parsing is pending. The
manifest records remaining test-driver and scheduler limits; in particular,
`-cpu` repeats test runs but does not yet bound native goroutine execution.

`tool compile` parses source and generates LLGo IR in memory. It rejects gc
object output, import configurations, search paths and package import identity
controls. `version` prints LLGo identity and rejects binary file inspection
until that workflow is implemented. `bug` opens an LLGo issue draft containing
only LLGo/LLVM/Go build versions and the host platform; `bug -n` prints the
payload. Paths, arbitrary environment settings and dependency lists are not
collected.
