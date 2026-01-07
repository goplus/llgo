# Pull Model 中的 Defer/Panic/Recover 实现设计

## 问题背景

### 传统 setjmp/longjmp 方案的问题

在普通函数中，llgo 使用 `sigsetjmp`/`siglongjmp` 实现 defer/panic/recover：

```
func foo() {
    jb := sigsetjmp()      // 保存当前栈上下文
    defer cleanup()
    work()
    panic(...)             // longjmp 回到 setjmp 点
}
```

**在 Pull Model 中这无法工作**：

```
Poll #1:                      Poll #2:
┌───────────────────┐        ┌───────────────────┐
│ sigsetjmp(jb)     │        │ 新的栈帧！        │
│ defer cleanup()   │        │ jb 指向的栈已销毁 │
│ ...               │        │ longjmp → 崩溃！  │
│ await (暂停)      │        │                   │
└───────────────────┘        └───────────────────┘
```

因为 `sigsetjmp` 保存的是**当前栈帧**的上下文，await 后栈帧被销毁，longjmp 会跳到无效内存。

## 解决方案：Defer 链表持久化

### 核心思路

将 defer 信息持久化到状态结构中，不依赖 setjmp/longjmp 的栈上下文。

### 状态结构扩展

```go
type State struct {
    stateIdx    int8

    // 原有字段
    params      ...
    crossVars   ...
    subFutures  ...

    // Defer 持久化字段
    deferHead   *DeferNode   // defer 链表头
    panicValue  any          // 保存的 panic 值
    isPanicking bool         // 是否处于 panic 状态
    recovered   bool         // 是否已 recover
}

// DeferNode 保存单个 defer 调用信息
type DeferNode struct {
    prev    *DeferNode
    fn      unsafe.Pointer   // 函数指针
    argSize int              // 参数大小
    args    [...]byte        // 变长参数数据
}
```

### 执行流程

```
┌─────────────────────────────────────────────────────────────────┐
│                         Poll 方法入口                           │
└─────────────────────────────────────────────────────────────────┘
                              │
                              ▼
                    ┌─────────────────┐
                    │ state.isPanicking? │
                    └─────────────────┘
                          │         │
                          no       yes
                          │         │
                          ▼         ▼
               ┌──────────────┐  ┌──────────────────────┐
               │ 正常执行状态  │  │ 执行 defer 链表      │
               │ 机器逻辑     │  │ 检查是否有 recover   │
               └──────────────┘  └──────────────────────┘
                      │                    │
                      ▼                    ▼
              ┌──────────────┐     ┌──────────────────────┐
              │ 遇到 defer   │     │ recovered?           │
              │ push 到链表  │     │ yes → 继续执行       │
              └──────────────┘     │ no  → 返回 Poll.Error│
                      │            └──────────────────────┘
                      ▼
              ┌──────────────┐
              │ 遇到 panic   │
              │ 设置状态     │
              │ 开始展开     │
              └──────────────┘
```

### Defer 编译转换

#### 原始代码
```go
func AsyncWork() Future[int] {
    f, _ := os.Open("file.txt")
    defer f.Close()

    result := someAsync().Await()

    defer cleanup()

    return async.Return(result)
}
```

#### 编译后的 Poll 方法
```go
func (s *AsyncWork$State) Poll(ctx *Context) Poll[int] {
    switch s.stateIdx {
    case 0:
        // 1. 打开文件
        s.f, _ = os.Open("file.txt")

        // 2. defer f.Close() → push 到 deferList
        s.pushDefer(s.f.Close)

        // 3. 初始化 sub-future
        s.subFut0 = someAsync()
        s.stateIdx = 1
        fallthrough

    case 1:
        // Poll sub-future
        poll := s.subFut0.Poll(ctx)
        if !poll.Ready {
            return Poll[int]{Ready: false}
        }
        s.result = poll.Value

        // 4. defer cleanup() → push 到 deferList
        s.pushDefer(cleanup)

        // 5. 返回结果，执行 defer 链表
        s.runDefers()
        return Poll[int]{Ready: true, Value: s.result}
    }
}
```

### 关键方法实现

#### pushDefer
```go
func (s *State) pushDefer(fn func()) {
    node := &DeferNode{
        prev: s.deferHead,
        fn:   fn,
    }
    s.deferHead = node
}
```

#### runDefers (正常返回时)
```go
func (s *State) runDefers() {
    for s.deferHead != nil {
        node := s.deferHead
        s.deferHead = node.prev
        node.fn()  // 执行 defer
    }
}
```

#### doPanic
```go
func (s *State) doPanic(v any) {
    s.panicValue = v
    s.isPanicking = true

    // 开始执行 defer 链表
    for s.deferHead != nil && !s.recovered {
        node := s.deferHead
        s.deferHead = node.prev

        // 在 defer 中可能调用 recover()
        node.fn()
    }

    // 如果没有 recover，panic 将传播
}
```

#### doRecover
```go
func (s *State) doRecover() any {
    if s.isPanicking && !s.recovered {
        s.recovered = true
        s.isPanicking = false
        return s.panicValue
    }
    return nil
}
```

## 子 Future Panic 传播

当 await 的子 Future 发生 panic 时：

```go
case 1:
    poll := s.subFut0.Poll(ctx)

    // 检查子 Future 是否 panic
    if poll.Error != nil {
        s.doPanic(poll.Error)
        if !s.recovered {
            return Poll[int]{Error: s.panicValue}
        }
        // recovered，继续执行
    }

    if !poll.Ready {
        return Poll[int]{Ready: false}
    }
    // ...
```

