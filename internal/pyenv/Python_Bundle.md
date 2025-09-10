# Packaging the Python Environment

Currently, Go–Python programs compiled by llgo depend on 

- the system’s native Python environment
- on a Python runtime built at compile time

We need a Python packaging approach that enables llgo-compiled Go–Python binaries to run independently of the native Python environment.

## Current Python Build Workflows

### PyInstaller

- Build phase
  - Hook scripts
    - Analysis-00.toc
    ```
     [('numpy/.dylibs/libgcc_s.1.1.dylib',
       '/Users/mac/xgo/test/.venv/lib/python3.12/site-packages/numpy/.dylibs/libgcc_s.1.1.dylib',
       'BINARY'),
      ('numpy/.dylibs/libgfortran.5.dylib',
       '/Users/mac/xgo/test/.venv/lib/python3.12/site-packages/numpy/.dylibs/libgfortran.5.dylib',
       'BINARY')]
    ```
  - PYZ-00.toc lists pure-Python modules; PKG-00.toc lists binary extensions(table of contents)
  - EXE-00.toc describes the final assembly steps
  - hook = import analysis + hook-*.py files
    - hook-*.py are maintained by PyInstaller under site-packages/PyInstaller/hooks/

- Runtime phase
  - The bootloader unpacks the onefile to a temporary directory, then runs as a regular CPython process

- Supports onedir/onefile
  - onefile is self-extracting

### PyOxidizer

Rust-based packaging that embeds CPython; pure Python can be “loaded from memory”.

- Build time
  - Embed CPython as a Rust crate into a single executable
  - Build pure Python resources into an “embedded resource filesystem” (in-memory FS) or as attached resources
- Runtime
  - Initialize the embedded interpreter, install a custom importer, and load pure Python directly from the “in-memory FS” (no unpacking)
  - C extensions/dynamic libraries generally must be written to disk (platform restrictions) and dlopen’d from a temporary directory
- Most similar to a onefile experience

### Nuitka

- A more complex pipeline; essentially transpiles Python modules to C/C++ source files, but still relies on CPython at runtime

## llgo’s Python packaging workflow

### onedir

Copy required components next to the executable after the build:

- `<exe_dir>/your_app`
- `<exe_dir>/python/lib/libpython3.12.dylib` (install_name: `@rpath/libpython3.12.dylib`)
- `<exe_dir>/python/lib/libxxx.dylib`
- `<exe_dir>/python/lib/python3.12/` (with `lib-dynload/`, `site-packages/`)

### onefile

- Bold approach (brute-force)
  - Package everything from the onedir layout into a zip/whl
  - Embed it via `go:embed`
  - At runtime, the entrypoint extracts to a cache directory
  - Explicitly dlopen the extracted libpython path, or rely on rpath

- Optimized approach
  - Borrow PyInstaller’s workflow or reuse its intermediate .toc files
  - Parse Python dependencies, but still use the “embed-then-extract” runtime strategy after embedding the resources

## todo list
- site-package downloading
- release content
