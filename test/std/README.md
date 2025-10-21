# Standard Library Compatibility Tests

This directory contains compatibility tests for the Go standard library on llgo. These tests ensure that llgo's libc-backed implementations conform to the Go standard library specification across multiple Go versions (1.21-1.25).

## Directory Structure

```
test/std/
├── README.md           # This file
├── common/
│   └── testing.go      # Shared test utilities
├── math/
│   ├── math_test.go         # Core math tests (no build tags)
│   ├── math_go124_test.go   # Go 1.24+ specific tests
│   ├── math_bench_test.go   # Performance benchmarks
│   └── testdata/            # Test fixtures (if needed)
└── ... other packages
```

## Test Organization

### Package Structure

Each standard library package should have its own subdirectory under `test/std/`. For example:
- `test/std/math/` - tests for the `math` package
- `test/std/strings/` - tests for the `strings` package
- `test/std/io/` - tests for the `io` package

### File Naming Conventions

- **`<package>_test.go`**: Core tests that run on both `go test` and `llgo test`. These files should NOT have `//go:build llgo` tags so they validate compatibility with standard Go.

- **`<package>_go1XX_test.go`**: Version-specific tests for Go 1.XX+ APIs. Use build tags like `//go:build go1.24` to gate features only available in newer Go versions.

- **`<package>_bench_test.go`**: Benchmarks for performance-sensitive functions. At least one benchmark is recommended per package.

- **`testdata/`**: Directory for test fixtures, golden files, or other test data.

## Build Tags

### Standard Tests (no tags)

Core functionality tests should NOT use `//go:build llgo` tags:

```go
package math_test

import (
	"math"
	"testing"
)

func TestSqrt(t *testing.T) {
	result := math.Sqrt(4.0)
	if result != 2.0 {
		t.Errorf("Sqrt(4.0) = %v, want 2.0", result)
	}
}
```

This ensures both `go test` and `llgo test` exercise the same test suite.

### Version-Specific Tests

For APIs introduced in Go 1.24 or later:

```go
//go:build go1.24
// +build go1.24

package math_test

import "testing"

func TestNewGo124API(t *testing.T) {
	// Test Go 1.24+ specific functionality
}
```

### llgo-Specific Tests

Tests that require llgo-specific runtime features belong in `test/c/` or `test/py/`, not here. Those directories use `//go:build llgo` tags.

## Common Test Utilities

The `test/std/common/testing.go` package provides shared helpers:

- **`AssertFloatNear(t, got, want, tolerance)`**: Compare floating-point values with tolerance
- **`SkipIfShort(t)`**: Skip test in short mode (`go test -short`)
- **`SkipIfNoFS(t)`**: Skip test if filesystem access is unavailable
- **`DeterministicRand(seed)`**: Create reproducible random source for tests
- **`RunTableTests(t, name, cases, testFn)`**: Helper for table-driven tests

Example usage:

```go
import "github.com/goplus/llgo/test/std/common"

func TestSin(t *testing.T) {
	result := math.Sin(math.Pi / 2)
	common.AssertFloatNear(t, result, 1.0, 1e-10)
}
```

## Documenting Unsupported Features

If llgo doesn't yet support a feature, use `t.Skip()` with a TODO identifier:

```go
func TestUnsupportedFeature(t *testing.T) {
	t.Skip("TODO(issue-1234): implement feature X in llgo runtime")
	// Test code here
}
```

This allows:
1. Tests to be written before full implementation
2. Clear tracking of what's missing
3. Easy identification of work items for contributors

## Adding Benchmarks

Performance-sensitive packages should include at least one benchmark:

```go
func BenchmarkSqrt(b *testing.B) {
	x := 2.0
	for i := 0; i < b.N; i++ {
		math.Sqrt(x)
	}
}
```

Run benchmarks with:
```bash
go test -bench=. ./test/std/math/
# or with llgo
llgo test -bench=. ./test/std/math/
```

## Running Tests

### Standard Go

```bash
# Run all stdlib compatibility tests
go test ./test/std/...

# Run specific package tests
go test ./test/std/math/

# Run tests in short mode
go test -short ./test/std/...

# Run benchmarks
go test -bench=. ./test/std/math/
```

### llgo

```bash
# Run all tests (requires LLGO_ROOT environment variable)
./llgo.sh test ./test/...

# Or with installed llgo
llgo test ./test/...

# Run specific package
llgo test ./test/std/math/
```

## Contributing New Package Tests

1. **Create package directory**: `mkdir test/std/<package>`

2. **Write core tests**: Create `<package>_test.go` with functional test cases

3. **Add benchmarks**: Create `<package>_bench_test.go` with at least one benchmark

4. **Handle version differences**: If needed, create `<package>_go1XX_test.go` files

5. **Use common helpers**: Import `github.com/goplus/llgo/test/std/common` for utilities

6. **Document gaps**: Use `t.Skip("TODO: ...")` for unsupported features

7. **Update tracking**: Add entry to `test/TODO.md`

8. **Validate**: Ensure tests pass with both `go test` and `llgo test`

## Test Coverage Goals

Focus on:
- **Core functionality**: Cover main API surface area
- **Edge cases**: Boundary conditions, special values (NaN, Inf, zero)
- **Error conditions**: Invalid inputs, error paths
- **Performance**: Key hot-path functions
- **Compatibility**: Behavior matches standard Go across versions

## Related Directories

- **`test/c/`**: llgo-specific C interop tests (uses `//go:build llgo`)
- **`test/py/`**: llgo-specific Python interop tests (uses `//go:build llgo`)
- **`_cmptest/`**: Comparison tests ensuring Go/llgo output equivalence

The `test/std/` suite focuses on validating standard library API conformance, while `_cmptest/` validates behavioral equivalence through end-to-end comparison.
