# LLVM Coroutine 结构参考

本文档基于 C++20 coroutine 编译分析，描述 LLVM coroutine IR 结构。

## 概述

LLVM coroutine 使用 **switched-resume** 降级策略。一个 presplit coroutine 函数被 CoroSplit 转换成三个函数：

1. **Ramp 函数** - 原始函数入口，分配 frame 并运行到第一个 suspend
2. **Resume 函数** - 通过 `coro.resume` 调用，从 suspend 点继续执行
3. **Destroy 函数** - 通过 `coro.destroy` 调用，从 suspend 点执行 cleanup 路径

## Presplit Coroutine 结构

### 函数属性

```llvm
; 函数必须有 presplitcoroutine 属性
define i64 @worker() #0 {
  ; ...
}
attributes #0 = { presplitcoroutine }
```

### Frame 布局

coroutine frame 包含：
- `[0]` - Resume 函数指针 (ptr)
- `[1]` - Destroy 函数指针 (ptr)
- `[2]` - Promise（用户定义类型）
- `[3]` - Index (i3 或类似的小整数) - 表示当前在哪个 suspend 点
- `[4+]` - 捕获的变量和临时变量

### 入口块模式

```llvm
entry:
  ; 1. 用 promise 指针获取 coro ID
  %promise = ...  ; promise alloca 或 GEP
  %id = call token @llvm.coro.id(i32 alignment, ptr %promise, ptr null, ptr null)

  ; 2. 检查是否需要分配
  %need.alloc = call i1 @llvm.coro.alloc(token %id)
  br i1 %need.alloc, label %coro.alloc, label %coro.begin

coro.alloc:
  ; 3. 分配 frame
  %size = call i64 @llvm.coro.size.i64()
  %mem = call ptr @malloc(i64 %size)  ; 或 operator new
  br label %coro.begin

coro.begin:
  ; 4. 内存指针的 phi
  %phi.mem = phi ptr [ null, %entry ], [ %mem, %coro.alloc ]

  ; 5. 开始 coroutine
  %hdl = call ptr @llvm.coro.begin(token %id, ptr %phi.mem)

  ; 继续到函数体...
```

### Suspend 点模式

**关键：所有 suspend 点必须共享同一个 suspend block！**

```llvm
; suspend 前（可选，用于保存状态）
%save = call token @llvm.coro.save(ptr null)

; Suspend
%result = call i8 @llvm.coro.suspend(token %save, i1 false)  ; false = 非 final
switch i8 %result, label %suspend.block [  ; DEFAULT 跳转到共享的 suspend block
  i8 0, label %resume.point    ; 通过 coro.resume 恢复
  i8 1, label %cleanup.point   ; 通过 coro.destroy 销毁
]

resume.point:
  ; 恢复后继续正常执行
  ...

cleanup.point:
  ; 处理此 suspend 点的销毁
  ; 通常跳转到公共 cleanup 逻辑
  br label %cleanup
```

### 共享 Suspend Block（关键！）

**所有 suspend 点的 default case 必须跳转到同一个 suspend block！**

```llvm
suspend.block:                    ; preds = %suspend1, %suspend2, %suspend3, ...
  ; 用 unwind=false 调用 coro.end 表示正常 suspend
  %unused = call i1 @llvm.coro.end(ptr null, i1 false, token none)

  ; 返回 handle
  ret ptr %hdl    ; 或 ret i64 (ptrtoint %hdl)
```

### Final Suspend 模式

```llvm
; Final suspend 使用 i1 true
%result = call i8 @llvm.coro.suspend(token none, i1 true)  ; true = final
switch i8 %result, label %suspend.block [  ; 同一个 suspend block！
  i8 0, label %final.resume    ; 不应该发生，但要处理
  i8 1, label %cleanup         ; 销毁
]

final.resume:
  ; Final suspend 不应该被 resume
  ; 可以 trap 或跳转到 cleanup
  br label %cleanup
```

