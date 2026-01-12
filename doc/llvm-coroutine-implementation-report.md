# LLGo LLVM Coroutine 实现报告

## 1. Await 的 Push 模型（当前重点）

当前实现把 `$coro` 内部的 await 从 **pull 模型** 切换为 **push 模型**，目标是避免 busy-loop，
并解决“调用者未入队导致无人唤醒”的问题。核心流程：

1. 调用者拿到 callee handle 后先 `coro.done` 检查。
2. 未完成时，把自己的 handle 加入 callee 的 waiter list（Promise 中维护）。
3. 将 callee 入队（`CoroReschedule`），调用者自身 `coro.suspend` 让出执行权。
4. callee 在 final suspend 前调用 `CoroWakeWaiters`，唤醒所有等待者。
5. 被唤醒的调用者继续 `coro.done` → 读取 Promise → destroy。

**同步边界**：最外层/同步上下文仍使用 `CoroScheduleUntil(handle)` 阻塞等待；
协程上下文使用 push await，不再依赖调度器忙等。

## 2. 背景：为什么需要双符号模式

### 2.1 Go Goroutine 与 LLVM Coroutine 的本质差异

Go 的 goroutine 是**有栈协程**，每个 goroutine 拥有独立的栈空间，挂起时通过保存 SP/PC/BP 实现状态保存，恢复时直接 JMP 到保存的地址继续执行。

LLVM Coroutine 是**无栈协程**，没有独立栈，共享调用者的栈。挂起时栈帧会被销毁，只有跨挂起点存活的变量会被保存到堆上的协程帧中。

| 特性 | Go Goroutine | LLVM Coroutine |
|------|-------------|----------------|
| 栈 | 独立栈，挂起时保留 | 无独立栈，挂起时销毁 |
| 挂起位置 | 任意位置（隐式） | 仅 suspend point（显式） |
| 嵌套调用 | 透明支持 | 需要函数着色 |

### 2.2 函数着色问题

LLVM Coroutine 的最大挑战是**函数着色**。当 A→B→C 调用链中 C 需要挂起时，整个调用链都必须是协程函数——这就是"着色传染"。

### 2.3 双符号模式的提出

为解决着色问题并保持与现有代码的兼容性，我们提出**双符号模式**：

- 每个函数同时生成**同步版本**和**协程版本**（`$coro` 后缀）
- `go` 关键字作为着色边界
- 同步世界零开销，异步世界完整支持

---

## 3. 两个世界的差异

### 3.1 执行顺序差异

```go
func worker() {
    println("start")
    coroSuspend()
    println("end")
}

func main() {
    worker()           // 同步调用
    go worker()        // 异步调用
    println("main")
}
```

**同步世界**的执行顺序：`start → end → main`（worker 完整执行后 main 继续）

**异步世界**的执行顺序：`start → main → end`（worker suspend 后 main 继续，调度器恢复 worker）

### 3.2 函数签名差异（ABI 差异）

**同步版本**：签名 `(参数) → 返回值`，阻塞执行

**协程版本**：签名 `(参数) → ptr`，返回协程句柄

#### 关键 ABI 区别

| 调用场景 | 同步版本 | 协程版本 |
|---------|---------|---------|
| 函数签名 | `func(args) returns` | `func$coro(args) ptr` |
| 返回值 | 直接返回 | 存储在 Promise 中 |
| 获取返回值 | 函数返回后立即可用 | await 完成后从 Promise 读取 |
| 调用开销 | 普通函数调用 | 协程帧分配 + 调度 |

#### 返回值处理示例

```go
func compute(x int) int {
    coroSuspend()
    return x * 2
}

func caller() {
    result := compute(10)  // 如何获取返回值？
}
```

**同步调用**（`caller` 调用 `compute`）：
```llvm
%result = call i64 @compute(i64 10)  ; 直接获取返回值
```

