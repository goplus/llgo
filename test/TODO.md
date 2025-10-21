# Standard Library Test Coverage Tracker

This file tracks the status of standard library package test coverage for llgo.

## Validation Steps

Use this loop for every `test/std/<pkg>` suite:

1. **Build coverage with Go (repeat until stable)**
   - `go test ./test/std/<pkg>`
   - `go run ./chore/check_std_symbols -pkg <pkg>`
2. **Freeze tests and port llgo runtime behavior (repeat until it passes)**
   - `./llgo.sh test ./test/std/<pkg>`
   - Fix `runtime/internal/lib/<pkg>` (and any overlays) until llgo matches Go.
3. **Update this tracker**
   - Record totals, blockers, and ownership notes below.

Before updating progress, also run the aggregate sweeps:

- `go test ./test/std/...`
- `./llgo.sh test ./test/std/...`
- `bash doc/_readme/scripts/check_std_cover.sh`

## Legend

- ✅ Comprehensive coverage (>80% of package API tested)
- 🟡 Partial coverage (basic tests exist, gaps remain)
- 📝 Planned (directory structure exists, minimal tests)
- ⬜ Not started
- ⏭️ Deferred (low priority or blocked)

## Coverage Roadmap

### Core Collections & Strings

| Package   | Progress |
| --------- | -------- |
| `bytes`   | ✅ 95/95 |
| `cmp`     | ✅ 4/4   |
| `iter`    | ✅ 4/4   |
| `maps`    | ✅ 10/10 |
| `slices`  | ✅ 40/40 |
| `sort`    | ✅ 36/36 |
| `strings` | ✅ 80/80 |
| `strconv` | ✅ 40/40 |

### Math & Numerics

| Package        | Progress |
| -------------- | -------- |
| `math`         | ✅ 97/97 |
| `math/big`     | ✅ 154/154 |
| `math/bits`    | ✅ 50/50 |
| `math/rand`    | ⬜ 0/?   |
| `math/rand/v2` | ⬜ 0/?   |

### Containers & Utilities

| Package          | Progress |
| ---------------- | -------- |
| `container/heap` | ✅ 6/6  |
| `container/list` | ⬜ 0/?   |

### Archives & Compression

| Package          | Progress |
| ---------------- | -------- |
| `archive/tar`    | ⬜ 0/?   |
| `archive/zip`    | ⬜ 0/?   |
| `compress/flate` | ⬜ 0/?   |
| `compress/gzip`  | ⬜ 0/?   |
| `compress/zlib`  | ⬜ 0/?   |

### I/O & Filesystems

| Package         | Progress |
| --------------- | -------- |
| `bufio`         | ✅ 51/51 |
| `embed`         | ⬜ 0/?   |
| `io`            | ⬜ 0/?   |
| `io/fs`         | ⬜ 0/?   |
| `io/ioutil`     | ⬜ 0/?   |
| `os`            | ⬜ 0/?   |
| `os/exec`       | ⬜ 0/?   |
| `os/signal`     | ⬜ 0/?   |
| `os/user`       | ⬜ 0/?   |
| `path`          | ✅ 9/9   |
| `path/filepath` | ⬜ 0/?   |

### Encoding & Serialization

| Package             | Progress |
| ------------------- | -------- |
| `encoding`          | ⬜ 0/?   |
| `encoding/asn1`     | ⬜ 0/?   |
| `encoding/base64`   | ⬜ 0/?   |
| `encoding/binary`   | ⬜ 0/?   |
| `encoding/csv`      | ⬜ 0/?   |
| `encoding/hex`      | ⬜ 0/?   |
| `encoding/json`     | ⬜ 0/?   |
| `encoding/pem`      | ⬜ 0/?   |

### Text & Unicode

