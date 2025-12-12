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

## 15s llgo sweep (Dec 12 2025)

Ran `./llgo.sh test -c -o /tmp/llgo_<pkg>.test ./test/std/<pkg>` (15s timeout) then `/tmp/llgo_<pkg>.test -test.timeout=15s` after stripping `//go:build !llgo`. Outcomes:

- ✅ Passed: `hash/maphash`, `log`
- ❌ Test failed: `archive/tar`, `archive/zip`, `compress/flate`, `compress/gzip`, `compress/zlib`, `context`, `crypto/hmac`, `crypto/sha256`, `crypto/sha512`, `embed`, `encoding/hex`, `encoding/json`, `go/parser`, `io`, `io/fs`, `math/bits`, `os/exec`, `os/signal`, `os/user`, `path/filepath`, `runtime`, `testing`, `testing/fstest`, `text/scanner`, `text/template`, `unicode/utf16`, `unicode/utf8`
- 🛑 Compile failed: `crypto/aes`, `crypto/cipher`, `crypto/des`, `crypto/dsa`, `crypto/ecdh`, `crypto/ecdsa`, `crypto/ed25519`, `crypto/elliptic`, `crypto/rand`, `crypto/rc4`, `crypto/rsa`, `crypto/sha3`, `crypto/subtle`, `crypto/tls`, `crypto/x509`, `encoding/asn1`, `io/ioutil`, `iter`, `mime/multipart`, `net`, `net/http`, `net/http/httptest`, `net/http/httptrace`, `os`, `reflect`, `runtime/debug`, `runtime/pprof`, `runtime/trace`, `sync`

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

- 🟡 `archive/tar` — 33/33 (llgo test fails in 15s sweep: ErrInsecurePath <nil>)
- 🟡 `archive/zip` — 36/36 (llgo test fails in 15s sweep: exit code -1)
- 🟡 `compress/flate` — 22/22 (llgo test fails in 15s sweep)
- 🟡 `compress/gzip` — 18/18 (llgo test fails in 15s sweep)
- 🟡 `compress/zlib` — 16/16 (llgo test fails in 15s sweep)

### I/O & Filesystems

- ✅ `bufio` — 51/51
- 🟡 `embed` — 4/4 (llgo test fails in 15s sweep)
- 🟡 `io` — 59/59 (llgo test timed out in 15s sweep)
- 🟡 `io/fs` — 22/22 (llgo test fails in 15s sweep)
- 🟡 `io/ioutil` — 8/8 (llgo compile fails in 15s sweep)
- 🟡 `os` — 157/157 (llgo compile fails in 15s sweep)
- 🟡 `os/exec` — 7/7 (llgo test fails in 15s sweep: todo File.WriteString)
- 🟡 `os/signal` — 6/6 (llgo test fails in 15s sweep: signal_enable not implemented)
- 🟡 `os/user` — 11/11 (llgo test fails in 15s sweep: exit code -1)
- ✅ `path` — 9/9
- 🟡 `path/filepath` — 27/27

### Encoding & Serialization

- ✅ `encoding` — 6/6
- 🟡 `encoding/asn1` — 42/42 (llgo compile fails: undefined symbol reflect.Copy)
- ✅ `encoding/base64` — 21/21
- ✅ `encoding/binary` — 22/22
- ✅ `encoding/csv` — 17/17
- 🟡 `encoding/hex` — 15/15 (llgo test fails in 15s sweep)
- 🟡 `encoding/json` — 48/48 (llgo test fails in 15s sweep)
- ✅ `encoding/pem` — 3/3

### Text & Unicode

- 🟡 `text/scanner` — 29/29 (llgo test fails in 15s sweep — see #1366)
- ✅ `text/tabwriter` — 11/11
- 🟡 `text/template` — 29/29 (llgo test timed out in 15s sweep; unique runtime gap — see #1358)
- ✅ `text/template/parse` — 82/82
- ✅ `unicode` — 292/292
- 🟡 `unicode/utf16` — 7/7 (llgo test fails in 15s sweep: Decode mismatch)
- 🟡 `unicode/utf8` — 19/19 (llgo test fails in 15s sweep: DecodeLastRune*)
- ✅ `unique` — 2/2

### Time & Scheduling

- ✅ `time` — 101/101

### Crypto & Security

- ✅ `crypto` — 13/13
- 🟡 `crypto/aes` — 4/4 (llgo compile fails in 15s sweep)
- 🟡 `crypto/cipher` — 9/9 (llgo compile fails in 15s sweep)
- 🟡 `crypto/des` — 5/5 (llgo compile fails in 15s sweep)
- 🟡 `crypto/dsa` — 9/9 (llgo compile fails in 15s sweep)
- 🟡 `crypto/ecdh` — 12/12 (llgo compile fails in 15s sweep)
- 🟡 `crypto/ecdsa` — 12/12 (llgo compile fails in 15s sweep)
- 🟡 `crypto/ed25519` — 17/17 (llgo compile fails in 15s sweep)
- 🟡 `crypto/elliptic` — 13/13 (llgo compile fails in 15s sweep)
- 🟡 `crypto/hmac` — 2/2 (llgo test fails in 15s sweep: hmac.New unsupported)
- ✅ `crypto/md5` — 4/4
- 🟡 `crypto/rand` — 5/5 (llgo compile fails in 15s sweep)
- 🟡 `crypto/rc4` — 5/5 (llgo compile fails in 15s sweep)
- 🟡 `crypto/rsa` — 30/30 (llgo compile fails in 15s sweep)
- ✅ `crypto/sha1` — 4/4
- 🟡 `crypto/sha256` — 7/7 (llgo test fails in 15s sweep: hash length = 32, want 28)
- 🟡 `crypto/sha3` — 23/23 (llgo compile fails: missing fips140 symbols)
- 🟡 `crypto/sha512` — 13/13 (llgo test fails in 15s sweep: hash length = 64, want 48)
- 🟡 `crypto/subtle` — 8/8 (llgo compile fails: missing runtime.* and XORBytes)
- 🟡 `crypto/tls` — 113/113 (llgo compile fails; unique runtime gap — see #1358)
- 🟡 `crypto/x509` — 76/76 (llgo compile fails in 15s sweep)
- ✅ `crypto/x509/pkix` — 15/15

### Hashing

- ✅ `hash` — 11/11
- ✅ `hash/adler32` — 10/10
- ✅ `hash/crc32` — 11/11
- ✅ `hash/maphash` — 16/16

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
