# Defer Implementation Remaining Work

## Current Status

### ✅ Completed
1. Runtime types (`async/defer.go`):
   - `DeferNode` struct
   - `DeferState` struct with `PushDefer`, `RunDefers`, `DoPanic`, `DoRecover` methods

2. Poll[T] extension:
   - Added `err` field
   - Added `Error()`, `HasError()`, `PollError()` methods

3. Compiler infrastructure:
   - State struct includes defer fields when `HasDefer` is true
   - Defer field index helper functions
   - Stub functions with fallback to standard defer

### 🔄 In Progress - Compiler Implementation

The main challenge is generating LLVM IR to call the runtime defer methods.

## Implementation Plan

### Step 1: Understand Standard Defer Compilation

Standard defer uses:
```go
case *ssa.Defer:
    kind := llssa.DeferAlways
    p.call(b, kind, &v.Call)
```

This calls `llssa.Builder.Call()` with a special `DeferAlways` kind that:
1. Allocates a `runtime.Defer` node
2. Stores the function pointer and arguments
3. Links it to the defer chain

### Step 2: Pull Model Defer Compilation

For pull model, we need to:

1. **Get state pointer field for deferHead**
   ```go
   deferHeadIdx := g.getDeferHeadFieldIndex()
   deferHeadPtr := b.FieldAddr(statePtr, deferHeadIdx)
   ```

2. **Extract defer function and arguments from ssa.Defer**
   ```go
   deferCall := deferInstr.Call
   fn := deferCall.Value  // The function to defer
   args := deferCall.Args // Arguments to the function
   ```

3. **Generate call to async.DeferState.PushDefer**

   This is complex because:
   - Need to get function pointer as `unsafe.Pointer`
   - Need to handle closure captures
   - Need to box arguments if necessary

### Step 3: Simplified Initial Implementation

For the first version, we can:

1. **Only support simple defer (no closures)**
   ```go
   defer cleanup()  // Simple function call
   ```

2. **Store function pointer directly**
   ```go
   // Pseudo-code for what we need to generate:
   fnPtr := getFunctionPointer(cleanup)
   state.deferHead.PushDefer(fnPtr, nil)
   ```

3. **Defer complex cases to later**
   - Defer with arguments: `defer f(x, y)`
   - Defer with closures: `defer func() { ... }()`
   - Defer in loops

### Step 4: RunDefers at Return Points

Need to insert `state.RunDefers()` before every return:

```go
// At each return point in Poll method:
if hasDefer {
    state.RunDefers()
}
return Ready(value)
```

### Step 5: Panic Handling

```go
func (g *LLSSACodeGen) compilePanicForPullModel(...) {
    // 1. Store panic value in state.panicValue
    // 2. Set state.isPanicking = true
    // 3. Call state.DoPanic(panicValue)
    // 4. If not recovered, return Poll with Error
}
```

## Technical Challenges

### Challenge 1: Function Pointers

Go functions are not simple pointers. They may include:
- Closure context
- Method receivers
- Interface method dispatch

**Solution**: Start with simple functions only, extend later.

### Challenge 2: Argument Capture

Defer arguments are evaluated immediately but called later:
```go
x := 1
defer fmt.Println(x)  // Captures x=1
x = 2
// When defer runs, prints 1, not 2
```

**Solution**: Need to allocate storage for arguments in DeferNode.

### Challenge 3: LLVM IR Generation

Need to learn how to:
- Get function pointers in LLVM IR
- Call Go functions from generated code
- Handle Go calling conventions

**Solution**: Study existing `llssa.Builder` methods and examples.

## Recommended Approach

### Phase 1: Minimal Viable Implementation
1. Support only `defer simpleFunc()` (no args, no closures)
2. Add `RunDefers()` at return points
3. Test with simple examples

### Phase 2: Add Argument Support
1. Implement argument capture in DeferNode
2. Support `defer f(x, y)`

### Phase 3: Add Closure Support
1. Handle `defer func() { ... }()`
2. Capture closure variables

### Phase 4: Add Panic/Recover
1. Implement `DoPanic` call generation
2. Implement `DoRecover` call generation
3. Add setjmp in Poll for sync panic capture

## Next Steps

1. Study `llssa.Builder` API for function pointer operations
2. Implement simple `PushDefer` call generation
3. Add `RunDefers` at return points
4. Test with `cl/_testpull/defer` test case
5. Iterate and expand support

## References

- `cl/compile.go:962-967` - Standard defer compilation
- `ssa/eh.go` - Defer handling in SSA
- `runtime/internal/runtime/z_rt.go` - Runtime defer implementation
- `async/defer.go` - Pull model defer runtime
