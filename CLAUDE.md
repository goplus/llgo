# LLGo Project AI Assistant Guide

This document provides essential information for AI assistants to help fix bugs and implement features in the LLGo project.

## About LLGo

LLGo is a Go compiler based on LLVM designed to better integrate Go with the C ecosystem, including Python and JavaScript. It's a subproject of the XGo project that aims to expand the boundaries of Go/XGo for game development, AI and data science, WebAssembly, and embedded development.

## Project Structure

- `cmd/llgo` - Main llgo compiler command (usage similar to `go` command)
- `cl/` - Core compiler logic that converts Go packages to LLVM IR
- `ssa/` - LLVM IR file generation using Go SSA semantics
- `internal/build/` - Build process orchestration
- `runtime/` - LLGo runtime library
- `chore/` - Development tools (llgen, llpyg, ssadump, etc.)
- `_demo/` - Example programs demonstrating C/C++ interop (`c/hello`, `c/qsort`) and Python integration (`py/callpy`, `py/numpy`)
- `_cmptest/` - Comparison tests to verify the same program gets the same output with Go and LLGo

## Development Environment

For detailed dependency requirements and installation instructions, see the [Dependencies](README.md#dependencies) and [How to install](README.md#how-to-install) sections in the README.

## Testing & Validation

The following commands and workflows are essential when fixing bugs or implementing features in the LLGo project:

### Run all tests
```bash
go test ./...
```

**Note:** Some tests may fail if optional dependencies (like Python) are not properly configured. The test suite includes comprehensive tests for:
- Compiler functionality
- SSA generation
- C interop
- Python integration (requires Python development headers)

### Write and run tests for your changes

When adding new functionality or fixing bugs, create appropriate test cases:

```bash
# Add your test to the relevant package's *_test.go file
# Then run tests for that package
go test ./path/to/package

# Or run all tests
go test ./...
```

**Important:** The `LLGO_ROOT` environment variable must be set to the repository root when running llgo commands during development.

### Mandatory stdlib suite pipeline

Use this workflow for each `test/std/<pkg>` suite:

1. **Author coverage and host checks** — iterate until the Go harness is green:
   - Write or extend tests under `test/std/<pkg>`.
   - Run `go test ./test/std/<pkg>`.
   - Run `go run ./chore/check_std_symbols -pkg <pkg>`.
2. **Freeze the suite and port runtime behavior** — loop until llgo matches Go:
   - Run `./llgo.sh test ./test/std/<pkg>`.
   - Patch `runtime/internal/lib/<pkg>` (and any required shims) until the llgo run succeeds.
3. **Record progress** — update `test/TODO.md` with the new totals, blockers, and ownership notes.

After multiple suites are healthy, run the aggregated checks to prevent regressions:

```bash
go test ./test/std/...
bash doc/_readme/scripts/check_std_cover.sh
./llgo.sh test ./test/std/...
```

The coverage script automatically discovers packages beneath `test/std`; ensure new suites build cleanly so `go list ./test/std/...` can enumerate them.

## Code Quality

Before submitting any code updates, you must run the following formatting and validation commands:

### Format code
```bash
go fmt ./...
```

**Important:** Always run `go fmt ./...` before committing code changes. This ensures consistent code formatting across the project.

### Run static analysis
```bash
go vet ./...
```

**Note:** Currently reports some issues related to lock passing by value in `ssa/type_cvt.go` and a possible unsafe.Pointer misuse in `cl/builtin_test.go`. These are known issues.


## Common Development Tasks

### Build the entire project
```bash
go build -v ./...
```

### Build llgo command specifically
```bash
go build -o llgo ./cmd/llgo
```

### Check llgo version
```bash
llgo version
```

### Install llgo for system-wide use
```bash
./install.sh
```

### Build development tools
```bash
go install -v ./cmd/...
go install -v ./chore/...
```

## Key Modules for Understanding

- `ssa` - Generates LLVM IR using Go SSA semantics
- `cl` - Core compiler converting Go to LLVM IR
- `internal/build` - Orchestrates the compilation process

### Runtime Library Patch Policy

Standard-library shims under `runtime/internal/lib` should follow these principles:

1. Prefer reuse of upstream Go implementations; only diverge when necessary.
2. When only a handful of symbols are incompatible (e.g., goroutine or timer internals), add `//llgo:skip sym1 sym2` in the patched package to suppress the upstream definitions, then provide replacements under `runtime/internal/lib`.
3. If an entire package is fundamentally incompatible, apply `//llgo:skipall` and reimplement it in `runtime/internal/lib`.
4. When patching, lean on existing helpers in `runtime/internal/clite` or other `runtime/` subpackages instead of introducing ad-hoc glue.

## Debugging

### Disable Garbage Collection
For testing purposes, you can disable GC:
```bash
LLGO_ROOT=/path/to/llgo llgo run -tags nogc .
```

## LLGO_ROOT Environment Variable

**CRITICAL:** Always set `LLGO_ROOT` to the repository root when running llgo during development:

```bash
export LLGO_ROOT=/path/to/llgo
# or
LLGO_ROOT=/path/to/llgo llgo run .
```

## Important Notes

1. **Testing Requirement:** All bug fixes and features MUST include tests
2. **Demo Directory:** Examples in `_demo` are prefixed with `_` to prevent standard `go` command from trying to compile them
3. **Defer in Loops:** LLGo intentionally does not support `defer` in loops (considered bad practice)
4. **C Ecosystem Integration:** LLGo uses `go:linkname` directive to link external symbols through ABI
5. **Python Integration:** Third-party Python libraries require separate installation of library files