**协程调用**（`caller$coro` 调用 `compute$coro`）：
```llvm
%handle = call ptr @compute$coro(i64 10)  ; 获取协程句柄
; ... await 逻辑，等待 compute$coro 完成 ...
%promise = call ptr @llvm.coro.promise(ptr %handle, i32 8, i1 false)
%result = load i64, ptr %promise          ; 从 Promise 读取返回值
call void @llvm.coro.destroy(ptr %handle) ; 销毁协程帧
```

### 3.3 自动 Await 保证顺序一致性

当 `A$coro` 调用 `B$coro` 时，编译器自动插入 await 逻辑，采用**协作式等待**：子协程 suspend 时，父协程也 suspend，让出控制权给调度器。

---

## 4. 双符号的调用规则与 IR 示例

### 4.1 示例源码

```go
func worker(id int) {
    println("worker", id, ": start")
    coroSuspend()
    println("worker", id, ": done")
}

func helper(id int) {
    println("helper", id, ": calling worker")
    worker(id)
    println("helper", id, ": worker returned")
}

func main() {
    helper(0)         // 普通调用
    go helper(1)      // go 调用
    go helper(2)      // go 调用
}
```

### 4.2 生成的符号

| 函数 | 同步版本 | 协程版本 |
|------|---------|---------|
| worker | `worker()` | `worker$coro()` |
| helper | `helper()` | `helper$coro()` |
| main | `main()` | `main$coro()` |

### 4.3 同步版本：worker()

同步版本中 `coroSuspend()` **不生成任何代码**：

```llvm
define void @worker(i64 %id) {
    call void @PrintString("worker")
    call void @PrintInt(i64 %id)
    call void @PrintString(": start")
    ; coroSuspend 被跳过，没有任何代码
    call void @PrintString("worker")
    call void @PrintInt(i64 %id)
    call void @PrintString(": done")
    ret void
}
```

### 4.4 同步版本：helper() 调用 worker()

同步版本内部调用同步版本：

```llvm
define void @helper(i64 %id) {
    call void @PrintString("helper : calling worker")
    call void @worker(i64 %id)              ; ← 调用同步版本
    call void @PrintString("helper : worker returned")
    ret void
}
```

### 4.5 main() 中的普通调用 vs go 调用

```llvm
define void @main() {
    ; 普通调用 - 使用同步版本
    call void @helper(i64 0)

    ; go 调用 - 使用 $coro 版本 + CoroSpawn
    %h1 = call ptr @helper$coro(i64 1)      ; ← 调用协程版本
    call void @CoroSpawn(ptr %h1)           ; ← 入队调度

    %h2 = call ptr @helper$coro(i64 2)
    call void @CoroSpawn(ptr %h2)

    call void @PrintString("main: done")
    ret void
}
```

### 4.6 协程版本：worker$coro() 的结构（简化）

- Ramp：`coro.id/alloc/begin`，返回 handle
- Body：用户代码 + 中间 suspend
- Final suspend：标记 done，不释放帧
- Cleanup：destroy 时释放帧 + `coro.end`

完整 IR 可参考 `cl/_testrt/corodual/out.ll`。

### 4.7 协程版本：helper$coro() 调用 worker$coro() + await（push 模型）

`$coro` 调用 `$coro` 时使用 push await，核心逻辑如下：

```text
handle = worker$coro(...)
if !coro.done(handle):
    add_waiter(handle, self)
    reschedule(handle)
    suspend(self)
; 被唤醒后继续检查 done，读取 Promise
```

### 4.8 协程帧布局

```
+0:  resume_fn   → func$coro.resume 地址，完成时为 null
+8:  destroy_fn  → func$coro.destroy 地址
+16: promise     → 返回值存储位置（类型由函数返回类型决定）
+..: state       → 当前挂起点编号
+..: 局部变量    → 跨挂起存活的变量（如 %id）
```

**Promise 位置**：Promise 始终位于 offset 16，通过 `llvm.coro.promise(handle, alignment, false)` 访问。

