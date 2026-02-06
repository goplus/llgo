# SSA reloc 元数据输出说明

## 背景

当前在 SSA 代码生成阶段，为了给后续的全局可达性分析/裁剪提供“Go 语义线索”，会在每个 LLVM module 里额外生成一段 reloc 元数据。该元数据以全局常量 `@__llgo_relocs` 的形式出现在模块尾部（LLVM IR 输出中通常靠后）。

这段 reloc 信息不参与运行时逻辑，只用于后续分析阶段构建“隐式依赖边”。例如：

- 接口转换（`T -> I`）不会在普通指令层面留下足够的“类型可达”证据；
- 接口方法调用（`i.M()`）需要记录“使用了接口的第几个方法”，否则链接期难以做精确裁剪；
- 类型元数据中的方法表 `abi.Method` 包含 `Mtyp/Ifn/Tfn`，这些指针会把方法/包装函数强制可达，需要在更高层次有“可裁剪”的标记。

## `__llgo_relocs` 结构

`@__llgo_relocs` 是一个常量数组，元素类型固定为：

```
{ i32, ptr, ptr, i64 }
```

字段含义如下：

- `i32 kind`：reloc 类型（见下方“种类说明”）。
- `ptr owner`：被标记的“归属符号”，通常是函数符号或类型描述符。
- `ptr target`：被引用的“目标符号”，例如类型描述符、接口描述符、方法函数等。
- `i64 add`：附加信息（目前用于接口方法序号；其余场景为 0）。

### 目前已使用的 kind

- `1`（UseIface）：标记“在某函数里发生了接口转换”。
  - `owner` = 当前函数符号
  - `target` = 被转换的类型描述符（具体类型或接口类型）
  - `add` = 0
- `2`（UseIfaceMethod）：标记“在某函数里调用了某接口的某个方法”。
  - `owner` = 当前函数符号
  - `target` = 接口类型描述符
  - `add` = 方法序号（从 0 开始）
- `4`（MethodOff）：标记“类型元数据中的方法表条目”。
  - `owner` = 类型描述符（`_llgo_<pkg>.<T>` 或 `*_llgo_<pkg>.<T>`）
  - `target` = `Mtyp/Ifn/Tfn` 中的某个符号
  - `add` = 0

## 测试用例解读（`ssa/_testdata_reloc`）

下面对四个用例的 `reloc.ll` 进行格式化展示，并解释每条记录代表的含义。注意：真实文件是一行输出，这里只是为了可读性进行换行排版。

### 1) `useiface`

源码（摘要）：

```go
type I interface{ M() }
type T struct{}
func (T) M() {}
var sink I
func A() { var t T; sink = t }
```

格式化后的 `__llgo_relocs`：

```llvm
@__llgo_relocs = internal unnamed_addr constant [7 x { i32, ptr, ptr, i64 }] [
  { i32, ptr, ptr, i64 } { i32 4, ptr @"*_llgo_useiface.T", ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", i64 0 },
  { i32, ptr, ptr, i64 } { i32 4, ptr @"*_llgo_useiface.T", ptr @"useiface.(*T).M", i64 0 },
  { i32, ptr, ptr, i64 } { i32 4, ptr @"*_llgo_useiface.T", ptr @"useiface.(*T).M", i64 0 },
  { i32, ptr, ptr, i64 } { i32 4, ptr @_llgo_useiface.T, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", i64 0 },
  { i32, ptr, ptr, i64 } { i32 4, ptr @_llgo_useiface.T, ptr @"useiface.(*T).M", i64 0 },
  { i32, ptr, ptr, i64 } { i32 4, ptr @_llgo_useiface.T, ptr @useiface.T.M, i64 0 },
  { i32, ptr, ptr, i64 } { i32 1, ptr @useiface.A, ptr @_llgo_useiface.T, i64 0 },
]
```

理解要点：

- `kind=1`：`useiface.A` 中发生了 `T -> I` 的接口赋值，所以记录 `UseIface`，`target` 指向 `T` 的类型描述符。
- `kind=4`：`T` 与 `*T` 的方法集都各自生成 `Mtyp/Ifn/Tfn` 的三条记录（因此共有 6 条）。  
  这里的 `@_llgo_func$...` 是“方法签名类型”的符号；`useiface.(*T).M` / `useiface.T.M` 是方法/包装函数符号。

