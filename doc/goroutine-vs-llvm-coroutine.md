# Go 中用 LLVM Coroutine 替换 Goroutine 的可行性分析

## 1. 背景

本文分析在 Go 语言中，将现有的 Goroutine（有栈协程）替换为 LLVM Coroutine（无栈协程）可能遇到的 ABI 兼容性问题。

### 1.1 核心差异

| 特性 | Goroutine | LLVM Coroutine |
|------|-----------|----------------|
| 类型 | 有栈协程 (Stackful) | 无栈协程 (Stackless) |
| 栈 | 独立栈 (2KB-1GB) | 无独立栈，共享调用栈 |
| 挂起 | 任意位置 | 仅限 suspend point |
| 状态保存 | SP/PC/BP 到 gobuf | 跨挂起变量到协程帧 |
| 恢复方式 | JMP 到 PC | switch 状态机 |

---

## 2. Goroutine 机制

### 2.1 G 结构体

每个 Goroutine 由一个 G 结构体表示：

```go
type g struct {
    stack       stack   // 栈边界 [stack.lo, stack.hi)
    stackguard0 uintptr // 栈增长检查
    stackguard1 uintptr // 用于 C 栈检查

    m           *m      // 当前关联的 M (OS 线程)
    sched       gobuf   // 调度信息（核心！）
    atomicstatus uint32 // G 的状态

    goid        int64   // Goroutine ID
    // ... 其他字段
}
```

### 2.2 gobuf 结构

gobuf 保存 Goroutine 的执行上下文：

```go
type gobuf struct {
    sp   uintptr  // 栈指针
    pc   uintptr  // 程序计数器（下一条指令地址）
    g    guintptr // 指向所属的 G
    ctxt unsafe.Pointer // 闭包上下文
    ret  uintptr  // 系统调用返回值
    lr   uintptr  // ARM 的链接寄存器
    bp   uintptr  // 帧指针 (仅 amd64)
}
```

**注意**：gobuf **不保存通用寄存器**（AX, BX, CX 等），依赖 Go 的保守 Spill 策略。

### 2.3 栈结构

```
Goroutine 栈 (独立的连续内存):

高地址
┌─────────────────────────┐ stack.hi
│                         │
│   函数 A 的栈帧         │
│   ├─ 返回地址           │
│   ├─ 局部变量           │
│   └─ 保存的寄存器       │
├─────────────────────────┤
│   函数 B 的栈帧         │
│   ├─ 返回地址           │
│   ├─ 局部变量           │
│   └─ 保存的寄存器       │
├─────────────────────────┤
│   函数 C 的栈帧         │  ← SP
│   └─ ...                │
├─────────────────────────┤
│                         │
│   未使用空间            │
│                         │
├─────────────────────────┤ stackguard0
│   保护区                │
└─────────────────────────┘ stack.lo
低地址
```

### 2.4 挂起实现 (mcall)

mcall 将当前 G 挂起，切换到 g0 栈执行调度：

```asm
// func mcall(fn func(*g))
TEXT runtime·mcall(SB), NOSPLIT, $0-8
    // 保存当前状态到 gobuf
    MOVQ    0(SP), AX           // AX = 返回地址 (PC)
    MOVQ    AX, (g_sched+gobuf_pc)(R14)     // gobuf.pc = PC
    LEAQ    8(SP), AX           // AX = SP (跳过返回地址)
    MOVQ    AX, (g_sched+gobuf_sp)(R14)     // gobuf.sp = SP
    MOVQ    BP, (g_sched+gobuf_bp)(R14)     // gobuf.bp = BP
    MOVQ    $0, (g_sched+gobuf_ret)(R14)    // gobuf.ret = 0

    // 切换到 g0 栈
    MOVQ    g_m(R14), BX        // BX = m
    MOVQ    m_g0(BX), SI        // SI = g0
    MOVQ    SI, g_m(R14)        // 设置 g0 为当前 g
    MOVQ    (g_sched+gobuf_sp)(SI), SP      // 切换到 g0 栈

    // 调用 fn(g)
    MOVQ    R14, AX             // AX = 当前 g（作为参数）
    MOVQ    fn+0(FP), R14       // R14 = fn
    CALL    R14                 // 调用 fn(g)

    // 不会返回到这里
```

### 2.5 恢复实现 (gogo)

gogo 从 gobuf 恢复 G 的执行：