LLVM CoroSplit Pass 将函数拆分为：
- `worker$coro` (ramp): 首次调用入口
- `worker$coro.resume`: 恢复执行
- `worker$coro.destroy`: 清理资源

使用 `llvm.coro.done(handle)` 检测 `resume_fn == null` 判断协程是否完成。

---

## 5. Taint 传播分析

编译 `$coro` 版本时，需要判断被调用函数是否包含 suspend 点：
- 直接调用 `coroSuspend` → tainted
- 调用其他 tainted 函数 → tainted（递归传播）

对 tainted 函数：调用其 `$coro` 版本并插入 await。

---

## 6. 边界情况

### 6.1 C 调用 Go

**问题**：C 代码通过函数指针或导出符号调用 Go 函数时，C 不理解协程语义，无法处理返回的协程句柄。

**解决方案**：C 代码只能调用同步版本（`func`），不能调用 `func$coro`。由于同步版本中 `coroSuspend()` 不生成任何代码，C 调用 Go 函数时会直接阻塞执行到函数返回，符合 C 的预期语义。

**限制**：如果 Go 函数内部依赖 suspend 点来实现某些功能（如等待 channel），在 C 调用场景下这些功能会失效。这是有栈/无栈混合模型的固有限制。

### 6.2 Go 调用 C

**问题**：`$coro` 函数内部调用 C 函数时，C 函数没有 `$coro` 版本，如何处理？

**解决方案**：C 函数视为"非 tainted"，直接调用其同步版本，不插入 await 逻辑。调用是阻塞的，C 函数执行完毕后继续执行后续代码。

**限制**：C 函数内部不能有挂起点，也不能回调可能挂起的 Go 函数。如果 C 回调 Go，该回调只能走同步路径。这意味着 C 作为"着色边界"，切断了协程的传播链。

```
Go$coro → C → Go（只能同步）
```

### 6.3 反射调用

**问题**：`reflect.Value.Call()` 在运行时动态调用函数，编译期无法确定目标函数。如何选择调用同步版本还是协程版本？

**讨论**：
- 方案 A：反射统一调用同步版本。简单但丢失协程语义。
- 方案 B：为每个函数生成反射元数据，包含两个版本的入口。运行时根据调用上下文选择版本。
- 方案 C：反射调用时检查当前是否在 `$coro` 上下文中，动态选择版本。

**当前 MVP**：统一走同步版本（方案 A）。后续可考虑方案 C，但需要运行时支持"协程上下文"检测。

### 6.4 defer + panic/recover 实现（协程）

**核心目标**：保证 panic 发生后一定先跑完 defer 链，再决定是否继续传播；recover 仅在 defer 中生效。

**关键机制**：

- panic 值存放在协程状态中（handle 关联的 panic slot）
- `panic` 在协程版本中编译为 `CoroPanic(x)` 并跳转到 exit block（保证 defer 一定执行）
- defer 链以 LIFO 顺序执行，闭包 defer 通过 `$isCoro` 决定同步或 `$coro` + await
- `recover` 在协程版本中编译为 `CoroRecover()`，只在 defer 里清除 panic 值

**执行流程（简化）**：

```
panic(x) ->
    CoroPanic(x)
    goto exit/defer

exit/defer:
    run defers (LIFO)
    if recover() called in defer:
        panic cleared
    final suspend
```

**传播逻辑**：

- 如果 defer 执行后 panic 仍存在，await 逻辑会检测子协程的 panic：
  - `CoroIsPanicByHandle(handle)` → `CoroGetPanicByHandle(handle)`
  - `CoroClearPanicByHandle(handle)` 后用 `CoroSetPanic(...)` 上抛到当前协程
- 如果是最外层协程，运行时最终触发未恢复的 panic

**语义要点**：

- `recover` 只在 defer 执行时有效；非 defer 上下文会得到 `nil`
- `panic` 视为特殊的 suspend 点，因此父协程在 await 子协程时必须检查 panic

### 6.5 闭包（已实现，语义更新）

