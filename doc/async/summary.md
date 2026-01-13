# Async Pull-Model Summary (since bba953899da5302759aa1a2bb4c43fbefe63af88)

This file tracks analysis as actionable TODOs with completion markers.

## 0. Scope / Delta
- [x] Enumerate changed areas
  - New `async/` runtime API (Poll/Future/Executor/Defer/Recover/tuple/result).
  - New pull-model compiler backend in `cl/pullmodel/` (SSA state machine + Pull IR).
  - Compiler integration in `cl/compile.go` (+env flag `LLGO_PULL_IR`).
  - Runtime intrusions: `runtime/internal/runtime/z_chan.go`, `z_face.go`, `z_rt.go`.
  - SSA backend changes: `ssa/*` (abi, expr, memory, stmt builder, datastruct/select).
  - New docs under `doc/async/` and tests under `test/asyncpull/`.

## 1. cl/pullmodel Code / File Structure
- [x] Map file roles / pipeline split
  - `pullmodel.go`, `state_struct.go`: SSA analysis, suspend points, state machine construction.
  - `llssa_codegen.go`, `defer_handling.go`, `poll_helpers.go`: legacy emitter path (non-Pull IR).
  - `pullir_*.go`: new Pull IR pipeline (SSA->IR transform + codegen).
  - `integration.go`: compiler hook, `GenerateWithPullIR`, env gating, IR dump.
  - `warn.go`: opt-in diagnostics for unsupported patterns.
- [x] Dead/legacy code scan (prelim, conclusion)
  - `codegen.go` + `TransformFunction` are used only by tests (`codegen_test.go`, `compiler_integration_test.go`) and not by `compile.go` runtime path. Not dead, but **test/legacy-only**.
  - Debug hooks exist only in legacy LLSSA emitter; Pull IR pipeline does not emit debug hooks.
  - `poll_helpers.go` vs `pullir_poll_helpers.go` are expected duplicates for two pipelines.
- [x] External behavior notes
  - `compile.go` chooses pipeline by `LLGO_PULL_IR` env; default is legacy LLSSA emitter.
  - Pull IR pipeline is opt-in; both paths currently maintained.
- [ ] Decide policy for legacy path (future)
  - Keep both pipelines or remove/flag legacy emitter once Pull IR becomes default.
  - If kept, document that debug hook applies only to LLSSA path.

## 2. External Interfaces / Intrusion
- [x] Compiler entry points
  - `compile.go` uses `pullmodel.ShouldTransform` + `GenerateWithPullIR` when `LLGO_PULL_IR=1`.
  - Adds closure ctx param plumbing for free vars.
- [x] Runtime intrusions
  - Channel runtime now supports waker registration + TrySelectWaker.
  - Async recover hook via `go:linkname` to runtime (panic/recover bridging).
- [x] SSA backend intrusions
  - `ssa/datastruct.go` select/chan behavior; ABI/type handling; expr/stmt/memory paths updated.
- [x] Invasion scope summary
  - Compiler: `compile.go` interception only for async functions (Future-returning); fallback to normal compile on error.
  - Runtime: channel ops gain optional waker path; panic/recover hook shared with async defer state.
  - SSA backend: select/chan lowered to waker-aware try-select.
- [x] Re-check boundary contracts (doc work)
  - Documented ABI expectations for `TrySelectWaker`, `asyncRecoverHook`, `Poll` layout in `doc/async/pull_model.md`.

## 3. async API Review
- [x] Interface shape and semantics
  - `Poll[T]` includes `err any` for panic propagation; `PollError`, `HasError`, `Error` exist.
  - `Context` tracks `hasWaker`; `NewContext` sets it.
  - `Future[T]` has `Poll(*Context)` + `Await()` marker.
  - `DeferState` + `DoPanic/DoRecover` in `async/defer.go`.
  - `Executor/Task` API in `async/runtime.go`.
  - Tuple/Result helpers in `async/tuple.go`.