### Cleanup Block 模式

```llvm
cleanup:
  ; 1. 释放 coroutine frame
  %mem.to.free = call ptr @llvm.coro.free(token %id, ptr %hdl)
  %need.free = icmp ne ptr %mem.to.free, null
  br i1 %need.free, label %do.free, label %after.free

do.free:
  call void @free(ptr %mem.to.free)
  br label %after.free

after.free:
  ; 2. 跳转到 end block
  br label %coro.end

; 备选：带 unwind 的 cleanup（用于异常）
cleanup.unwind:
  %unused = call i1 @llvm.coro.end(ptr null, i1 true, token none)  ; unwind=true
  ; 恢复异常传播
  resume { ptr, i32 } %exception
```

### End Block 模式

```llvm
coro.end:
  ; 标记 coroutine 结束
  %unused = call i1 @llvm.coro.end(ptr null, i1 false, token none)
  ret ptr %hdl
```

## CoroSplit 后：生成的函数

### Ramp 函数

Ramp 函数：
1. 分配 coroutine frame
2. 在 frame 中存储 resume/destroy 函数指针
3. 执行直到第一个 suspend
4. 设置 index = 0 表示第一个恢复点
5. 返回 handle

```llvm
define ptr @worker() {
  ; 分配 frame
  %frame = call ptr @malloc(i64 24)  ; frame 大小

  ; 存储函数指针
  store ptr @worker.resume, ptr %frame
  %destroy.slot = getelementptr %frame, i32 0, i32 1
  store ptr @worker.destroy, ptr %destroy.slot

  ; 执行直到第一个 suspend
  call void @printf("step 1")

  ; 设置 resume 的 index
  %index.slot = getelementptr %frame, i32 0, i32 3
  store i3 0, ptr %index.slot  ; index = 0

  ; 返回 handle
  ret ptr %frame
}
```

### Resume 函数

Resume 函数：
1. 从 frame 加载 index
2. 通过 switch 分发到正确的恢复点
3. 使用 phi 节点处理 suspend 结果（从 resume 入口来是 0，从 await_suspend 来是 -1）

```llvm
define void @worker.resume(ptr %frame) {
entry:
  br label %dispatch

dispatch:
  ; 加载 index
  %index.slot = getelementptr %frame, i32 0, i32 3
  %index = load i3, ptr %index.slot
  switch i3 %index, label %unreachable [
    i3 0, label %resume.0    ; 第一个 suspend 后恢复
    i3 1, label %resume.1    ; 第二个 suspend 后恢复
    i3 2, label %resume.2    ; 等等
  ]

resume.0:
  ; Phi 选择：从 dispatch 来（resume）是 0，从 await_suspend 来是 -1
  ; 实际上，从 dispatch 来意味着我们正在被 resume

  ; 继续执行
  call void @printf("step 2")

  ; 准备下一个 suspend
  %index.slot = getelementptr %frame, i32 0, i32 3
  store i3 1, ptr %index.slot  ; 设置下一个 index

  ; 对于 yield suspend，直接返回
  ret void

  ; ... 更多恢复点 ...

unreachable:
  unreachable
}
```

### Destroy 函数

Destroy 函数：
1. 从 frame 加载 index
2. 分发到正确的 cleanup 点
3. 运行该 suspend 点的 cleanup
4. 释放 frame

```llvm
define void @worker.destroy(ptr %frame) {
entry:
  br label %dispatch

dispatch:
  %index.slot = getelementptr %frame, i32 0, i32 3
  %index = load i3, ptr %index.slot
  switch i3 %index, label %unreachable [
    i3 0, label %destroy.0
    i3 1, label %destroy.1
    ; ...
  ]

destroy.0:
  ; Suspend 点 0 的 cleanup
  ; （运行析构函数、defers 等）
  br label %free.frame

; ...

free.frame:
  call void @free(ptr %frame)
  ret void
}
```

## 与 llgo 当前实现的关键差异

