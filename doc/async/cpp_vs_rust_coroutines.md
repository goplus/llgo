# C++ 协程 vs Rust 协程：深度对比

**日期**: 2026-01-06

---

## 1. 设计哲学

| 方面 | C++ Coroutines | Rust async/await |
|------|---------------|------------------|
| 标准 | C++20 (ISO/IEC 14882:2020) | Rust 1.39+ (2019) |
| 驱动模型 | **Push** (resume 推动) | **Pull** (poll 拉取) |
| 运行时 | 无标准运行时，用户选择 | 无标准运行时，用户选择 |
| 内存 | 堆分配协程帧 | 栈/堆灵活分配 |
| 零成本 | 部分（有堆分配） | 完全（可纯栈） |

---

## 2. 语法对比

### 2.1 关键字

| 功能 | C++ | Rust |
|------|-----|------|
| 声明异步函数 | 无（通过返回类型推断） | `async fn` |
| 等待结果 | `co_await expr` | `expr.await` |
| 返回值 | `co_return value` | `value` (隐式) |
| 生成器 | `co_yield value` | 无（用迭代器） |

### 2.2 完整示例

```cpp
// C++20 Coroutines
#include <coroutine>

Task<int> fetch_data(int id) {
    auto a = co_await step_a(id);   // 挂起点
    auto b = co_await step_b(a);    // 挂起点
    co_return a + b;                // 返回
}

int main() {
    auto task = fetch_data(42);
    task.resume();  // 手动恢复
    // 或通过调度器管理
}
```

```rust
// Rust async/await
async fn fetch_data(id: i32) -> i32 {
    let a = step_a(id).await;  // 挂起点
    let b = step_b(a).await;   // 挂起点
    a + b                      // 隐式返回
}

#[tokio::main]
async fn main() {
    let result = fetch_data(42).await;
}
```

---

## 3. 类型系统

### 3.1 C++ 的 Awaitable 协议

C++ 使用三方法协议定义可等待对象：

```cpp
struct SomeAwaitable {
    // 1. 是否需要挂起？
    bool await_ready() { return false; }

    // 2. 挂起时做什么？
    auto await_suspend(std::coroutine_handle<> h) {
        // 可返回 void / bool / handle
        return;                    // 无条件挂起
        return false;              // 取消挂起
        return other_handle;       // 对称转移
    }

    // 3. 恢复后返回什么？
    T await_resume() { return result; }
};
```

### 3.2 Rust 的 Future Trait

Rust 使用单一 `poll` 方法：

```rust
trait Future {
    type Output;

    fn poll(self: Pin<&mut Self>, cx: &mut Context<'_>) -> Poll<Self::Output>;
}

enum Poll<T> {
    Ready(T),    // 完成
    Pending,     // 未完成
}
```

### 3.3 对比

| 方面 | C++ Awaitable | Rust Future |
|------|--------------|-------------|
| 方法数 | 3 个 | 1 个 |
| 同步快路径 | `await_ready()` | `Poll::Ready` 首次返回 |
| 对称转移 | `await_suspend → handle` | 无 |
| 自引用 | 无限制 | 需要 `Pin` |
| 复杂度 | 高 | 中 |

---

## 4. 协程帧与状态机

### 4.1 C++ 协程帧

```cpp
// 编译器生成的协程帧（概念）
struct MyCoroutine_Frame {
    // 固定偏移，LLVM 要求
    void (*resume_fn)(void*);     // offset 0
    void (*destroy_fn)(void*);    // offset 8

    // Promise 对象
    MyPromise promise;

    // 状态索引
    int state;

    // 跨挂起点的局部变量
    int a, b;
};
```

特点：
- LLVM `coro` pass 自动生成
- 帧大小编译期确定
- 总是**堆分配**（除非优化消除）

### 4.2 Rust 状态机

```rust
// 编译器生成的状态机（概念）
enum MyAsync_State {
    State0 { id: i32 },
    State1 { id: i32, a: i32, step_b_future: StepB },
    State2 { a: i32, b: i32 },
    Done,
}

impl Future for MyAsync_State {
    fn poll(self: Pin<&mut Self>, cx: &mut Context) -> Poll<i32> {
        match self.state {
            State0 { id } => { /* poll step_a */ }
            State1 { a, .. } => { /* poll step_b */ }
            State2 { a, b } => Poll::Ready(a + b),
        }
    }
}
```

