# SSA 到拉模型状态机转换分析

**日期**: 2026-01-06

---

## 1. 概述

本文档分析如何将 Go `x/tools/go/ssa` 生成的 SSA 转换为拉模型状态机。

### 1.1 目标语法

```go
func FuncA(args...) Future[T] {
    x := FuncB(...).Await()  // 挂起点
    y := FuncC(...).Await()  // 挂起点
    return Return(x + y)
}
```

### 1.2 转换目标

```go
// 状态机结构体
type FuncA_State struct {
    state int8
    args  ArgsType
    x, y  int
    subB  FuncB_State
    subC  FuncC_State
}

// Poll 方法
func (s *FuncA_State) Poll(ctx *Context) Poll[T] { ... }
```

---

## 2. SSA 基础结构

### 2.1 x/tools/go/ssa 核心类型

```go
// 函数
type Function struct {
    Params   []*Parameter     // 参数
    Blocks   []*BasicBlock    // 基本块
    ...
}

// 基本块
type BasicBlock struct {
    Instrs []Instruction       // 指令序列
    Succs  []*BasicBlock       // 后继块
    Preds  []*BasicBlock       // 前驱块
}

// 常见指令
type Call struct { ... }       // 函数调用
type Return struct { ... }     // 返回
type Store struct { ... }      // 存储
type Phi struct { ... }        // Phi 节点
```

### 2.2 示例 SSA

```go
// 源码
func FuncA(n int) Future[int] {
    x := FuncB(n).Await()
    y := FuncC(x).Await()
    return Return(x + y)
}

// SSA (概念)
FuncA:
  block0:
    t0 = FuncB(n)          // Call
    t1 = t0.Await()        // Call (挂起点!)
    t2 = FuncC(t1)         // Call
    t3 = t2.Await()        // Call (挂起点!)
    t4 = t1 + t3           // BinOp
    t5 = Return(t4)        // Call
    return t5              // Return
```

---

### 2.3 SSA 中 Alloc 出现的场景

在 go/ssa 中，`Alloc` 表示“为某个值创建可取址存储单元”。它既可能来自源码显式分配，也可能是 SSA 构建阶段无法提升变量时的隐式结果。完整覆盖的常见场景如下：

1. **显式分配与取址**
   - `new(T)`
   - `&T{...}` / `&struct{...}{...}` / `&[n]T{...}`
   - 通常是 `Alloc` + `Store` 初始化

2. **局部变量/参数被取址或地址逃逸**
   - 显式 `&x`
   - 将 `&x` 传出函数、存入切片/map/结构体/interface、或返回 `&x`
   - 适用于普通局部变量、参数、range 变量、type switch 绑定变量等

3. **闭包或 defer 捕获**
   - `func() { use x }`、`defer func() { use x }()`
   - 捕获变量会变成 `Alloc`，并通过 `MakeClosure` 绑定

4. **需要稳定地址以满足方法/接口语义**
   - 对局部变量调用指针接收者方法，SSA 会为其创建 `Alloc` 以取得地址

5. **无法提升到 SSA 值的变量**
   - 只要变量具有“可取址/逃逸”需求，SSA 构建会保留 `Alloc`，而非纯 SSA 值

补充：
- **Alloc 提升（lift）是保守的**：SSA 会尽量把局部变量提升成纯 SSA 值，但只在“地址不逃逸、用途可控”的情况下进行。常见无法提升的原因包括：地址被捕获/返回/存入容器或接口；传入未知调用；参与 `unsafe.Pointer` 或反射；地址在多个块之间需要合并或保留真实地址语义。
- **具体失败示例（会保留 Alloc）**：
  ```go
  // 1) 取址并返回
  func f() *int { x := 1; return &x }

  // 2) 取址传给未知调用
  func g(p *int)
  func f() { x := 1; g(&x) }

  // 3) 地址进入 interface / 容器
  func f() { x := 1; var a any = &x; _ = a }
  func f2() { x := 1; s := []*int{&x}; _ = s }

  // 4) 闭包 / defer 捕获
  func f() { x := 1; defer func() { _ = x }() }

  // 5) unsafe / reflect 参与
  func f() { x := 1; _ = uintptr(unsafe.Pointer(&x)) }
  ```
