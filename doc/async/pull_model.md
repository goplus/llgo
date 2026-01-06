# LLGo 拉模型异步设计（备选方案）

**日期**: 2026-01-06
**状态**: 提案（Push 模型的备选方案）

---

## 1. 概述

本文档描述了一种受 Rust Future 模型启发的 **拉模型（Pull-based）** async/await 机制。与当前的推模型（使用 LLVM coro intrinsics）不同，此方案在编译期生成显式状态机。

### 1.1 与推模型对比

| 方面 | 拉模型（本提案） | 推模型（当前） |
|------|----------------|---------------|
| 驱动方式 | Poll 拉取 | Resume 回调推送 |
| 状态机 | llgo 前端生成 | LLVM coro pass 生成 |
| 内存 | 可内联/栈分配 | 必须堆分配 |
| LLVM 依赖 | 无（普通函数） | LLVM coro intrinsics |

---

## 2. 核心类型

### 2.1 Poll 结果

```go
package async

// Poll 表示轮询 future 的结果
type Poll[T any] struct {
    ready bool
    value T
}

func Ready[T any](v T) Poll[T] { return Poll[T]{ready: true, value: v} }
func Pending[T any]() Poll[T]  { return Poll[T]{ready: false} }

func (p Poll[T]) IsReady() bool { return p.ready }
func (p Poll[T]) Value() T      { return p.value }
```

### 2.2 Future 接口

```go
// Future 表示一个异步计算
type Future[T any] interface {
    Poll(ctx *Context) Poll[T]
}

// Context 提供 Waker 用于重新轮询
type Context struct {
    Waker Waker
}

// Waker 通知执行器重新轮询 future
type Waker interface {
    Wake()
}

// Return 包装返回值为 Future（编译器指令）
//
//go:linkname Return llgo.futureReturn
func Return[T any](v T) Future[T]
```

---

## 3. 语法设计

### 3.1 异步函数声明

返回 `Future[T]` 的函数被视为异步函数：

```go
// 异步函数：返回 Future[T]
func FetchData(url string) Future[[]byte] {
    resp := HttpGet(url).Await()  // 挂起点
    return Return(resp.Body)      // 使用 Return 包装
}
```

**要点**：
- 返回类型 `Future[T]` 标记函数为异步
- `.Await()` 标记挂起点
- `return Return(value)` 返回结果（Go 语法兼容）

### 3.2 挂起点

`.Await()` 方法调用是唯一的挂起点标记：

```go
func MyAsync(x int) Future[int] {
    a := StepA(x).Await()    // 挂起点 1
    b := StepB(a).Await()    // 挂起点 2
    return Return(a + b)     // 返回结果
}
```

### 3.3 无显式 Suspend

与推模型不同，没有 `Suspend()` 原语。低级集成使用自定义 Future 类型：

```go
// 低级定时器集成
type SleepFuture struct {
    ms      int
    started bool
    done    chan struct{}
    waker   Waker
}

func Sleep(ms int) Future[Void] {
    return &SleepFuture{ms: ms, done: make(chan struct{})}
}

func (f *SleepFuture) Poll(ctx *Context) Poll[Void] {
    if f.done != nil {
        select {
        case <-f.done:
            return Ready(Void{})
        default:
        }
    }
    if !f.started {
        f.waker = ctx.Waker
        go func() {
            time.Sleep(time.Duration(f.ms) * time.Millisecond)
            close(f.done)
            f.waker.Wake()
        }()
        f.started = true
    }
    return Pending[Void]()
}
```

---

## 4. 编译器转换

### 4.1 源码到状态机

**输入：**
```go
func MyAsync(x int) Future[int] {
    a := StepA(x).Await()
    b := StepB(a).Await()
    return Return(a + b)
}
```

**生成：**
```go
// 状态机结构体
type MyAsync_State struct {
    state   int8
    x       int              // 参数
    a, b    int              // 跨挂起点的局部变量
    subFut0 Future[int]      // StepA 的子 future
    subFut1 Future[int]      // StepB 的子 future
}

// 入口函数 - 创建状态机
func MyAsync(x int) Future[int] {
    return &MyAsync_State{state: 0, x: x}
}

// Poll 实现
func (s *MyAsync_State) Poll(ctx *Context) Poll[int] {
    for {
        switch s.state {
        case 0:
            s.subFut0 = StepA(s.x)
            s.state = 1
            fallthrough
        case 1:
            p := s.subFut0.Poll(ctx)
            if !p.IsReady() {
                return Pending[int]()
            }
            s.a = p.Value()
            s.subFut1 = StepB(s.a)
            s.state = 2
            fallthrough
        case 2:
            p := s.subFut1.Poll(ctx)
            if !p.IsReady() {
                return Pending[int]()
            }
            s.b = p.Value()
            return Ready(s.a + s.b)
        }
    }
}
```

