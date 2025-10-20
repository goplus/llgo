# go/types Issue Test Cases

This directory contains test cases for issues with the `go/types` package in llgo.

## Issue #1357: Scope.Insert segmentation fault

**Status**: Known issue - requires compiler fix

**Description**: Calling `types.Scope.Insert()` causes a segmentation fault in llgo but works correctly with standard Go.

**Root Cause**: Compiler bug in llgo's type metadata generation. When stdlib packages (like `go/types`) access their own unexported map fields with interface values, the generated `*abi.MapType` metadata is invalid/null, causing a segfault in runtime map functions.

**Test Case**: `scope_insert.go`

**Expected Behavior** (with standard Go):
```bash
$ go run scope_insert.go
=== Scope Insert Test ===

✓ Insert successful: x
✓ Insert failed as expected: x already exists
✓ Insert successful: y

Scope contains 2 objects
✓ Scope length check passed

All objects:
  - x: int
  - y: string
```

**Actual Behavior** (with llgo):
```bash
$ llgo run scope_insert.go
=== Scope Insert Test ===

signal: segmentation fault
```

**Technical Details**:
- The issue is in `ssa/abitype.go` (`abiMapOf` function) and `ssa/datastruct.go` (map access operations)
- Type metadata for maps with interface values in stdlib packages is not correctly initialized
- The `MapAccess1`/`MapAssign` runtime functions receive null/invalid type metadata
- This is a self-referential type generation issue specific to stdlib compilation

**Workaround**: 
- Avoid using `go/types`, `go/parser`, and `go/ast` packages in llgo programs
- Use `reflect` package for runtime type information
- Run code analysis with standard Go compiler

**Related Issues**: 
- #642 - Tracking stdlib package implementation status

**For Developers**:
This test case should pass once the compiler bug is fixed. It serves as a regression test.