## 实现步骤

### Phase 1: 状态结构扩展
1. 在 `StateMachine` 分析中识别包含 defer 的函数
2. 在状态结构中添加 `deferHead`, `panicValue`, `isPanicking` 字段
3. 生成 `pushDefer`, `runDefers`, `doPanic`, `doRecover` 辅助方法

### Phase 2: Defer 编译
1. 识别 `*ssa.Defer` 指令
2. 生成 `pushDefer` 调用而非标准 defer 编译
3. 处理 DeferInCond 和 DeferInLoop 的特殊情况

### Phase 3: Panic/Recover 编译
1. 识别 `*ssa.Panic` 指令，生成 `doPanic` 调用
2. 识别 `recover()` 调用，生成 `doRecover` 调用
3. 在所有 return 路径添加 `runDefers` 调用

## 同步/异步函数 Defer 互操作

### 设计原则

- **同步函数**：保持 setjmp/longjmp 机制
- **异步函数**：使用持久化 defer 链表
- **边界传播**：panic 在边界处正确转换

### 场景 1：同步函数调用异步函数

```go
func SyncMain() {                    // 同步函数 - setjmp defer
    defer syncCleanup()

    exec := sync.NewExecutor()
    future := AsyncWork()            // 创建 Future
    result := exec.BlockOn(future)   // 同步等待
}

func AsyncWork() Future[int] {       // 异步函数 - 持久化 defer
    defer asyncCleanup()
    return async.Return(42)
}
```

**Panic 传播路径**：
```
AsyncWork panic → Poll 返回 Error → BlockOn 检测到 Error
                                    → 调用 runtime.Panic(error)
                                    → longjmp 到 SyncMain 的 setjmp
                                    → 执行 syncCleanup()
```

**实现要点**：
```go
// sync.Executor.BlockOn 实现
func (e *Executor) BlockOn(f Future[T]) T {
    for {
        poll := f.Poll(ctx)
        if poll.Error != nil {
            // 将异步 panic 转换为同步 panic
            runtime.Panic(poll.Error)
        }
        if poll.Ready {
            return poll.Value
        }
        // ... 等待
    }
}
```

### 场景 2：异步函数调用同步函数

```go
func AsyncWork() Future[int] {       // 异步函数 - 持久化 defer
    defer asyncCleanup()

    result := syncHelper()           // 调用同步函数
    return async.Return(result)
}

func syncHelper() int {              // 同步函数 - setjmp defer
    defer syncCleanup()
    if something {
        panic("sync panic")
    }
    return 42
}
```

**Panic 传播路径**：
```
syncHelper panic → longjmp 到 syncHelper 的 setjmp
                 → 执行 syncCleanup()
                 → 继续 longjmp 向上传播
                 → 到达 Poll 方法的调用栈顶
                 → Poll 方法无 setjmp，继续传播到调用者
                 → 最终到达 Executor.BlockOn 或程序崩溃
```

**问题**：同步 panic 会跳过异步函数的 defer！

**解决方案**：在异步函数的 Poll 方法中设置 setjmp 捕获点

```go
func (s *AsyncWork$State) Poll(ctx *Context) Poll[int] {
    // 设置 setjmp 捕获同步 panic
    jb := sigsetjmp()
    if jb != 0 {
        // 同步 panic 被捕获
        panicVal := runtime.GetPanicValue()
        s.doPanic(panicVal)  // 触发异步 defer 链表执行
        if !s.recovered {
            return Poll[int]{Error: s.panicValue}
        }
    }

    // 正常执行...
    switch s.stateIdx {
    case 0:
        result := syncHelper()  // 如果 panic，会跳到上面的 jb != 0
        // ...
    }
}
```

### 场景 3：深度嵌套

```
SyncA (setjmp)
  └─ AsyncB (Poll + 持久化 + setjmp)
       └─ SyncC (setjmp)
            └─ AsyncD (Poll + 持久化 + setjmp)
                 └─ panic!
```

**传播链**：
1. AsyncD panic → Poll 返回 Error
2. SyncC 的 await 点检测 Error → 转为同步 panic
3. AsyncB 的 Poll setjmp 捕获 → 执行 AsyncB defer → 返回 Error
4. SyncA 的 BlockOn 检测 Error → 转为同步 panic
5. SyncA setjmp 捕获 → 执行 SyncA defer

### 关键实现要点

1. **异步 Poll 方法需要 setjmp**：捕获同步函数的 panic
2. **Poll 返回 Error 字段**：传播异步 panic
3. **BlockOn/Await 转换**：Error → 同步 panic
4. **defer 链正确执行**：每层都执行自己的 defer

### Poll 返回类型扩展

```go
type Poll[T any] struct {
    Ready bool
    Value T
    Error any  // panic 值，用于跨边界传播
}
```

## 兼容性考虑

1. **完全兼容 Go 语义** - defer 可以跨越任意数量的 await 点
2. **正确的 LIFO 顺序** - 链表保证 defer 按后进先出顺序执行
3. **recover 语义正确** - 只能在 defer 中 recover，且只 recover 一次
4. **panic 传播** - 未 recover 的 panic 正确传播到调用者
5. **同步/异步互操作** - panic 在边界处正确转换

## 性能影响

- **额外堆分配**：每个 defer 需要分配 DeferNode
- **链表操作开销**：push/pop 操作
- **优化机会**：可以预分配固定大小的 defer 数组，只在溢出时使用链表