闭包布局为 `{ fn, ctx, $isCoro }`：
- `$isCoro` 来自 taint 分析，标记该闭包调用是否需要走 `$coro`
- 调用点根据 `$isCoro` 选择同步调用或 `$coro` + await
- 普通函数值/函数指针转换为闭包时，会生成 `closureStub/closureWrapPtr` 以补齐 ctx

### 6.6 接口方法调用（已实现）

接口方法在协程模式下统一指向 `$coro` 版本，调用点自动 Block_On/await。
细节见「接口方法支持」章节。

### 6.7 返回值处理：Promise 机制（简述）

`$coro` 返回句柄，真实返回值存放在 Promise：

```text
handle = callee$coro(...)
await(handle)
promise = coro.promise(handle)
result = load promise
destroy(handle)
```

Promise 首字段预留 waiter list（push await 使用），多返回值/结构体返回值统一以结构体 Promise 承载；
详例见 `cl/_testrt/cororet/out.ll`。

---

## 7. 示例与验证（简版）

为便于汇报，完整 IR 展开已移除。推荐直接查看以下用例与产物：

- `cl/_testrt/cororet/in.go` / `cl/_testrt/cororet/out.ll`：单返回值/多返回值/结构体返回值
- `cl/_testrt/corodefer/in.go`：协程 defer 行为
- `cl/_testrt/coroglobal/in.go`：闭包/命名函数类型/接口调用组合场景

这些用例覆盖 Promise、await、defer、闭包与接口的关键路径。

---

## 8. 总结

### 8.1 核心要点

1. **双符号**：每个函数生成 `func` 和 `func$coro` 两个版本
2. **ABI 差异**：同步版本直接返回值，协程版本返回句柄 + Promise 存储返回值
3. **调用规则**：普通调用用同步版本，go 语句用 `$coro` 版本，`$coro` 内部只调用 `$coro`（C 除外）
4. **自动 await**：`$coro` 调用 `$coro` 时自动生成 push await，完成后从 Promise 读取返回值
5. **taint 分析**：递归识别包含 suspend 点的函数
6. **Promise 机制**：返回值存储在协程帧 offset 16 位置，通过 `llvm.coro.promise` 访问

### 8.2 协程区块生成规则

| 区块 | 生成时机 | 作用 |
|------|---------|------|
| entry | Prologue | alloca promise, coro.id, coro.alloc |
| allocBlk | Prologue | malloc 分配协程帧 |
| beginBlk | Prologue | phi 合并内存, coro.begin 创建句柄 |
| bodyBlk | 函数体 | 用户代码 + coroSuspend 编译 |
| suspendBlk | coroSuspend | Ramp 函数返回点，ret handle |
| resumeBlk | coroSuspend | resume 后继续执行的代码 |
| exitBlk | Epilogue | final suspend |
| finalSuspendBlk | Epilogue | 不释放帧，直接跳 endBlk |
| cleanupBlk | Epilogue | coro.free + free 释放帧 |
| endBlk | Epilogue | coro.end + ret handle |

### 8.3 已验证的返回值类型

| 类型 | 同步调用 | 异步调用 |
|------|---------|---------|
| 单个标量 (int) | ✓ | ✓ |
| 多返回值 (int, int, int) | ✓ | ✓ |
| 结构体 (Point) | ✓ | ✓ |
| 结构体指针 (*Point) | ✓ | ✓ |
| 混合类型 (Point, int, *Point) | ✓ | ✓ |

---

## 9. Block_On 机制（已实现）

### 9.1 问题：如何从 $coro 函数获取返回值

**问题**：在双符号模式下，所有 `$coro` 函数的签名都是 `(参数) → ptr`，返回协程句柄而非实际返回值。当我们需要获取返回值时，需要一个统一的机制来：
1. 等待协程执行完成
2. 从 Promise 中提取返回值
3. 处理资源清理

**解决方案**：Block_On 机制——调用 `$coro` 函数后自动插入等待和提取逻辑。

