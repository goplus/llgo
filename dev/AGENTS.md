# Debug Playbook (Plan9 ASM / Runtime / Demo Failures)

This file documents the preferred local workflow to reproduce and debug cross-platform failures.

## 1) Build tools

```bash
go install -tags=dev ./cmd/llgo
go install ./chore/llgen
```

## 2) Fast local repro

For normal packages:

```bash
./dev/llgo.sh test ./path/to/pkg -run TestName -count=1
```

For demos:

```bash
cd _demo/go/<case>
llgo run .
```

If needed, also run from repo root:

```bash
./dev/llgo.sh run ./_demo/go/<case>
```

## 3) Inspect generated IR

- `llgo run/build`:
  - use `-gen-llfiles` to keep generated `.ll`
  - use `-x` to print compile/link commands
- `llgen`:
  - in `cl/_test*`: check generated `out.ll`
  - in other dirs: check generated `llgo_autogen.ll`

Example:

```bash
llgo run -gen-llfiles -x .
llgen .
```

## 4) Container repro (arch + Go version)

Use docker wrapper:

```bash
./dev/docker.sh amd64 bash -lc '...'
./dev/docker.sh arm64 bash -lc '...'
./dev/docker.sh amd64 --go=1.21.13 bash -lc '...'
./dev/docker.sh amd64 --go=1.24.2  bash -lc '...'
```

Recommended pattern:

```bash
./dev/docker.sh amd64 bash -lc 'go install -tags=dev ./cmd/llgo; cd _demo/go/<case>; llgo run .'
```

If a demo must run under older Go (for example Go 1.21), build `llgo` with a newer Go first, then reuse that binary:

```bash
./dev/docker.sh amd64 bash -lc 'go build -tags=dev -o /repo/dev/llgo-linux-amd64 ./cmd/llgo'
./dev/docker.sh amd64 --go=1.21.13 bash -lc 'cd _demo/go/<case>; /repo/dev/llgo-linux-amd64 run .'
```

## 5) CI-level verification order

After a fix is validated on the target case:

1. local macOS:

```bash
./dev/local_ci.sh
```

2. docker arm64:

```bash
./dev/docker.sh arm64 bash -lc './dev/local_ci.sh'
```

3. docker amd64 (can be expensive; run focused checks first):

```bash
./dev/docker.sh amd64 bash -lc './dev/llgo.sh test ./test/...'
```

## 6) Plan9 ASM focused translation debugging

Use the helper tool:

```bash
go run ./chore/plan9asm \
  -pkg <import/path> \
  -file <path/to/file.s> \
  -goos <goos> -goarch <goarch> \
  -out /tmp/out.ll \
  -meta /tmp/out.meta.json
```

`-annotate=true` (default) emits source asm line comments before lowered IR blocks.

## 7) Note on `internal/plan9asm` tests

`internal/plan9asm/*_test.go` are marked `//go:build !llgo` and are intended to run with `go test`, not `llgo test`.