- `Alloc.Heap` 为 true 表示地址逃逸，需要堆分配，否则可在栈上。
- `make(slice/map/chan)` 对应 `MakeSlice/MakeMap/MakeChan`，不是 `Alloc`。

---

## 3. 转换步骤

### 3.1 步骤1：识别异步函数

```go
func isAsyncFunc(fn *ssa.Function) bool {
    // 检查返回类型是否为 Future[T]
    results := fn.Signature.Results()
    if results.Len() != 1 {
        return false
    }
    retType := results.At(0).Type()
    // 检查是否是 Future[T] 类型
    return isFutureType(retType)
}
```

### 3.2 步骤2：找到挂起点

遍历所有指令，找到 `.Await()` 调用：

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

func isAwaitCall(call *ssa.Call) bool {
    // 检查是否是 xxx.Await() 形式
    if sel, ok := call.Call.Value.(*ssa.Function); ok {
        return sel.Name() == "Await"
    }
    return false
}
```

### 3.3 步骤3：分割基本块

在每个挂起点后分割控制流：

```
原始 block0:
  t0 = FuncB(n)
  t1 = t0.Await()    ← 挂起点
  t2 = FuncC(t1)
  t3 = t2.Await()    ← 挂起点
  return ...

分割后:
  state0:            // 初始状态
    t0 = FuncB(n)
    START_POLL(t0)
    → goto state1

  state1:            // 等待 FuncB 完成
    t1 = GET_RESULT(t0)
    t2 = FuncC(t1)
    START_POLL(t2)
    → goto state2

  state2:            // 等待 FuncC 完成
    t3 = GET_RESULT(t2)
    return t1 + t3
```

### 3.4 步骤4：分析跨挂起点变量

找出在挂起点后仍被使用的变量：

```go
func findCrossSuspendVars(fn *ssa.Function, suspends []*ssa.Call) []ssa.Value {
    var crossVars []ssa.Value

    for i, suspend := range suspends {
        // 获取 suspend 之前定义的变量
        defsBefore := getDefinitionsBefore(fn, suspend)

        // 获取 suspend 之后使用的变量
        usesAfter := getUsesAfter(fn, suspend)

        // 交集 = 跨挂起点变量
        for v := range defsBefore {
            if usesAfter[v] {
                crossVars = append(crossVars, v)
            }
        }
    }
    return unique(crossVars)
}
```

示例：
```
t1 = FuncB(n).Await()  // t1 在 await 后定义
t3 = FuncC(t1).Await() // t1 跨第二个 await 使用
return t1 + t3         // t1, t3 都跨最终 return
```

需要保存：`t1`, `t3`

### 3.5 步骤5：生成状态机结构体

```go
func generateStateStruct(fn *ssa.Function, crossVars []ssa.Value,
                         subFutures []*ssa.Call) *StateStruct {
    s := &StateStruct{
        Name: fn.Name() + "_State",
    }

    // 状态字段
    s.AddField("state", "int8")

    // 参数字段
    for _, param := range fn.Params {
        s.AddField(param.Name(), typeString(param.Type()))
    }

    // 跨挂起点变量字段
    for _, v := range crossVars {
        s.AddField(varName(v), typeString(v.Type()))
    }

    // 子 future 字段（用于存储待 poll 的 future）
    for i, call := range subFutures {
        futType := getFutureStateType(call)
        s.AddField(fmt.Sprintf("sub%d", i), futType)
    }

    return s
}
```

生成结果：
```go
type FuncA_State struct {
    state int8
    n     int           // 参数
    t1    int           // 跨挂起点变量
    t3    int           // 跨挂起点变量
    sub0  FuncB_State   // 子 future
    sub1  FuncC_State   // 子 future
}
```

### 3.6 步骤6：生成 Poll 方法

```go
func generatePollMethod(fn *ssa.Function, states []State) string {
    var buf bytes.Buffer

    buf.WriteString("func (s *%s_State) Poll(ctx *Context) Poll[%s] {\n")
    buf.WriteString("    for {\n")
    buf.WriteString("        switch s.state {\n")

    for i, state := range states {
        buf.WriteString(fmt.Sprintf("        case %d:\n", i))

        for _, instr := range state.Instructions {
            buf.WriteString(generateInstruction(instr))
        }

        if state.IsAwait {
            // 生成 poll 子 future 的代码
            buf.WriteString(fmt.Sprintf(`
            p := s.sub%d.Poll(ctx)
            if !p.IsReady() {
                return Pending[%s]()
            }
            s.%s = p.Value()
            s.state = %d
            fallthrough
`, state.SubIndex, resultType, resultVar, i+1))
        }
    }

    buf.WriteString("        }\n    }\n}\n")
    return buf.String()
}
```

---

## 4. 完整转换示例

### 4.1 输入

```go
func FuncA(n int) Future[int] {
    x := FuncB(n).Await()
    y := FuncC(x).Await()
    return Return(x + y)
}
```

### 4.2 SSA 分析

```
挂起点: 2 个
  - t0.Await() → t1 = x
  - t2.Await() → t3 = y

