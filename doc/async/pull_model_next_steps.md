# Pull Model Next Steps (Jan 8, 2026)

*Working draft – keep checkboxes honest.*

## Current Situation
- **RangeAggregator hang resolved**; `complexdemo` completes with expected outputs (RangeAggregator/InterleaveWords/MatrixSummary/EvaluateRoutes all correct).
- **LLVM backend crash (Reg:244) resolved** by preloading phi cross-vars from state, avoiding raw LLVM phi emission in state blocks; `llgo build -gen-llfiles` succeeds for `complexdemo` and `cl/_testpull/types`.
- **typesdemo and asyncpull tests pass** after stack-alloc + cross-var preload fixes.
- Executors (`async/sync`, `async/libuv`) already re-poll via wakers; the issue was in generated Poll/state handling, not scheduling.

## Goals
1) Unblock complexdemo by fixing state/phi handling in the current emitter.  
2) Redesign around a Pull IR and a unified Poll loop so each `Poll` runs until the next real await (Rust-style).  
3) Keep executor APIs stable; improvements should be compiler/runtime-internal.

## Plan & TODO

### A. Short-term Debugging & Fixes
- [x] Add `LLGO_PULL_DEBUG` hook.
- [x] Preload phi cross-vars from state to avoid LLVM PHI emission inside state blocks (fixes Reg:244 crash).
- [ ] Instrument pending/ready paths to see why RangeAggregator never marks ready.
- [x] Patch current emitter (state writes / phi edge stores / stack flush) to make complexdemo finish.

### B. Unified Poll Loop (design+impl)
- [ ] Emit Poll as `for { switch(state) { … } }`, only returning on Pending/Ready.
  - [ ] Add a dedicated dispatcher block (not the entry block) to avoid LLVM loop-simplify crashes seen when re-dispatching to entry.
  - [ ] Ensure single state write per path; minimize ad-hoc flushes.
- [ ] Re-run typesdemo + complexdemo with debug enabled.

### C. Pull IR (mid-term)
- [ ] Define Pull IR (states, awaits, next-state edges, storage classes).
- [ ] SSA → Pull IR transform (handles async.Return, stack allocs, defer/panic).
- [ ] Pull IR → LLVM backend using the unified Poll template.
- [ ] Migrate incrementally, starting with complexdemo.

### D. Runtime / Executor Alignment
- [x] Confirm `async/sync` & `async/libuv` re-poll on wake.
- [ ] Document waker expectations for Futures returning Pending.
- [ ] Optional: tiny executor test helpers.

### E. Testing & Tooling
- [ ] Broaden `test/asyncpull` coverage (more branch/loop/error cases beyond typesdemo).
- [ ] Keep `tmp/analysis.log` updated (not committed).
- [ ] Optional: Pull IR dump flag for inspection once IR exists.

## Open Questions
- Switch-loop vs jump-table/continuation pointers once Pull IR exists.
- Clean defer/panic handling in Pull IR.
- ABI concerns when Poll returns struct values vs pointers.

*Last updated: Jan 9, 2026 (complexdemo passes; RangeAggregator hang resolved).*
