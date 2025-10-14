# Defer Loop GC Integration

## Background

`defer` chains are stored in a per-thread TLS slot so that unwind paths can locate the active `*runtime.Defer`. With the default allocator (`AllocU`) backed by Boehm GC (bdwgc), those TLS-resident pointers were invisible to the collector. In stress scenarios—e.g. `TestDeferLoopStress` with 1 000 000 defers—the collector reclaimed the defer nodes, leaving dangling pointers and causing crashes inside the deferred closures.

Prior experiments (`test-defer-dont-free` branch) confirmed the crash disappeared when allocations bypassed GC (plain `malloc` without `free`), pointing to a root-registration gap rather than logical corruption.

## Solution Overview

1. **GC-aware TLS slot helper**
   - Added `runtime/internal/clite/tls`, which exposes `tls.Alloc` to create per-thread storage that is automatically registered as a Boehm GC root.
   - `SetThreadDefer`/`ClearThreadDefer` now delegate to this helper so every thread reuses the same GC-safe slot without bespoke plumbing.
   - The package handles TLS key creation, root registration/removal, and invokes an optional destructor when a thread exits.

2. **SSA codegen synchronization**
   - `ssa/eh.go` now calls `runtime.SetThreadDefer` whenever it updates the TLS pointer (on first allocation and when restoring the previous link during unwind).
   - Defer argument nodes and the `runtime.Defer` struct itself are allocated with `aggregateAllocU`, ensuring new memory comes from GC-managed heaps, and nodes are released via `runtime.FreeDeferNode`.

3. **Non-GC builds**
   - The `tls` helper falls back to a malloc-backed TLS slot without GC registration, while `FreeDeferNode` continues to release nodes via `c.Free` when building with `-tags nogc`.

## Testing

Run the stress and regression suites to validate the integration:

```sh
./llgo.sh test ./test -run TestDeferLoopStress
./llgo.sh test ./test
```

The updated `TestDeferLoopStress` now asserts 1 000 000 loop defers execute without failure, catching regressions in GC root tracking.
