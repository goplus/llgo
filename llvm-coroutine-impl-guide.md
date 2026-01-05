# LLVM Coroutine 实现指南（AI 友好版）

## 1. 目标

将 Go 的 goroutine 用 LLVM Coroutine 实现，对用户完全透明。

## 2. 核心设计

### 2.1 基本原则

- `go` 关键字是着色边界
- `go` 块内：协程模式（可挂起）
- `go` 块外：同步模式（阻塞调用）
- 每个函数生成双版本入口，共享代码主体
- R12 寄存器存储当前模式，callee-saved

### 2.2 模式定义

```
R12 = 0  →  SYNC 模式（同步，阻塞）
R12 = 1  →  CORO 模式（协程，可挂起）
```

## 3. 实现步骤

### 3.1 函数双版本生成

**输入**：一个普通函数

```go
func foo(x int) int {
    v := <-ch
    return v + x
}
```

**输出**：生成两个入口 + 共享主体

```llvm
define i64 @foo_sync(i64 %x) {
entry:
    store i64 0, ptr @R12    ; R12 = SYNC
    br label %body
}

define i64 @foo_coro(i64 %x) {
entry:
    store i64 1, ptr @R12    ; R12 = CORO
    br label %body
}

body:
    %mode = load i64, ptr @R12
    %is_coro = icmp eq i64 %mode, 1
    br i1 %is_coro, label %coro_recv, label %sync_recv

sync_recv:
    %v1 = call i64 @chan_recv_sync(ptr %ch)
    br label %continue

coro_recv:
    %v2 = call i64 @chan_recv_coro(ptr %ch)
    ; 插入 LLVM coroutine suspend
    br label %continue

continue:
    %v = phi i64 [%v1, %sync_recv], [%v2, %coro_recv]
    %result = add i64 %v, %x
    ret i64 %result
```

### 3.2 挂起点处理

**挂起点识别**：
- channel 操作：`<-ch`, `ch <-`
- 锁操作：`mutex.Lock()`
- I/O 操作
- 其他可能阻塞的 runtime 调用

**SYNC 模式**：调用阻塞版本
```llvm
call i64 @chan_recv_sync(ptr %ch)
```

**CORO 模式**：调用协程版本 + 插入 suspend
```llvm
%hdl = call ptr @chan_recv_coro(ptr %ch)
%suspend = call i8 @llvm.coro.suspend(token none, i1 false)
switch i8 %suspend, label %suspend.block [
    i8 0, label %resume
    i8 1, label %cleanup
]
```

### 3.3 go 语句处理

**输入**：
```go
go func() {
    foo(42)
}()
```

**输出**：
```llvm
; 创建协程帧
%frame = call ptr @coro_alloc(i64 %frame_size)

; 调用协程版本入口
call void @anonymous_coro(ptr %frame, i64 42)

; 提交给调度器
call void @scheduler_submit(ptr %frame)
```

### 3.4 接口调用处理

**输入**：
```go
type Reader interface {
    Read() int
}

func use(r Reader) {
    r.Read()
}
```

**输出**：itab 包含双版本指针

```llvm
; itab 结构
%itab = type {
    ptr,     ; type metadata
    ptr,     ; Read_sync
    ptr      ; Read_coro
}

; 调用时根据 R12 选择
define i64 @use(ptr %r) {
    %itab_ptr = ; 获取 itab
    %mode = load i64, ptr @R12
    %is_coro = icmp eq i64 %mode, 1
    br i1 %is_coro, label %coro_call, label %sync_call

sync_call:
    %fn_sync = getelementptr %itab, ptr %itab_ptr, i32 0, i32 1
    %result1 = call i64 %fn_sync(ptr %r)
    br label %done

coro_call:
    %fn_coro = getelementptr %itab, ptr %itab_ptr, i32 0, i32 2
    %result2 = call i64 %fn_coro(ptr %r)
    br label %done

done:
    %result = phi i64 [%result1, %sync_call], [%result2, %coro_call]
    ret i64 %result
}
```

### 3.5 函数指针/闭包处理

闭包结构包含双版本入口：