跨挂起点变量:
  - x (t1): 用于 FuncC(x) 和 return
  - y (t3): 用于 return

子 future 类型:
  - FuncB_State
  - FuncC_State
```

### 4.3 输出

```go
// 状态机结构体
type FuncA_State struct {
    state int8
    n     int           // 参数
    x     int           // 跨挂起点
    y     int           // 跨挂起点
    subB  FuncB_State   // 子 future
    subC  FuncC_State   // 子 future
}

// 入口函数
func FuncA(n int) FuncA_State {
    return FuncA_State{state: 0, n: n}
}

// Poll 方法
func (s *FuncA_State) Poll(ctx *Context) Poll[int] {
    for {
        switch s.state {
        case 0:
            s.subB = FuncB(s.n)
            s.state = 1
            fallthrough
        case 1:
            p := s.subB.Poll(ctx)
            if !p.IsReady() {
                return Pending[int]()
            }
            s.x = p.Value()
            s.subC = FuncC(s.x)
            s.state = 2
            fallthrough
        case 2:
            p := s.subC.Poll(ctx)
            if !p.IsReady() {
                return Pending[int]()
            }
            s.y = p.Value()
            return Ready(s.x + s.y)
        }
    }
}
```

---

## 5. 复杂场景处理

### 5.0 需要重点覆盖的组合场景（总览）
- **迭代器变体**：`Next() (T, bool)`；高阶/visitor：`func X() func(func(T))`，Await 可能在回调内部。
- **goroutine + async**：async 中启动 goroutine，goroutine 内 Await（应拒绝）；goroutine 与 Await 交错的 channel 通信。
- **控制流 + defer**：defer 在循环/分支/switch/select 中，捕获循环变量，panic/recover 交织 Await。
- **select + Await**：case 内 Await；default/超时；单分支确定性 select；chan 关闭。
- **range 迭代**：range slice/map/chan，迭代变量被 Await、defer、closure 使用。
- **多返回值 / Result / TupleN**：如 `(v, ok)`、`Result[T]`；涉及 tuple 的 ABI/状态机存储。
- **嵌套状态机**：async 返回 async，多层 Await；子 future 是接口/泛型实例。

以下小节继续展开具体控制流、defer、panic 等的处理。

### 5.1 条件分支

```go
func Example(cond bool) Future[int] {
    if cond {
        x := FuncA().Await()
        return Return(x)
    } else {
        y := FuncB().Await()
        return Return(y)
    }
}
```

需要在状态机中编码条件分支：

```go
type Example_State struct {
    state int8
    cond  bool
    x, y  int
    subA  FuncA_State
    subB  FuncB_State
}

