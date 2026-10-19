# Binary size workloads

These fixed programs keep LLGo binary-size measurements comparable across
linker and PCLN packaging changes. The comprehensive linker/PCLN matrix is
maintained by `llgo-test/benchmarks`; `benchmark/baseline` reuses the three
smallest workloads for the per-commit lightweight size and timing gate.

- `cprintf`: the smallest C-library hello world, using only `lib/c.Printf`.
- `println`: a hello world using the built-in `println`.
- `fmtprintf`: a hello world using `fmt.Printf`.
- `texttemplate`: a heavier standard-library program using `text/template`.
- `nilfault`: an import-free abnormal path that dereferences a nil pointer.

The first four programs must exit successfully with their expected output.
`nilfault` must exit unsuccessfully with a nil-pointer diagnostic in every
mode; for `external`, check it once with the sidecar present and once after the
sidecar has been removed. The runtime integration suite separately verifies
that a hardware-fault signal path never starts sidecar I/O.

Size reports for `-pclntab=external` must record the executable and its
`.pclntab` sidecar separately, with their sum shown explicitly. Run every
linker/PCLN variant at the same output path: DWARF records paths, so changing
the output path can otherwise make byte counts look different even when two
flag combinations have equivalent code-generation semantics.

External PCLN is built from the final linked entry and PC-line sites. Dead
function and PC-line records are removed together with unused strings, and
function indexes and hash tables are rebuilt before writing the sidecar. To
check this optimization, compare normal and Full-LTO `cprintf` and `fmtprintf`
builds with `-pclntab=external -ldflags=-w`, recording the sidecar's function,
PC-line and site counts as well as its bytes. The executable's text bytes must
remain unchanged.

Embedded native executables share the metadata pruner with external mode.
Darwin regenerates the synthetic entry object's metadata and relinks, verifying
liveness against the original catalog before publication. Linux ELF64 embedded
executables instead put the payload in the reclaimable entry carrier and patch
its table pointers/counts after the single final link. This avoids a second LTO
link; surviving physical PC-line sites also keep their inline owners. Physical
compaction requires non-PIE ELF64, and a rejected rewrite leaves the runnable
original image unchanged. Builds without entry sites, library modes and named
targets retain their existing policy; the Go global DCE dev gate is unchanged.

Compare the Linux carrier path with the relink baseline for both size and link
time. Mutable metadata pointers/counts can prevent some LTO constant folding,
so a single-link build is not necessarily smaller than a relinked build. Record
that tradeoff separately from the reduction relative to unpruned metadata.

This initial matrix applies to native Darwin/Linux executable builds;
generation, archive/shared, and fixed-target policies are outside this
benchmark.

Native Linux DWARF is zlib-compressed by default. Include an explicit
`-ldflags=-compressdwarf=false` control when comparing debug-information
volume, and distinguish executable size from compressed DWARF section size.
Darwin DWARF measurements must include a separately generated dSYM when
reporting complete debug artifacts. Size-optimized main executables restrict
automatic dynamic exports independently of DWARF; this preserves debugger
metadata and runtime PCLN. The default optimization level, LTO selection, and
development-only Go global-DCE policy are unchanged.

The comparison matrix is the Cartesian product of
`embedded|external|none` and these linker groups: default, `-w`, `-s`, and
`-s -w=false`. Native Linux/Darwin `-s` removes ordinary symbols after PCLN
finalization. Check that `-s` is smaller than `-w`, and that `-s -w=false`
preserves usable DWARF while reducing executable symbol overhead. ELF retains
dynamic symbols and debug sections when requested; Mach-O retains required
dynamic-binding entries and generates a matching `.dSYM` before stripping.
Record the complete dSYM bundle separately and include it in debug totals.