```asm
// func gogo(buf *gobuf)
TEXT runtime·gogo(SB), NOSPLIT, $0-8
    MOVQ    buf+0(FP), BX       // BX = gobuf

    // 恢复 G 指针
    MOVQ    gobuf_g(BX), DX
    MOVQ    DX, R14             // R14 = G (恢复 G 指针寄存器)

    // 恢复栈
    MOVQ    gobuf_sp(BX), SP    // SP = gobuf.sp
    MOVQ    gobuf_bp(BX), BP    // BP = gobuf.bp

    // 恢复闭包上下文
    MOVQ    gobuf_ctxt(BX), DX  // DX = 闭包上下文

    // 清零 gobuf（防止 GC 问题）
    MOVQ    $0, gobuf_sp(BX)
    MOVQ    $0, gobuf_bp(BX)
    MOVQ    $0, gobuf_pc(BX)
    MOVQ    $0, gobuf_ctxt(BX)

    // 跳转到保存的 PC
    MOVQ    gobuf_pc(BX), AX
    JMP     AX                  // 跳转到任意位置！
```

### 2.6 gopark (主动挂起)

```go
// gopark 将当前 G 挂起，等待唤醒
func gopark(unlockf func(*g, unsafe.Pointer) bool, lock unsafe.Pointer, reason waitReason, traceEv byte, traceskip int) {
    mp := acquirem()
    gp := mp.curg

    // 设置挂起信息
    mp.waitlock = lock
    mp.waitunlockf = unlockf
    gp.waitreason = reason

    // mcall 切换到 g0 执行 park_m
    mcall(park_m)
}

func park_m(gp *g) {
    // 在 g0 栈上执行
    mp := getg().m

    // 将 G 状态改为 waiting
    casgstatus(gp, _Grunning, _Gwaiting)

    // 调用解锁函数
    if fn := mp.waitunlockf; fn != nil {
        if !fn(gp, mp.waitlock) {
            // 解锁失败，恢复运行
            casgstatus(gp, _Gwaiting, _Grunnable)
            execute(gp, true)
            return
        }
    }

    // 进入调度器，执行其他 G
    schedule()
}
```

### 2.7 goready (唤醒)

```go
// goready 将等待中的 G 标记为可运行
func goready(gp *g, traceskip int) {
    systemstack(func() {
        ready(gp, traceskip, true)
    })
}

func ready(gp *g, traceskip int, next bool) {
    // 改变状态为 runnable
    casgstatus(gp, _Gwaiting, _Grunnable)

    // 放入运行队列
    runqput(getg().m.p.ptr(), gp, next)

    // 如果有空闲的 P，唤醒一个 M
    wakep()
}
```

### 2.8 栈增长机制

```asm
// 函数入口的栈检查
TEXT ·someFunc(SB), $128-0
    // 比较 SP 和 stackguard0
    CMPQ    SP, stackguard0(R14)
    JLS     need_more_stack      // SP < stackguard0，需要扩栈

    // 函数体...

need_more_stack:
    // 调用 morestack 扩展栈
    CALL    runtime·morestack_noctxt(SB)
    JMP     someFunc(SB)         // 重新执行函数
```

**morestack 流程**：
```
1. 分配新的更大的栈 (2x)
2. 复制旧栈内容到新栈
3. 调整所有栈上指针
4. 更新 G 的 stack 字段
5. 返回，重新执行函数
```

### 2.9 Go ABI 寄存器约定 (ABIInternal)

```
参数寄存器: AX, BX, CX, DI, SI, R8, R9, R10, R11 (9个)
浮点寄存器: X0-X14 (15个)
特殊寄存器:
  - R14: G 指针（当前 goroutine）
  - DX:  闭包上下文
  - SP:  栈指针
  - BP:  帧指针
```

### 2.10 Spill 策略

Go 采用**保守 spill**：函数入口将所有寄存器参数立即 spill 到栈。

```asm
TEXT example(SB), ABIInternal, $32-0
    ; 入口立即 spill
    MOVQ    AX, a-8(SP)
    MOVQ    BX, b-16(SP)
    MOVQ    CX, c-24(SP)
    ; 后续从栈读取
```

### 2.11 闭包上下文

Go 使用 **DX 寄存器**传递闭包上下文：

```asm
; 调用闭包
MOVQ    closure_ptr, DX      ; DX = 闭包对象指针
MOVQ    $5, AX               ; 参数
CALL    [DX]                 ; 间接调用
```

### 2.12 大结构体传递

Go 使用 **duffcopy** 复制大结构体到栈，被调用者通过栈偏移访问：

```asm
; 调用者：复制结构体到栈
DUFFCOPY

; 被调用者：从栈读取
MOVQ    s_A+0(FP), AX
MOVQ    s_J+72(FP), BX
```

### 2.13 Goroutine 挂起/恢复 (汇编摘要)

**挂起 (mcall)**：
```asm
MOVQ    0(SP), AX            ; 返回地址
MOVQ    AX, gobuf_pc(R14)    ; 保存 PC
LEAQ    8(SP), AX
MOVQ    AX, gobuf_sp(R14)    ; 保存 SP
MOVQ    BP, gobuf_bp(R14)    ; 保存 BP
```