func (s *Example_State) Poll(ctx *Context) Poll[int] {
    switch s.state {
    case 0:
        if s.cond {
            s.subA = FuncA()
            s.state = 1
        } else {
            s.subB = FuncB()
            s.state = 2
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

### 5.2 循环

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

循环展开为状态：

```go
type Loop_State struct {
    state int8
    n     int
    sum   int
    i     int
    sub   Compute_State
}

func (s *Loop_State) Poll(ctx *Context) Poll[int] {
    for {
        switch s.state {
        case 0: // 初始化
            s.sum = 0
            s.i = 0
            s.state = 1
            fallthrough
        case 1: // 循环条件检查
            if s.i >= s.n {
                return Ready(s.sum)
            }
            s.sub = Compute(s.i)
            s.state = 2
            fallthrough
        case 2: // 等待 Compute
            p := s.sub.Poll(ctx)
            if !p.IsReady() { return Pending[int]() }
            s.sum += p.Value()
            s.i++
            s.state = 1  // 回到循环
        }
    }
}
```

### 5.3 Defer 处理

Defer 在拉模型中需要特殊处理，特别是在分支和循环中。采用 **defer 栈** 方案。

#### 5.3.1 简单 defer

```go
func WithDefer() Future[int] {
    defer cleanup()
    x := Work().Await()
    return Return(x)
}
```

```go
type WithDefer_State struct {
    state int8
    sub   Work_State
}

func (s *WithDefer_State) Poll(ctx *Context) Poll[int] {
    switch s.state {
    case 0:
        s.sub = Work()
        s.state = 1
        fallthrough
    case 1:
        p := s.sub.Poll(ctx)
        if !p.IsReady() { return Pending[int]() }
        cleanup()  // 返回前执行 defer
        return Ready(p.Value())
    }
}
```

#### 5.3.2 条件 defer

```go
func ConditionalDefer(cond bool) Future[int] {
    if cond {
        defer cleanupA()  // 条件注册
    }
    x := Work().Await()
    defer cleanupB()      // 总是注册
    return Return(x)
}
```

使用 defer 栈追踪：

```go
type ConditionalDefer_State struct {
    state  int8
    cond   bool
    defers []func()  // defer 栈
    sub    Work_State
}

func (s *ConditionalDefer_State) Poll(ctx *Context) Poll[int] {
    switch s.state {
    case 0:
        if s.cond {
            s.defers = append(s.defers, cleanupA)
        }
        s.sub = Work()
        s.state = 1
        fallthrough
    case 1:
        p := s.sub.Poll(ctx)
        if !p.IsReady() { return Pending[int]() }
        s.defers = append(s.defers, cleanupB)
        // 执行所有 defer（逆序）
        for i := len(s.defers) - 1; i >= 0; i-- {
            s.defers[i]()
        }
        return Ready(p.Value())
    }
}
```

#### 5.3.3 循环 defer

```go
func LoopDefer(n int) Future[int] {
    for i := 0; i < n; i++ {
        f := openFile(i)
        defer f.Close()  // 每次循环注册一个！
        Work(f).Await()
    }
    return Return(0)
}
```

循环中的 defer 需要动态栈：

```go
type LoopDefer_State struct {
    state    int8
    n, i     int
    defers   []func()  // 动态 defer 栈
    currentF *File
    sub      Work_State
}

func (s *LoopDefer_State) Poll(ctx *Context) Poll[int] {
    // 确保异常或正常返回都执行 defer
    defer func() {
        if s.state == DONE || recover() != nil {
            for i := len(s.defers) - 1; i >= 0; i-- {
                s.defers[i]()
            }
        }
    }()

    for {
        switch s.state {
        case 0: // 循环开始
            s.i = 0
            s.state = 1
            fallthrough
        case 1: // 循环条件
            if s.i >= s.n {
                s.state = DONE
                return Ready(0)
            }
            s.currentF = openFile(s.i)
            f := s.currentF  // 捕获当前值
            s.defers = append(s.defers, func() { f.Close() })
            s.sub = Work(s.currentF)
            s.state = 2
            fallthrough
        case 2:
            p := s.sub.Poll(ctx)
            if !p.IsReady() { return Pending[int]() }
            s.i++
            s.state = 1
        }
    }
}
```

#### 5.3.4 Panic 处理

Go 的 defer panic 语义要求：
1. **所有 defer 都执行**：即使前面 panic 了
2. **新 panic 替换旧 panic**：defer 中的 panic 会替换原始 panic
3. **recover 可以阻止 panic 传播**
4. **嵌套 defer 正常工作**

完整实现（支持用户 recover 和嵌套 defer）：

```go
// runDefers 执行所有 defer，完全符合 Go 语义
func (s *State) runDefers() (panicValue interface{}) {
    for i := len(s.defers) - 1; i >= 0; i-- {
        userRecovered := false
        func() {
            defer func() {
                if r := recover(); r != nil {
                    if !userRecovered {
                        // 用户没有 recover，传播 panic
                        panicValue = r
                    }
                    // 如果 userRecovered=true，用户已处理，不传播
                }
            }()
            s.defers[i]()
            // 如果能运行到这里，说明用户 defer 中 recover 了
            userRecovered = true
        }()
    }
    return panicValue
}

// Poll 方法的正确 panic 处理
func (s *State) Poll(ctx *Context) (result Poll[int]) {
    defer func() {
        panicVal := recover()

        // 无论是否 panic，都运行 defers
        deferPanic := s.runDefers()

        // 决定最终 panic 值（defer 中的 panic 优先）
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

**嵌套 defer 处理**：defer 函数内部的 defer 由 Go 运行时自然处理，无需特殊代码：

```go
func Example() Future[int] {
    defer func() {
        defer innerCleanup()  // 嵌套 defer - Go runtime 处理
        outerWork()
    }()
    x := Work().Await()
    return Return(x)
}
// 嵌套 defer 在 s.defers[i]() 调用时正常执行
```

#### 5.3.5 Defer 处理总结

| 场景 | 处理方式 | 复杂度 |
|------|---------|--------|
| 函数顶层 defer | 静态追踪，返回前执行 | 🟢 简单 |
| 条件 defer | defer 栈 + 条件追加 | 🟡 中等 |
| 循环 defer | 动态 defer 栈 + 捕获变量 | 🔴 复杂 |
| Panic 处理 | 保护每个 defer + 替换语义 | 🔴 复杂 |

#### 5.3.6 Go 语义对照

| 行为 | Go 原生 | 状态机方案 |
|------|--------|-----------|
| 所有 defer 执行 | ✅ | ✅ |
| 新 panic 替换旧 | ✅ | ✅ |
| recover 可恢复 | ✅ | ✅ (userRecovered 标志) |
| 嵌套 defer | ✅ | ✅ (Go runtime 处理) |

> [!WARNING]
> Defer + panic 处理是拉模型中最复杂的部分。建议：
> 1. 简单场景用静态分析优化
> 2. 完整语义仅在需要时启用
> 3. 测试覆盖所有边界情况

---

## 6. 实现架构

### 6.1 编译流程

```
Go 源码
    ↓ (go/parser + go/types)
AST + 类型信息
    ↓ (x/tools/go/ssa)
SSA IR
    ↓ (本文档描述的转换)
状态机代码
    ↓ (常规编译)
LLVM IR / 目标代码
```

### 6.2 核心组件

```go
// 转换器接口
type SSAToStateMachine interface {
    // 识别异步函数
    IsAsyncFunc(fn *ssa.Function) bool

    // 找到挂起点
    FindSuspendPoints(fn *ssa.Function) []*SuspendPoint

    // 分析跨挂起点变量
    AnalyzeCrossVars(fn *ssa.Function, points []*SuspendPoint) []ssa.Value

    // 生成状态机
    GenerateStateMachine(fn *ssa.Function, analysis *Analysis) *StateMachine

    // 输出代码
    EmitCode(sm *StateMachine) []byte
}
```

---

## 7. 与推模型对比

| 步骤 | 推模型 (LLVM coro) | 拉模型 (本文档) |
|------|-------------------|----------------|
| 挂起点识别 | LLVM 自动 | 编译器前端 |
| 状态机生成 | LLVM coro pass | 编译器前端 |
| 变量存储 | LLVM 计算帧布局 | 显式结构体字段 |
| 代码生成 | LLVM 后端 | 显式 switch 代码 |

---

## 8. State 存储判定与策略

本节描述哪些 SSA 值需要存入状态机的 state 结构体，以及当前实现采用的保守策略。

### 8.1 基本判定原则

**核心规则**：如果一个 SSA 值需要在 suspend 点之后仍然有效访问，就必须入 state。

| SSA Value 类型 | 入 State 条件 | 存储内容 |
|----------------|--------------|---------|
| **参数** (ssa.Parameter) | 后续状态使用 | 值本身 |
| **普通 SSA Value** | 定义在 suspend 前，使用在 suspend 后 | 值本身 |
| **Alloc (Heap)** | 跨 suspend 或被闭包捕获 | **指针** |
| **Alloc (Stack)** | 跨 suspend | **元素值 T**（非 `*T`） |
| **Await 结果** | 后续状态使用 | 值本身 |
| **Phi 节点** | 跨状态控制流 | 值本身 |
| **闭包捕获变量** | 延迟执行时需访问 | 值或地址 |

### 8.2 当前实现的保守策略

当前实现采用**保守策略**，宁可多存也不漏，以避免复杂控制流下的边界情况。

#### 8.2.1 Phi 节点强制入 State

```go
// 当前实现：所有 Phi 强制入 state
for _, block := range fn.Blocks {
    for _, instr := range block.Instrs {
        if phi, ok := instr.(*ssa.Phi); ok {
            crossVars[phi] = true  // 不管是否跨 suspend
        }
    }
}
```

**原因**：Phi 值依赖于进入 block 的前驱边。在复杂循环中（如 `for.loop` block），简单的 `isDefinedBefore` 分析可能错误判断 Phi 的定义位置，导致循环变量（如 `i`, `sum`）丢失。

#### 8.2.2 Await 结果强制入 State

```go
// 当前实现：所有 Await 结果强制入 state
for _, sp := range suspends {
    if sp.Result != nil {
        crossVars[sp.Result] = true
    }
}
```

**原因**：Await 结果定义在 suspend 点本身，需要在后续状态中可访问。强制入 state 避免 SSA dominance 问题。

#### 8.2.3 Defer 闭包捕获强制入 State

```go
// 当前实现：defer 闭包的所有 Bindings 强制入 state
if deferInstr, ok := instr.(*ssa.Defer); ok {
    if mc, ok := deferInstr.Call.Value.(*ssa.MakeClosure); ok {
        for _, binding := range mc.Bindings {
            crossVars[binding] = true
        }
    }
}
```

**原因**：defer 闭包在函数返回时执行，必须保证捕获的变量在整个函数生命周期内有效。

#### 8.2.4 预分配所有 Value-Producing 指令的 Slot

```go
// 当前实现：为几乎所有产生值的指令预分配 slot
func (b *PullIRBuilder) allocateCrossStateSlots() {
    for _, state := range b.sm.States {
        for _, instr := range state.Instructions {
            if v, ok := instr.(ssa.Value); ok {
                if b.getSlot(v) == nil {
                    b.allocateSlot(v, SlotCross, name)
                }
            }
        }
    }
}
```

**原因**：避免复杂控制流（分支、循环、多前驱）下遗漏跨状态引用。

### 8.3 Stack Alloc 的特殊处理

Stack Alloc（`Alloc.Heap == false`）存储**元素值**而非指针：

```go
if alloc, ok := v.(*ssa.Alloc); ok && !alloc.Heap {
    if ptr, ok := alloc.Type().(*types.Pointer); ok {
        slotType = ptr.Elem()  // 存 T，不是 *T
        stackAlloc = true
    }
}
```

在 Poll 方法中，每次恢复时需要重新获取栈地址：
```go
localAddr := &s.localVal  // 从 state 字段取地址
```

### 8.4 Loop Alloc 的特殊处理

循环中的 Alloc 需要追踪，避免指针复用：

```go
func AnalyzeLoopAllocs(fn *ssa.Function) map[*ssa.Alloc]struct{} {
    // 使用 Tarjan SCC 检测循环块
    loops := blocksInLoops(fn)
    // 收集循环中的 Alloc
    for _, block := range fn.Blocks {
        if loops[block] {
            for _, instr := range block.Instrs {
                if alloc, ok := instr.(*ssa.Alloc); ok {
                    loopAllocs[alloc] = struct{}{}
                }
            }
        }
    }
}
```

### 8.5 Phi 节点的 EdgeWrites 处理

Phi 值在状态机中通过**出口侧写入**（EdgeWrites）而非入口侧加载：

```go
// PullState 结构
type PullState struct {
    EdgeWrites map[int][]EdgeWrite  // targetState -> writes
}

// 在跳转前写入 Phi 对应的 slot
ctx.generatePhiEdgeWrites(fromBlock, toBlock, targetState)
```

这确保了 Phi 语义的正确性：每条入边对应一个特定的值。

### 8.6 未来优化机会

当前保守策略会导致 state 结构体偏大。未来可以优化：

| 优化项 | 描述 | 预期收益 |
|-------|------|---------|
| **精确 Phi 分析** | 只保留真正跨 suspend 的 Phi | 减少 slot 数量 |
| **按需 Slot 分配** | 替代预分配策略，精确分析跨状态引用 | 大幅减少 slot |
| **Slot 复用** | 生命周期不重叠的变量共享 slot | 减少 struct 大小 |
| **Local 变量优化** | 不跨 suspend 的变量使用栈临时存储 | 减少持久化开销 |
| **Escape 分析集成** | 利用 Go 编译器的逃逸分析结果 | 更精确的 Heap/Stack 判定 |

---

## 9. 注意事项

### 9.1 类型推断

子 future 类型需要在编译期确定：

```go
// ✅ 可以嵌入
x := FuncB(n).Await()  // FuncB 返回具体类型

// ❌ 无法嵌入
var f Future[int] = getFuture()  // 运行时动态类型
x := f.Await()
```

### 9.2 跨包调用

跨包的 async 函数需要导出状态机类型：

```go
// package a
type FuncB_State struct { ... }  // 必须导出

// package main
type FuncA_State struct {
    subB a.FuncB_State  // 编译期已知大小
}
```

### 9.3 递归

直接递归需要特殊处理（使用 Box 或接口）：

```go
func Recursive(n int) Future[int] {
    if n <= 1 { return Return(n) }
    x := Recursive(n-1).Await()  // 递归 - 无法直接嵌入
    return Return(n + x)
}
```

---

## 参考

- [x/tools/go/ssa 文档](https://pkg.go.dev/golang.org/x/tools/go/ssa)
- [llgo Pull Model](./pull_model.md)
- [Model Comparison](./model_comparison.md)
