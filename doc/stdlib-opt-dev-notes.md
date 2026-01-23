# stdlib-opt 开发/测试/调试笔记

本文记录近期在 `llgo-stdlib-opt` 分支的开发、测试与排障过程中的工具与方法，便于后续继续推进（尤其是 runtime timer 与 386 相关问题）。

## 1. 常用测试命令

### macOS 本机

```
./dev/llgo.sh test ./...
```

常见警告（可忽略）：
```
ld64.lld: warning: ... version is newer than target minimum ...
```

### Linux (docker)

#### 直接运行

```
./dev/docker.sh amd64 bash -lc './dev/llgo.sh test ./...'
./dev/docker.sh arm64 bash -lc './dev/llgo.sh test ./...'
./dev/docker.sh i386  bash -lc './dev/llgo.sh test ./...'
```

#### 长期容器 + exec（效率更高）

```
docker compose --file dev/docker-compose.yml --project-directory . up -d llgo-dev-amd64
docker compose --file dev/docker-compose.yml --project-directory . up -d llgo-dev-arm64
docker compose --file dev/docker-compose.yml --project-directory . up -d llgo-dev-i386

docker compose --file dev/docker-compose.yml --project-directory . exec -T llgo-dev-i386 bash -lc '...'
```

### 只编译一次用于分析

```
./dev/llgo.sh test -c -o /tmp/time.test ./test/std/time
```

然后用 `nm/ldd/readelf` 分析符号或依赖：
```
nm -D /tmp/time.test | grep uv_loop_new
ldd /tmp/time.test | grep libuv
readelf -Ws /tmp/time.test | grep uv_loop_new
```

## 2. llgen / LLVM IR 检查

### llgen 基本用法

先安装：
```
go install ./chore/llgen
```

在包目录里生成 LLVM IR：
```
cd runtime/internal/clite/libuv
llgen .
```

结果通常输出为 `llgo_autogen.ll`（部分目录输出为 `out.ll`）。

### llgo.sh 生成 .ll

```
./dev/llgo.sh test -gen-llfiles ./...
```

生成的 `.ll` 文件位于 `/tmp/*.ll`，可配合 `grep` 查找目标符号：
```
grep -R --line-number -E "uv_loop_new|uv_default_loop|uv_run" /tmp/*.ll
```

## 3. 386 排障工具箱

### 1) 观察 libuv 是否被链接

```
nm -D /tmp/time.test | grep uv_loop_new
ldd /tmp/time.test | grep libuv
```

若 `uv_loop_new` 为 U（undefined）且 `libuv.so` 存在，说明符号由动态库提供。

### 2) LD_PRELOAD 注入跟踪

可用一个简单的 `uvwrap.so` 拦截 `uv_loop_new/uv_default_loop/uv_loop_init/uv_async_init/uv_timer_init/uv_run` 并打印调用：

```
cc -shared -fPIC /tmp/uvwrap.c -o /tmp/uvwrap.so -ldl
timeout 5s env LD_PRELOAD=/tmp/uvwrap.so /tmp/time.test -test.run TestSleep -test.v
```

若无输出，说明 crash 发生在 libuv 调用前或输出无法刷新，可改用 stderr 或插入更多日志。

## 4. 近期关键变更（摘要）

- **docker 代理**：`dev/docker-compose.yml` 里加入 `http_proxy/https_proxy/NO_PROXY`，容器联网更稳定。
- **i386 Go 路径问题**：`dev/_llgo_setup.sh` 增加自动定位 `/usr/local/go/bin/go` 的逻辑，避免容器内 `go` 缺失。
- **i386 GC 降级**：
  - `runtime/internal/clite/bdwgc/bdwgc_386.go` 采用 stub（仅用 libc malloc/free，禁用 finalizer/roots）。
  - `pthread_gc` 在 386 上走 nogc 分支。
  - 目标：避免 386 上 bdwgc OOM。
- **time/libuv 初始化**：
  - 加入 `LoopDefault()` 兜底。
  - 新增 `LoopSize + LoopInit` 作为最后 fallback（当前仍在排查 386 nil loop 问题）。

## 5. 当前阻塞点（截止本笔记）

**linux/386：** `llgo test` 触发 timer 崩溃（runtime timer 386 fallback）

现象：
- `llgo run` 的简单用例（`time.After` / `time.Sleep`）已能跑通。
- `llgo test` 在空包也会触发 timer 并崩溃（见下方复现）。

下一步建议：
- 先固化最小复现用例，定位是否为 386 编译器/ABI/逃逸问题。
- 如确认为编译器 bug，先记录并延后修复；优先保障其它平台继续推进。

### 复现：`llgo test` 在 386 崩溃

```
./dev/docker.sh i386 bash -lc 'cd _demo/go/time_testpkg && LLGO_TIMER_DEBUG=1 ../../../dev/llgo.sh test -run TestEmpty -count=1'
```

现象（示例）：
```
timer: startTimer386
timer: startTimer386 loop
timer: startTimer386 after runtimeNano
timer: startTimer386 before sleep
timer: sleepNs enter
panic: runtime error: invalid memory address or nil pointer dereference
```

## 6. 后续计划（建议流程）

1. **先解决 linux/386 runtime timer / libuv 初始化问题**。
2. 在 386 上跑通 `./dev/llgo.sh test ./...`。
3. 再回归测试 linux/amd64、linux/arm64、macOS arm64。
4. 之后进入 “runtime timer” 的 Go 方案实现（跨平台主体 + 少量平台钩子）。

## 7. 编译日志 / IR 获取补充

`-x/-work` 在 llgo 里可能未完全实现，建议用：

```
LLGO_TRACE=1 ./dev/llgo.sh test -a -gen-llfiles ./test/std/time -run TestTimeCreationAndFormatting
```

或使用 `llgen`：
```
cd _demo/go/repro_timer_closure
go run ../../../chore/llgen .
```