### 9.2 Block_On 的执行流程

1. 调用 `$coro` 函数，获得 handle。
2. **同步/最外层上下文**：`CoroScheduleUntil(handle)` 阻塞等待完成。
3. **协程上下文**：走 push await（加入 waiter → reschedule callee → suspend）。
4. `coro.promise` 读取返回值，`coro.destroy` 释放帧。

### 9.3 同步上下文 vs 异步上下文

- 同步上下文：阻塞等待，行为等价于传统 `block_on`。
- 协程上下文：协作式等待，由 callee final suspend 唤醒 waiters（见第 1 节）。

### 9.4 Block_On 的应用场景

Block_On/await 被自动插入到所有需要从 `$coro` 函数获取返回值的场景：

| 场景 | 被调用函数 | 返回类型 | 需要 Block_On |
|------|-----------|---------|---------------|
| tainted 函数调用 | `compute$coro` | ptr (handle) | ✓ |
| 闭包调用 | `closure$coro` | ptr (handle) | ✓ |
| 接口方法调用 | itab 中的 `$coro` 方法 | ptr (handle) | ✓ |
| 方法值调用 | `$bound$coro` | ptr (handle) | ✓ |
| 方法表达式调用 | `$thunk$coro` | ptr (handle) | ✓ |

### 9.5 实现细节（简述）

Block_On 由 `coroAwaitAndLoadResult` 生成，核心是「等待 → 读取 Promise → 销毁 handle」。
在协程上下文中会复用 push await 路径。

---

## 10. 闭包模型（已实现，语义更新）

### 10.1 结构与标记

闭包布局为 `{ fn, ctx, $isCoro }`：
- `$isCoro` 来自 taint 分析，表示该闭包是否需要走 `$coro`
- `ctx` 保存捕获变量；无捕获时为 `nil`

### 10.2 生成与转换

- `MakeClosure` 在编译期写入 `$isCoro`
- 普通函数/函数指针转换成闭包时，会生成 `closureStub/closureWrapPtr` 补齐 ctx
- `$isCoro=false` 的闭包走同步调用路径

### 10.3 调用路径

- 调用点读取 `$isCoro`，决定同步调用或 `$coro` + await
- 同步上下文使用 Block_On；协程上下文使用 push await

### 10.4 存储与传递

闭包可存入全局/结构体/切片、可作为参数/返回值传递，`$isCoro` 会随闭包一起传播。

---

## 11. 接口方法支持（已实现）

### 11.1 问题：接口的间接调用如何选择版本

**问题**：接口方法调用是通过 itab 的间接调用，编译期不知道具体实现类型。在协程模式下：
- 如何决定调用同步版本还是 `$coro` 版本？
- itab 应该存储哪个版本的方法指针？

**解决方案**：
1. itab 中统一存储 `$coro` 版本的方法指针
2. 接口方法调用时自动插入 Block_On

### 11.2 itab 布局变更

```go
type Worker interface {
    Work() int
}

type AsyncWorker struct { value int }

func (w *AsyncWorker) Work() int {
    coroSuspend()
    return w.value * 2
}
```

**itab 布局**（协程模式）：
```
itab for *AsyncWorker implementing Worker:
  +0:   inter (接口类型指针)
  +8:   type (具体类型指针)
  +16:  hash
  +24:  (*AsyncWorker).Work$coro   ← 存储 $coro 版本
```

### 11.3 接口方法调用的 Block_On

```go
func callWorker(w Worker) int {
    return w.Work()  // 接口方法调用
}
```

编译流程：
```
1. 从 itab 获取方法指针（已是 $coro 版本）
   %itab = extractvalue %iface %w, 0
   %method_ptr = load ptr, ptr (gep %itab, 3)  ; 第一个方法

2. 获取数据指针
   %data = call ptr @IfacePtrData(%iface %w)

3. 调用方法，返回协程句柄
   %handle = call ptr %method_ptr(ptr %data)

4. Block_On
   call void @CoroScheduleUntil(ptr %handle)
   %promise = call ptr @llvm.coro.promise(...)
   %result = load i64, ptr %promise
```

