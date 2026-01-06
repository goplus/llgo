# LLGo 拉模型异步机制提案

**日期**: 2026-01-06
**状态**: 研究提案
**作者**: LLGo Team

---

## 目录

1. [概述](#1-概述)
2. [设计哲学与语言对比](#2-设计哲学与语言对比)
3. [API 设计](#3-api-设计)
4. [编译器转换](#4-编译器转换)
5. [内存模型](#5-内存模型)
6. [零开销优化](#6-零开销优化)
7. [恢复机制](#7-恢复机制)
8. [执行器设计](#8-执行器设计)
9. [Defer 与 Panic 处理](#9-defer-与-panic-处理)
10. [复杂场景处理](#10-复杂场景处理)
11. [嵌入式环境](#11-嵌入式环境)
12. [与推模型对比](#12-与推模型对比)
13. [实现路径](#13-实现路径)

---

## 1. 概述

### 1.1 背景

本提案描述 LLGo 的**拉模型（Pull-based）** async/await 机制，采用 Rust 风格的 Future trait 设计。

### 1.2 核心思想

| 方面 | 拉模型 |
|------|--------|
| 驱动方式 | Executor 调用 `poll()` 拉取结果 |
| 状态机生成 | 编译器前端（非 LLVM） |
| 内存模型 | 子状态机值类型嵌入 |
| 适用场景 | WASM、嵌入式、极致性能 |

### 1.3 设计原则

1. **Go 语法兼容**：无新关键字，使用泛型类型表达
2. **零成本抽象**：单态化 + 值类型嵌入
3. **完整 Go 语义**：defer、panic、recover 完全支持
4. **无 LLVM 依赖**：编译器自行生成状态机

---

## 2. 设计哲学与语言对比

### 2.1 三种语言的协程设计

| 方面 | C++ Coroutines | Rust async/await | llgo 拉模型 |
|------|---------------|------------------|-------------|
| 标准 | C++20 | Rust 1.39+ | 本提案 |
| 驱动模型 | Push (resume) | Pull (poll) | Pull (poll) |
| 状态机生成 | LLVM coro pass | rustc 前端 | llgo 前端 |
| 内存模型 | 堆分配帧 | 栈/堆灵活 | 栈/堆灵活 |

### 2.2 语法对比

```cpp
// C++20 Coroutines
Task<int> fetch_data(int id) {
    auto a = co_await step_a(id);
    auto b = co_await step_b(a);
    co_return a + b;
}
```

```rust
// Rust async/await
async fn fetch_data(id: i32) -> i32 {
    let a = step_a(id).await;
    let b = step_b(a).await;
    a + b
}
```

```go
// llgo 拉模型
func FetchData(id int) Future[int] {
    a := StepA(id).Await()
    b := StepB(a).Await()
    return Return(a + b)
}
```

### 2.3 类型系统对比

| 方面 | C++ Awaitable | Rust Future | llgo Future |
|------|--------------|-------------|-------------|
| 方法数 | 3 个 | 1 个 | 1 个 |
| 同步快路径 | `await_ready()` | `Poll::Ready` | `IsReady()` |
| 自引用 | 无限制 | 需要 `Pin` | 无需 Pin |
| 复杂度 | 高 | 中 | 低 |

---

## 3. API 设计

### 3.1 核心类型

```go
package async

// Poll 表示轮询结果
type Poll[T any] struct {
    ready bool
    value T
}

func Ready[T any](v T) Poll[T] { return Poll[T]{ready: true, value: v} }
func Pending[T any]() Poll[T]  { return Poll[T]{ready: false} }

func (p Poll[T]) IsReady() bool { return p.ready }
func (p Poll[T]) Value() T      { return p.value }

// Context 传递给 poll，包含 Waker
type Context struct {
    Waker Waker
}

// Waker 用于通知执行器
type Waker interface {
    Wake()
}
```

### 3.2 Future 类型约束

```go
// Poller 类型约束（编译时检查，无 itab）
type Poller[T any] interface {
    Poll(ctx *Context) Poll[T]
}
```

### 3.3 用户 API

```go
// Await 标记挂起点（编译器识别）
func (a Async[T]) Await() T

// Return 包装返回值
func Return[T any](v T) Async[T]
```

### 3.4 使用示例

```go
func FetchUser(id int) Future[User] {
    Sleep(100 * time.Millisecond).Await()
    return Return(User{ID: id, Name: "test"})
}

func main() {
    executor := NewExecutor()
    executor.BlockOn(FetchUser(1))
}
```

---

## 4. 编译器转换

### 4.1 转换流程

```
Go 源码 (返回 Future[T])
        ↓
    x/tools/go/ssa 分析
        ↓
    步骤1: 识别异步函数（返回 Future[T]）
        ↓
    步骤2: 找到挂起点（.Await() 调用）
        ↓
    步骤3: 分割基本块
        ↓
    步骤4: 分析跨挂起点变量
        ↓
    步骤5: 生成状态机结构体
        ↓
    步骤6: 生成 Poll 方法
        ↓
    状态机代码
```

### 4.2 识别异步函数

```go
func isAsyncFunc(fn *ssa.Function) bool {
    results := fn.Signature.Results()
    if results.Len() != 1 { return false }
    return isFutureType(results.At(0).Type())
}
```

### 4.3 找到挂起点

```go
func findSuspendPoints(fn *ssa.Function) []*ssa.Call {
    var points []*ssa.Call
    for _, block := range fn.Blocks {
        for _, instr := range block.Instrs {
            if call, ok := instr.(*ssa.Call); ok {
                if isAwaitCall(call) {
                    points = append(points, call)
                }
            }
        }
    }
    return points
}
```

### 4.4 跨挂起点变量分析

```go
func findCrossSuspendVars(fn *ssa.Function, suspends []*ssa.Call) []ssa.Value {
    var crossVars []ssa.Value
    for _, suspend := range suspends {
        defsBefore := getDefinitionsBefore(fn, suspend)
        usesAfter := getUsesAfter(fn, suspend)
        for v := range defsBefore {
            if usesAfter[v] {
                crossVars = append(crossVars, v)
            }
        }
    }
    return unique(crossVars)
}
```

### 4.5 完整转换示例

**输入：**
```go
func MyAsync(x int) Future[int] {
    a := StepA(x).Await()     // 挂起点 1
    b := StepB(a).Await()     // 挂起点 2
    return Return(a + b)
}
```

**输出：**
```go
type MyAsync_State struct {
    state int8
    x     int           // 参数
    a, b  int           // 跨挂起点变量
    subA  StepA_State   // 子 future（值类型嵌入）
    subB  StepB_State
}

func MyAsync(x int) MyAsync_State {
    return MyAsync_State{state: 0, x: x}
}

func (s *MyAsync_State) Poll(ctx *Context) Poll[int] {
    for {
        switch s.state {
        case 0:
            s.subA = StepA(s.x)
            s.state = 1
            fallthrough
        case 1:
            p := s.subA.Poll(ctx)
            if !p.IsReady() { return Pending[int]() }
            s.a = p.Value()
            s.subB = StepB(s.a)
            s.state = 2
            fallthrough
        case 2:
            p := s.subB.Poll(ctx)
            if !p.IsReady() { return Pending[int]() }
            s.b = p.Value()
            return Ready(s.a + s.b)
        }
    }
}
```

---

## 5. 内存模型

### 5.1 分配策略对比

场景：`Main → A → B → C`（3层嵌套）

| 模型 | malloc 次数 | 内存布局 |
|------|-------------|---------|
| 推模型 | 4 次 | 4 个独立堆块 |
| 拉模型-接口 | 4 次 | 4 个独立堆块 + itab |
| 拉模型-单态化 | 1 次 | 1 个内嵌结构 |

### 5.2 内存布局

```
推模型 / 拉模型-接口：
┌────────┐   ┌────────┐   ┌────────┐   ┌────────┐
│ Main   │──▶│ A      │──▶│ B      │──▶│ C      │
│ (heap) │   │ (heap) │   │ (heap) │   │ (heap) │
└────────┘   └────────┘   └────────┘   └────────┘
   4 次 malloc，多个小块，内存碎片化

拉模型-单态化：
┌─────────────────────────────────────────┐
│ Main_State                              │
│ ├─ state, args                          │
│ ├─ A_State (值类型嵌入)                  │
│ │  └─ B_State (值类型嵌入)               │
│ │     └─ C_State (值类型嵌入)            │
└─────────────────────────────────────────┘
   1 次 malloc，单个大块，内存连续
```

### 5.3 变量存储

| 变量类型 | 是否保存到状态机 | 原因 |
|---------|-----------------|------|
| 参数 | ✅ 是 | 整个执行期间需要 |
| 跨 await 变量 | ✅ 是 | suspend 后仍需使用 |
| 不跨 await 变量 | ❌ 否 | 可在栈上临时存储 |
| 子 future | ✅ 是 | 需要多次 poll |

---

## 6. 零开销优化

### 6.1 泛型单态化

使用类型约束，编译期检查 + 运行时直接调用：

```go
// 泛型 BlockOn - 编译期为每个类型生成专用代码
func BlockOn[F Poller[T], T any](fut F) T {
    ctx := &Context{Waker: &NoopWaker{}}
    for {
        p := fut.Poll(ctx)  // 直接调用，可内联
        if p.IsReady() { return p.Value() }
    }
}

// 使用（单态化）
result := BlockOn[MyAsync_State, int](myFut)
```

### 6.2 子状态机值类型嵌入

```go
// ❌ 接口嵌入（有 itab 开销，需堆分配）
type MyAsync_State struct {
    subFut0 Future[int]      // 接口类型
}

// ✅ 值类型嵌入（无开销，直接调用）
type MyAsync_State struct {
    subFut0 StepA_State      // 具体类型
}
```

### 6.3 仅 Spawn 时堆分配

```go
func Spawn[F Poller[Void]](fn func() F) {
    state := fn()             // 栈上创建整个状态机树
    task := new(Task[F])      // 唯一一次 malloc
    task.future = state       // 复制到堆
    schedule(task)
}
```

### 6.4 优化效果对比

| 方面 | 接口方式 | 单态化优化 |
|------|---------|-----------|
| Poll 调用 | itab 间接调用 | 直接调用，可内联 |
| 子状态机 | 每个单独堆分配 | 值类型内嵌 |
| 堆分配次数 | N 次（每层一次） | 1 次（仅 Spawn） |
| 性能 | 接近 Go 接口 | 接近 Rust |

---

## 7. 恢复机制

### 7.1 Waker 通知

```go
// IO 完成时通知 Waker
func onIOComplete(waker Waker) {
    waker.Wake()  // 仅通知，不立即执行
}

// Executor 稍后 poll
for {
    for task := range readyTasks {
        task.future.Poll(ctx)  // 执行器调用
    }
}
```

### 7.2 Poll 传播

每次 `Wake()` 后从最外层开始 poll：

```
Executor.run()
    │
    ▼
Main.poll() → A.poll() → B.poll() → C.poll()
                                      │
                                      ▼
                                返回 Ready/Pending
```

### 7.3 与推模型对比

| 方面 | 推模型 resume() | 拉模型 poll() |
|------|---------------|---------------|
| 恢复 → 执行 | 立即 | 延迟（Executor 调度） |
| 恢复效率 | O(1) | O(N) switch 链 |
| 批量调度 | 难 | 自然支持 |
| 取消 | 需 destroy | drop 即取消 |

---

## 8. 执行器设计

### 8.1 简单阻塞执行器

```go
func BlockOn[F Poller[T], T any](fut F) T {
    ctx := &Context{Waker: &NoopWaker{}}
    for {
        p := fut.Poll(ctx)
        if p.IsReady() { return p.Value() }
        // 忙等待或休眠
    }
}
```

### 8.2 Libuv 执行器

```go
type LibuvExecutor struct {
    loop   *libuv.Loop
    ready  []*Task
}

func (e *LibuvExecutor) Spawn(fut Future[Void]) {
    task := &Task{future: fut, exec: e}
    e.ready = append(e.ready, task)
}

func (e *LibuvExecutor) Run() {
    for len(e.ready) > 0 {
        // Poll 所有就绪任务
        for _, task := range e.ready {
            task.future.Poll(&Context{Waker: task})
        }
        e.ready = nil
        // 等待 IO 事件
        e.loop.RunOnce()
    }
}
```

---

## 9. Defer 与 Panic 处理

### 9.1 Defer 栈方案

支持分支、循环中的 defer：

```go
type State struct {
    defers []func()  // 动态 defer 栈
}

// 条件 defer
if cond {
    s.defers = append(s.defers, cleanupA)
}

// 循环 defer
for i := 0; i < n; i++ {
    f := openFile(i)
    s.defers = append(s.defers, func() { f.Close() })  // 捕获变量
}
```

### 9.2 Panic 处理（完整 Go 语义）

```go
func (s *State) runDefers() (panicValue interface{}) {
    for i := len(s.defers) - 1; i >= 0; i-- {
        userRecovered := false
        func() {
            defer func() {
                if r := recover(); r != nil {
                    if !userRecovered {
                        panicValue = r  // 新 panic 替换旧 panic
                    }
                }
            }()
            s.defers[i]()
            userRecovered = true  // 用户 recover 了
        }()
    }
    return
}

func (s *State) Poll(ctx *Context) (result Poll[int]) {
    defer func() {
        panicVal := recover()
        deferPanic := s.runDefers()
        if deferPanic != nil {
            panic(deferPanic)
        } else if panicVal != nil {
            panic(panicVal)
        }
    }()
    // 正常逻辑...
    return result
}
```

### 9.3 Go 语义对照

| 行为 | Go 原生 | 拉模型状态机 |
|------|--------|-------------|
| 所有 defer 执行 | ✅ | ✅ |
| 新 panic 替换旧 | ✅ | ✅ |
| recover 可恢复 | ✅ | ✅ |
| 嵌套 defer | ✅ | ✅ |

---

## 10. 复杂场景处理

### 10.1 条件分支

```go
func Example(cond bool) Future[int] {
    if cond {
        return Return(StepA().Await())
    } else {
        return Return(StepB().Await())
    }
}
```

生成：
```go
func (s *Example_State) Poll(ctx *Context) Poll[int] {
    switch s.state {
    case 0:
        if s.cond {
            s.subA = StepA(); s.state = 1
        } else {
            s.subB = StepB(); s.state = 2
        }
        fallthrough
    case 1:
        p := s.subA.Poll(ctx)
        if !p.IsReady() { return Pending[int]() }
        return Ready(p.Value())
    case 2:
        p := s.subB.Poll(ctx)
        if !p.IsReady() { return Pending[int]() }
        return Ready(p.Value())
    }
}
```

### 10.2 循环

```go
func Loop(n int) Future[int] {
    sum := 0
    for i := 0; i < n; i++ {
        x := Compute(i).Await()
        sum += x
    }
    return Return(sum)
}
```

生成：
```go
func (s *Loop_State) Poll(ctx *Context) Poll[int] {
    for {
        switch s.state {
        case 0:
            s.sum, s.i = 0, 0
            s.state = 1
            fallthrough
        case 1:
            if s.i >= s.n { return Ready(s.sum) }
            s.sub = Compute(s.i)
            s.state = 2
            fallthrough
        case 2:
            p := s.sub.Poll(ctx)
            if !p.IsReady() { return Pending[int]() }
            s.sum += p.Value()
            s.i++
            s.state = 1  // 回到循环
        }
    }
}
```

### 10.3 模块化编译

跨包调用需导出具体类型：

```go
// package a - 导出状态机类型
type StepA_State struct { ... }
func StepA(x int) StepA_State { return StepA_State{x: x} }

// package main - 编译时已知大小
type Main_State struct {
    subA a.StepA_State  // 可嵌入 ✓
}
```

### 10.4 递归

直接递归需特殊处理：

```go
func Recursive(n int) Future[int] {
    if n <= 1 { return Return(n) }
    x := Recursive(n-1).Await()  // 递归 - 无法直接嵌入
    return Return(n + x)
}
// 解决方案：使用 Box 或接口包装
```

---

## 11. 嵌入式环境

### 11.1 内存分配策略

| 模式 | 堆分配 | 适用场景 |
|------|--------|---------|
| `BlockOn(future)` | ❌ | 单任务 |
| 静态变量槽 | ❌ | 预知任务数 |
| 预分配池 | ❌ | 有限并发 |
| 动态 Spawn | ✅ | 一般应用 |

### 11.2 静态任务分配

```go
// 编译期分配固定槽位
static TASK_SLOT: StaticTask<MyFuture> = StaticTask::new()

func main() {
    TASK_SLOT.Spawn(MyAsync())
    executor.Run()
}
```

### 11.3 无堆分配执行

```go
func main() {
    future := MyAsync()           // 栈上
    BlockOn[MyAsync_State](future) // 不需要堆
}
```

---

## 12. 与推模型对比

### 12.1 技术对比

| 维度 | 推模型 (LLVM coro) | 拉模型 (本提案) |
|------|-------------------|----------------|
| 状态机生成 | LLVM coro pass | llgo 编译器前端 |
| 内存效率 | 每层独立分配 | 单次分配内嵌 |
| 代码膨胀 | 无 | 泛型单态化膨胀 |
| 恢复效率 | O(1) resume | O(N) poll 链 |
| LLVM 依赖 | 依赖 coro pass | 无依赖 |
| WASM 支持 | ⚠️ 有 bug | ✅ 正常 |
| 实现复杂度 | 低（复用 LLVM） | 高（自己生成） |

### 12.2 使用场景

| 场景 | 推荐方案 | 原因 |
|------|---------|------|
| 常规 I/O | 推模型 | 简单可靠 |
| WASM | 拉模型 | 绕过 LLVM bug |
| 裸机嵌入式 | 拉模型 | 无 LLVM 依赖 |
| 极致内存 | 拉模型 | 单次分配 |
| 深层嵌套 | 推模型 | O(1) 恢复 |

---

## 13. 实现路径

### Phase 1: SSA 分析基础

- [ ] 识别 `Future[T]` 返回类型
- [ ] 检测 `.Await()` 调用位置
- [ ] 分析跨挂起点变量

### Phase 2: 状态机生成

- [ ] 生成状态机结构体
- [ ] 生成 Poll 方法
- [ ] 处理条件分支和循环

### Phase 3: 高级特性

- [ ] Defer 栈实现
- [ ] Panic/Recover 处理
- [ ] 跨包类型导出

### Phase 4: 优化

- [ ] 泛型单态化
- [ ] 子状态机内嵌
- [ ] 编译期状态扁平化

---

## 参考

- [LLVM Coroutines](https://llvm.org/docs/Coroutines.html)
- [C++20 Coroutines](https://en.cppreference.com/w/cpp/language/coroutines)
- [Rust Async Book](https://rust-lang.github.io/async-book/)
- [x/tools/go/ssa](https://pkg.go.dev/golang.org/x/tools/go/ssa)
- [How Rust Optimizes Async/Await](https://tmandry.gitlab.io/blog/posts/optimizing-await-1/)