```llvm
%closure = type {
    ptr,     ; sync 入口
    ptr,     ; coro 入口
    ; ... 捕获的变量
}

; 调用时
%mode = load i64, ptr @R12
%is_coro = icmp eq i64 %mode, 1
%fn = select i1 %is_coro, ptr %coro_entry, ptr %sync_entry
call void %fn(ptr %closure)
```

### 3.6 C 函数处理

C 函数同样生成双版本（因为都通过 LLVM 编译）：

```c
// C 源码
int read_data() {
    return async_read();
}
```

```llvm
; 生成双版本，同 Go 函数
define i32 @read_data_sync() { ... }
define i32 @read_data_coro() { ... }
```

### 3.7 外部 C 库调用

无法重新编译的外部 C 库，强制 SYNC 模式：

```llvm
define void @call_external_c() {
    ; 保存当前模式
    %saved_mode = load i64, ptr @R12

    ; 强制 SYNC
    store i64 0, ptr @R12

    ; 调用外部 C
    call void @external_c_function()

    ; 恢复模式
    store i64 %saved_mode, ptr @R12
    ret void
}
```

## 4. LLVM Pass 实现

### 4.1 Pass 流程

```
1. FunctionDualVersionPass
   - 遍历所有函数
   - 为每个函数生成 _sync 和 _coro 入口
   - 主体代码提取到共享 label

2. SuspendPointPass
   - 识别挂起点（channel、lock、I/O）
   - 插入模式检查分支
   - CORO 路径插入 llvm.coro.suspend

3. GoStatementPass
   - 处理 go 语句
   - 生成协程帧分配
   - 调用 _coro 入口

4. InterfacePass
   - 修改 itab 结构，包含双版本指针
   - 接口调用处插入模式选择

5. ClosurePass
   - 修改闭包结构，包含双版本入口
   - 闭包调用处插入模式选择

6. ExternalCPass
   - 识别外部 C 调用
   - 插入模式保存/恢复代码
```

### 4.2 关键数据结构

```cpp
// 模式寄存器（用全局变量模拟，实际用 R12）
GlobalVariable* ModeReg;

// 函数版本映射
DenseMap<Function*, Function*> SyncVersion;
DenseMap<Function*, Function*> CoroVersion;

// 挂起点操作
StringSet<> SuspendOps = {
    "chan_recv", "chan_send",
    "mutex_lock", "rwmutex_lock",
    "cond_wait", "io_read", "io_write"
};
```

### 4.3 核心代码框架

```cpp
// Pass 1: 生成双版本
class FunctionDualVersionPass : public ModulePass {
    bool runOnModule(Module &M) override {
        for (Function &F : M) {
            if (shouldDualize(F)) {
                Function *Sync = createSyncVersion(F);
                Function *Coro = createCoroVersion(F);
                SyncVersion[&F] = Sync;
                CoroVersion[&F] = Coro;
            }
        }
        return true;
    }

    Function* createSyncVersion(Function &F) {
        // 克隆函数
        Function *Sync = CloneFunction(&F, ...);
        Sync->setName(F.getName() + "_sync");

        // 入口设置 R12 = 0
        BasicBlock &Entry = Sync->getEntryBlock();
        IRBuilder<> Builder(&Entry.front());
        Builder.CreateStore(
            ConstantInt::get(Type::getInt64Ty(Ctx), 0),
            ModeReg
        );

        return Sync;
    }

    Function* createCoroVersion(Function &F) {
        // 类似，但 R12 = 1
        // 并插入 LLVM coroutine intrinsics
    }
};

// Pass 2: 处理挂起点
class SuspendPointPass : public FunctionPass {
    bool runOnFunction(Function &F) override {
        for (BasicBlock &BB : F) {
            for (Instruction &I : BB) {
                if (CallInst *CI = dyn_cast<CallInst>(&I)) {
                    if (isSuspendOp(CI)) {
                        insertModeCheck(CI);
                    }
                }
            }
        }
        return true;
    }

    void insertModeCheck(CallInst *CI) {
        IRBuilder<> Builder(CI);

        // 读取模式
        Value *Mode = Builder.CreateLoad(
            Type::getInt64Ty(Ctx), ModeReg
        );
        Value *IsCoro = Builder.CreateICmpEQ(
            Mode, ConstantInt::get(Type::getInt64Ty(Ctx), 1)
        );

        // 分裂基本块
        BasicBlock *SyncBB = ...;
        BasicBlock *CoroBB = ...;
        BasicBlock *ContBB = ...;

        Builder.CreateCondBr(IsCoro, CoroBB, SyncBB);

        // SYNC 块：调用阻塞版本
        // CORO 块：调用协程版本 + suspend
    }
};
```