### 11.4 Imethod 签名变更

`Imethod` 是从接口提取方法形成的闭包。在协程模式下，其签名变为 `$coro` 版本：

| 模式 | Imethod 签名 |
|------|-------------|
| 同步模式 | `func() int` |
| 协程模式 | `func() ptr` |

### 11.5 runtime 包排除

**问题**：runtime 包提供协程基础设施（CoroScheduleUntil、CoroEnter 等），如果 runtime 的接口调用也走协程路径会产生循环依赖。

**解决方案**：runtime 包的接口方法不使用 `$coro` 版本：
- runtime 的 itab 存储同步版本方法指针
- runtime 的接口调用不插入 Block_On

实现位置：
- `ssa/abitype.go`: `abiMethodFunc` 跳过 runtime 包
- `ssa/interface.go`: `Imethod` 对 runtime 包使用原始签名
- `cl/instr.go`: 接口调用跳过 runtime 包的 Block_On

### 11.6 已验证场景

| 场景 | 状态 | 说明 |
|------|------|------|
| 基本接口调用 | ✓ | `w.Work()` |
| 嵌入接口 | ✓ | `AdvancedWorker` 嵌入 `Worker` |
| 接口调用接口 | ✓ | Delegator 模式 |
| 接口返回接口 | ✓ | Factory 模式 |
| 类型断言 | ✓ | `w.(*AsyncWorker)` |
| 接口切片 | ✓ | `[]Worker` 迭代 |
| 嵌套嵌入 | ✓ | 多层接口嵌入 |

---

## 12. 方法值与方法表达式（已实现）

### 12.1 问题：方法引用如何处理

**问题**：Go 支持两种方法引用方式：
- **方法值**（Method Value）：`instance.Method`，绑定特定接收者
- **方法表达式**（Method Expression）：`Type.Method`，接收者作为参数

在协程模式下，这两种引用如何生成和调用？

### 12.2 方法值（$bound）

```go
var w Worker = &AsyncWorker{value: 10}
workFn := w.Work   // 方法值，类型 func() int
result := workFn() // 调用
```

**生成机制**：
- Go SSA 生成 `Worker.Work$bound` 函数
- 捕获接口值作为 FreeVar
- 运行时从 itab 动态获取方法指针并调用

**符号生成**：

| 符号 | 有函数体 | 原因 |
|------|---------|------|
| `Worker.Work$bound` | 否 | 有捕获变量，只生成 $coro |
| `Worker.Work$bound$coro` | 是 | 完整协程函数 |

**$bound$coro 的逻辑**：
```
1. 从闭包上下文加载捕获的接口值
2. 从 itab 获取方法指针（$coro 版本）
3. 获取数据指针
4. 调用方法，返回 handle
5. await handle（$bound$coro 本身也是协程）
6. 存储结果到自己的 Promise
```

### 12.3 方法表达式（$thunk）

```go
workThunk := (*AsyncWorker).Work  // 方法表达式，类型 func(*AsyncWorker) int
aw := &AsyncWorker{value: 20}
result := workThunk(aw)           // 调用，接收者作为参数
```

**生成机制**：
- Go SSA 生成 `(*AsyncWorker).Work$thunk` 函数
- 无捕获变量，接收者作为第一个参数
- 直接调用实际方法

**符号生成**：

| 符号 | 有函数体 | 原因 |
|------|---------|------|
| `(*AsyncWorker).Work$thunk` | 是 | 无捕获变量，生成两个版本 |
| `(*AsyncWorker).Work$thunk$coro` | 是 | |

**$thunk 的逻辑**（简单包装）：
```llvm
define i64 @"(*AsyncWorker).Work$thunk"(ptr %recv) {
    %result = call i64 @"(*AsyncWorker).Work"(ptr %recv)
    ret i64 %result
}

define ptr @"(*AsyncWorker).Work$thunk$coro"(ptr %recv) {
    ; coro prologue
    %handle = call ptr @"(*AsyncWorker).Work$coro"(ptr %recv)
    ; await + coro epilogue
}
```

