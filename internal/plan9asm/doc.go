// Package plan9asm provides an experimental translator from Go/Plan 9 assembly
// syntax (the `.s` files used in the Go standard library) into LLVM IR.
//
// Scope (initial):
//   - Focus on a small subset sufficient for leaf functions used as building
//     blocks (CRC/byte ops/syscall stubs), without depending on Go's assembler.
//   - The first implementation targets amd64-like integer ops and a simplified
//     ABI model for tests. It is not yet a drop-in replacement for the full
//     Go assembler.
//
// This package is intentionally self-contained (no dependency on llgo's SSA
// pipeline) so it can be iterated independently and unit tested by compiling
// the produced `.ll` with llc/clang.
package plan9asm