## 5. Runtime 支持

### 5.1 协程帧管理

```c
// 分配协程帧
void* coro_alloc(size_t size) {
    return malloc(size);  // 或使用池分配
}

// 释放协程帧
void coro_free(void* frame) {
    free(frame);
}
```

### 5.2 调度器接口

```c
// 提交协程到调度器
void scheduler_submit(void* frame) {
    // 加入就绪队列
    ready_queue_push(frame);
}

// 恢复协程
void scheduler_resume(void* frame) {
    // 调用 resume 函数
    coro_resume_fn resume = *(coro_resume_fn*)frame;
    resume(frame);
}

// channel 就绪时唤醒
void chan_wake(void* frame) {
    scheduler_submit(frame);
}
```

### 5.3 Channel 双版本

```c
// 同步版本（阻塞）
int chan_recv_sync(chan_t* ch) {
    while (!chan_ready(ch)) {
        // 阻塞等待
        block_wait(ch);
    }
    return chan_get(ch);
}

// 协程版本（返回 awaitable）
awaitable_t chan_recv_coro(chan_t* ch) {
    if (chan_ready(ch)) {
        return immediate(chan_get(ch));
    }
    return suspend_on(ch);
}
```

## 6. 测试用例

### 6.1 基本测试

```go
func TestBasicCoro(t *testing.T) {
    ch := make(chan int)

    go func() {
        ch <- 42
    }()

    v := <-ch
    assert(v == 42)
}
```

### 6.2 嵌套调用测试

```go
func A() int { return B() }
func B() int { return C() }
func C() int { return <-ch }

func TestNestedCoro(t *testing.T) {
    go func() { ch <- 100 }()

    go func() {
        v := A()  // A → B → C 全部协程化
        assert(v == 100)
    }()
}
```

### 6.3 接口测试

```go
type Processor interface {
    Process() int
}

type MyProcessor struct{}

func (p *MyProcessor) Process() int {
    return <-ch
}

func TestInterfaceCoro(t *testing.T) {
    var p Processor = &MyProcessor{}

    go func() { ch <- 200 }()

    go func() {
        v := p.Process()  // 接口调用走协程版本
        assert(v == 200)
    }()
}
```

### 6.4 Go + C 混合测试

```go
// #include "mylib.h"
import "C"

func TestMixedCoro(t *testing.T) {
    go func() {
        goFunc()
        C.cFunc()  // C 函数也协程化
        goFunc2()
    }()
}
```

## 7. MVP 范围

### 7.1 第一阶段：基础功能

- [ ] 函数双版本生成 Pass
- [ ] 基本挂起点处理（channel）
- [ ] go 语句处理
- [ ] 简单调度器
- [ ] 基本测试通过

### 7.2 第二阶段：完整功能

- [ ] 接口调用支持
- [ ] 闭包支持
- [ ] 函数指针支持
- [ ] 更多挂起点（lock、I/O）
- [ ] C 函数支持

### 7.3 第三阶段：优化

- [ ] 协程帧池化
- [ ] 内联优化
- [ ] 死代码消除（未使用的版本）
- [ ] 性能测试

## 8. 注意事项

1. **R12 保留**：确保编译器不将 R12 用于其他目的
2. **callee-saved**：R12 在函数调用时自动保存/恢复
3. **外部 C**：无法控制的外部库强制 SYNC 模式
4. **递归**：每次调用创建新帧，正常工作
5. **defer/panic**：需要特殊处理，defer 信息存入协程帧