**恢复 (gogo)**：
```asm
MOVQ    gobuf_sp(BX), SP     ; 恢复 SP
MOVQ    gobuf_bp(BX), BP     ; 恢复 BP
MOVQ    gobuf_pc(BX), AX     ; 恢复 PC
JMP     AX                   ; 跳转到任意地址
```

---

## 3. LLVM Coroutine 机制

### 3.1 编译器变换

LLVM 将协程函数分割为三个函数：

```
原函数 foo()
    ↓ CoroSplit Pass
┌───────────────────────────────────────┐
│ foo()        → 入口函数，返回 frame*  │
│ foo.resume() → 恢复函数               │
│ foo.destroy()→ 销毁函数               │
└───────────────────────────────────────┘
```

### 3.2 协程帧结构

```
┌─────────────────────────┐ +0
│ resume_fn (8B)          │ → foo.resume 地址
├─────────────────────────┤ +8
│ destroy_fn (8B)         │ → foo.destroy 地址
├─────────────────────────┤ +16
│ index (状态)            │ → 当前挂起点编号
├─────────────────────────┤
│ promise                 │
├─────────────────────────┤
│ 跨挂起存活的变量        │ → 通过 LVA 分析确定
└─────────────────────────┘
```

### 3.3 Coroutine Intrinsics

LLVM 提供一组内建函数来实现协程：

```llvm
; 协程帧操作
%id = call token @llvm.coro.id(...)           ; 获取协程 ID
%size = call i64 @llvm.coro.size.i64()        ; 获取帧大小
%frame = call ptr @llvm.coro.begin(token %id, ptr %mem)  ; 初始化帧

; 挂起点
%suspend = call i8 @llvm.coro.suspend(token %save, i1 false)
switch i8 %suspend, label %suspend [
    i8 0, label %resume        ; 恢复执行
    i8 1, label %cleanup       ; 销毁
]

; 结束
call i1 @llvm.coro.end(ptr %frame, i1 false)
```

### 3.4 CoroSplit Pass 变换过程

```
原函数:
┌──────────────────────────────────────────────────┐
│ define void @foo() {                              │
│ entry:                                            │
│     %x = call i32 @compute()                     │
│     %suspend1 = call i8 @llvm.coro.suspend(...)  │
│     switch i8 %suspend1 ...                       │
│ resume1:                                          │
│     call void @use(i32 %x)                       │
│     %suspend2 = call i8 @llvm.coro.suspend(...)  │
│     switch i8 %suspend2 ...                       │
│ resume2:                                          │
│     ret void                                      │
│ }                                                 │
└──────────────────────────────────────────────────┘
                    ↓ CoroSplit
┌──────────────────────────────────────────────────┐
│ @foo():          首次调用入口                     │
│     分配协程帧                                    │
│     执行到第一个 suspend                          │
│     返回帧指针                                    │
├──────────────────────────────────────────────────┤
│ @foo.resume():   恢复执行                         │
│     switch (frame->index) {                       │
│         case 1: goto resume1;                    │
│         case 2: goto resume2;                    │
│     }                                             │
├──────────────────────────────────────────────────┤
│ @foo.destroy():  销毁协程                         │
│     释放资源                                      │
│     释放帧内存                                    │
└──────────────────────────────────────────────────┘
```

### 3.5 LVA (Live Variable Analysis)

LLVM 使用活跃变量分析确定哪些变量需要保存到帧：

```cpp
Task example() {
    int a = 1;           // a 跨挂起存活 → 保存到帧
    int b = 2;           // b 在挂起前死亡 → 不保存
    int c = a + b;       // c 跨挂起存活 → 保存到帧

    co_await suspend();  // 挂起点

    return c;            // 只需 a 和 c
}
```

**帧布局结果**：
```
┌─────────────────────┐
│ resume_fn           │
│ destroy_fn          │
│ index               │
│ a                   │  ← 跨挂起存活
│ c                   │  ← 跨挂起存活
│ (b 不保存)          │
└─────────────────────┘
```

### 3.6 恢复机制

```cpp
void foo_resume(foo_frame* frame) {
    switch (frame->index) {
        case 0: goto entry;
        case 1: goto resume_1;
        case 2: goto resume_2;
    }
}
```

### 3.7 挂起/恢复流程

```
1. 首次调用 foo()
   ┌─────────────────────────────────────────┐
   │ 分配协程帧 (堆上)                        │
   │ 执行 entry → 第一个 suspend              │
   │ frame->index = 1                        │
   │ 返回 frame 指针给调用者                  │
   │ 栈帧销毁                                 │
   └─────────────────────────────────────────┘

2. 调用 frame->resume(frame) 恢复
   ┌─────────────────────────────────────────┐
   │ switch(frame->index) → goto resume_1    │
   │ 从 frame 读取保存的变量                  │
   │ 继续执行到下一个 suspend 或 return       │
   │ frame->index = 2                        │
   │ 返回                                     │
   └─────────────────────────────────────────┘

3. 协程结束
   ┌─────────────────────────────────────────┐
   │ 调用 frame->destroy(frame)              │
   │ 释放帧内存                               │
   └─────────────────────────────────────────┘
```

