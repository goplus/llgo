# LLGo DCE 两阶段流水线与当前删除规则

本文记录 LLGo 现阶段的 DCE（dead code elimination）闭环：
- **阶段一：标记/收集**（生成 IR 时写入 reloc 元信息）
- **阶段二：全局分析 + 删除**（合并为单一模块后分析可达性，再执行删除）

> 目标：在保持 Go 语义的前提下，让最终二进制更小，逐步对齐 Go 链接器的 DCE 行为。

---

## 一、当前 DCE Pass 的输入/输出

> 整体两阶段流程已迁移到 `doc/go-link-dce.zh.md` 的 LLGo 适配部分。

**输入**
- 一个已经合并完成的 **全局 LLVM Module**（包含所有包的 IR）。
- 一个可达性结果：`deadcode.Result`（`reachable` 集合）。

**输出**
- 就地修改后的 **同一个 LLVM Module**。
- 后续直接用该 Module 生成 `.ll` 并编译为 `.o`（不再回到旧 `.bc`）。

---

## 二、当前删除规则（已实现）

当前 DCE Pass **只处理函数**，不处理全局变量和元数据。

### 1) 不可达函数：降级为声明（declaration）
对不可达函数执行：
- 创建同名外部声明（`external declaration`）
- `ReplaceAllUsesWith` 替换旧函数引用
- 删除旧的函数定义（函数体）

**效果**
- 函数体被删除，链接期可进一步被 GC/裁剪。
- 对外仍保留符号名（decl），避免符号引用断裂。

### 2) 保留范围（当前版本）
- 可达函数：保留原始定义
- 内建/LLVM intrinsic：跳过

---

## 三、当前未做（后续计划）

1) **全局变量 / 常量 / 元数据裁剪**
   - 目前 `DroppedGlobals = 0`，还未实现。

2) **方法表/类型元数据回写**
   - 尚未根据 Go 语义对方法表进行“可达性裁剪”。
   - 后续需要结合 `__llgo_relocs` 做更细粒度回写。

3) **更完整的 Go 语义边**
   - 接口/反射相关标记（如 `R_USEIFACE`/`R_USEIFACEMETHOD`/`R_USENAMEDMETHOD`）
   - 这些边需要进入 `irgraph` 后才能避免误删。

---

## 四、运行与观测

使用：

```
llgo build -dce -v ...
```

关键日志：
- `[dce] roots: ...`
- `[dce] graph nodes=... edges=...`
- `[dce] reachable=...`
- `[dce] pass end (reachable=... dropped_funcs=... dropped_globals=...)`
- `[dce] module ll: /tmp/llgo-dce-XXXX.ll`

**说明**
- `module ll` 即 DCE 后的全局 IR，后续直接被编译成 `.o`。

---

## 五、当前实现位置（代码指引）

- DCE 主流程：`internal/build/build.go`
- DCE Pass：`cl/dcepass/dcepass.go`
- 可达性分析：`cl/deadcode`
- 图构建：`cl/irgraph`
- reloc 元信息：`ssa/` + `doc/ssa-reloc.zh.md`
