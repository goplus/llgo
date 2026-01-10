# 协程模型对比：推模型 vs 拉模型

**日期**: 2026-01-06

---

## 目录

1. [概述](#1-概述)
2. [代码语法对比](#2-代码语法对比)
3. [编译器实现对比](#3-编译器实现对比)
4. [内存模型对比](#4-内存模型对比)
5. [代码大小对比](#5-代码大小对比)
6. [运行时性能对比](#6-运行时性能对比)
7. [变量存储机制](#7-变量存储机制)
8. [状态机扁平化与代码内联](#8-状态机扁平化与代码内联)
9. [模块化编译挑战](#9-模块化编译挑战)
10. [实际案例分析](#10-实际案例分析)
11. [综合对比表](#11-综合对比表)
12. [llgo 建议](#12-llgo-建议)

---

## 1. 概述

本文档对比三种无栈协程实现模型在三种语言中的表现。

### 1.1 三种模型

| 模型 | 驱动方式 | 典型实现 |
|------|---------|---------|
| **推模型 (Push)** | 外部 resume 推动 | LLVM coro intrinsics |
| **拉模型-接口** | Executor poll 拉取 | Go 接口 + 接口值 |
| **拉模型-单态化** | Executor poll 拉取 | 泛型 + 值类型嵌入 |

### 1.2 三种语言

| 语言 | 当前实现 | 备选方案 |
|------|---------|---------|
| **C++** | 推模型 (co_await) | - |
| **Rust** | 拉模型-单态化 (async/await) | - |
| **llgo** | 推模型 (LLVM coro) | 拉模型（WASM/嵌入式） |

---

## 2. 代码语法对比

### 2.1 异步函数定义

| 语言 | 语法 |
|------|------|
| C++ | `Task<int> my_async() { co_await ...; co_return v; }` |
| Rust | `async fn my_async() -> i32 { ....await; v }` |
| llgo | `func MyAsync() Async[int] { ....Await(); return Return(v) }` |

### 2.2 完整示例

```cpp
// C++ (推模型)
Task<int> MyAsync(int x) {
    int a = co_await StepA(x);
    int b = co_await StepB(a);
    co_return a + b;
}
```

```rust
// Rust (拉模型-单态化)
async fn my_async(x: i32) -> i32 {
    let a = step_a(x).await;
    let b = step_b(a).await;
    a + b
}
```

```go
// llgo (推模型)
func MyAsync(x int) Async[int] {
    a := StepA(x).Await()
    b := StepB(a).Await()
    return Return(a + b)
}
```

---

## 3. 编译器实现对比

| 方面 | C++ (推) | Rust (拉) | llgo (推) |
|------|---------|-----------|-----------|
| 状态机生成 | LLVM coro pass | rustc 前端 | LLVM coro pass |
| 挂起/恢复 | `coro.suspend/resume` | `poll() → Pending/Ready` | `coro.suspend/resume` |
| 依赖 | LLVM intrinsics | 无 | LLVM intrinsics |

---

## 4. 内存模型对比

### 4.1 分配模式

场景：`Main → A → B → C`（3层嵌套）

| 模型 | malloc 次数 | 内存布局 |
|------|-------------|---------|
| 推模型 | 4 次 | 4 个独立堆块 |
| 拉模型-接口 | 4 次 | 4 个独立堆块 + itab |
| 拉模型-单态化 | 1 次 | 1 个内嵌结构 |

### 4.2 内存占用估算

| 模型 | 数据 | 元数据 | 总计 |
|------|------|--------|------|
| 推模型 | ~192B | 4×16B | ~256B |
| 拉模型-接口 | ~192B | 4×16B + 4×itab | ~320B |
| 拉模型-单态化 | ~192B | 1×16B | ~208B |

### 4.3 内存布局图

```
推模型 / 拉模型-接口：
┌────────┐   ┌────────┐   ┌────────┐   ┌────────┐
│ Main   │──▶│ A      │──▶│ B      │──▶│ C      │
│ (heap) │   │ (heap) │   │ (heap) │   │ (heap) │
└────────┘   └────────┘   └────────┘   └────────┘
     4 次 malloc，多个小块，内存碎片化

拉模型-单态化：
┌─────────────────────────────────────────┐
│ Main                                    │
│ ├─ A (嵌入)                             │
│ │  └─ B (嵌入)                          │
│ │     └─ C (嵌入)                       │
└─────────────────────────────────────────┘
     1 次 malloc，单个大块，内存连续
```

---

## 5. 代码大小对比

### 5.1 每模型代码生成

| 模型 | 每协程代码 | 共享代码 | 泛型膨胀 |
|------|-----------|---------|---------|
| 推模型 | 3 小函数 (ramp/resume/destroy) | LLVM coro 运行时 | 无 |
| 拉模型-接口 | 1 状态机 + Poll 方法 | 接口调用 | 无 |
| 拉模型-单态化 | 1 状态机 + Poll 方法 | 无 | **有** |

### 5.2 泛型膨胀示例

```go
// 拉模型-单态化：每种类型组合生成独立代码
BlockOn[MainState, Void](...)   // 实例1
BlockOn[StepAState, int](...)   // 实例2
BlockOn[StepBState, int](...)   // 实例3
// 3 份 BlockOn 函数代码
```

---

## 6. 运行时性能对比

### 6.1 调用开销

| 模型 | 调用方式 | 可内联 | 相对性能 |
|------|---------|--------|---------|
| 推模型 | 函数指针 | 部分 | 100% (基准) |
| 拉模型-接口 | itab 间接 | 否 | ~90% |
| 拉模型-单态化 | 直接调用 | 是 | ~105% |

### 6.2 Poll 传播开销（拉模型特有）

拉模型中，每次 `Waker::wake()` 后必须从最外层开始 poll：

```
Executor.run()
    │
    ▼
Main.poll()  ─→ A.poll() ─→ B.poll() ─→ C.poll()
                                          │
                                          ▼
                                    返回 Ready/Pending
```

| 嵌套深度 | 推模型恢复 | 拉模型 poll |
|----------|-----------|-------------|
| 1 层 | O(1) | O(1) |
| 10 层 | O(1) | O(10) switch |
| N 层 | O(1) | O(N) switch |

**实际影响**：switch 跳转约 ~10ns，10层 = 100ns，远小于 I/O 延迟（毫秒级）。

### 6.3 优化：状态扁平化

编译器可将嵌套状态扁平化：

```go
// 优化前：嵌套 poll
func (s *Main) Poll() { s.stepA.Poll()... }

// 优化后：全局状态
func (s *Main) Poll() {
    switch s.globalState {
    case 2_1:  // layer2, state 1
        // 直接处理
    }
}
```

---

## 7. 变量存储机制

### 7.1 存储位置

拉模型将所有需跨挂起点的变量存储在状态机结构体中：

```go
// 源码
func MyAsync(x int, name string) Future[int] {
    temp1 := x * 2                // 临时变量（不跨 await）
    a := StepA(temp1).Await()     // 挂起点1
    temp2 := a + 10               // 跨 await 的变量
    b := StepB(temp2).Await()     // 挂起点2
    return Return(a + b)
}

// 编译后状态机
type MyAsync_State struct {
    state int8         // 状态索引

    // 参数（必须保存）
    x    int
    name string

    // 跨 await 的局部变量
    a     int
    temp2 int

    // 子 future
    stepA StepA_State
    stepB StepB_State

    // 注意：temp1 不需要保存（不跨 await）
}
```

### 7.2 变量分类

| 变量类型 | 是否保存到状态机 | 原因 |
|---------|-----------------|------|
| 参数 | ✅ 是 | 整个执行期间需要 |
| 跨 await 变量 | ✅ 是 | suspend 后仍需使用 |
| 不跨 await 变量 | ❌ 否 | 可在栈上临时存储 |
| 子 future | ✅ 是 | 需要多次 poll |

### 7.3 与推模型对比

| 方面 | 推模型 (LLVM coro) | 拉模型 |
|------|-------------------|--------|
| 存储位置 | 协程帧（堆） | 状态机结构体（堆） |
| 生成方式 | LLVM 自动分析 | 编译器显式生成 |
| 大小计算 | LLVM 优化 | 编译器计算 |

**本质相同**——都在堆上保存跨挂起点状态。

---

## 8. 状态机扁平化与代码内联

### 8.1 扁平化 ≠ 代码展开

```go
// 结构嵌入（扁平化）
type Main_State struct {
    stepA StepA_State  // 结构嵌入
    stepB StepB_State
}

// 但 Poll 代码仍是函数调用
func (s *Main_State) Poll() Poll[int] {
    switch s.state {
    case 0:
        p := s.stepA.Poll()  // 调用，不是展开
    case 1:
        p := s.stepB.Poll()  // 调用，不是展开
    }
}
```

### 8.2 内联是编译器优化

| 层面 | 是否展开 | 说明 |
|------|---------|------|
| 状态结构 | ✅ 嵌入 | 零成本，数据连续 |
| Poll 代码 | ❌ 函数调用 | 模块化，可维护 |
| 内联优化 | ⚠️ 编译器决定 | 取决于函数大小、优化级别 |

---

## 9. 模块化编译挑战

### 9.1 问题

```go
// package a（单独编译）
func StepA(x int) Future[int] { ... }

// package main
func Main() Future[int] {
    return StepA(42).Await()  // 需要知道 StepA_State 的大小
}
```

编译 `Main` 时，`StepA_State` 的大小未知。

### 9.2 解决方案

| 方案 | 做法 | 效果 |
|------|------|------|
| 接口指针 | `stepA Future[int]` | 🔴 多次分配 + itab |
| 导出具体类型 | `stepA a.StepAState` | 🟢 编译时嵌入 |
| 同包优化 | 仅限同包嵌入 | 🟡 跨包退化 |
| 两阶段链接 | Rust 做法 | 🟢 Go 不支持 |

### 9.3 llgo 可行方案

```go
// package a - 导出具体类型
type StepAState struct { ... }
func StepA(x int) StepAState { return StepAState{x: x} }

// package main - 可以嵌入
type MainState struct {
    stepA a.StepAState  // 编译时已知大小 ✓
}
```

### 9.4 约束

> [!IMPORTANT]
> 要实现完全嵌入，**async 函数必须导出状态机类型**，不能只返回接口。

---

## 10. 实际案例分析

### 10.1 Rust 状态机大小

| 场景 | 状态机大小 | 备注 |
|------|-----------|------|
| 简单 async fn (3个await) | ~64-128 字节 | 取决于局部变量 |
| 中等复杂度 | ~256-512 字节 | 嵌套 future |
| 深层嵌套（早期 Rust） | 曾导致栈溢出 | 已优化 |

**编译器优化**："Size Inlining" —— 状态机大小取决于**最大单状态**，而非所有状态的总和。

### 10.2 代码膨胀

| 因素 | 膨胀程度 | 原因 |
|------|---------|------|
| 单态化 | 显著 | 每种类型组合一份代码 |
| `async_trait` + Boxing | 增加堆分配 | 动态派发 |
| 编译时间 | async fn 比同步函数更慢 | 状态机生成 |

### 10.3 性能开销

| 对比 | 开销 |
|------|------|
| vs 手写事件循环 | ~几百纳秒/请求 |
| vs I/O 操作 | 可忽略（I/O 是毫秒级） |
| vs 线程栈 | 内存效率更高（无 2KB 栈） |

### 10.4 真实项目反馈

| 应用类型 | async 影响 |
|----------|-----------|
| I/O 密集型 | 开销可忽略 |
| CPU 密集短任务 | 可能比同步慢 |
| 高并发（10万+ tasks） | 内存优势明显 |

---

## 11. 综合对比表

| 维度 | 推模型 | 拉模型-接口 | 拉模型-单态化 |
|------|--------|------------|--------------|
| **内存效率** | 🟡 中等 | 🔴 最差 | 🟢 最优 |
| **代码大小** | 🟢 最小 | 🟢 小 | 🔴 膨胀 |
| **运行性能** | 🟡 中等 | 🔴 间接调用 | 🟢 可内联 |
| **Poll 开销** | 🟢 O(1) | 🟡 O(N) | 🟡 O(N) |
| **实现复杂度** | 🟢 低 | 🟡 中 | 🔴 高 |
| **WASM 支持** | 🔴 有 bug | 🟢 正常 | 🟢 正常 |
| **libuv 集成** | 🟢 天然匹配 | 🟡 需适配 | 🟡 需适配 |
| **模块化编译** | 🟢 无问题 | 🟢 无问题 | 🔴 需导出类型 |

### 语言对比

| 语言 | 模型 | 优势 | 劣势 |
|------|------|------|------|
| **C++** | 推模型 | 灵活的 awaitable、成熟生态 | 复杂的 promise_type |
| **Rust** | 拉模型-单态化 | 零成本抽象、最优性能 | 复杂的 Pin 语义、编译慢 |
| **llgo** | 推模型 | 简单可靠、复用 LLVM | WASM 有问题 |

---

## 12. llgo 建议

### 12.1 场景选择

| 场景 | 推荐模型 | 原因 |
|------|---------|------|
| 常规 I/O | 推模型 | 简单，与 libuv 匹配 |
| WASM | 拉模型-单态化 | LLVM coro 有 bug |
| 嵌入式 | 拉模型-单态化 | 无 LLVM 依赖，内存最优 |
| 代码大小敏感 | 推模型 | 无泛型膨胀 |
| 深层嵌套 | 推模型 | O(1) 恢复 |

### 12.2 实现路径

```
当前：推模型 (LLVM coro)
  └─ 成熟、可靠、与 libuv 集成良好

未来可选：拉模型
  └─ WASM 目标（绕过 LLVM bug）
  └─ 嵌入式目标（无 LLVM 依赖）
  └─ 编译标记切换
```

### 12.3 拉模型实现约束

如果未来实现拉模型，需要：

1. **导出状态机类型**：跨包调用需具体类型嵌入
2. **泛型单态化**：避免接口开销
3. **编译器 SSA 分析**：识别跨挂起点变量
4. **状态扁平化优化**：减少 poll 传播开销

---

## 参考

- [LLVM Coroutines](https://llvm.org/docs/Coroutines.html)
- [C++ Coroutines](https://en.cppreference.com/w/cpp/language/coroutines)
- [Rust Async Book](https://rust-lang.github.io/async-book/)
- [llgo Proposal](./proposal.md)
- [llgo Pull Model](./pull_model.md)
