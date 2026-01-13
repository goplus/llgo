# LLGo 拉模型异步设计（Pull Model）

**日期**: 2026-01-06
**更新**: 2026-01-07
**状态**: 已实现（IR 生成完成，运行时测试中）

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
    err   any // panic value for跨边界传播
}

func Ready[T any](v T) Poll[T] { return Poll[T]{ready: true, value: v} }
func Pending[T any]() Poll[T]  { return Poll[T]{ready: false} }
func PollError[T any](err any) Poll[T] { return Poll[T]{ready: true, err: err} }

func (p Poll[T]) IsReady() bool { return p.ready }
func (p Poll[T]) Value() T      { return p.value }
func (p Poll[T]) Error() any    { return p.err }
func (p Poll[T]) HasError() bool { return p.err != nil }
```

### 2.2 Future 接口

```go
// Future 表示一个异步计算
type Future[T any] interface {
    Poll(ctx *Context) Poll[T]
    // Await 是编译期标记，运行时不应被直接调用
    Await() T
}

// Context 提供 Waker 用于重新轮询
type Context struct {
    Waker Waker
    hasWaker bool // 由 NewContext / SetWaker 维护
}

// NewContext(w) 或 ctx.SetWaker(w) 会设置 hasWaker。
// 直接赋值 ctx.Waker 不会触发 hasWaker=true。
func (c *Context) SetWaker(w Waker)

// Waker 通知执行器重新轮询 future
type Waker interface {
    Wake()
}

// Return 包装返回值为 Future（编译器指令）
func Return[T any](v T) *ReadyFuture[T]
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

## 3.4 运行时/ABI 约定（实现相关）

以下约定与当前实现一致，供编译器/运行时对齐使用：

- `async.Poll[T]` 字段顺序固定：`ready`、`value`、`err`。  
  `err` 非空代表 panic 跨边界传播（`PollError`）。
- `runtime.internal.runtime.TrySelectWaker` 语义：  
  `TrySelectWaker(w Waker, ops ...ChanOp) (isel int, recvOK, tryOK bool)`。  
  `tryOK=false` 表示当前没有 case 可推进，需返回 Pending，并在 channel 可用时触发 waker。
- `runtime/internal/runtime.asyncRecoverHook` 由 async 包通过 `go:linkname` 绑定，  
  用于 defer/recover 与 Pull 模型状态机的衔接。

## 3.5 调试钩子（当前限制）

`async.PullDebug*` 钩子目前仅在 **旧的 LLSSA emitter** 路径中触发；  
Pull IR 路径尚未注入调试回调。

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
// 泛型函数 - 编译期为每个具体类型生成专用代码
func BlockOn[F Future[T], T any](fut F) T {
    ctx := NewContext(&NoopWaker{})
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
func Spawn[F Future[Void]](fn func() F) {
    state := fn()             // 栈上创建整个状态机树
    task := new(Task)         // 唯一一次 malloc
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

## 8. 实现状态

### 8.1 已完成

- ✅ SSA 分析：识别异步函数、挂起点、跨挂起点变量
- ✅ 状态机生成：状态结构体、Poll 方法、入口函数
- ✅ LLVM IR 生成：使用 llssa API 直接生成
- ✅ 编译器集成：`pullmodel.ShouldTransform` + `GenerateStateMachine`
- ✅ 测试覆盖：13 个测试目录（basic, complex, conditional, controlflow, crossvar, defer, edgecases, loop, multiret, nested, panic, sequential, types）

### 8.2 待完成

- ⏳ 运行时 executor 测试（`test/asyncpull/examples`）
- ⏳ 泛型返回值 `async.Return[T]` 正确 IR 生成
- ⏳ 与推模型（push model）的切换机制
