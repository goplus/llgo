# Standard Library Test Coverage Tracker

This file tracks the status of standard library package test coverage for llgo.

## Validation Steps

Every suite under `test/std/<pkg>` **must** stay green under all three commands below. A package is not considered ready until each command succeeds:

1. `go test ./test/std/<pkg>` — validate behavior with the upstream Go toolchain.
2. `go run ./chore/check_std_symbols -pkg <pkg>` — enforce exported symbol coverage.
3. `./llgo.sh test ./test/std/<pkg>` — confirm the llgo runtime matches Go.

Use this loop to keep a suite healthy:

1. **Author coverage with Go (repeat until stable)**
   - Grow or refine tests under `test/std/<pkg>` until both `go test` and the symbol check pass.
2. **Port llgo runtime behavior (repeat until green)**
   - Run `./llgo.sh test ./test/std/<pkg>` and patch `runtime/internal/lib/<pkg>` (plus any shims) until it matches the Go results.
3. **Record progress**
   - Capture totals, blockers, and ownership notes below once all three commands pass.

When changes affect multiple suites, finish with the aggregate sweeps before updating this tracker:

- `go test ./test/std/...`
- `bash doc/_readme/scripts/check_std_cover.sh`
- `./llgo.sh test ./test/std/...`

## Legend

- ✅ Comprehensive coverage (>80% of package API tested)
- ⬜ Not started
- 🟡 Blocked

## Coverage Roadmap

### Core Collections & Strings

- ✅ `bytes` — 95/95
- ✅ `cmp` — 4/4
- 🟡 `iter` — 4/4 (fails under llgo runtime - depens coro )
- ✅ `maps` — 10/10
- ✅ `slices` — 40/40
- ✅ `sort` — 36/36
- ✅ `strings` — 80/80
- ✅ `strconv` — 40/40

### Math & Numerics

- ✅ `math` — 97/97
- ✅ `math/big` — 154/154
- 🟡 `math/bits` — 50/50 (expected panic on division by zero)
- ✅ `math/rand` — 37/37
- ✅ `math/rand/v2` — 54/54

### Containers & Utilities

- ✅ `container/heap` — 6/6
- ✅ `container/list` — 19/19

### Archives & Compression

- 🟡 `archive/tar` — 33/33 (expected ErrInsecurePath, got <nil>)
- 🟡 `archive/zip` — 36/36 (exit code -1)
- 🟡 `compress/flate` — 22/22 (fails under llgo runtime - skipped for llgo)
- 🟡 `compress/gzip` — 18/18 (fails under llgo runtime - skipped for llgo)
- 🟡 `compress/zlib` — 16/16 (fails under llgo runtime - skipped for llgo)

### I/O & Filesystems

- ✅ `bufio` — 51/51
- 🟡 `embed` — 4/4 (fails under llgo runtime - skipped for llgo)
- 🟡 `io` — 59/59
- 🟡 `io/fs` — 22/22 (fails under llgo runtime - skipped for llgo)
- 🟡 `io/ioutil` — 8/8
- 🟡 `os` — 157/157 (timeout with llgo - skipped for llgo)
- 🟡 `os/exec` — 7/7 (panic: todo: os.(\*File).WriteString)
- 🟡 `os/signal` — 6/6 (panic: signal_enable not implemented)
- 🟡 `os/user` — 11/11 (exit code -1)
- ✅ `path` — 9/9
- 🟡 `path/filepath` — 27/27

### Encoding & Serialization

- ✅ `encoding` — 6/6
- 🟡 `encoding/asn1` — 42/42 (undefined symbol: reflect.Copy)
- ✅ `encoding/base64` — 21/21
- ✅ `encoding/binary` — 22/22
- ✅ `encoding/csv` — 17/17
- 🟡 `encoding/hex` — 15/15
- 🟡 `encoding/json` — 48/48 (fails under llgo runtime - skipped for llgo)
- ✅ `encoding/pem` — 3/3

### Text & Unicode

