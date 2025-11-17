# Size Report Options

The `llgo build -size` flag emits a TinyGo-style table showing how much code,
rodata, data, and BSS each component contributes to the final binary. This
document captures the parsing strategy and new aggregation controls.

## Parsing Strategy

- We invoke `llvm-readelf --elf-output-style=LLVM --all <binary>` and parse the textual output with an
  indentation-sensitive state machine (no JSON). Only the `Sections` and
  `Symbols` blocks are inspected.
- Section metadata records the index, address, size, name, and segment. Each
  section is classified into text/rodata/data/bss buckets.
- Symbols are attached to their containing sections with start addresses. By
  sorting symbols and walking their ranges, we compute byte spans that can be
  attributed to packages/modules.
- Sections with no symbols fall back to `(unknown <section>)`, and gaps become
  `(padding <section>)` entries so totals still add up.

## Aggregation Levels

`-size:level` controls how symbol names are grouped prior to reporting:

| Level     | Behavior                                                                 |
|-----------|---------------------------------------------------------------------------|
| `full`    | Keeps the raw owner from the symbol name (previous behavior).             |
| `package` | Uses the list of packages built in `build.Do` and groups by `pkg.PkgPath`. |
| `module`* | Default. Groups by `pkg.Module.Path` (or `pkg.PkgPath` if the module is nil). |

Matching is performed by checking whether the demangled symbol name begins with
`pkg.PkgPath + "."`. Symbols that do not match any package and contain `llgo` are
bucketed into `llgo-stubs`; other unmatched entries keep their original owner
names so we can inspect them later.

Examples:

```sh
llgo build -size .                     # module-level aggregation (default)
llgo build -size -size:level=package . # collapse by package ID
llgo build -size -size:level=full .    # show raw symbol owners
llgo build -size -size:format=json .   # JSON output (works with all levels)
```

## Validation

1. Unit tests: `go test ./internal/build -run TestParseReadelfOutput -count=1`.
2. Real binary test:
   ```sh
   cd cl/_testgo/rewrite
   ../../../llgo.sh build .
   LLGO_SIZE_REPORT_BIN=$(pwd)/rewrite \
     go test ./internal/build -run TestParseReadelfRealBinary -count=1
   ```
3. Manual smoke test: `../../../llgo.sh build -size -size:level=module .` (or
   `package`/`full` as desired).

The parser works across Mach-O and ELF targets as long as `llvm-readelf` is in
`PATH`.