### 12.4 $bound vs $thunk 对比

| 特性 | $bound | $thunk |
|------|--------|--------|
| 语法 | `instance.Method` | `Type.Method` |
| 类型示例 | `func() int` | `func(*T) int` |
| 接收者 | 捕获为 FreeVar | 作为参数 |
| FreeVars | > 0 | = 0 |
| 生成版本 | 只有 $coro | 同步 + $coro |
| 调用方式 | 动态（通过 itab） | 静态 |

### 12.5 IsClosureName 的扩展

为了让编译器正确识别 `$bound` 和 `$thunk` 为闭包类型，扩展了 `IsClosureName` 函数：

```go
func IsClosureName(name string) bool {
    // 识别 $bound 和 $thunk
    if strings.HasSuffix(name, "$bound") || strings.HasSuffix(name, "$thunk") {
        return true
    }
    // 原有逻辑：识别 $1, $2 等数字后缀
    // ...
}
```

---

## 13. 运行时协程跟踪（已实现）

### 13.1 问题：如何检测当前是否在协程上下文中

**问题**：某些场景需要运行时判断当前是否在协程上下文中：
- Block_On/await 选择阻塞式还是 push 等待
- 调试和诊断
- 未来的反射支持

**解决方案**：通过协程深度计数跟踪。

### 13.2 实现

```go
// runtime/internal/runtime/z_coro.go
var coroDepth int

func CoroEnter() {
    coroDepth++
}

func CoroExit() {
    coroDepth--
}

func CoroIsInCoro() bool {
    return coroDepth > 0
}
```

### 13.3 调用位置

```llvm
; CoroFuncPrologue（coro.begin 之后）
%handle = call ptr @llvm.coro.begin(token %id, ptr %mem)
call void @"runtime.CoroEnter"()   ; ← 标记进入协程
br label %body

; CoroFuncEpilogue（cleanup 块，free 之后）
%mem = call ptr @llvm.coro.free(token %id, ptr %handle)
call void @free(ptr %mem)
call void @"runtime.CoroExit"()    ; ← 标记退出协程
br label %end
```

**CoroExit 在 cleanup 块的原因**：确保协程完全清理后才减少深度计数。如果放在 final suspend 块，协程帧还未释放，可能导致计数不准确。

---

## 14. 当前状态与待实现功能

### 14.1 已实现功能

| 功能 | 状态 | 关键实现 |
|------|------|---------|
| 双符号生成 | ✓ | `compileFuncDecl` + `compileCoroFuncDecl` |
| coroSuspend | ✓ | 编译为 `coro.suspend` |
| go 语句 | ✓ | 调用 $coro + CoroSpawn |
| Promise 返回值 | ✓ | `coro.promise` 机制 |
| 自动 await | ✓ | `$coro` 调用 `$coro`（push await） |
| Taint 分析 | ✓ | 递归传播 |
| defer | ✓ | 协程帧 defer 列表 + await |
| **Block_On** | ✓ | `coroAwaitAndLoadResult` |
| **闭包** | ✓ | `{fn, ctx, $isCoro}` + 运行时分派 |
| **接口方法** | ✓ | itab 存 $coro，Imethod 改签名 |
| **方法值 ($bound)** | ✓ | IsClosureName 识别 |
| **方法表达式 ($thunk)** | ✓ | 双版本生成 |
| **运行时跟踪** | ✓ | CoroEnter/CoroExit |

### 14.2 待实现功能

| 功能 | 优先级 | 说明 |
|------|--------|------|
| Channel 操作 | 高 | `<-ch`、`ch <- v` 作为挂起点 |
| Select 语句 | 高 | 多路复用等待 |
| Mutex | 中 | 协作式锁 |
| 反射调用 | 低 | 运行时动态选择版本 |
