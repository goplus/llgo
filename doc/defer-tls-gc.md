# Defer Loop GC Integration

## Background

`defer` chains are stored in a per-thread TLS slot so that unwind paths can locate the active `*runtime.Defer`. With the default allocator (`AllocU`) backed by Boehm GC (bdwgc), those TLS-resident pointers were invisible to the collector. In stress scenarios—e.g. `TestDeferLoopStress` with 1 000 000 defers—the collector reclaimed the defer nodes, leaving dangling pointers and causing crashes inside the deferred closures.

Prior experiments (`test-defer-dont-free` branch) confirmed the crash disappeared when allocations bypassed GC (plain `malloc` without `free`), pointing to a root-registration gap rather than logical corruption.

## Solution Overview

1. **GC-aware TLS slot**
   - Introduced `SetThreadDefer`/`ClearThreadDefer` in `runtime/internal/runtime` (`z_defer_gc.go`) that wrap a per-thread `deferSlot`.
   - On first use we allocate a tiny slot via `c.Malloc`, register the `slot.head` field as a Boehm root (`GC_add_roots`), and persist the slot in the existing pthread TLS key with a destructor.
   - The destructor (`deferSlotDestructor`) removes the root (`GC_remove_roots`) and frees the slot so exited threads do not leave stale roots.

2. **SSA codegen synchronization**
   - `ssa/eh.go` now calls `runtime.SetThreadDefer` whenever it updates the TLS pointer (on first allocation and when restoring the previous link during unwind).
   - Defer argument nodes and the `runtime.Defer` struct itself are allocated with `aggregateAllocU`, ensuring new memory comes from GC-managed heaps, and nodes are released via `runtime.FreeDeferNode`.

3. **Non-GC builds**
   - Added `z_defer_nogc.go` with no-op `SetThreadDefer`/`ClearThreadDefer`, but still freeing nodes through `c.Free` to avoid leaks when building with `-tags nogc`.

## Testing

Run the stress and regression suites to validate the integration:

```sh
./llgo.sh test ./test -run TestDeferLoopStress
./llgo.sh test ./test
```

The updated `TestDeferLoopStress` now asserts 1 000 000 loop defers execute without failure, catching regressions in GC root tracking.
