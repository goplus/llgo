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

### Standard Library Compatibility Tests

When working on the `test/std` suites, keep both Go and llgo test runners in sync:

```bash
# Run all stdlib compatibility tests with the Go toolchain
go test ./test/std/...

# Verify exported symbol coverage (math, strings, slices today)
go run ./chore/check_std_symbols \
  -pkg math=test/std/math \
  -pkg strings=test/std/strings \
  -pkg slices=test/std/slices

# Execute the suites under llgo (ensures runtime support)
./llgo.sh test ./test/std/...
```

If you add another stdlib package suite, include it in the `check_std_symbols` invocation and the llgo test command before submitting.

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
