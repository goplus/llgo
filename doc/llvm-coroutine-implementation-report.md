## 1. 双符号模型（核心设计）

### 1.1 为什么必须有双符号
LLVM 协程是无栈协程，遇到 suspend 会销毁栈帧。只要调用链中任意函数包含 suspend 点，**整条调用链都必须是协程版本**，即函数着色。

如果只生成单一协程版本，会导致：
- 同步调用也被迫异步化，破坏 Go 语义
- 性能开销上升，调用成本增加
- 现有代码迁移成本过高

因此采用双符号：
- 同步版本保留原语义和性能
- 协程版本承担 suspend/await 语义

### 1.2 双符号定义
每个函数生成两个符号：
- **同步版本**：`func(...) -> returns`
- **协程版本**：`func$coro(...) -> handle`

规则：
- `go f()` 调用 `f$coro` 并 `CoroSpawn(handle)`
- 同步调用走同步版本
- 协程上下文调用走 `$coro` 版本并自动 await

### 1.3 符号选择（污点分析）

双符号的关键在于“何时选择 `$coro` 版本”。当前策略是静态污点分析 + 运行时标记补足：

**污点源**：
- 直接包含 `coroSuspend` 的函数
- 包含 `panic` 或协程专用控制流的函数

**传播规则**：
- 若函数调用了 tainted 函数，则自身 tainted
- 调用链上持续传递，直到固定点

**选择规则**：
- 在同步上下文中，始终使用同步版本
- 在协程上下文中，若被调用函数 tainted，则选择 `$coro` 并插入 await
- 若被调用函数未 tainted，可走同步版本（避免不必要的协程开销）

**间接调用补足**：
- 闭包/函数指针/接口方法在编译期无法确定目标函数是否 tainted
- 这类调用通过运行时 `isCoro` 标记进行分支选择（见第 5 节）

### 1.4 ABI 与 Promise
- 同步版本直接返回值
- 协程版本返回 handle，真实返回值存放在 Promise 中

Promise 通过 `llvm.coro.promise(handle, align, ...)` 访问，布局由返回类型决定。

---

## 2. 同步/异步边界与 Block_On（语义保持）

边界是保证“同步代码不被协程语义污染”的关键。Block_On 是跨越边界的核心机制。

### 2.1 go 语句：显式异步入口
`go f()` 是显式边界：
- 不阻塞当前执行
- 调用 `f$coro` 获取 handle
- 将 handle 入队调度

### 2.2 同步入口：Block_On
当同步上下文调用协程版本时，必须阻塞等待：

```
handle = f$coro(...)
CoroScheduleUntil(handle)
load promise
destroy handle
```

这保证同步调用语义不变（“调用即完成”）。

### 2.3 Block_On 工作原理
Block_On 统一生成“等待 -> 读取 -> 释放”的结构：

1) 调用 `$coro` 获取 handle
2) 等待 handle 完成（同步：`CoroScheduleUntil`，协程：push await）
3) 读取 Promise 中的返回值
4) `coro.destroy(handle)` 释放协程帧

### 2.4 为什么必须自动 Block_On
在 LLGo 中，调用点可能不是直接函数调用：
- 闭包、接口方法、函数指针等是 **间接调用**
- 甚至可以把 **C 符号作为闭包传递**（如 `cl/_testrt/intgen`）

这导致调用点无法在编译期决定同步/协程路径，因此需要：
- 闭包结构携带 `isCoro`
- 调用点自动插入 Block_On/await

这一机制保证：
- 若是 C 符号或同步函数，直接走同步路径
- 若是协程函数，自动走 `$coro` + await，保持 Go 语义一致

---

## 3. Await 的 Push 模型（当前重点）

### 3.1 为什么从 pull 改为 push
pull 模型要不断调度/检查完成状态，容易引入忙等；且在“调用者未入队”时会出现无人唤醒。push 模型通过 waiter list 实现单向唤醒链路。

### 3.2 基本流程
协程上下文中，await 子协程的核心逻辑：

```
handle = callee$coro(...)
loop:
  if coro.done(handle):
     goto done
  add_waiter(handle, self)
  reschedule(handle)
  suspend(self)
  goto loop

done:
  propagate_panic_if_any(handle)
  load_promise_and_destroy(handle)
```

### 3.3 关键点
- **waiter list** 位于 callee Promise 的第一个字段
- **调用者**挂到 callee 的 waiter list 上
- **被调用者**在 final suspend 前调用 `CoroWakeWaiters`
- **同步边界**不进入 push await，而是 `CoroScheduleUntil`

