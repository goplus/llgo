# llgo pyenv design

## Goals and Scope

- Goal: Provide a reusable, portable, and bootstrappable CPython runtime (interpreter, standard library, third‑party packages, and link information) for the LLGo build process, and ensure the built artifacts run reliably on target machines without requiring a system Python.
- Scope: Download and cache, build‑time environment injection, version validation, link info and rpath, runtime initialization assistance, dependency installation, and in‑bundle packaging (bundle).

### Overall Architecture

- Module: `llgo/internal/pyenv`
  - Role: The Python runtime configurator used during build.
  - Output: A Python Home (`PYHOME`) consumable by `build`, plus the `.pc` files, `libpython`, headers, standard library, and site‑packages needed for linking and running.

- Directory
```text
llgo/internal/pyenv
├─ pyenv.go
├─ pybuild.go
└─ fetch.go
```

## Core Responsibilities

- Download/Cache
  - Download and extract CPython into the cache directory: `~/Library/Caches/llgo/python_env/python` (aka `PYHOME`).
  - API: `EnsureWithFetch("")` (triggered from `build`).

- Build‑time Environment Injection
  - Set the minimal environment required for building:
    - Prepend `PYHOME/bin` to `PATH`
    - Append `PYHOME/lib/pkgconfig` to `PKG_CONFIG_PATH`
    - Clean up interfering variables (e.g., `PYTHONPATH`)
  - API: `EnsureBuildEnv()`

- Version and Usability Validation
  - Enforce Python 3.12 (configurable): in `Verify()`, check `sys.version_info` and run a minimal probe.
  - API: `Verify()`

- Link Consistency Fix (macOS)
  - Set `libpython3.*.dylib`’s `LC_ID_DYLIB` to `@rpath/libpython3.*.dylib` to eliminate absolute‑path dependencies (e.g., `/install/...`).
  - API: `FixLibpythonInstallName(pyHome)`

- Link/Runtime Path (rpath) Recommendation
  - Provide preferred rpath entries (primarily `PYHOME/lib`; optionally decide whether to fall back to system pkg‑config).
  - API: `FindPythonRpaths(pyHome)`

- Dependency Installation (site‑packages)
  - Install third‑party packages into `PYHOME/lib/python3.12/site-packages` with clear guidance and troubleshooting output.
  - APIs: `InstallPackages`, `PipInstall`

- Runtime Initialization Cooperation (todo)
  - Provide an embeddable C source (as a string) for `build` to compile into a `.o` that sets `home` (`PyConfig.home`) before `Py_Initialize`, supporting two layouts:
    - Frameworks bundle layout: `<exe_dir>/Frameworks/libpython...` → `home=<exe_dir>/python`
    - Regular cache layout: `<PYHOME>/lib/libpython...` → `home=<PYHOME>`
  - API: `PyInitFromExeDirCSource()`

- In‑bundle Packaging (bundle) (todo)
  - After a successful build, copy `libpython` and the standard library next to the executable to form an “app‑bundled Python” layout, and fix `install_name`:
    - `<exe_dir>/Frameworks/libpython3.12.dylib`
    - `<exe_dir>/python/lib/python3.12/` (including `lib-dynload/` and `site-packages/`)
  - Suggested API: `BundlePython(app string)` (implemented in `pyenv`, invoked by `build`)

## Integration Points with build (Call Order)

- Location: `llgo/internal/build/build.go` → `linkMainPkg(...)`
  1) Before expanding external link arguments:
     - `EnsureWithFetch("")`: prepare the cache
     - `EnsureBuildEnv()`: inject environment
     - `Verify()`: enforce 3.12
     - `FixLibpythonInstallName(pyHome)`: fix `LC_ID_DYLIB` (macOS)
  2) Aggregate link args and inject rpath:
     - `FindPythonRpaths(pyenv.PythonHome())`: prioritize `PYHOME/lib`
     - Add relative rpath: `@executable_path/../Frameworks` (done in `build`)
  3) Runtime initialization (if embedding is used):
     - `build` uses `PyInitFromExeDirCSource()` to generate a `.o`, and the main IR calls `__llgo_py_init_from_exedir()` (instead of `Py_Initialize()`)
  4) After a successful link (final artifact path known):
     - `pyenv.BundlePython(app)` (optional but recommended)

## Files/Functions (pyenv)

- `PythonHome() string`: returns `PYHOME` (default cache path; optionally honors explicit runtime settings first)
- `EnsureWithFetch(url string) error`: download/extract Python cache
- `EnsureBuildEnv() error`: inject build‑time environment
- `Verify() error`: enforce 3.12 and minimal run check
- `FixLibpythonInstallName(pyHome string) error`: fix `@rpath` (macOS)
- `FindPythonRpaths(pyHome string) []string`: return rpath candidates (at least `PYHOME/lib`)
- `InstallPackages(pkgs ...string) error`, `PipInstall(spec string) error`: install deps to `site-packages`
- `PyInitFromExeDirCSource() string`: return C source string for `build` to compile into a `.o`
- `BundlePython(app string) error` (suggested): copy `libpython` and stdlib next to the executable

## Directories and Layouts

- Cache layout (build/install source)
  - `~/Library/Caches/llgo/python_env/python/`
    - `bin/python3`
    - `include/python3.12/`
    - `lib/libpython3.12.dylib`
    - `lib/python3.12/` (with `lib-dynload/`, `site-packages/`)
    - `lib/pkgconfig/python-3.12-embed.pc`
- In‑bundle layout (todo)
  - `<exe_dir>/your_app`
  - `<exe_dir>/Frameworks/libpython3.12.dylib` (install_name: `@rpath/libpython3.12.dylib`)
  - `<exe_dir>/python/lib/python3.12/` (with `lib-dynload/`, `site-packages/`)

## Version and Platform Strategy

- Version: strictly require Python 3.12 by default (`Verify()`); can be parameterized (3.13+) with corresponding updates to `Fix...`, include paths, and `.pc` names.
- Platform:
  - macOS: focus on `install_name`, `@rpath`, `LC_RPATH`, and Frameworks bundle layout.
  - Others: keep rpath injection and home setting (Linux uses `DT_RPATH`/`RUNPATH`; Windows follows PATH/DLL rules, to be extended).