### 4.2 转换步骤

1. **识别异步函数**：返回类型为 `Future[T]`
2. **找到挂起点**：所有 `.Await()` 调用
3. **分析跨挂起点变量**：挂起后使用的变量
4. **生成状态结构体**：参数 + 跨挂起点局部变量 + 子 future
5. **生成 Poll 方法**：基于 switch 的状态机

---

## 5. 零开销优化

### 5.1 泛型单态化（避免 itab）

使用类型约束代替接口，实现编译期检查 + 运行时直接调用：

```go
// 类型约束（仅编译检查，不产生 itab）
type Poller[T any] interface {
    Poll(ctx *Context) Poll[T]
}

// 泛型函数 - 编译期为每个具体类型生成专用代码
func BlockOn[F Poller[T], T any](fut F) T {
    ctx := &Context{Waker: &NoopWaker{}}
    for {
        p := fut.Poll(ctx)  // 直接调用，可内联
        if p.IsReady() {
            return p.Value()
        }
    }
}

// 使用（单态化）
result := BlockOn[MyAsync_State, int](myFut)
```

### 5.2 子状态机值类型嵌入

子 future 使用具**体类型嵌入**而非接口指针：

```go
// ❌ 接口嵌入（有 itab 开销，需堆分配）
type MyAsync_State struct {
    subFut0 Future[int]      // 接口类型
    subFut1 Future[int]
}

// ✅ 值类型嵌入（无开销，直接调用）
type MyAsync_State struct {
    subFut0 StepA_State      // 具体类型
    subFut1 StepB_State
}
```

内存布局：
```
MyAsync_State（单次分配，全部内嵌）
┌────────────────────────────┐
│ state: int8                │
│ x, a, b: int               │
│ subFut0: StepA_State       │ ← 值类型，非指针
│   └─ (StepA 的所有字段)     │
│ subFut1: StepB_State       │ ← 值类型，非指针
│   └─ (StepB 的所有字段)     │
└────────────────────────────┘
```

### 5.3 仅 Spawn 时堆分配

```go
// Spawn 是唯一的堆分配点
func Spawn[F Poller[Void]](fn func() F) {
    state := fn()             // 栈上创建整个状态机树
    task := new(Task[F])      // 唯一一次 malloc
    task.future = state       // 复制到堆
    schedule(task)
}

// 使用
executor.Spawn(func() MainAsync_State {
    return MainAsync()  // 整个树只分配一次
})
```

### 5.4 优化对比

| 方面 | 接口方式 | 优化后 |
|------|---------|--------|
| Poll 调用 | itab 间接调用 | 直接调用，可内联 |
| 子状态机 | 每个单独堆分配 | 值类型内嵌 |
| 堆分配次数 | N 次（每层一次） | 1 次（仅 Spawn） |
| 性能 | 接近 Go 接口 | 接近 Rust |

---

## 6. 执行器集成

### 5.1 简单阻塞执行器

```go
// BlockOn 同步运行 future 直到完成
func BlockOn[T any](fut Future[T]) T {
    ctx := &Context{Waker: &NoopWaker{}}
    for {
        p := fut.Poll(ctx)
        if p.IsReady() {
            return p.Value()
        }
        // 忙等待或休眠
    }
}
```

### 5.2 Libuv 执行器

```go
type LibuvExecutor struct {
    loop   *libuv.Loop
    wakers map[*Task]struct{}
}

func (e *LibuvExecutor) Spawn(fut Future[Void]) {
    task := &Task{future: fut, exec: e}
    e.schedule(task)
}

func (e *LibuvExecutor) Run() {
    e.loop.Run(libuv.RUN_DEFAULT)
}
```

---

## 7. 对比总结

| 特性 | 拉模型 | 推模型 |
|------|--------|--------|
| 所需标记 | `Future[T]` 返回 + `.Await()` + `Return()` | `Async[T]` 返回 + `.Await()` + `Return()` + `Suspend()` |
| 状态机 | llgo 生成 | LLVM coro pass 生成 |
| 内存模型 | 内联组合 | 堆分配帧 |
| 恢复机制 | Waker → 重新 poll | 回调 → resume(handle) |
| 实现复杂度 | 高（自定义 SSA 分析） | 低（复用 LLVM） |

---

## 8. 建议

> [!NOTE]
> 本拉模型作为 **备选设计** 记录。推荐生产环境使用当前的推模型（LLVM coro intrinsics），原因：
> 1. 实现复杂度低
> 2. 与 libuv 回调集成更好
> 3. LLVM 验证过的可靠性

拉模型可考虑用于：
- WASM 目标（LLVM coro 有问题）
- 裸机嵌入式（对内存的最大控制）
- 学术/研究用途
