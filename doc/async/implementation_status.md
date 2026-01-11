# Pull Model Implementation Status

## ✅ Fully Supported Features

### Basic Async/Await
- [x] Sequential await calls
- [x] Await in conditional branches (if/else)
- [x] Await in switch statements
- [x] Multiple return paths
- [x] Early returns

### Loop Patterns
- [x] Await in for loops (index-based)
- [x] Await in for-range over slices
- [x] Nested loops with await
- [x] Break/continue in loops with await
- [x] Loop accumulators across suspend points

### Type Support
- [x] Primitive types (int, bool, string, etc.)
- [x] Slices and arrays
- [x] Pointers
- [x] Structs (value and pointer)
- [x] Maps as parameters
- [x] Type aliases (e.g., `FutureT2`)
- [x] Tuple return types (`Tuple2`, `Tuple3`, `Tuple4`)
- [x] Result types (`Result[T]`)

### Memory Management
- [x] Stack allocations
- [x] Heap allocations (`new()`, `&Struct{}`)
- [x] Heap-allocated struct field modifications across await
- [x] Loop-bound allocations

### Control Flow
- [x] Phi nodes in loops
- [x] Loop back-edges
- [x] Complex control flow graphs
- [x] Cross-variable tracking

### Defer Support
- [x] Defer with await
- [x] Defer order (LIFO)
- [x] Defer argument capture
- [x] Defer closure variable capture
- [x] Defer in loops

## ⚠️ Known Limitations

### Map Iteration
- **Status**: Supported (map range + await passes `MapIterAsync` / `MapRangeAwait`); optional warnings remain可开关。
- **Notes**: 迭代顺序依赖 Go map 语义（非确定），状态机持久化 map 迭代器以避免重复从头开始。
- **Example**:
  ```go
  // ❌ Not recommended
  for k, v := range myMap {
      result := Compute(v).Await()
      // ...
  }

  // ✅ Use slice iteration instead
  keys := make([]string, 0, len(myMap))
  for k := range myMap {
      keys = append(keys, k)
  }
  for _, k := range keys {
      v := myMap[k]
      result := Compute(v).Await()
      // ...
  }
  ```

### Tuple Types in State
- **Status**: Filtered from cross-state variables
- **Issue**: Tuples with `CommaOk` (e.g., map lookup `v, ok := m[k]`) cannot be persisted
- **Workaround**: Extract tuple components before await
- **Example**:
  ```go
  // ❌ May not work
  tuple := m[key]  // returns (value, bool)
  result := Compute(x).Await()
  v, ok := tuple  // tuple may not persist

  // ✅ Extract before await
  v, ok := m[key]
  if ok {
      result := Compute(v).Await()
      // ...
  }
  ```

## 📊 Test Coverage

### Passing Tests (30+)
- Basic async operations
- Sequential await
- Conditional branches
- Loops (for, for-range on slices)
- Multiple returns
- Cross-variable scenarios
- Tuple returns
- Result returns
- Non-primitive types
- Nested patterns
- Defer patterns
- Heap allocations
- Type aliases

### Disabled Tests
- `TestMapIterAsync` - Map iteration limitation (documented above)

## 🔧 Recent Fixes (Jan 2026)

### Commit `ee9aaa9a` - Type Alias Support
- Fixed `isFutureType` to handle Go 1.22+ `types.Alias`
- Enabled `FutureT2`, `FutureT3`, `FutureT4` type aliases
- Fixed `TestDivmodAsync`

### Commit `76ad6c0c` - Heap Alloc Persistence
- Fixed `shouldPreloadCrossVar` to always preload heap allocs
- Heap-allocated struct pointers now correctly persist across suspend points
- Fixed `TestStructAllocAsync`

### Commit `b7a916e3` - Loop Back-Edge Handling
- Rewrote `findUsesAfterSuspend` to use DFS traversal
- Correctly handles loop back-edges where control flows to lower-index blocks
- Filters unpersistable types: `ssa.Range`, `ssa.Next`, `ssa.Lookup` with CommaOk
- Map iteration now compiles without panic (but has runtime limitation)

## 🎯 Future Improvements

### Potential Enhancements
1. **Map Iterator Persistence**: Design mechanism to save/restore iterator state
2. **Tuple State Support**: Enable persisting tuple values across suspend points
3. **Compile-Time Validation**: Detect and report unsupported patterns early
4. **Performance Optimizations**: Reduce state struct size for simple cases

### Non-Goals
- Channels with await (requires runtime scheduler integration)
- Goroutines spawned from async functions (use `async.Spawn` instead)