### 3.4 多层链路示例
A -> B -> C：
- B await C：B 加入 C.waiters，C 入队，B suspend
- A await B：A 加入 B.waiters，B 入队，A suspend
- C 完成后唤醒 B，B 再检查 C.done 并继续
- B 完成后唤醒 A

这样只保证 **callee 入队**，waiter 通过唤醒恢复，避免重复入队与忙等。

---

## 4. 边界处理（Go/C/反射等）

### 4.1 Go -> C
C 不认识协程句柄，因此 C 只能调用同步版本。`$coro` 不对 C 暴露。

### 4.2 C -> Go
C 调用 Go 时只能走同步版本，`coroSuspend` 在同步版本中是 no-op。

### 4.3 反射
反射调用无法在编译期判定是否 tainted。当前 MVP 统一走同步版本，避免运行时复杂度。

---

## 5. 闭包与接口（复杂性与已遇到问题）

### 5.1 闭包布局
闭包布局：

```
{ fn, ctx, isCoro }
```

- `isCoro` 来源于污点分析
- `fn` 指向同步或协程版本
- 调用时根据 `isCoro` 选择路径

### 5.2 闭包调用路径
- `isCoro=false`：同步调用
- `isCoro=true`：调用 `$coro` 并 await

普通函数值/函数指针转闭包时通过 `closureStub/closureWrapPtr` 补齐 ctx。

### 5.3 接口方法
协程模式下 itab 存储 `$coro` 方法指针，接口调用自动插入 Block_On/await。

### 5.4 已遇到的问题与处理

**问题 1：闭包复杂性**
- LLGo 支持将普通函数、方法值、接口方法、函数指针统统当作闭包使用
- 间接调用无法在编译期决定符号版本

**解决策略**
- 使用 `isCoro` 标记在运行时选择同步/协程路径
- 调用点自动插入 Block_On/await

**问题 2：C 符号作为闭包**（`cl/_testrt/intgen`）
- C 函数没有 `$coro` 版本
- 但可以被传递为 Go 闭包并调用

**解决策略**
- C 符号闭包的 `isCoro` 固定为 false
- 调用点走同步路径，Block_On 逻辑保证接口一致

这也是 Block_On 必须自动化的直接原因之一。

---

## 6. defer + panic/recover（协程语义）

### 6.1 目标
- panic 触发 defer 链
- recover 只在 defer 中生效
- 子协程 panic 在 await 时传播到父协程

### 6.2 核心机制
- panic 值存放在协程状态/Promise slot 中
- `$coro` 中 `panic(x)` 编译为 `CoroPanic(x)` 并跳转 exit block
- exit block 统一执行 defer 链（LIFO）
- `recover()` 编译为 `CoroRecover()`，仅在 defer 环境清除 panic

### 6.3 exit block 的结构（简化）
```
exit:
  run_defers_lifo()
  if panic_slot != nil:
     // still panicking
     goto final_suspend
  else:
     // normal return
     goto final_suspend

final_suspend:
  CoroWakeWaiters()
  coro.suspend
```

### 6.4 defer 内部的调用选择
- defer 的目标函数也可能是 tainted
- 若 defer 目标是 `$coro`，必须在 defer 中插入 await
- 若是同步函数，直接调用

这样保证 defer 语义与正常调用一致。

### 6.5 panic 在 await 边界的传播
await 子协程时：
```
if CoroIsPanicByHandle(handle):
    v = CoroGetPanicByHandle(handle)
    CoroClearPanicByHandle(handle)
    CoroSetPanic(v)
```
父协程进入自身 exit/defer 路径，若最外层仍未 recover，则触发未恢复 panic。

### 6.6 与 push await 的配合
panic 被视作特殊的 suspend 点：
- 子协程发生 panic 后最终进入 final suspend
- 父协程 await 返回后通过 panic slot 检测并传播
- 依赖 push await 的唤醒链路，确保 defer 执行完再传播

---

## 7. 验证与参考

建议对照用例：
- `cl/_testrt/corodual`：双符号 + suspend
- `cl/_testrt/cororet`：Promise 返回值
- `cl/_testrt/corodefer`：defer + panic/recover
- `cl/_testrt/coroglobal`：闭包 + 接口
- `cl/_testrt/intgen`：C 符号闭包

IR 产物：
- `cl/_testrt/*/out.ll`

---

## 8. 小结

- 双符号模型解决函数着色，同时保留同步语义。
- 符号选择依赖污点分析，间接调用通过 `isCoro` 补足。
- Block_On 统一跨越同步/异步边界，并支撑闭包与接口调用。
- push await 模型解决“无人唤醒”和忙等问题。
- defer + panic/recover 在 `$coro` 中保持 Go 语义一致。
