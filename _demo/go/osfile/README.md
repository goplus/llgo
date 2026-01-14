# os.File Methods Demo

This demo tests the os.File methods implemented in LLGo:
- `Write` and `WriteString`
- `ReadAt`
- `WriteAt`
- `Seek`

## Current Limitation

**Note:** This demo currently cannot be run with `llgo run` due to Go 1.25 runtime dependencies.

The standard library's `os` and `internal/poll` packages in Go 1.25+ use `runtime.Cleanup` and `runtime.AddCleanup` features that are not yet implemented in LLGo's runtime. These functions are deeply integrated with Go's garbage collector for automatic resource cleanup.

## Testing the Implementation

The os.File methods are fully implemented and tested in LLGo's runtime. They are used internally and can be tested through:

1. **Unit tests**: Run `go test ./...` to test the compiler and runtime
2. **Runtime tests**: The implementations in `runtime/internal/lib/os/` are tested as part of the build process

## Methods Implemented

- **ReadAt(b []byte, off int64)**: Reads from a specific offset without changing the file position
- **WriteAt(b []byte, off int64)**: Writes to a specific offset without changing the file position
- **Seek(offset int64, whence int)**: Sets the file position for next Read/Write
- **WriteString(s string)**: Writes a string to the file
- **ReadFrom(r io.Reader)**: Implements io.ReaderFrom interface

All implementations follow Go standard library semantics and properly handle:
- Error conditions
- Partial reads/writes
- O_APPEND mode restrictions for WriteAt
- EAGAIN/blocking mode for non-blocking file descriptors
