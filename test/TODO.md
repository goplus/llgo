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
- 🟡 `iter` — 0/4 (fails under llgo runtime - depens coro )
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
- ⬜ `compress/flate` — 0/?
- ⬜ `compress/gzip` — 0/?
- ⬜ `compress/zlib` — 0/?

### I/O & Filesystems

- 🟡 `bufio` — 51/51 (ReadString should hit EOF, got <nil>)
- ⬜ `embed` — 0/?
- 🟡 `io` — 0/59
- ⬜ `io/fs` — 0/?
- 🟡 `io/ioutil` — 0/8
- ⬜ `os` — 0/?
- ⬜ `os/exec` — 0/?
- ⬜ `os/signal` — 0/?
- ⬜ `os/user` — 0/?
- ✅ `path` — 9/9
- 🟡 `path/filepath` — 0/27

### Encoding & Serialization

- ⬜ `encoding` — 0/?
- ⬜ `encoding/asn1` — 0/?
- ✅ `encoding/base64` — 21/21
- 🟡 `encoding/binary` — 0/22 blocked (undefined symbol: reflect.Indirect see #1355)
- ✅ `encoding/csv` — 17/17
- ⬜ `encoding/hex` — 0/?
- ⬜ `encoding/json` — 0/?
- ⬜ `encoding/pem` — 0/?

### Text & Unicode

- 🟡 `text/scanner` — 29/29 (fails under llgo runtime — see #1366)
- ✅ `text/tabwriter` — 11/11
- 🟡 `text/template` — blocked (unique runtime gap — see #1358)
- ⬜ `text/template/parse` — 0/?
- ⬜ `unicode` — 0/?
- ⬜ `unicode/utf16` — 0/?
- ⬜ `unicode/utf8` — 0/?
- ⏭️ `unique` — blocked (depends on runtime unique support — see #1358)

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

- ⬜ `hash` — 0/?
- ⬜ `hash/adler32` — 0/?
- ⬜ `hash/crc32` — 0/?
- ⬜ `hash/maphash` — 0/?

### Networking & HTTP

- ⬜ `net` — 0/?
- ⬜ `net/http` — 0/?
- ⬜ `net/http/httptest` — 0/?
- ⬜ `net/http/httptrace` — 0/?
- ⬜ `net/netip` — 0/?
- ⬜ `net/textproto` — 0/?
- ⬜ `net/url` — 0/?

### Concurrency & Context

- ⬜ `context` — 0/?
- ⬜ `sync` — 0/?
- ⬜ `sync/atomic` — 0/?

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

- ⬜ `testing` — 0/?
- ⬜ `testing/fstest` — 0/?
- ⬜ `testing/iotest` — 0/?

### Application & Formatting

- ⬜ `errors` — 0/?
- ⬜ `flag` — 0/?
- ⬜ `fmt` — 0/?
- ⬜ `log` — 0/?
- ⬜ `mime` — 0/?
- ⬜ `mime/multipart` — 0/?
- ⬜ `mime/quotedprintable` — 0/?
- ⬜ `reflect` — 0/?
- ⬜ `regexp` — 0/?
- ⬜ `regexp/syntax` — 0/?

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
