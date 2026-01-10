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

## 8. 注意事项

### 8.1 类型推断

子 future 类型需要在编译期确定：

```go
// ✅ 可以嵌入
x := FuncB(n).Await()  // FuncB 返回具体类型

// ❌ 无法嵌入
var f Future[int] = getFuture()  // 运行时动态类型
x := f.Await()
```

### 8.2 跨包调用

跨包的 async 函数需要导出状态机类型：

```go
// package a
type FuncB_State struct { ... }  // 必须导出

// package main
type FuncA_State struct {
    subB a.FuncB_State  // 编译期已知大小
}
```

### 8.3 递归

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