### 2) `useifacemethod`

源码（摘要）：

```go
type I interface{ M() }
func Use(i I) { i.M() }
```

格式化后的 `__llgo_relocs`：

```llvm
@__llgo_relocs = internal unnamed_addr constant [1 x { i32, ptr, ptr, i64 }] [
  { i32, ptr, ptr, i64 } { i32 2, ptr @useifacemethod.Use, ptr @"_llgo_iface$anEWstLioBmxcO9rxTXClbAzDIEQLw2tApwq0mcSt88", i64 0 },
]
```

理解要点：

- `kind=2`：`useifacemethod.Use` 调用了接口 `I` 的第 0 个方法（`M`），所以记录 `UseIfaceMethod`。
- `target` 是接口类型描述符（`_llgo_iface$...` 形式）。
- `add=0` 表示方法索引为 0（本例只有一个方法）。

### 3) `changeiface`

源码（摘要）：

```go
type I interface{ M() }
type J interface{}
func Use(i I) J { return i }
```

格式化后的 `__llgo_relocs`：

```llvm
@__llgo_relocs = internal unnamed_addr constant [1 x { i32, ptr, ptr, i64 }] [
  { i32, ptr, ptr, i64 } { i32 1, ptr @changeiface.Use, ptr @_llgo_changeiface.J, i64 0 },
]
```

理解要点：

- `i I` 转成 `J`（接口到接口的转换）会触发 `UseIface`。
- 这里 `target` 指向接口类型 `J` 的类型描述符。

### 4) `typeassert`

源码（摘要）：

```go
type I interface{ M() }
type T struct{}
func (T) M() {}
func Use(i I) T { return i.(T) }
```

格式化后的 `__llgo_relocs`：

```llvm
@__llgo_relocs = internal unnamed_addr constant [8 x { i32, ptr, ptr, i64 }] [
  { i32, ptr, ptr, i64 } { i32 4, ptr @"*_llgo_typeassert.T", ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", i64 0 },
  { i32, ptr, ptr, i64 } { i32 4, ptr @"*_llgo_typeassert.T", ptr @"typeassert.(*T).M", i64 0 },
  { i32, ptr, ptr, i64 } { i32 4, ptr @"*_llgo_typeassert.T", ptr @"typeassert.(*T).M", i64 0 },
  { i32, ptr, ptr, i64 } { i32 4, ptr @_llgo_typeassert.T, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", i64 0 },
  { i32, ptr, ptr, i64 } { i32 4, ptr @_llgo_typeassert.T, ptr @"typeassert.(*T).M", i64 0 },
  { i32, ptr, ptr, i64 } { i32 4, ptr @_llgo_typeassert.T, ptr @typeassert.T.M, i64 0 },
  { i32, ptr, ptr, i64 } { i32 1, ptr @typeassert.Use, ptr @_llgo_typeassert.T, i64 0 },
  { i32, ptr, ptr, i64 } { i32 1, ptr @typeassert.Use, ptr @_llgo_string, i64 0 },
]
```

理解要点：

- `kind=1`：`i.(T)` 会记录 `UseIface`，`target` 指向具体类型 `T`。
- 额外的 `UseIface`（`_llgo_string`）来自断言失败时的 panic 消息构造：  
  `type assertion ... failed` 会生成 `string` 并转成 `interface{}`，因此也记录一次接口转换。
- `kind=4`：同 `useiface`，为 `T` 与 `*T` 的方法表记录 `Mtyp/Ifn/Tfn` 的 6 条条目。

## 我的理解

这套 reloc 元数据的目标不是“替代 LLVM 的普通重定位”，而是补齐 Go 语义里**隐式依赖**的那一部分（接口转换、接口方法调用、方法表内的 Ifn/Tfn/Mtyp 引用）。  
有了这些记录后，后续可以在“全局视角”上做更贴近 Go linker 的可达性分析，从而控制哪些方法/包装函数需要保留，哪些可以裁剪。

