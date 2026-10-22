# Final WebAssembly size optimization

Hosted W32, J32 and J64 executables support an optional final Binaryen pass:

```sh
llgo build -target=wasi -wasm-opt=size -wasm-strip=debug -o app.wasm ./app
llgo build -target=emscripten -wasm-opt=size -wasm-strip=debug -o app.mjs ./app
```

The defaults are `-wasm-opt=off` and `-wasm-strip=none`. These options do not
change the Go/LLVM optimization level, PCLN policy, GC, scheduler, reflection,
exception handling, or existing development-only optimization gates. They do
not support libraries, IR generation, or firmware output conversions.

| Option | Effect |
| --- | --- |
| `-wasm-opt=size` | Runs Binaryen `-Oz` after required linker/Asyncify transformations, with an explicit hosted-target feature allowlist. Memory64 is enabled only for J64. |
| `-wasm-strip=debug` | Removes optional DWARF, name and source-map metadata. |
| `-wasm-strip=all` | Also removes producer metadata. |

Strip-only builds validate the module but preserve its original code/data
section bytes. Stripping retains runtime PCLN, target features, build identity,
external DWARF references, and unknown custom sections. It is independent of
`-pclntab=none`, which changes runtime symbolization behavior.

For Emscripten, size mode sets `EXPORT_ALL=0`. Explicit native/public exports
and the existing runtime methods (`cwrap`, `allocateUTF8`, `stringToUTF8`,
`UTF8ToString`, `FS`, `setValue`, `getValue`, `ENV`) remain available; incidental
JS implementation symbols are no longer published on `Module`. `EXPORT_ALL`
controls publication, not reachability; the final pass does not remove these
explicit runtime APIs.

## Toolchain and debugging

Use LLGo Binaryen `llgo-v132.3`, selected through `WASMOPT` or
`EM_BINARYEN_ROOT`. CI pins its release archive checksum. The final pipeline
checks the Binaryen 132 version string and records the executable SHA-256;
the version string alone cannot distinguish upstream Binaryen from LLGo's
patched build.

Debug packaging happens after optimization:

```sh
llgo build -target=emscripten -wasm-opt=size \
  -debug-artifact=external -wasm-strip=debug -o app.mjs ./app
```

Embedded DWARF is incompatible with explicit stripping. External DWARF keeps a
matching `app.debug.wasm`; stripping applies only to the deployed module.
When retaining DWARF, the final pass skips Binaryen 132's `precompute`,
`precompute-propagate` and `local-cse` passes, which lose surviving Go call-site
line mappings. Other `-Oz` passes retain Binaryen's DWARF compatibility checks.
CI checks Go/C++ source locations and executes the final modules for W32/J32/J64.

## Artifact manifest

An enabled final pipeline writes `app.wasm-manifest.json` beside the output.
It records compiler/source-Go/LLVM/link-driver identity, target profile and
pointer width, PCLN and final optimization modes, Binaryen identity/arguments,
link flags, declared and allowed Wasm features, and each artifact's byte count,
gzip-9 byte count and SHA-256. Its build ID covers sorted artifact names and
hashes. Debugger build IDs remain paired with the external DWARF container.

`payload` includes Wasm, JS/HTML loaders, worker assets and runtime symbols;
`debug` counts external debugger containers separately. Gzip totals sum files
compressed independently. Totals exclude the manifest itself; LLGo's artifact
report includes its actual size. Include it when measuring a deployment that
ships the manifest. External debug containers contain the module's standard
sections as well as DWARF, so their size is not just the DWARF payload.

The complete output set is staged before publication. Ordinary publication
failures restore the previous files; an unsuccessful restore retains its backup
and reports the recovery path. The manifest is published last. This is not an
atomic multi-file deployment: serve a versioned directory or verify artifact
hashes before switching readers. Successful builds remove obsolete debug/glue
siblings, and a successful rebuild with both options disabled removes the old
manifest.

## Measurement

Darwin arm64, Go 1.27.2, LLVM 22.1.8, Emscripten 6.0.8 and LLGo Binaryen
`llgo-v132.3`; fixtures `benchmark/binary_size/{cprintf,println,fmtprintf}`.
Both columns use LLGo's default optimization and `-debug-artifact=none`,
without `-s`, development DCE or LTO. The baseline is `057851875`; the final
column adds `-wasm-opt=size -wasm-strip=debug` to that compiler. It does not
include the separate initializer/metadata pruning in PR #2908. All 18 final
products executed successfully in Wasmer or the matching Node runner.

Sizes below are **complete artifact bytes / independently compressed Brotli-11
bytes**, including generated JS, `wasm_fs.js` and the final column's manifest.
There are no deferred runtime assets in these cases. Small browser programs
can have a slightly larger compressed total because of the manifest.

| Profile | Example | Baseline | Final | Raw reduction |
| --- | --- | ---: | ---: | ---: |
| W32 | cprintf | 160,243 / 44,666 | 118,957 / 40,612 | 25.76% |
| W32 | println | 159,933 / 44,678 | 118,705 / 40,486 | 25.78% |
| W32 | fmtprintf | 2,371,607 / 514,578 | 1,938,055 / 495,444 | 18.28% |
| J32 | cprintf | 252,135 / 70,298 | 249,249 / 70,470 | 1.14% |
| J32 | println | 251,679 / 70,215 | 248,766 / 70,223 | 1.16% |
| J32 | fmtprintf | 3,139,290 / 703,680 | 3,072,833 / 701,050 | 2.12% |
| J64 | cprintf | 242,604 / 66,670 | 239,994 / 66,918 | 1.08% |
| J64 | println | 242,194 / 66,485 | 239,554 / 66,682 | 1.09% |
| J64 | fmtprintf | 2,908,050 / 642,098 | 2,848,393 / 640,962 | 2.05% |
