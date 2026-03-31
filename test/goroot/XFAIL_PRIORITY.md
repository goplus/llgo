# GOROOT XFAIL Priority

Based on `test/goroot/xfail.yaml` at commit `0187bbcde`.

## Current Count

- Total xfails: `426`
- Host skips: `0`

By version/platform:

- `go1.24/linux/amd64`: `133`
- `go1.24/darwin/arm64`: `1`
- `go1.25/linux/amd64`: `134`
- `go1.25/darwin/arm64`: `2`
- `go1.26/linux/amd64`: `144`
- `go1.26/darwin/arm64`: `12`

By family:

- `fixedbugs`: `249`
- `(root)`: `129`
- `typeparam`: `30`
- `chan`: `6`
- `interface`: `6`
- `ken`: `6`

## Priority Buckets

### P0: Latest-version cross-platform failures

These are the highest priority because they affect the latest Go version and reproduce on both `linux/amd64` and `darwin/arm64`.

- `fixedbugs/issue72844.go`
- `devirtualization_nil_panics.go`
- `newexpr.go`
- `range4.go`
- `fixedbugs/issue70189.go`
- `fixedbugs/issue73916.go`
- `fixedbugs/issue73916b.go`
- `fixedbugs/issue73917.go`
- `fixedbugs/issue73920.go`
- `fixedbugs/issue75327.go`
- `fixedbugs/issue76008.go`

Counts:

- `go1.25+` cross-platform: `1`
- `go1.26` cross-platform: `11`

### P1: Long-standing linux failures across all supported Go versions

These are the largest stable backlog. Fixing one case here usually improves `go1.24`, `go1.25`, and `go1.26` at the same time on Linux.

Count:

- `133` cases shared by:
  - `go1.24/linux/amd64`
  - `go1.25/linux/amd64`
  - `go1.26/linux/amd64`

Family breakdown:

- `fixedbugs`: `77`
- `(root)`: `41`
- `typeparam`: `10`
- `interface`: `2`
- `ken`: `2`
- `chan`: `1`

Representative cases:

- `(root)`: `append.go`, `blank.go`, `chancap.go`, `closedchan.go`, `convert4.go`, `deferfin.go`
- `fixedbugs`: `bug273.go`, `bug336.go`, `issue10332.go`, `issue12133.go`, `issue14646.go`
- `typeparam`: `issue45722.go`, `issue48225.go`, `issue48253.go`

### P2: Latest-version linux-only additions

These appear only on `go1.26/linux/amd64`. They look like new language or runtime compatibility gaps introduced by newer stdlib or compiler behavior.

Count:

- `10`

Cases:

- `devirtualization_nil_panics.go`
- `newexpr.go`
- `range4.go`
- `fixedbugs/issue70189.go`
- `fixedbugs/issue73916.go`
- `fixedbugs/issue73916b.go`
- `fixedbugs/issue73917.go`
- `fixedbugs/issue73920.go`
- `fixedbugs/issue75327.go`
- `fixedbugs/issue76008.go`

Note:

- These overlap with the `go1.26/darwin/arm64` additions, which is why they are also listed in `P0`.

### P3: Darwin-specific scheduler/runtime tail

These are smaller darwin-only tails.

Stable across all darwin versions we run:

- `chan/goroutines.go`

Additional `go1.25+` darwin case:

- `fixedbugs/issue72844.go`

Additional `go1.26` darwin-only tail:

- `devirtualization_nil_panics.go`
- `newexpr.go`
- `range4.go`
- `fixedbugs/issue70189.go`
- `fixedbugs/issue73916.go`
- `fixedbugs/issue73916b.go`
- `fixedbugs/issue73917.go`
- `fixedbugs/issue73920.go`
- `fixedbugs/issue75327.go`
- `fixedbugs/issue76008.go`

## Recommended Fix Order

1. `P0`: latest-version cross-platform failures
2. `P1`: shared linux backlog across all supported Go versions
3. `P3`: darwin-only scheduler/runtime tail

Within `P1`, start with the non-`fixedbugs` root cases first, because they are usually easier to group by runtime/compiler subsystem and often explain multiple `fixedbugs` cases.

## Notes

- `fixedbugs/issue72844.go` is already the clearest cross-version and cross-platform signal.
- The `go1.26` new tail is compact and likely reflects a smaller number of newer semantic gaps.
- The big Linux shared backlog is the main bulk-reduction target.
