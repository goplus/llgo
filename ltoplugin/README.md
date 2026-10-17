# LLGo LTO Plugin

This directory contains the optional LLVM new pass manager plugin used by LLGo
full LTO builds. It is not required to build or use LLGo.

Build with the LLVM toolchain used by the linker. LLGo itself still uses
LLVM 22; macOS arm64 native links use external LLD 23.x >= 23.1.3 and therefore
require an LLVM 23 plugin. Other native platforms retain LLVM 22.

For macOS arm64 with Homebrew:

```sh
cmake -S ltoplugin -B ltoplugin/build \
  -DLLVM_DIR="$(brew --prefix llvm@23)/lib/cmake/llvm" \
  -DCMAKE_BUILD_TYPE=Release
cmake --build ltoplugin/build
```

For an LLVM 22 linker:

```sh
cmake -S ltoplugin -B ltoplugin/build \
  -DLLVM_DIR=/path/to/llvm-22/lib/cmake/llvm \
  -DCMAKE_BUILD_TYPE=Release
cmake --build ltoplugin/build
```

Load the plugin when building with full LTO on Linux/ELF or macOS/Mach-O:

```sh
llgo build -lto=full -lto-pass-plugin=/path/to/LLGOLTOPlugin.so ./...
```

On macOS the build produces `LLGOLTOPlugin.dylib`:

```sh
llgo build -lto=full -lto-pass-plugin=/path/to/LLGOLTOPlugin.dylib ./...
```

The plugin must match the host architecture and the LLVM toolchain used by the
linker. LLVM 22 plugin binaries are not interchangeable with LLVM 23 plugins.
For plugin tests, set `LLGO_LTO_OPT` to that toolchain's `bin/opt`; keep the
compiler's `llvm-config` and LLVM library on version 22.

The plugin registers `llgo-lto-pre-globaldce` and also inserts that pass through
LLVM's full LTO early extension point, so loading the plugin is enough for the
pass to run before the normal full LTO optimization pipeline proceeds.

LLGo forwards the plugin path through lld's `--load-pass-plugin` option using
Clang's `-Xlinker` forwarding, including paths containing spaces or commas.
On macOS arm64, native links explicitly select external LLD 23. Other native
platforms retain `-fuse-ld=lld` and their LLVM 22 linker lookup. Apple's system
linker does not support this plugin option.

Windows targets are not supported by the plugin yet. LLVM 22's MSVC-style
`lld-link` and MinGW lld driver do not expose a new pass manager LTO plugin
loading option. Ordinary full and thin LTO remain available on Windows.
Enabling plugins there requires linker-side support and a compatible Windows
plugin build; forwarding the ELF flag or loading a frontend pass is insufficient.

The relevant LLVM 22 interfaces are
[Mach-O options](https://github.com/llvm/llvm-project/blob/llvmorg-22.1.8/lld/MachO/Options.td),
[Mach-O LTO configuration](https://github.com/llvm/llvm-project/blob/llvmorg-22.1.8/lld/MachO/LTO.cpp),
[COFF options](https://github.com/llvm/llvm-project/blob/llvmorg-22.1.8/lld/COFF/Options.td),
and [MinGW options](https://github.com/llvm/llvm-project/blob/llvmorg-22.1.8/lld/MinGW/Options.td).
