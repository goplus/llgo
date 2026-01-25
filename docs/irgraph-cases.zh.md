# IRGraph 用例说明（直连调用边）

本文档说明 `cl/irgraph/_testdata/*` 的用例设计与预期输出。  
目标是覆盖 LLGo 生成 LLVM IR 时的“直接调用边（direct call）”行为，并记录常见的运行时辅助调用（runtime helper）在图中的表现。

## 生成方式
- 测试入口：`cl/irgraph/irgraph_test.go`  
- 每个子目录包含源码与期望输出：`in.go` / `out.txt`  
- 更新方式：将 `updateTestdata` 临时置 `true`，执行 `go test ./cl/irgraph` 后自动写回 `out.txt`，再改回 `false`。

## 输出格式
每行一条边：
```
call <caller> -> <callee>
```
当前仅收集 **直接调用**（direct call）。函数指针/接口分派的“间接调用”不会形成边，除非编译器生成了显式的 wrapper 调用。

---

## 用例列表与说明

### basic
- 目的：最小 direct call（A 调 B）。
- 预期：`call foo.A -> foo.B`。

### chain
- 目的：链式调用（A→B→C）。
- 预期：`A -> B`、`B -> C`。

### multicall
- 目的：同一函数中多次 direct call。
- 预期：`A -> B`、`A -> C`。

### recursion
- 目的：递归自调用。
- 预期：`A -> A`。

### mutual
- 目的：互递归调用。
- 预期：`A -> B`、`B -> A`。

### multifile
- 目的：同包多文件调用。
- 预期：`A -> B`（跨文件仍能解析为 direct call）。

### crosspkg
- 目的：跨包调用。
- 预期：`crosspkg.A -> .../crosspkg/foo.B`，同时 `crosspkg.init -> .../foo.init`。  
  说明：引用外部包会触发该包的 `init` 依赖，这是预期行为。

### initcall
- 目的：单个 init 触发调用链。
- 预期：`init -> init#1 -> A -> B`。  
  说明：Go/LLGo 会生成 `init#N` 拆分函数，属于编译器特性。

### initmulti
- 目的：多个 init 函数的链条。
- 预期：`init -> init#1`、`init -> init#2`，再分别调用 `A/B`。  
  说明：多个 `init` 会展开成多条分支，这是预期行为。

### varinit
- 目的：全局变量初始化触发调用。
- 预期：`init -> B`。  
  说明：全局变量的初始化逻辑会落在 `init` 中。

### globalmulti
- 目的：多个全局变量初始化。
- 预期：`init -> A` 与 `init -> B` 两条边。

### runtimealloc
- 目的：显式分配触发 runtime helper。
- 预期：`Use -> runtime.AllocZ`。  
  说明：`new(T)` 走运行时分配路径，出现 `AllocZ` 是预期行为。

### ptrrecv
- 目的：指针接收者方法调用 + 局部变量零值初始化。
- 预期：  
  - `A -> (*T).M`  
  - `(*T).M -> B`  
  - `A -> runtime.AllocZ`  
  说明：局部 `var t T` 会触发零值分配路径，从而出现 `runtime.AllocZ`。

### methodcall
- 目的：普通方法调用（值接收者）。
- 预期：  
  - `A -> T.M`  
  - `T.M -> B`  
  - 可能出现 `(*T).M -> T.M` 的 wrapper 边（由编译器生成）。

### methodvalue
- 目的：绑定方法值（`f := t.M`）。
- 预期：  
  - `T.M$bound -> T.M`  
  - `T.M -> B`  
  - `A -> runtime.AllocU`（方法值闭包环境分配）  
  说明：方法值会生成 `T.M$bound` wrapper，且可能分配闭包环境。

### funcvalue
- 目的：函数值调用（`f := B; f()`）。
- 预期：`A -> B`。  
  说明：在 LLGo 当前实现中，该场景会被降为直接调用，因此出现 direct call 边。

### closure
- 目的：闭包函数生成与调用。
- 预期：  
  - `A -> A$1`（闭包函数）  
  - `A$1 -> B`  
  说明：闭包被拆成独立函数 `$1`，调用链应体现为 direct call。

### defercall
- 目的：defer 语义带来的 runtime helper。
- 预期：  
  - `A -> B`  
  - `A -> runtime.SetThreadDefer / GetThreadDefer / Rethrow / AllocU`  
  - `A -> __sigsetjmp`  
  说明：LLGo 的 defer 实现依赖运行时链与 setjmp，出现这些边属预期。

### goroutine
- 目的：go 语句生成新的执行入口。
- 预期：  
  - `A -> runtime.CreateThread`  
  - `A -> malloc`  
  - `__llgo_stub.* -> _llgo_routine$1`  
  - `_llgo_routine$1 -> free`  
  说明：go 语句会生成 `_llgo_routine$1`，并通过 stub 间接调度；运行时线程创建和内存分配是预期行为。

---

## 备注与已知限制
- **接口调用/反射调用** 属于间接调用，当前直连图不会显示真实目标方法边。  
- 若后续需要覆盖接口/反射场景，应引入 `__llgo_relocs` 的语义边并在图中标注 `EdgeReloc`，再补充对应测试。