---

## 4. ABI 兼容性问题分析

### 4.1 问题一：闭包上下文寄存器冲突

#### 现状

Go 闭包使用 DX 传递上下文：

```asm
; 调用闭包
MOVQ    closure, DX          ; DX = 闭包上下文
MOVQ    $5, AX               ; 参数
CALL    [DX]
```

#### LLVM Coroutine 需求

resume 函数需要接收 frame 指针：

```asm
; 按 Go ABI
foo_resume:
    ; frame 在 AX（第一个参数）
    MOVQ    16(AX), CX       ; 读取 index
```

#### 冲突场景：协程闭包

```go
func outer() func() Task {
    captured := 42
    return func() Task {  // 这是一个协程闭包
        co_await something()
        return captured
    }
}
```

**需要同时传递**：
- DX = 闭包上下文（访问 captured）
- AX = 协程帧指针（resume 时需要）

**问题**：
1. 首次调用：可以用 DX 传闭包，AX 传参数
2. resume 时：只有 frame 指针，闭包上下文在哪？

#### 解决方案

| 方案 | 描述 | 代价 |
|------|------|------|
| 帧内嵌闭包上下文 | frame->closure_ctx = DX | 增加帧大小 |
| 首次调用时复制 | 将 DX 保存到帧 | 额外 MOV 指令 |
| 修改 resume 签名 | resume(frame, closure_ctx) | 需要两个参数 |

**推荐**：首次调用时将 DX 保存到帧中

```asm
; 协程闭包入口
TEXT coro_closure(SB), ABIInternal, $0
    ; DX = 闭包上下文
    ; 分配协程帧
    CALL    runtime.newobject
    ; AX = frame
    MOVQ    DX, frame_closure(AX)   ; 保存闭包上下文到帧
    ; ...
```

### 4.2 问题二：Spill 策略差异

#### Go 保守 Spill

```asm
; 函数入口：所有参数立即 spill
MOVQ    AX, a-8(SP)
MOVQ    BX, b-16(SP)
; 挂起时：栈帧完整保持
CALL    runtime.gopark
; 恢复后：从原位置读取
MOVQ    a-8(SP), AX
```

#### LLVM Coroutine LVA (Live Variable Analysis)

```
只保存跨挂起存活的变量：

int x = a + b;    // x 跨挂起
int temp = x * 2; // temp 挂起前死亡
co_await ...;
return x;         // 只有 x 需要保存
```

#### 兼容性问题

Go 编译器目前不做 LVA：
- 如果用 LLVM Coroutine，需要修改 Go 编译器添加 LVA
- 或者继续保守 spill 所有变量到协程帧（帧会很大）

### 4.3 问题三：大结构体传递

#### Go 现状

使用 duffcopy 复制到栈：

```asm
; 调用者
DUFFCOPY                     ; 复制 80 字节结构体到栈

; 被调用者
MOVQ    s+0(FP), AX          ; 从栈读取
```

#### LLVM Coroutine 问题

如果大结构体需要跨挂起存活：

```go
func coro(s LargeStruct) Task {
    co_await something()
    return s.Field          // s 需要跨挂起存活
}
```

**问题**：
1. s 被 duffcopy 到栈上
2. 挂起后栈帧消失
3. s 的数据丢失！

#### 解决方案

| 方案 | 描述 |
|------|------|
| 复制到帧 | 将整个 s 复制到协程帧 |
| 传指针 | 改变语义，传 *LargeStruct |
| 编译器分析 | 只复制跨挂起使用的字段 |

### 4.4 问题四：GC 扫描

#### Go 现状

GC 扫描所有 goroutine 栈，通过 FUNCDATA 找到指针：

```asm
TEXT foo(SB), $24-0
    FUNCDATA $PCDATA_StackMapIndex, ·foo.stkobj(SB)
    ; 编译器生成栈上指针位置信息
```

#### LLVM Coroutine 问题

协程帧在堆上，需要告诉 GC：
1. 帧中哪些偏移是指针
2. 不同状态下哪些变量有效

```
状态 0: frame.a 是指针, frame.b 未初始化
状态 1: frame.a 和 frame.b 都是指针
状态 2: frame.a 已释放, frame.b 是指针
```

#### 解决方案

需要为每个状态生成不同的 GC 元数据。

### 4.5 问题五：Defer 和 Panic

#### Go 现状

defer 链在栈帧上，panic 沿栈展开：