特点：
- `rustc` 前端生成（非 LLVM）
- Enum 变体只存当前状态需要的变量
- 可以**栈分配**或**内嵌**

---

## 5. 内存模型

### 5.1 分配策略

| 场景 | C++ | Rust |
|------|-----|------|
| 创建协程/future | `operator new` 分配帧 | 栈上创建状态机 |
| 提交到调度器 | 帧已在堆上 | `Box::pin` 或内嵌 |
| 嵌套调用 | 每层独立分配 | 子 future 内嵌 |

### 5.2 内存布局对比

```
C++ (每层独立分配):
┌──────────┐   ┌──────────┐   ┌──────────┐
│ Frame A  │──▶│ Frame B  │──▶│ Frame C  │
│ (heap)   │   │ (heap)   │   │ (heap)   │
└──────────┘   └──────────┘   └──────────┘
   3 次 malloc

Rust (内嵌):
┌────────────────────────────────┐
│ FutureA                        │
│ ├─ state                       │
│ └─ FutureB (嵌入)              │
│    └─ FutureC (嵌入)           │
└────────────────────────────────┘
   1 次 malloc (仅 spawn 时)
```

---

## 6. 恢复机制

### 6.1 C++ Push 模型

```cpp
// 回调直接恢复
void on_io_complete(std::coroutine_handle<> h) {
    h.resume();  // 立即恢复执行
}
```

执行流：
```
IO 完成 → resume(handle) → 协程继续执行
```

### 6.2 Rust Pull 模型

```rust
// 回调通知 waker
fn on_io_complete(waker: Waker) {
    waker.wake();  // 仅通知，不执行
}

// Executor 稍后 poll
loop {
    for task in ready_tasks {
        task.future.poll(cx);  // 执行器调用
    }
}
```

执行流：
```
IO 完成 → Waker::wake() → 加入就绪队列 → Executor poll
```

### 6.3 对比

| 方面 | C++ resume() | Rust poll() |
|------|-------------|-------------|
| 恢复 → 执行 | 立即 | 延迟 |
| 调用栈增长 | 可能深层嵌套 | Executor 控制 |
| 批量调度 | 难 | 自然支持 |
| 取消 | 需 destroy | drop 即取消 |

---

## 7. 特殊机制

### 7.1 C++ 对称转移 (Symmetric Transfer)

```cpp
auto await_suspend(std::coroutine_handle<> h) {
    // 不返回到调用者，直接转移到另一个协程
    return next_coroutine.handle();  // 尾调用优化
}
```

优点：避免栈溢出，深层协程链安全。

### 7.2 Rust Pin 语义

```rust
// 自引用结构必须固定
async fn example() {
    let s = String::from("hello");
    let r = &s;  // r 指向 s
    yield_point().await;  // 跨 await
    println!("{}", r);     // 需要 s 地址不变
}
```

`Pin<&mut Self>` 保证状态机不被移动。

---

## 8. Promise Type / Context

### 8.1 C++ Promise Type

```cpp
struct MyPromise {
    MyTask get_return_object();
    std::suspend_always initial_suspend();
    std::suspend_always final_suspend() noexcept;
    void return_value(int v);
    void unhandled_exception();
};
```

开发者必须定义完整的 promise 类型。

### 8.2 Rust Context

```rust
struct Context<'a> {
    waker: &'a Waker,  // 用于通知就绪
}
```

Context 仅包含 Waker，由 Executor 管理。

---

## 9. 运行时集成

### 9.1 C++ (无标准运行时)

```cpp
// 常见选择
#include <boost/asio.hpp>  // Boost.Asio
#include <cppcoro/...>     // cppcoro
// 或自定义事件循环
```

### 9.2 Rust (无标准运行时)

```rust
// 常见选择
#[tokio::main]       // Tokio (多线程)
#[async_std::main]   // async-std
#[smol::main]        // smol (轻量)
```

---

## 10. 性能特征

| 维度 | C++ | Rust |
|------|-----|------|
| 内存分配 | 每协程 1 次 | 仅 spawn 1 次 |
| 调用开销 | 函数指针 | 直接调用（可内联） |
| 代码膨胀 | 无 | 单态化膨胀 |
| 编译时间 | 快 | 慢（状态机生成） |
| 恢复效率 | O(1) resume | O(N) poll 传播 |

