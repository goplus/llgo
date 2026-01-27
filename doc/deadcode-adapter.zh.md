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
  同时，方法表中的 **方法类型描述符（Mtyp）** 也可能被标记为 `UsedInIface`：
  当遇到 `reloc(methodoff)` 且当前类型已 `UsedInIface` 时，
  会把 Mtyp 视作“可经由反射继续访问的类型”，同样进入该集合并重新扫描。
  也就是说：**类型符号与方法类型符号都会作为 UsedInIface 的 key**。

- `IfaceMethod map[MethodSig]bool`  
  记录“被调用过的接口方法签名”（方法名 + 方法类型）。  
  当 flood 遇到 `reloc(useifacemethod)` 时，需要解码接口方法并写入该集合。

- `GenericIfaceMethod map[string]bool`  
  记录“按名字调用的接口方法”（泛型接口/MethodByName 场景）。  
  对应 `reloc(usenamedmethod)`：只保存方法名字符串，用于后续按名字保活导出方法。
  在 irgraph 中该类边的 target 会以 `_mname:` 前缀表示（如 `_mname:Foo`），
  deadcode 解析时需要去掉前缀后再写入该集合。

- `MarkableMethods []MethodRef`  
  记录“**可能被接口动态调用**”的候选方法条目。  
  只有当类型已 `UsedInIface`，并且扫描到 `reloc(methodoff)`（Mtyp/Ifn/Tfn 三连）时，
  才会把该方法条目加入候选列表。随后会从类型元数据中解码出方法签名，
  填入 `MethodRef.m`，供后续与 `IfaceMethod` / `GenericIfaceMethod` 匹配。

**MethodSig 结构（接口方法签名）**：

```
type MethodSig struct {
    Name string   // 方法名
    Typ  SymID    // 方法类型描述符（函数类型的 type descriptor）
}
```

它不包含“具体接口”的信息，只描述 **方法名 + 方法类型**，用于与具体类型的方法集做匹配。

> 备注：在 Go 实现中这是 loader 的 Attr；在 LLGo 里建议直接放到 `deadcode.Result`，便于测试输出与 debug。

**MethodRef 结构（候选方法条目）**：

```
type MethodRef struct {
    Src   SymID     // 类型描述符符号
    Reloc int       // methodoff 在 reloc 列表中的起始位置（Mtyp/Ifn/Tfn 三连）
    M     MethodSig // 解码后的方法签名
}
```

它对应 Go 中 `markableMethods` 的概念：  
“**这个类型的方法，理论上可能被接口调用，但是否保活要看是否真的被调用**”。

## 计划中的 USEIFACE 处理（说明）

当 flood 扫描到 `reloc(useiface)` 时，需要：

1. 将目标类型标记为 **UsedInIface**；
2. 如果该类型此前已标记为 reachable，则**清掉 reachable 并重新入队**；
3. 这样能在 “UsedInIface=true” 的状态下重新扫描该类型元数据，确保方法表条目（`methodoff`）后续会被考虑。

这一步的意义：  
**“类型在可达的情况下，被用作接口”**，必须触发一次“按接口语义”的重新遍历。

## UsedInIface 的“子类型”传播（说明）

当一个类型被标记为 `UsedInIface` 时，还需要把它的**子类型**也带着该标记重新扫描。  
这里的“子类型”不是继承关系，而是 **类型描述符里直接引用的类型**：

- `[]T` 的子类型：`T`
- `chan T` 的子类型：`T`
- `map[K]V` 的子类型：`K`、`V`
- `struct{F T}` 的子类型：`T`
- 方法签名里的参数/返回类型（可通过反射继续访问）

这些关系在二进制里表现为 **类型元数据中的指针/重定位**（A 类型描述符里指向 B 类型描述符）。  
因此 deadcode 在扫描类型符号时，可以沿这些 reloc 继续遍历，并给子类型也打上 `UsedInIface`。

这样做的原因是：  
通过反射可以从“父类型”继续拿到子类型（例如从 `[]chan T` 得到 `chan T` 再到 `T`），  
所以必须保证子类型也进入接口语义的可达性分析。

> 调试建议：deadcode 的结果结构体可额外保存 `UsedInIface` 集合（以及可选的 parent 依赖），用于输出/诊断。