```
栈:
┌─────────┐
│ foo     │ defer: d1
├─────────┤
│ bar     │ defer: d2
├─────────┤
│ baz     │ ← panic 这里
└─────────┘
  ↑ 展开执行 d2, d1
```

#### LLVM Coroutine 问题

挂起后栈帧消失：

```
挂起时:
  main 栈 → resume 入口

panic 时:
  协程的 defer 在哪？栈帧没了！
```

#### 解决方案

| 方案 | 描述 |
|------|------|
| defer 存帧中 | frame->defers 链表 |
| 特殊 panic 处理 | 协程内 panic 不栈展开，直接进入帧的清理逻辑 |

---

## 5. 挂起点限制

### 5.1 Go Goroutine：隐式挂起

```go
func foo() {
    x := 1
    bar()           // 可能挂起（bar 内部可能 gopark）
    ch <- 1         // 可能挂起
    mutex.Lock()    // 可能挂起
    time.Sleep(1)   // 必定挂起
}
```

**任何函数调用都可能是挂起点**，编译器保守处理。

### 5.2 LLVM Coroutine：显式挂起

```go
func foo() Task {
    x := 1
    bar()              // 不是挂起点（普通函数）
    co_await ch.Send() // 显式挂起点
    co_await lock()    // 显式挂起点
}
```

**只有 co_await 是挂起点**。

### 5.3 影响：函数着色问题

```go
// 场景：深层嵌套调用中需要挂起

func A() {
    B()
}

func B() {
    C()
}

func C() {
    // 这里需要挂起等待 I/O
    ch <- data  // Goroutine: 自动挂起
                // LLVM Coro: 不能挂起！C 不是协程
}
```

**LLVM Coroutine 需要**：

```go
func A() Task {
    co_await B()
}

func B() Task {
    co_await C()
}

func C() Task {
    co_await ch.Send(data)
}
```

**整个调用链都需要是协程**（函数着色/传染）。

---

## 6. 可行的混合方案

### 6.1 方案：Goroutine + 局部 LLVM Coroutine

保留 Goroutine 作为执行单元，在局部使用 LLVM Coroutine 优化：

```go
func handler() {  // 普通 goroutine
    // 使用 LLVM Coroutine 处理异步操作
    result := co_await asyncOp()

    // 普通同步代码
    process(result)
}
```

**实现**：
1. Goroutine 提供独立栈和 G 指针
2. LLVM Coroutine 用于局部异步流程控制
3. 挂起时回到 Goroutine 栈

### 6.2 架构图

```
┌─────────────────────────────────────────────────────────────┐
│                     Go Runtime                               │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  Goroutine 1          Goroutine 2          Goroutine 3      │
│  ┌─────────┐         ┌─────────┐         ┌─────────┐        │
│  │ 独立栈   │         │ 独立栈   │         │ 独立栈   │        │
│  │ R14 = G │         │ R14 = G │         │ R14 = G │        │
│  │         │         │         │         │         │        │
│  │ 协程帧1 │         │         │         │ 协程帧2 │        │
│  │ 协程帧2 │         │         │         │         │        │
│  └─────────┘         └─────────┘         └─────────┘        │
│                                                              │
│  调度器：管理 Goroutine，不感知 LLVM Coroutine              │
│                                                              │
└─────────────────────────────────────────────────────────────┘
```

---

## 7. 技术差异汇总

### 7.1 核心机制对比

| 方面 | Goroutine | LLVM Coroutine |
|------|-----------|----------------|
| 协程类型 | 有栈协程 (Stackful) | 无栈协程 (Stackless) |
| 栈 | 独立栈 (2KB-1GB) | 共享调用者栈 |
| 挂起方式 | 保存 SP/PC/BP，JMP 恢复 | 状态机 switch |
| 栈帧生命周期 | 挂起时保留 | 挂起时销毁 |
| 挂起点 | 任意位置（隐式） | 仅 suspend point（显式） |
| 嵌套挂起 | 透明支持 | 需要函数着色 |
| 栈增长 | 动态扩展 | 无（使用调用者栈） |

### 7.2 变量保存对比

| 方面 | Goroutine | LLVM Coroutine |
|------|-----------|----------------|
| 策略 | 保守 Spill | LVA 分析 |
| 位置 | 栈帧 | 协程帧（堆） |
| 时机 | 函数入口全部 Spill | 仅跨挂起变量 |
| 帧大小 | 固定 | 按需最小化 |

### 7.3 寄存器使用对比

| 寄存器 | Goroutine | LLVM Coroutine |
|--------|-----------|----------------|
| DX | 闭包上下文 | 需要保存到帧 |
| AX-R11 | 参数/返回值，Spill 到栈 | 跨挂起的保存到帧 |
| SP | 指向独立栈 | 使用调用者栈 |
| BP | 帧指针，保存到 gobuf | 无独立栈帧 |