---

## 11. 适用场景

| 场景 | 推荐 | 原因 |
|------|------|------|
| 高频短任务 | C++ | O(1) 恢复 |
| 高并发 I/O | Rust | 内存效率 |
| 嵌入式 | Rust | 可控的静态分配 |
| 现有 C++ 代码库 | C++ | 集成方便 |
| 安全关键 | Rust | 类型系统 |

### 11.1 嵌入式场景深入分析

> [!IMPORTANT]
> Rust 的"无堆分配"并非在所有场景都成立。如果使用调度器管理多个并发任务，仍需某种形式的持久存储。

#### 完全栈上运行（无堆分配）

```rust
// 同步 block_on - future 在栈上
fn main() {
    let fut = my_async();  // 栈上
    block_on(fut);         // 一直在当前栈帧
}
```

此模式 **不需要调度器**，只是"等待完成"——future 始终在当前栈帧。

#### 调度器管理（需要存储）

```rust
// spawn 到调度器 - 必须存储 future
executor.spawn(my_async());  // future 必须活到完成
```

栈帧会退出，调度器需要持有 future 直到完成。

#### 嵌入式解决方案

| 方案 | 做法 | 堆分配 | 特点 |
|------|------|--------|------|
| 静态变量 | `static TASK_SLOT: StaticTask` | ❌ | 需预知任务数量 |
| 预分配池 | `static POOL: TaskPool<8, 256>` | ❌ | 固定槽位和大小 |
| Embassy | `#[embassy_executor::task]` | ❌ | 编译期静态分配 |
| 堆分配 | `executor.spawn()` | ✅ | 嵌入式不适用 |

**Embassy 示例**：

```rust
#[embassy_executor::main]
async fn main(spawner: Spawner) {
    spawner.spawn(task_a()).unwrap();  // 静态分配任务
}

#[embassy_executor::task]
async fn task_a() { ... }
```

Embassy 为每个 `#[task]` 在编译期分配静态存储——**真正的无堆分配**。

#### 结论

| 模式 | 堆分配 | 嵌入式适用 |
|------|--------|-----------|
| `block_on(future)` | ❌ | ✅ 最优 |
| `spawn()` + 堆 | ✅ | ❌ 不适用 |
| `spawn()` + 静态槽 | ❌ | ✅ 需预知任务 |
| Embassy `#[task]` | ❌ | ✅ 推荐 |

**对于 llgo**：拉模型在嵌入式场景的优势主要在于**可控的静态分配**，而非完全零分配。

---

## 12. 综合对比表

| 维度 | C++ Coroutines | Rust async/await |
|------|---------------|------------------|
| 驱动模型 | Push (resume) | Pull (poll) |
| 内存模型 | 堆分配帧 | 栈/堆灵活 |
| 状态机生成 | LLVM coro pass | rustc 前端 |
| 类型复杂度 | 高 (promise_type) | 中 (Future trait) |
| Pin 语义 | 无 | 必须 |
| 对称转移 | 支持 | 不支持 |
| 取消机制 | destroy() | drop |
| 代码膨胀 | 无 | 单态化膨胀 |
| 编译速度 | 快 | 慢 |
| 内存效率 | 中 | 高 |
| 运行性能 | 优 | 优 |

---

## 13. llgo 的借鉴

### 13.1 可借鉴 C++ 的

- **推模型**：与回调式 API 天然匹配
- **对称转移**：避免深层嵌套栈溢出
- **LLVM coro**：复用成熟基础设施

### 13.2 可借鉴 Rust 的

- **状态机嵌入**：减少堆分配
- **统一 poll 接口**：简化概念
- **编译期生成**：无 LLVM 依赖（用于 WASM）

---

## 参考

- [C++20 Coroutines Spec](https://en.cppreference.com/w/cpp/language/coroutines)
- [LLVM Coroutines](https://llvm.org/docs/Coroutines.html)
- [Rust Async Book](https://rust-lang.github.io/async-book/)
- [How Rust Optimizes Async/Await](https://tmandry.gitlab.io/blog/posts/optimizing-await-1/)
