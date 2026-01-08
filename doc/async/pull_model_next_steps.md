# Pull Model Next Steps (Jan 2026)

*Status: Implementation complete – Pull IR backend operational, interface wrapper partial.*

## Current Situation (Updated Jan 8)

### ✅ What's Working
- **Pull IR Backend** fully operational (`LLGO_PULL_IR=1` environment variable)
- **19+ async functions** generate and compile successfully:
  - typesdemo: 9/9 (Divmod, GetMinMax, LookupAndDouble, MapParam, PointerParam, SafeDivide, SliceParam, StringParam, StructFieldAccess)
  - complex: 10/10 (ChainedAwaits, ClosureCapture, ConditionalChain, DeferWithAwait, LoopBreakContinue, LoopWithAccumulator, MultipleReturnPaths, NestedConditions, SwitchWithFallthrough, TwoLoops)
  - RangeAggregator: ✅ fixed (was the original deadlock case)
- **Unified Poll loop** with `for { switch(state) { ... } }` pattern implemented
- **PHI EdgeWrites mechanism** working correctly for loop variables

### ⚠️ Known Limitations
- **Interface wrapper** works for simple return types (int, struct) but hits llssa limitation for nested generics (`Future[Result[T]]` causes `unsupported ptrbytes`)
- This is a **pre-existing llssa issue**, not Pull IR specific

## Implementation Summary

### Pull IR Architecture (Complete)
```
SSA → Pull IR → LLVM IR
      ↓
   pullir.go         - Core types (Slot, VarRef, PullInstr, PullState)
   pullir_transform.go - SSA to Pull IR with PHI edge writes
   pullir_codegen.go   - Pull IR to LLVM with unified Poll loop
```

### Key Components
| File | Purpose | Lines |
|------|---------|-------|
| `pullir.go` | Pull IR instruction set | ~300 |
| `pullir_transform.go` | SSA → Pull IR transformation | ~700 |
| `pullir_codegen.go` | LLVM IR generation | ~560 |

### Critical Fixes Applied
1. **Aggressive slot allocation** - All value-producing instructions get slots, eliminating cross-state value issues
2. **PHI EdgeWrites** - Phi values assigned at predecessor edges, not at target state entry
3. **PullRange/PullNext** - for-range loop iteration fully supported
4. **Proper async type retrieval** - `getAsyncContextType()` and `getAsyncPollType()` for correct scope

## Remaining Work

### High Priority
- [ ] Fix llssa `ptrbytes` limitation for nested generic types (affects `Result[T]`)
- [ ] Enable interface wrapper for all return types

### Medium Priority
- [ ] Optimize slot usage (currently allocates for all values, could be more selective)
- [ ] Add Pull IR dump flag for debugging (`LLGO_PULL_IR_DUMP`)
- [ ] Performance benchmarks vs original backend

### Low Priority
- [ ] Consider switch → jump table optimization in Poll loop
- [ ] Documentation for Pull IR instruction set

## Usage

```bash
# Enable Pull IR backend
LLGO_PULL_IR=1 llgo build ./...

# Test with typesdemo
cd cl/_testpull/types && LLGO_PULL_IR=1 go run ../../../chore/llgen .

# Test with complexdemo (RangeAggregator)
cd test/asyncpull/examples/complexdemo && LLGO_PULL_IR=1 go run ../../../../chore/llgen .
```

## Open Questions (Updated)
- ~~Should Pull IR support direct continuation pointers?~~ → Using switch loop, working well
- ~~How to handle defer/panic?~~ → Deferred operations skip in Pull IR, existing mechanism OK
- [ ] Should we make Pull IR the default backend once llssa issues are resolved?

---
*Last updated: Jan 8, 2026*