### 7.4 恢复机制对比

| 方面 | Goroutine | LLVM Coroutine |
|------|-----------|----------------|
| 恢复目标 | 任意 PC 地址 | 预定义的 resume 点 |
| 实现方式 | JMP 指令 | switch 语句 |
| 状态恢复 | SP/BP 恢复后自动可用 | 显式从帧加载 |
| 灵活性 | 高（任意位置） | 低（仅 suspend 点） |

### 7.5 GC 集成对比

| 方面 | Goroutine | LLVM Coroutine |
|------|-----------|----------------|
| 扫描目标 | 栈 | 堆上的协程帧 |
| 指针定位 | FUNCDATA 元数据 | 需要状态相关元数据 |
| 复杂度 | 成熟方案 | 需要新机制 |

### 7.6 异常处理对比

| 方面 | Goroutine | LLVM Coroutine |
|------|-----------|----------------|
| defer 存储 | 栈帧上 | 需要存到协程帧 |
| panic 处理 | 栈展开 | 需要重新设计 |
| 栈回溯 | 完整栈信息 | 栈帧已销毁 |

---

## 8. 需要解决的问题

### 8.1 ABI 层面

| 问题 | 描述 |
|------|------|
| 闭包上下文 (DX) | resume 时需要恢复，首次调用保存到帧 |
| Spill 策略 | Go 不做 LVA，需要添加或保守 Spill 到帧 |
| 大结构体 | duffcopy 到栈上的数据挂起后丢失 |

### 8.2 语言层面

| 问题 | 描述 |
|------|------|
| 函数着色 | 调用链传染，整个调用链都需要是协程 |
| select 语句 | 多路复用需要多个潜在挂起点 |
| Channel 操作 | send/recv/range 需要改成显式 await |
| 反射调用 | reflect.Call 返回值类型与协程冲突 |
| Method Value | 方法值的 receiver 需要跨挂起存活 |
| Interface 调用 | 动态分派时编译期不知道是否是协程 |

### 8.3 CGO 交互

| 问题 | 描述 |
|------|------|
| C 栈帧保存 | 协程中调用 cgo，挂起后 C 栈帧消失 |
| C 持有指针 | C 代码可能持有 Go 栈上的指针 |
| 回调问题 | C 代码回调 Go 协程函数 |

### 8.4 编译器层面

| 问题 | 描述 |
|------|------|
| 函数分割 | CoroSplit 生成多个函数 (foo, foo.resume, foo.destroy) |
| 内联冲突 | 协程函数内联后挂起点如何处理 |
| 汇编代码 | 手写汇编假设在连续栈上执行 |
| 调试信息 | DWARF 如何描述堆上的协程帧 |

---

## 9. 关键问题详细分析

### 9.1 Select 语句

```go
select {
case v := <-ch1:
    // ...
case ch2 <- x:
    // ...
case <-time.After(1*time.Second):
    // ...
}
```

**问题**：
- select 是单个语句，但可能在任意 case 挂起
- 需要为每个 case 生成挂起点
- 恢复时需要知道是哪个 case 就绪

**与 LLVM Coroutine 的冲突**：
- LLVM 的 suspend 是显式单点
- select 需要多个潜在挂起点的"或"逻辑

### 9.2 CGO 中的挂起

```go
func process() {
    C.start_operation()
    result := co_await waitForIO()  // 挂起！
    C.finish_operation(result)
}
```

**问题**：
- C 函数在调用栈上，挂起后 C 栈帧消失
- C 代码的局部变量丢失
- C 可能持有指向 Go 栈的指针

**限制**：协程函数内 cgo 调用必须在挂起点之间完成，不能跨挂起。

### 9.3 Reflect 调用协程

```go
func callAny(fn interface{}) {
    v := reflect.ValueOf(fn)
    result := v.Call(nil)  // 如果 fn 是协程函数？
}
```

**问题**：
- reflect.Call 返回 `[]Value`
- 协程函数返回协程帧指针
- 调用者不知道函数是协程

### 9.4 Interface 动态分派

```go
type Handler interface {
    Handle() Task
}

func process(h Handler) Task {
    return h.Handle()  // 编译期不知道具体类型
}
```

**问题**：
- 接口方法调用是间接调用
- 编译时不知道具体实现是否是协程
- itab 需要标记方法是否为协程

### 9.5 函数内联

```go
//go:inline
func small() Task {
    co_await x()
}

func caller() Task {
    co_await small()
}
```

**问题**：
- 内联后 small 的代码进入 caller
- small 的挂起点变成 caller 的挂起点
- 协程帧结构需要合并

### 9.6 Method Value

```go
type T struct{ data int }

func (t *T) Process() Task {
    co_await something()
    return t.data  // t 需要跨挂起存活
}

fn := t.Process  // method value = 闭包
fn()
```

