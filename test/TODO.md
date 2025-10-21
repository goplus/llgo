# Standard Library Test Coverage Tracker

This file tracks the status of standard library package test coverage for llgo.

## Validation Steps

Use this loop for every `test/std/<pkg>` suite:

1. **Build coverage with Go (repeat until stable)**
   - `go test ./test/std/<pkg>`
   - `go run ./chore/check_std_symbols -pkg <pkg>=test/std/<pkg>`
2. **Freeze tests and port llgo runtime behavior (repeat until it passes)**
   - `./llgo.sh test ./test/std/<pkg>`
   - Fix `runtime/internal/lib/<pkg>` (and any overlays) until llgo matches Go.
3. **Update this tracker**
   - Record totals, blockers, and ownership notes below.

Before updating progress, also run the aggregate sweeps:

- `go test ./test/std/...`
- `./llgo.sh test ./test/std/...`
- `go run ./chore/check_std_symbols -pkg math=test/std/math -pkg strings=test/std/strings -pkg slices=test/std/slices -pkg sort=test/std/sort -pkg path=test/std/path -pkg text/scanner=test/std/text/scanner -pkg text/tabwriter=test/std/text/tabwriter -pkg text/template=test/std/text/template -pkg time=test/std/time`

## Legend

- ✅ Comprehensive coverage (>80% of package API tested)
- 🟡 Partial coverage (basic tests exist, gaps remain)
- 📝 Planned (directory structure exists, minimal tests)
- ⬜ Not started
- ⏭️ Deferred (low priority or blocked)

## Priority 1: Core Packages

| Package   | Progress |
| --------- | -------- |
| `math`    | ✅ 97/97 |
| `strings` | ✅ 80/80 |
| `slices`  | ✅ 40/40 |
| `bytes`   | ⬜ 0/?   |
| `strconv` | ⬜ 0/?   |
| `sort`    | ✅ 36/36 |

## Priority 2: I/O Packages

| Package         | Progress |
| --------------- | -------- |
| `io`            | ⬜ 0/?   |
| `bufio`         | ⬜ 0/?   |
| `io/fs`         | ⬜ 0/?   |
| `os`            | ⬜ 0/?   |
| `path`          | ✅ 9/9   |
| `path/filepath` | ⬜ 0/?   |

## Priority 3: Encoding Packages

| Package           | Progress |
| ----------------- | -------- |
| `encoding/json`   | ⬜ 0/?   |
| `encoding/base64` | ⬜ 0/?   |
| `encoding/hex`    | ⬜ 0/?   |
| `encoding/csv`    | ⬜ 0/?   |
| `encoding/binary` | ⬜ 0/?   |

## Priority 4: Crypto & Hashing

| Package         | Progress |
| --------------- | -------- |
| `hash`          | ⬜ 0/?   |
| `crypto/md5`    | ⬜ 0/?   |
| `crypto/sha1`   | ⬜ 0/?   |
| `crypto/sha256` | ⬜ 0/?   |
| `crypto/sha512` | ⬜ 0/?   |

## Priority 5: Concurrency & Sync

| Package       | Progress |
| ------------- | -------- |
| `sync`        | ⬜ 0/?   |
| `sync/atomic` | ⬜ 0/?   |
| `context`     | ⬜ 0/?   |

## Priority 6: Other Important Packages

| Package  | Progress |
| -------- | -------- |
| `fmt`    | ⬜ 0/?   |
| `errors` | ⬜ 0/?   |
| `time`   | ✅ 62/62 |
| `regexp` | ⬜ 0/?   |
| `flag`   | ⬜ 0/?   |
| `log`    | ⬜ 0/?   |

## Priority 7: Text Packages

| Package          | Progress |
| ---------------- | -------- |
| `text/scanner`   | 🟡 29/29 (fails under llgo runtime) |
| `text/tabwriter` | ✅ 11/11 |
| `text/template`  | ⏭️ blocked (runtime unique) |

## Deferred / Low Priority

| Package        | Status | Reason                                         |
| -------------- | ------ | ---------------------------------------------- |
| `net`          | ⏭️     | Network stack complexity, partial llgo support |
| `net/http`     | ⏭️     | Depends on full net support                    |
| `database/sql` | ⏭️     | Requires database drivers                      |
| `reflect`      | ⏭️     | Partial support, complex runtime integration   |
| `runtime`      | ⏭️     | Partial support, llgo-specific implementation  |
| `text/template` | ⏭️     | Blocked by unique package runtime support gap  |

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