- [x] Reasonableness assessment (current)
  - API is minimal and Rust-like (Poll/Context/Waker); `Await` is a compile-time marker.
  - Panic propagation is explicit via `PollError`, allowing sync bridges to surface panics.
  - Executor API is pluggable and matches waker semantics.
- [x] API footguns / cleanups (actionable)
  - Added `Context.SetWaker` and documented `hasWaker` semantics; docs updated.
  - `DefaultExecutor` / `TimerScheduler` are used by `async/libuv` and runtime API; keep.

## 4. Dead / Unused Interfaces
- [x] `PollError` is used by defer/panic propagation and tests.
- [x] `Tuple`/`Result` types are exercised in `test/asyncpull`.
- [x] No obvious exported dead APIs found (current).
- [x] Consider wiring debug hooks into Pull IR codegen or document limitation.
  - Documented limitation in `doc/async/pull_model.md` (debug hooks only in LLSSA path).

## 5. test/asyncpull Coverage
- [x] Covered categories (current)
  - Basic async/poll/ready/pending
  - Await in loops/branches/switch/nested loops
  - Map/slice/channel range + await
  - Select (recv/default/closed) + await
  - Channel send/recv wakers
  - Defer order/arg capture/closure capture/loop + await
  - Panic/recover propagation across await
  - Heap alloc + struct alloc across await
  - Higher-order closures and tuple/result return paths
  - Sync-bridge (`AwaitSync`) behavior
- [x] Coverage assessment (current)
  - Core async/await semantics are covered; channel/select/defers/panic/recover all exercised.
  - Added select+await edge variants (send/default/closed with await).
- [ ] Gaps / missing coverage (next targets)
  - Interface method values and type assertions/switches inside async functions.
  - Variadic calls + await; generic methods in async body.
  - Reflection/unsafe usage across await.
  - More complex select (multi-case send+recv + default + closed, with mixed await).
  - Executor integration tests (`async/sync`, `async/libuv`) with real wakers.

## 6. doc/async Consistency vs Implementation
- [x] Mismatches found
  - `pull_model_proposal.md` shows Poll without `err` field; current Poll has panic error channel.
  - Proposal shows `Context` without `hasWaker` semantics; real API requires `NewContext`.
  - Proposal mentioned Poller-type constraint (now removed; aligned with `Future[T]`).
  - Proposal claims sub-future value embedding; implementation stores sub-future slots (often pointers/interfaces).
  - `implementation_status.md` says map range not supported / channels non-goal; now supported in tests.
  - `pull_model_next_steps.md` says Pull IR not implemented; now implemented.
- [x] Update docs (done)
  - Synced `pull_model.md`, `pull_model_proposal.md`, `implementation_status.md`, `pull_model_next_steps.md`.
  - Marked legacy notes (non-goals) as superseded where behavior changed.

## 7. Overhead Analysis (code size / heap / CPU)
- [x] Qualitative analysis (current)
  - Per async fn: generates `$Concrete`, interface wrapper, `Poll` method, and `Await` stub (+ state type).
  - Heap: state struct allocated per async call; defer nodes + arg bundles allocated per defer (per loop iteration if inside loop).
  - Await creates sub-future values; poll loop adds switch + load/store on state fields.
  - Channel ops (recv/send/select) use `TrySelectWaker` and waker registration (extra calls vs blocking ops).
- [ ] Quantitative measurements (pending)
  - Measure added functions per async fn and `.ll`/binary growth.
  - Count allocations per await/defer path under representative workloads.
  - Add micro-benchmarks for loops/select/map range/defer+panic.

## 8. Rust Comparison (CPU/memory/alloc)
- [ ] Build equivalent Rust async functions and emit LLVM IR.
- [ ] Compare instruction count, state size, and allocation strategy.
- [ ] Measure runtime allocations and perf (micro-bench) vs llgo output.