**问题**：
- method value 隐式创建闭包捕获 receiver
- 这个闭包本身是协程
- receiver 需要保存到协程帧

---

## 10. 透明协程化实现方案

目标：用户代码完全不变，编译器自动将需要挂起的函数转换为 LLVM Coroutine。

### 10.1 问题场景

```go
func A() int {
    return B()
}

func B() int {
    return C()
}

func C() int {
    return <-ch  // 挂起点
}

// 调用链：A → B → C
// C 挂起时，A 和 B 的栈帧还在调用栈上
// 恢复时如何回到 A→B→C？
```

---

### 10.2 方案一：全调用链协程化

**思路**：A、B、C 全部编译成协程，C 挂起时逐级返回。

#### 实现方式

```
编译后：

A() → A_coro():
    frame_b = B_coro()
    if frame_b.suspended:
        save state
        return A_frame  // A 也挂起
    return frame_b.result

B() → B_coro():
    frame_c = C_coro()
    if frame_c.suspended:
        save state
        return B_frame  // B 也挂起
    return frame_c.result

C() → C_coro():
    if !ch.ready:
        save state
        return C_frame  // 挂起
    return ch.recv()
```

#### 帧结构

```
挂起时的帧链：

A_frame                B_frame                C_frame
┌─────────────┐       ┌─────────────┐       ┌─────────────┐
│ state = 1   │       │ state = 1   │       │ state = 1   │
│ child = ────────────► child = ────────────► ch = ...    │
│ locals...   │       │ locals...   │       │ locals...   │
└─────────────┘       └─────────────┘       └─────────────┘
```

#### 恢复流程

```
ch 就绪，唤醒 C_frame:

1. C_frame.resume() → 执行完毕，返回结果
2. B_frame.resume() → 收到 C 的结果，继续执行，返回结果
3. A_frame.resume() → 收到 B 的结果，继续执行，返回结果
```

#### 实现难度

| 方面 | 难度 | 说明 |
|------|------|------|
| 编译器分析 | 高 | 需要全程序分析，标记所有可能挂起的函数 |
| 接口调用 | 高 | 接口方法是否挂起编译时未知 |
| 函数指针 | 高 | 同上 |
| 递归调用 | 中 | 每次调用创建新帧 |
| 性能开销 | 中 | 每个函数都有帧分配/检查开销 |
| 帧内存 | 中 | 调用链深度 × 帧大小 |
| ABI 改变 | 高 | 所有函数返回类型都变成帧/结果联合体 |

#### 接口调用问题

```go
type Reader interface {
    Read() int
}

func process(r Reader) int {
    return r.Read()  // 编译时不知道 Read 是否挂起
}
```

**解决方案**：

| 方案 | 描述 | 代价 |
|------|------|------|
| 保守处理 | 所有接口方法都当作可能挂起 | 性能损失 |
| 标记接口 | 接口定义时标记是否可挂起 | 需要改语法 |
| 运行时检查 | itab 中记录方法是否是协程 | 运行时开销 |
| 全程序分析 | 分析所有实现，确定是否可能挂起 | 破坏分离编译 |

---

### 10.3 方案二：边界转换（CPS 变换）

**思路**：只有直接挂起的函数是协程，调用链通过 Continuation 保存。

#### 实现方式

```go
// 原代码
func A() int {
    return B()
}

func B() int {
    return C()
}

func C() int {
    return <-ch
}
```

```
编译后：

C 是协程（有直接挂起点）:
C_coro():
    if !ch.ready:
        save continuation
        return suspended

A 和 B 被 CPS 变换:
A_cps(cont func(int)):
    B_cps(func(result int) {
        cont(result)
    })

B_cps(cont func(int)):
    C_coro_with_callback(func(result int) {
        cont(result)
    })
```

#### 挂起时的状态

```
只有一个协程帧（C），加上闭包链：

C_frame
┌─────────────┐
│ state = 1   │
│ callback = ─────► B 的 continuation (闭包)
│ ch = ...    │          │
└─────────────┘          ▼
                    A 的 continuation (闭包)
```

#### 实现难度

| 方面 | 难度 | 说明 |
|------|------|------|
| CPS 变换 | 高 | 需要将同步代码变成回调风格 |
| 闭包爆炸 | 高 | 每个调用点都生成闭包 |
| 性能开销 | 高 | 大量闭包分配 |
| 调试困难 | 高 | 调用栈变成闭包链 |
| 栈回溯 | 高 | 原始调用栈信息丢失 |
| 代码膨胀 | 高 | CPS 代码比原代码大很多 |

---

### 10.4 方案三：混合栈（Segmented Stacks）

**思路**：挂起时保存部分调用栈到堆上。

#### 实现方式

