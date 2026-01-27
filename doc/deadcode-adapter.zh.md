# LLGo deadcode 适配说明

## 背景

LLGo 的可达性分析需要具备**全局视角**，但工程实际编译流程是“多包独立生成模块，再统一链接”。  
为了逐步对齐 Go 的 deadcode 逻辑，我们先实现最小版的 **flood 可达性**，并把接口/反射等语义放在后续阶段补齐。

## deadcode 的当前实现

新增 `cl/deadcode`，实现最小版 flood 可达性：

- 输入：`irgraph.Graph`
- Roots：外部传入（当前测试以 entry 符号为根：`main`/`_start`）
- 边：暂时只使用 `call/ref`（接口/反射后续再加）
- 输出：`Result{Reachable map[SymID]bool}`

这是一版**纯函数的分析**，不修改 IR，只产出可达性结果。

## 当前支持的特性

目前只处理 **普通函数可达性**：

- **call 边**：直接调用关系；
- **ref 边**：函数值/全局初始化等的“间接引用”；
- **roots**：由调用方提供（当前策略是以 entry 符号 `main`/`_start` 作为根）。

## 入口 root 适配说明

当前测试是 **build 模式下的可执行入口分析**，root 取值为：

- `main`：entry 模块里的入口函数（默认）
- `_start`：当需要生成启动桩时存在

**注意：** 目前仍是测试层拼 roots，尚未嵌入到真正的 build/link 过程中。  
后续如果把 deadcode 集成到 build 流程，需要区分：

- **entry 模块**（`pkgPath.main`）：roots 应来自 `main`/`_start`
- **普通包模块**：不应提供 entry roots，只参与依赖图合并

输出仅包含：

- `Reachable` 集合（`map[SymID]bool`）

## 当前尚未覆盖的语义

以下语义在 deadcode 里尚未启用：

- `reloc(useiface)`：类型被转为接口；
- `reloc(useifacemethod)`：接口方法调用；
- `reloc(methodoff)`：方法表条目（Mtyp/Ifn/Tfn）；
- `reloc(usenamedmethod)`：反射/泛型按名字调用方法；
- 任何 IR 回写（置空 Ifn/Tfn、写入哨兵值等）。

## 实现要点（结构体与状态）

为了逐步对齐 Go 的 deadcode 行为，后续实现需要在分析结果中保留一些**可观察状态**，便于调试与验证：

- `Reachable map[SymID]bool`  
  可达性结果（当前已有）。

- `UsedInIface map[SymID]bool`  
  标记“类型被用于接口转换”的集合。  
  当 flood 遇到 `reloc(useiface)` 时，需要写入该集合，并触发对该类型的重新扫描。

- `IfaceMethod map[MethodSig]bool`  
  记录“被调用过的接口方法签名”（方法名 + 方法类型）。  
  当 flood 遇到 `reloc(useifacemethod)` 时，需要解码接口方法并写入该集合。

- `GenericIfaceMethod map[string]bool`  
  记录“按名字调用的接口方法”（泛型接口/MethodByName 场景）。  
  对应 `reloc(usenamedmethod)`：只保存方法名字符串，用于后续按名字保活导出方法。

**MethodSig 结构（接口方法签名）**：

```
type MethodSig struct {
    Name string   // 方法名
    Typ  SymID    // 方法类型描述符（函数类型的 type descriptor）
}
```

它不包含“具体接口”的信息，只描述 **方法名 + 方法类型**，用于与具体类型的方法集做匹配。

> 备注：在 Go 实现中这是 loader 的 Attr；在 LLGo 里建议直接放到 `deadcode.Result`，便于测试输出与 debug。

## 计划中的 USEIFACE 处理（说明）

当 flood 扫描到 `reloc(useiface)` 时，需要：

1. 将目标类型标记为 **UsedInIface**；
2. 如果该类型此前已标记为 reachable，则**清掉 reachable 并重新入队**；
3. 这样能在 “UsedInIface=true” 的状态下重新扫描该类型元数据，确保方法表条目（`methodoff`）后续会被考虑。

这一步的意义：  
**“类型在可达的情况下，被用作接口”**，必须触发一次“按接口语义”的重新遍历。

> 调试建议：deadcode 的结果结构体可额外保存 `UsedInIface` 集合（以及可选的 parent 依赖），用于输出/诊断。
