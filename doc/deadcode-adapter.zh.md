# LLGo deadcode 适配说明

## 背景

LLGo 的可达性分析需要具备**全局视角**，但工程实际编译流程是“多包独立生成模块，再统一链接”。  
为了逐步对齐 Go 的 deadcode 逻辑，我们先实现最小版的 **flood 可达性**，并把接口/反射等语义放在后续阶段补齐。

## deadcode 的当前实现

新增 `cl/deadcode`，实现最小版 flood 可达性：

- 输入：`irgraph.Graph`
- Roots：外部传入（当前测试取 `main.main`）
- 边：暂时只使用 `call/ref`（接口/反射后续再加）
- 输出：`Result{Reachable map[SymID]bool}`

这是一版**纯函数的分析**，不修改 IR，只产出可达性结果。

## 当前支持的特性

目前只处理 **普通函数可达性**：

- **call 边**：直接调用关系；
- **ref 边**：函数值/全局初始化等的“间接引用”；
- **roots**：由调用方提供（当前策略是从 `main.main` 开始）。

输出仅包含：

- `Reachable` 集合（`map[SymID]bool`）

## 当前尚未覆盖的语义

以下语义在 deadcode 里尚未启用：

- `reloc(useiface)`：类型被转为接口；
- `reloc(useifacemethod)`：接口方法调用；
- `reloc(methodoff)`：方法表条目（Mtyp/Ifn/Tfn）；
- `reloc(usenamedmethod)`：反射/泛型按名字调用方法；
- 任何 IR 回写（置空 Ifn/Tfn、写入哨兵值等）。