```
正常执行：

调用栈：
┌─────────────┐
│ A 的栈帧    │
├─────────────┤
│ B 的栈帧    │
├─────────────┤
│ C 的栈帧    │ ← SP
└─────────────┘

C 挂起时，复制栈到堆：

堆上：
┌─────────────┐
│ A 的栈帧    │ (复制)
├─────────────┤
│ B 的栈帧    │ (复制)
├─────────────┤
│ C 的栈帧    │ (复制)
└─────────────┘

恢复时，从堆复制回栈，跳转到 C 继续执行。
```

#### 实现难度

| 方面 | 难度 | 说明 |
|------|------|------|
| 栈复制 | 中 | 实现相对直接 |
| 指针修正 | 高 | 栈上的指针需要调整 |
| GC 集成 | 高 | 堆上的栈副本需要扫描 |
| 性能 | 中 | 复制开销，但只在挂起时 |
| 与 LLVM Coro 结合 | 低 | 这其实更接近有栈协程 |

**本质**：这不是 LLVM Coroutine，而是轻量级有栈协程。

---

### 10.5 方案对比

| 方面 | 方案一 (全协程化) | 方案二 (CPS) | 方案三 (栈复制) |
|------|------------------|--------------|-----------------|
| 编译器改动 | 大 | 非常大 | 中 |
| 运行时改动 | 中 | 小 | 大 |
| 性能开销 | 中 (帧分配) | 高 (闭包) | 低 (仅挂起时) |
| 内存开销 | 调用链×帧 | 闭包链 | 栈副本 |
| 接口兼容 | 难 | 难 | 相对容易 |
| 调试支持 | 中 | 差 | 好 |
| 与 LLVM Coro | 契合 | 部分 | 不契合 |

---

### 10.6 最终方案：双版本 + R12 模式寄存器

#### 核心思想

1. **`go` 关键字作为着色边界**：`go` 块内是协程模式，块外是同步模式
2. **每个函数生成双版本入口**：共享代码主体，不同入口和挂起点处理
3. **R12 寄存器存储模式**：callee-saved，整个调用链自动传递
4. **Go 和 C 函数统一处理**：都通过 LLVM 编译，共享协程模型

#### 寄存器约定

```
R14 = G 指针（现有）
R12 = mode 寄存器（新增）
      - SYNC = 0：同步模式，阻塞调用
      - CORO = 1：协程模式，可挂起
```

#### 函数编译

```go
func process() int {
    v := <-ch
    return v * 2
}
```

编译后：

```asm
process_sync:              ; 同步入口
    mov  R12, SYNC
    jmp  process_body

process_coro:              ; 协程入口
    mov  R12, CORO
    jmp  process_body

process_body:              ; 共享代码
    ; v := <-ch
    cmp  R12, CORO
    je   .coro_recv

.sync_recv:
    call chan_recv_sync    ; 阻塞版本
    jmp  .continue

.coro_recv:
    call chan_recv_coro    ; 协程版本
    ; co_await 挂起点处理
    ...

.continue:
    ; return v * 2
    shl  eax, 1
    ret
```

#### 调用选择

```go
// 普通调用 → sync 入口
process()        // → process_sync, R12=SYNC

// go 块内 → coro 入口
go func() {
    process()    // → process_coro, R12=CORO
}()
```

#### 接口调用

```go
type Reader interface {
    Read() int
}

func use(r Reader) {
    r.Read()    // 根据 R12 选择版本
}
```

itab 查询时根据 R12 选择：

```asm
interface_call:
    mov  rax, [itab + method_offset]
    cmp  R12, CORO
    je   .coro
    call [rax + sync_offset]
    jmp  .done
.coro:
    call [rax + coro_offset]
.done:
```

#### C 函数支持

因为 Go 和 C 都通过 LLVM 编译，C 函数同样适用：

```c
// C 代码
int read_data() {
    return async_read();  // 可以挂起
}
```

编译后同样生成双版本，遵循 R12 约定。

```go
go func() {
    goFunc()       // Go 协程版本
    C.cFunc()      // C 协程版本，R12=CORO 传递
    goFunc2()      // Go 协程版本
}()
```

#### CGO 边界处理

对于无法重新编译的外部 C 库：

```asm
go_to_external_c:
    push R12                    ; 保存模式
    mov  R12, SYNC              ; 强制同步模式
    call external_c_function    ; 调用外部 C
    pop  R12                    ; 恢复模式
```

C 执行期间，任何挂起操作走阻塞路径。

#### 优势

| 方面 | 说明 |
|------|------|
| 用户透明 | 代码不需要改动，`go` 语义不变 |
| 代码共享 | 双版本共享主体，膨胀小 |
| 零成本传递 | R12 callee-saved，无额外开销 |
| Go/C 统一 | 同一套协程模型 |
| 兼容外部 C | 边界处强制同步模式 |
