# Dev tooling

This directory contains scripts for running LLGo locally and inside reusable Linux dev containers.

## Prerequisites

- Docker installed and running
- Docker Compose v2 (`docker compose`, not `docker-compose`)

## 1) Start a Linux container, then run `dev/llgo.sh` / `dev/llgo_wasm.sh`

Start an interactive shell (pick one):

```bash
./dev/docker.sh amd64
./dev/docker.sh arm64
./dev/docker.sh i386
```

Notes:
- `amd64` uses the `pydeps` image target (includes extra Python demo deps like `numpy`/`torch`).
- `arm64` and `i386` use the smaller `base` target (no extra Python ML deps).

Inside the container, run tests/builds using the repo scripts:

```bash
./dev/llgo.sh test ./...
./dev/llgo.sh test ./test

# WASI/WASM (wasip1/wasm)
./dev/llgo_wasm.sh build ./...
```

Notes:
- `dev/docker.sh` starts in the same repo subdirectory you launched it from.
- `dev/llgo.sh` and `dev/llgo_wasm.sh` must be run from within `LLGO_ROOT` (the repo) and will error otherwise.

## 2) Start a Linux container, run one command, then exit

```bash
./dev/docker.sh amd64 bash -lc './dev/llgo.sh test ./test'
```

## 3) Run on the host (no container)

From anywhere inside the repo:

```bash
./dev/llgo.sh test ./test
./dev/llgo_wasm.sh build ./...
```

## 4) Run local CI (covers most checks)

```bash
./dev/local_ci.sh
```

This script creates a temporary workspace, runs formatting/build/tests, runs `llgo test`, and then runs demo checks.
You can control demo parallelism via `LLGO_DEMO_JOBS` (defaults to up to 4 jobs).

## 5) `dev/docker.sh` (composition-friendly)

`dev/docker.sh` is a thin wrapper around `docker compose`:

```bash
./dev/docker.sh <arch> [command...]
```

- `<arch>` must be `amd64`, `arm64`, or `i386`.
- If `[command...]` is omitted, it starts an interactive `bash`.
- If `[command...]` is provided, it runs that command and exits.
- You must run it from within the repo (within `LLGO_ROOT`), and it will start in the matching repo subdirectory inside the container.
