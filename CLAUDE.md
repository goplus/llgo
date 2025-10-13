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
- `_demo/` - Example programs (prefixed with `_` to prevent standard `go` command compilation)
- `_cmptest/` - Comparison tests to verify the same program gets the same output with Go and LLGo

## Development Environment

For detailed dependency requirements and installation instructions, see the [Dependencies](README.md#dependencies) and [How to install](README.md#how-to-install) sections in the README.

## Build Commands

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

## Testing

### Run all tests
```bash
go test ./...
```

**Note:** Some tests may fail if optional dependencies (like Python) are not properly configured. The test suite includes comprehensive tests for:
- Compiler functionality
- SSA generation
- C interop
- Python integration (requires Python development headers)

### Test a simple example
```bash
cd _demo/c/hello
LLGO_ROOT=/path/to/llgo llgo run .
```

**Important:** The `LLGO_ROOT` environment variable must be set to the repository root when running llgo commands during development.

## Code Quality

### Format code
```bash
go fmt ./...
```

### Run static analysis
```bash
go vet ./...
```

**Note:** Currently reports some issues related to lock passing by value in `ssa/type_cvt.go` and a possible unsafe.Pointer misuse in `cl/builtin_test.go`. These are known issues.

## Running Examples

The `_demo` directory contains working examples:

### C Standard Library Examples
```bash
cd _demo/c/hello
LLGO_ROOT=/path/to/llgo llgo run .
```

Other C examples:
- `_demo/c/concat` - Variadic function with fprintf
- `_demo/c/qsort` - C function callbacks

### Python Integration Examples
```bash
cd _demo/py/callpy
LLGO_ROOT=/path/to/llgo llgo run .
```

Other Python examples:
- `_demo/py/pi` - Python constants
- `_demo/py/statistics` - Python list and statistics
- `_demo/py/matrix` - NumPy demo

## Common Development Tasks

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

## Important Notes

1. **LLGO_ROOT:** Always set `LLGO_ROOT` to the repository root when running llgo during development
2. **Demo Directory:** Examples in `_demo` are prefixed with `_` to prevent standard `go` command from trying to compile them
3. **Defer in Loops:** LLGo intentionally does not support `defer` in loops (considered bad practice)
4. **C Ecosystem Integration:** LLGo uses `go:linkname` directive to link external symbols through ABI
5. **Python Integration:** Third-party Python libraries require separate installation of library files

## Validation

The following commands and workflows have been validated in the development environment:

### Build Validation
- `go build -v ./...` - Successfully builds all packages without errors
- `go build -o llgo ./cmd/llgo` - Builds the llgo command
- `llgo version` - Output: `llgo v0.11.6-0.20251012014242-7e1abf1486b7 linux/amd64`

### Code Quality Validation
- `go fmt ./...` - Runs successfully with no output (all files properly formatted)
- `go vet ./...` - Reports known issues in `ssa/type_cvt.go` and `cl/builtin_test.go`

### Testing Validation
- `go test ./...` - Runs test suite (some tests require Python dependencies)
- `LLGO_ROOT=/workspace llgo run .` in `_demo/c/hello` - Output:
  ```
  hello world by println
  hello world by fmt.Println
  Hello world by c.Printf
  ```

### Environment
- Go: 1.24.5 linux/amd64
- Operating System: Linux 5.4.0-164-generic

All failures or limitations are documented in the relevant sections above.