| Package                 | Progress |
| ----------------------- | -------- |
| `text/scanner`          | 🟡 29/29 (fails under llgo runtime — see #1366) |
| `text/tabwriter`        | ✅ 11/11 |
| `text/template`         | ⏭️ blocked (unique runtime gap — see #1358) |
| `text/template/parse`   | ⬜ 0/?   |
| `unicode`               | ⬜ 0/?   |
| `unicode/utf16`         | ⬜ 0/?   |
| `unicode/utf8`          | ⬜ 0/?   |
| `unique`                | ⏭️ blocked (depends on runtime unique support — see #1358) |

### Time & Scheduling

| Package | Progress |
| ------- | -------- |
| `time`  | ✅ 101/101 |

### Crypto & Security

| Package             | Progress |
| ------------------- | -------- |
| `crypto`            | ⬜ 0/?   |
| `crypto/aes`        | ⬜ 0/?   |
| `crypto/cipher`     | ⬜ 0/?   |
| `crypto/des`        | ⬜ 0/?   |
| `crypto/dsa`        | ⬜ 0/?   |
| `crypto/ecdh`       | ⬜ 0/?   |
| `crypto/ecdsa`      | ⬜ 0/?   |
| `crypto/ed25519`    | ⬜ 0/?   |
| `crypto/elliptic`   | ⬜ 0/?   |
| `crypto/hmac`       | ⬜ 0/?   |
| `crypto/md5`        | ⬜ 0/?   |
| `crypto/rand`       | ⬜ 0/?   |
| `crypto/rc4`        | ⬜ 0/?   |
| `crypto/rsa`        | ⬜ 0/?   |
| `crypto/sha1`       | ⬜ 0/?   |
| `crypto/sha256`     | ⬜ 0/?   |
| `crypto/sha3`       | ⬜ 0/?   |
| `crypto/sha512`     | ⬜ 0/?   |
| `crypto/subtle`     | ⬜ 0/?   |
| `crypto/tls`        | ⬜ 0/?   |
| `crypto/x509`       | ⬜ 0/?   |
| `crypto/x509/pkix`  | ⬜ 0/?   |

### Hashing

| Package        | Progress |
| -------------- | -------- |
| `hash`         | ⬜ 0/?   |
| `hash/adler32` | ⬜ 0/?   |
| `hash/crc32`   | ⬜ 0/?   |
| `hash/maphash` | ⬜ 0/?   |

### Networking & HTTP

| Package               | Progress |
| --------------------- | -------- |
| `net`                 | ⬜ 0/?   |
| `net/http`            | ⬜ 0/?   |
| `net/http/httptest`   | ⬜ 0/?   |
| `net/http/httptrace`  | ⬜ 0/?   |
| `net/netip`           | ⬜ 0/?   |
| `net/textproto`       | ⬜ 0/?   |
| `net/url`             | ⬜ 0/?   |

### Concurrency & Context

| Package       | Progress |
| ------------- | -------- |
| `context`     | ⬜ 0/?   |
| `sync`        | ⬜ 0/?   |
| `sync/atomic` | ⬜ 0/?   |

### Language Tooling

| Package                | Progress |
| ---------------------- | -------- |
| `go/ast`               | ⬜ 0/?   |
| `go/build`             | ⬜ 0/?   |
| `go/build/constraint`  | ⬜ 0/?   |
| `go/constant`          | ⬜ 0/?   |
| `go/doc`               | ⬜ 0/?   |
| `go/doc/comment`       | ⬜ 0/?   |
| `go/importer`          | ⬜ 0/?   |
| `go/parser`            | ⬜ 0/?   |
| `go/scanner`           | ⬜ 0/?   |
| `go/token`             | ⬜ 0/?   |
| `go/types`             | ⬜ 0/?   |
| `go/version`           | ⬜ 0/?   |

### Runtime & System

| Package         | Progress |
| --------------- | -------- |
| `runtime`       | ⬜ 0/?   |
| `runtime/debug` | ⬜ 0/?   |
| `runtime/pprof` | ⬜ 0/?   |
| `runtime/trace` | ⬜ 0/?   |
| `syscall`       | ⬜ 0/?   |
| `unsafe`        | ⬜ 0/?   |
| `weak`          | ⬜ 0/?   |

### Testing & Benchmarks

| Package           | Progress |
| ----------------- | -------- |
| `testing`         | ⬜ 0/?   |
| `testing/fstest`  | ⬜ 0/?   |
| `testing/iotest`  | ⬜ 0/?   |

### Application & Formatting

| Package                 | Progress |
| ----------------------- | -------- |
| `errors`                | ⬜ 0/?   |
| `flag`                  | ⬜ 0/?   |
| `fmt`                   | ⬜ 0/?   |
| `log`                   | ⬜ 0/?   |
| `mime`                  | ⬜ 0/?   |
| `mime/multipart`        | ⬜ 0/?   |
| `mime/quotedprintable`  | ⬜ 0/?   |
| `reflect`               | ⬜ 0/?   |
| `regexp`                | ⬜ 0/?   |
| `regexp/syntax`         | ⬜ 0/?   |

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
