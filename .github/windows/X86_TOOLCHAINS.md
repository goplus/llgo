# Windows x86 release build inputs

Official LLVM 22 does not publish the native i686 development SDK needed to
build a 32-bit LLGo host. The x86 producer therefore builds the SDK and ESP
payload from the exact producer revision pinned in `build-x86-toolchains.sh`.
That producer revision is in `cpunion/espressif-llvm-project-prebuilt`: its
x86 SDK builder has not yet been merged into the organization repository.
The fork supplies build recipes and patches; LLVM and Espressif sources and
the llvm-mingw bootstrap are identified in its pinned `toolchain.env`.

The producer fetches a full commit ID and checks the checkout before running
it. Mirroring that revision under an organization-owned ref would remove the
personal fork's availability dependency; changing the source URL alone does
not establish such a mirror.

Source-built archives include build-dependent metadata and have no asserted
reproducible archive checksum. They are built afresh in each workflow run and
are not restored from an Actions cache. Only the downloaded bootstrap is
cached; its independent source-pinned SHA-256 is verified before extraction.
Comment edits to the producer script do not invalidate that download cache.

The producer sends the two resulting SHA-256 values through job outputs as
well as creating portable sidecars. Compiler/packaging jobs require those
outputs before extracting the run-scoped artifact. Replacing both an archive
and its in-artifact sidecar cannot change the expected producer hash.
`release.json` records the same verified ESP hash as the identity of the
source-built payload, rather than claiming a separately published binary pin.

The x86 producer has a 240-minute budget. Its compiler, packaging, and tests
run separately from amd64/arm64, so those architectures do not wait for the
source build. WinGet candidates and publication still require all six ZIPs
and all architecture tests to pass.
