# Explicit CCGo function-box adaptation

This experimental tool adapts **selected dependencies**, not ordinary Go
`unsafe` conversions. It leaves LLGo's two-word function representation and
the module cache unchanged. It is separate from Plan9 instruction translation.

Build the tool with the host Go compiler, then select the target and packages
explicitly. For the reported SQLite case, the application's module graph must
pin `modernc.org/sqlite v1.58.0` and `modernc.org/libc v1.75.7`:

```sh
go build -o ./_out/ccgobridge ./chore/ccgobridge
GOWORK=off GOOS=linux GOARCH=amd64 CGO_ENABLED=0 ./_out/ccgobridge \
  -dir /path/to/application -out ./_out/sqlite-adapted \
  modernc.org/libc modernc.org/sqlite/lib modernc.org/sqlite
```

The output directory must be new. It contains only files selected for this
target, a private `build.mod`/`build.sum`, and `adaptations.json`. Build from the
application directory with the printed **absolute** `-modfile` path, using Go
and then LLGo/LLVM 22. Do not reuse the snapshot for another target, source
version or build-tag selection. Do not treat adaptation counts as test passes.

The tool validates the exporter bodies and their typed call sites. Only
top-level function declarations acquire static, typed boxes. Lazy `sync.Once`
initialization preserves pointer identity without introducing initialization
cycles for self-references. Function variables, method values, closures and
escaped exporter helpers are rejected. Consumers load the full function value
from its box, not from a one-word temporary and not from native machine code.

The audited musl callback adapters write full typed functions into their TLS
slots. Typed roots retain environments until the corresponding TLS frame is
freed; reuse and `Close` release them. Unsupported slot/lifetime shapes fail.
ABI0 code addresses and C function pointers are not function-box addresses.

Tests:

```sh
go test ./internal/ccgobridge ./chore/ccgobridge -count=1
go test -race ./internal/ccgobridge ./chore/ccgobridge -count=1
```

Real acceptance additionally requires final linking and execution: SQLite
queries, rollback, UDF callbacks with distinct captured environments and GC,
and the ABI0 `Yqsort`/TLS-slot path. Compilation or unit tests alone do not
establish those results. This tool does not make the original, unadapted
CCGo representation portable, and it does not address purego's native C ABI.