### 问题 1：分离的 Suspend Block

**错误（llgo 当前）：**
```llvm
%result = call i8 @llvm.coro.suspend(...)
switch i8 %result, label %suspend.1 [  ; 每个 suspend 有自己的 block！
  i8 0, label %resume
  i8 1, label %cleanup
]

suspend.1:
  ret ptr %hdl    ; 直接返回，没有 coro.end！

; 另一个 suspend 点
%result2 = call i8 @llvm.coro.suspend(...)
switch i8 %result2, label %suspend.2 [  ; 不同的 block！
  i8 0, label %resume2
  i8 1, label %cleanup2
]

suspend.2:
  ret ptr %hdl    ; 另一个直接返回！
```

**正确（C++ 模式）：**
```llvm
%result = call i8 @llvm.coro.suspend(...)
switch i8 %result, label %suspend.shared [  ; 所有都用同一个 block！
  i8 0, label %resume
  i8 1, label %cleanup
]

%result2 = call i8 @llvm.coro.suspend(...)
switch i8 %result2, label %suspend.shared [  ; 同一个 block！
  i8 0, label %resume2
  i8 1, label %cleanup2
]

suspend.shared:                               ; 单一共享 block
  call i1 @llvm.coro.end(ptr null, i1 false, token none)  ; 调用 coro.end！
  ret ptr %hdl
```

### 问题 2：返回前缺少 coro.end

suspend block 中的 `coro.end` 调用是**必需的**，CoroSplit 需要它来正确识别 suspend 路径。没有它，CoroSplit 可能会错误地优化 suspend 返回路径。

## C++ Presplit IR 中的关键观察

从 `/tmp/coro_presplit.ll` 分析：

### 1. 所有 suspend 点共享 block %138

```llvm
; 第一个 suspend
%30 = call i8 @llvm.coro.suspend(token %29, i1 false)
switch i8 %30, label %138 [...]    ; → %138

; 第二个 suspend
%51 = call i8 @llvm.coro.suspend(token %49, i1 false)
switch i8 %51, label %138 [...]    ; → %138

; 第三个 suspend
%73 = call i8 @llvm.coro.suspend(token %71, i1 false)
switch i8 %73, label %138 [...]    ; → %138

; Final suspend
%107 = call i8 @llvm.coro.suspend(token %106, i1 true)
switch i8 %107, label %138 [...]   ; → %138
```

### 2. 共享的 suspend block 调用 coro.end

```llvm
138:                                              ; preds = %137, %136, %105, %90, %72, %50, %28
  %139 = call i1 @llvm.coro.end(ptr null, i1 false, token none)
  %140 = getelementptr inbounds %struct.Task, ptr %1, i32 0, i32 0
  %141 = getelementptr inbounds %"struct.std::__1::coroutine_handle", ptr %140, i32 0, i32 0
  %142 = load ptr, ptr %141, align 8
  %143 = ptrtoint ptr %142 to i64
  ret i64 %143
```

### 3. Cleanup 有单独的 unwind 版本

```llvm
144:                                              ; preds = %125, %121, %36
  %145 = call i1 @llvm.coro.end(ptr null, i1 true, token none)  ; unwind=true
  br i1 %145, label %153, label %146
```

## 总结

1. **Presplit coroutine** 使用 `presplitcoroutine` 属性
2. **所有 suspend 的 default case** 必须跳转到**同一个共享 suspend block**
3. **共享 suspend block** 必须调用 `coro.end(ptr null, i1 false, token none)` 然后 `ret`
4. **CoroSplit** 基于以下内容转换成 ramp/resume/destroy：
   - 存储在 frame 偏移 0x10（或类似位置）的 Index
   - 存储在 frame 偏移 0x0 和 0x8 的函数指针
5. **Resume 函数** 使用 phi 节点区分：
   - 从 dispatch 来（index switch）→ suspend 结果 = 0
   - 从 await_suspend 来 → suspend 结果 = -1
