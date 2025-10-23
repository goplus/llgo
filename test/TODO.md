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

- 🟡 `bufio` — 51/51 (amd64 linux: ReadString should hit EOF, got <nil>)
- ⬜ `embed` — 0/?
- 🟡 `io` — 59/59
- 🟡 `io/fs` — 22/22 (fails under llgo runtime - skipped for llgo)
- 🟡 `io/ioutil` — 8/8
- ⬜ `os` — 0/?
- 🟡 `os/exec` — 7/7 (panic: todo: os.(\*File).WriteString)
- 🟡 `os/signal` — 6/6 (panic: signal_enable not implemented)
- 🟡 `os/user` — 11/11 (exit code -1)
- ✅ `path` — 9/9
- 🟡 `path/filepath` — 27/27

### Encoding & Serialization

- ✅ `encoding` — 6/6
- 🟡 `encoding/asn1` — 42/42 (fails under llgo runtime - skipped for llgo)
- ✅ `encoding/base64` — 21/21
- 🟡 `encoding/binary` — 22/22 blocked (undefined symbol: reflect.Indirect see #1355)
- ✅ `encoding/csv` — 17/17
- 🟡 `encoding/hex` — 15/15
- 🟡 `encoding/json` — 48/48 (fails under llgo runtime - skipped for llgo)
- ✅ `encoding/pem` — 3/3

### Text & Unicode

- 🟡 `text/scanner` — 29/29 (fails under llgo runtime — see #1366)
- ✅ `text/tabwriter` — 11/11
- 🟡 `text/template` — 29/29 blocked (unique runtime gap — see #1358)
- 🟡 `text/template/parse` — 82/82 (stack overflow in llgo type recursion)
- ✅ `unicode` — 292/292
- 🟡 `unicode/utf16` — 7/7 (Decode fails for emoji and certain characters)
- 🟡 `unicode/utf8` — 19/19 (DecodeLastRune/DecodeLastRuneInString return incorrect runes)
- 🟡 `unique` — blocked (depends on runtime unique support — see #1358)

### Time & Scheduling

- ✅ `time` — 101/101

### Crypto & Security

- ⬜ `crypto` — 0/?
- ⬜ `crypto/aes` — 0/?
- ⬜ `crypto/cipher` — 0/?
- ⬜ `crypto/des` — 0/?
- ⬜ `crypto/dsa` — 0/?
- ⬜ `crypto/ecdh` — 0/?
- ⬜ `crypto/ecdsa` — 0/?
- ⬜ `crypto/ed25519` — 0/?
- ⬜ `crypto/elliptic` — 0/?
- ⬜ `crypto/hmac` — 0/?
- ⬜ `crypto/md5` — 0/?
- ⬜ `crypto/rand` — 0/?
- ⬜ `crypto/rc4` — 0/?
- ⬜ `crypto/rsa` — 0/?
- ⬜ `crypto/sha1` — 0/?
- ⬜ `crypto/sha256` — 0/?
- ⬜ `crypto/sha3` — 0/?
- ⬜ `crypto/sha512` — 0/?
- ⬜ `crypto/subtle` — 0/?
- ⬜ `crypto/tls` — 0/?
- ⬜ `crypto/x509` — 0/?
- ⬜ `crypto/x509/pkix` — 0/?

### Hashing

- ✅ `hash` — 11/11
- ✅ `hash/adler32` — 10/10
- ✅ `hash/crc32` — 11/11
- 🟡 `hash/maphash` — 16/16 (panic: intrinsic, should implement escapeForHash intrinsic)

### Networking & HTTP

- ⬜ `net` — 0/?
- ⬜ `net/http` — 0/?
- ⬜ `net/http/httptest` — 0/?
- ⬜ `net/http/httptrace` — 0/?
- ⬜ `net/netip` — 0/?
- ⬜ `net/textproto` — 0/?
- ⬜ `net/url` — 0/?

### Concurrency & Context

- 🟡 `context` — 13/13 (fails under llgo runtime - skipped for llgo)
- 🟡 `sync` — 40/40 (failed tests)
- 🟡 `sync/atomic` — 94/94 (skip tests in atomic_bitwise_methods_test.go)

### Language Tooling

- ⬜ `go/ast` — 0/?
- ⬜ `go/build` — 0/?
- ⬜ `go/build/constraint` — 0/?
- ⬜ `go/constant` — 0/?
- ⬜ `go/doc` — 0/?
- ⬜ `go/doc/comment` — 0/?
- ⬜ `go/importer` — 0/?
- ⬜ `go/parser` — 0/?
- ⬜ `go/scanner` — 0/?
- ⬜ `go/token` — 0/?
- ⬜ `go/types` — 0/?
- ⬜ `go/version` — 0/?

### Runtime & System

- ⬜ `runtime` — 0/?
- ⬜ `runtime/debug` — 0/?
- ⬜ `runtime/pprof` — 0/?
- ⬜ `runtime/trace` — 0/?
- ⬜ `syscall` — 0/?
- ⬜ `unsafe` — 0/?
- ⬜ `weak` — 0/?

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
- 🟡 `reflect` — 106/106 (blocked: missing ChanDir.String, Copy, Indirect, Select, Swapper, Value.Comparable, Value.Clear, and others)
- ✅ `regexp` — 45/45
- 🟡 `regexp/syntax` — 10/10 (fails under llgo runtime - skipped for llgo)

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
