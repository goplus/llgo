# Standard Library Test Coverage Tracker

This file tracks the status of standard library package test coverage for llgo.

## Legend

- ✅ Comprehensive coverage (>80% of package API tested)
- 🟡 Partial coverage (basic tests exist, gaps remain)
- 📝 Planned (directory structure exists, minimal tests)
- ⬜ Not started
- ⏭️ Deferred (low priority or blocked)

## Priority 1: Core Packages

| Package | Status | Functions Tested | Benchmarks | Notes | Owner |
|---------|--------|------------------|------------|-------|-------|
| `math` | ✅ | 10 core functions (Sin, Cos, Tan, Sqrt, Exp, Log, Pow, Abs, Mod, Frexp) | ✅ 10 benchmarks | Initial implementation complete | - |
| `strings` | ⬜ | - | - | High priority | - |
| `bytes` | ⬜ | - | - | High priority | - |
| `strconv` | ⬜ | - | - | Format/parse functions | - |
| `sort` | ⬜ | - | - | Sorting algorithms | - |

## Priority 2: I/O Packages

| Package | Status | Functions Tested | Benchmarks | Notes | Owner |
|---------|--------|------------------|------------|-------|-------|
| `io` | ⬜ | - | - | Core interfaces | - |
| `bufio` | ⬜ | - | - | Buffered I/O | - |
| `io/fs` | ⬜ | - | - | Filesystem interfaces | - |
| `os` | ⬜ | - | - | Partial support documented | - |
| `path` | ⬜ | - | - | Path manipulation | - |
| `path/filepath` | ⬜ | - | - | OS-specific paths | - |

## Priority 3: Encoding Packages

| Package | Status | Functions Tested | Benchmarks | Notes | Owner |
|---------|--------|------------------|------------|-------|-------|
| `encoding/json` | ⬜ | - | - | JSON encoding/decoding | - |
| `encoding/base64` | ⬜ | - | - | Base64 encoding | - |
| `encoding/hex` | ⬜ | - | - | Hex encoding | - |
| `encoding/csv` | ⬜ | - | - | CSV parsing | - |
| `encoding/binary` | ⬜ | - | - | Binary encoding | - |

## Priority 4: Crypto & Hashing

| Package | Status | Functions Tested | Benchmarks | Notes | Owner |
|---------|--------|------------------|------------|-------|-------|
| `hash` | ⬜ | - | - | Hash interfaces | - |
| `crypto/md5` | ⬜ | - | - | MD5 hashing | - |
| `crypto/sha1` | ⬜ | - | - | SHA1 hashing | - |
| `crypto/sha256` | ⬜ | - | - | SHA256 hashing | - |
| `crypto/sha512` | ⬜ | - | - | Partial support | - |

## Priority 5: Concurrency & Sync

| Package | Status | Functions Tested | Benchmarks | Notes | Owner |
|---------|--------|------------------|------------|-------|-------|
| `sync` | ⬜ | - | - | Partial support | - |
| `sync/atomic` | ⬜ | - | - | Atomic operations | - |
| `context` | ⬜ | - | - | Context handling | - |

## Priority 6: Other Important Packages

| Package | Status | Functions Tested | Benchmarks | Notes | Owner |
|---------|--------|------------------|------------|-------|-------|
| `fmt` | ⬜ | - | - | Partial support | - |
| `errors` | ⬜ | - | - | Error handling | - |
| `time` | ⬜ | - | - | Partial support | - |
| `regexp` | ⬜ | - | - | Regular expressions | - |
| `flag` | ⬜ | - | - | Command-line flags | - |
| `log` | ⬜ | - | - | Logging | - |

## Deferred / Low Priority

| Package | Status | Reason |
|---------|--------|--------|
| `net` | ⏭️ | Network stack complexity, partial llgo support |
| `net/http` | ⏭️ | Depends on full net support |
| `database/sql` | ⏭️ | Requires database drivers |
| `reflect` | ⏭️ | Partial support, complex runtime integration |
| `runtime` | ⏭️ | Partial support, llgo-specific implementation |

## How to Contribute

1. **Claim a package**: Add your GitHub handle to the "Owner" column
2. **Create tests**: Follow the guide in `test/std/README.md`
3. **Update status**: Change status as you make progress
4. **Add details**: Update "Functions Tested" and "Benchmarks" columns
5. **Document gaps**: Use `t.Skip("TODO: ...")` for unsupported features
6. **Submit PR**: Include test files and update this tracker

## Notes

- Focus on **breadth** first: cover basic functionality for many packages
- Then add **depth**: expand coverage for critical packages
- **Document** all gaps with `t.Skip()` and TODO comments
- **Benchmark** performance-sensitive operations
- Tests should pass with both `go test` and `llgo test`
- See existing `test/std/math/` as a reference implementation

## Tracking Issues

Related GitHub issues for follow-up work:
- Tag issues with `stdlib-tests` label
- Reference this tracker in issue descriptions
- Link package-specific issues in the "Notes" column above