- 🟡 `text/scanner` — 29/29 (fails under llgo runtime — see #1366)
- ✅ `text/tabwriter` — 11/11
- 🟡 `text/template` — 29/29 blocked (unique runtime gap — see #1358)
- ✅ `text/template/parse` — 82/82
- ✅ `unicode` — 292/292
- 🟡 `unicode/utf16` — 7/7 (Decode fails for emoji and certain characters)
- 🟡 `unicode/utf8` — 19/19 (DecodeLastRune/DecodeLastRuneInString return incorrect runes)
- ✅ `unique` — 2/2

### Time & Scheduling

- ✅ `time` — 101/101

### Crypto & Security

- ✅ `crypto` — 13/13
- 🟡 `crypto/aes` — 4/4 (timeout with llgo - skipped for llgo)
- 🟡 `crypto/cipher` — 9/9 (timeout with llgo - skipped for llgo)
- 🟡 `crypto/des` — 5/5 (timeout with llgo - skipped for llgo)
- 🟡 `crypto/dsa` — 9/9 (timeout with llgo - skipped for llgo)
- 🟡 `crypto/ecdh` — 12/12 (timeout with llgo - skipped for llgo)
- 🟡 `crypto/ecdsa` — 12/12 (timeout with llgo - skipped for llgo)
- 🟡 `crypto/ed25519` — 17/17 (timeout with llgo - skipped for llgo)
- 🟡 `crypto/elliptic` — 13/13 (timeout with llgo - skipped for llgo)
- 🟡 `crypto/hmac` — 2/2 (panic: todo: hmac.New: unsupported hash function)
- ✅ `crypto/md5` — 4/4
- 🟡 `crypto/rand` — 5/5 (timeout with llgo - skipped for llgo)
- 🟡 `crypto/rc4` — 5/5 (timeout with llgo - skipped for llgo)
- 🟡 `crypto/rsa` — 30/30 (timeout with llgo - skipped for llgo)
- ✅ `crypto/sha1` — 4/4
- 🟡 `crypto/sha256` — 7/7 (hash length = 32, want 28)
- 🟡 `crypto/sha3` — 23/23 (undefined symbol: crypto/internal/fips140.fatal crypto/internal/fips140.setIndicator crypto/internal/fips140.getIndicator crypto/internal/fips140/subtle.xorBytes)
- 🟡 `crypto/sha512` — 13/13 (hash length = 64, want 48)
- 🟡 `crypto/subtle` — 8/8 (undefined symbol: runtime.UnlockOSThread, internal/runtime/sys.EnableDIT, runtime.LockOSThread, internal/runtime/sys.DisableDIT, crypto/subtle.XORBytes)
- 🟡 `crypto/tls` — 113/113 blocked (unique runtime gap — see #1358)
- 🟡 `crypto/x509` — 76/76 (timeout with llgo - skipped for llgo)
- ✅ `crypto/x509/pkix` — 15/15

### Hashing

- ✅ `hash` — 11/11
- ✅ `hash/adler32` — 10/10
- ✅ `hash/crc32` — 11/11
- 🟡 `hash/maphash` — 16/16 (panic: intrinsic, should implement escapeForHash intrinsic)

### Networking & HTTP

- 🟡 `net` — 167/266 (unique runtime gap — see #1358)
- 🟡 `net/http` — 238/238 (unique runtime gap — see #1358)
- 🟡 `net/http/httptest` — 17/17 (unique runtime gap — see #1358)
- 🟡 `net/http/httptrace` — 6/6 (unique runtime gap — see #1358)
- ✅ `net/netip` — 63/63
- ✅ `net/textproto` — 36/36
- ✅ `net/url` — 41/41

### Concurrency & Context

- 🟡 `context` — 13/13 (fails under llgo runtime - skipped for llgo)
- 🟡 `sync` — 40/40 (failed tests)
- ✅ `sync/atomic` — 94/94

### Language Tooling

- ⬜ `go/ast` — 0/?
- ✅ `go/build` — 16/16
- ✅ `go/build/constraint` — 19/19
- ✅ `go/constant` — 14/14
- ⬜ `go/doc` — 0/?
- ⬜ `go/doc/comment` — 0/?
- ⬜ `go/importer` — 0/?
- 🟡 `go/parser` — 5/5 (hang up)
- ✅ `go/scanner` — 18/18
- ✅ `go/token` — 45/45
- ⬜ `go/types` — 0/?
- ✅ `go/version` — 3/3

### Runtime & System

- 🟡 `runtime` — 62/62 (2 tests fail: TestTypeAssertionError, TestCleanup - runtime implementation incomplete)
- 🟡 `runtime/debug` — 18/18 (timeout with llgo - skipped for llgo)
- 🟡 `runtime/pprof` — 15/15 (timeout with llgo - skipped for llgo)
- 🟡 `runtime/trace` — 10/10 (timeout with llgo - skipped for llgo)
- ⬜ `syscall` — 0/? SKIP
- ✅ `unsafe` — 8/8
- ✅ `weak` — 2/2

### Testing & Benchmarks

- 🟡 `testing` — 108/108 (fails under llgo runtime - skipped for llgo)
- 🟡 `testing/fstest` — 9/9 (fails under llgo runtime - skipped for llgo)
- ✅ `testing/iotest` — 10/10

### Application & Formatting

- ✅ `errors` — 6/6
- ✅ `flag` — 74/74
- ✅ `fmt` — 29/29
- ✅ `log` — 41/41
- ✅ `mime` — 13/13
- 🟡 `mime/multipart` — 7/7 (fails under llgo runtime - skipped for llgo)
- ✅ `mime/quotedprintable` — 5/5
- 🟡 `reflect` — 106/106 (blocked: missing ChanDir.String, Copy, Swapper)
- ✅ `regexp` — 45/45
- ✅ `regexp/syntax` — 10/10

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
