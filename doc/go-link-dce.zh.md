# LLGo 链接期精简（Go 风格 DCE）设计笔记

## 目标
- 在保持行为兼容的前提下减少最终二进制体积。
- 借鉴 Go 链接器的“可达性分析 + 方法表哨兵”模型，解决默认 ELF/COFF 链接器无法识别的 Go 语义依赖。
- 为后续基于 bitcode 的全局 Pass 打基础（标记先齐备，裁剪/回填可以迭代）。

## 现状与痛点
- 编译流程：每个 .go/.c 独立生成 .o（或 .bc），最终一次链接。普通公共符号（函数/全局）靠常规重定位能被裁剪，问题集中在 Go 语义下的隐式依赖。
- Go 特性导致“隐式引用”：
  - itab / 类型元数据中的 Ifn/Tfn 指针：一旦被视为可达，方法就无法被裁剪，即便代码从未调用。
  - 泛型/接口/反射：方法/类型可达性不总能从指令里的直接引用推断出来。
  - 方法表写死真实地址时，链接器看不到“可选”关系，无法做哨兵处理。
- 结果：很多未用的方法/类型元数据被强行保留，二进制膨胀。

### `abi.Type` 与 `abi.Method` 的引用关系示意

**示例 Go 代码（结构体含方法）：**
```go
type Game struct{}
func (g *Game) Load() {}
func (g *Game) initGame() {} // 假设未导出
```

**生成的元数据（简化）：**
```
@_llgo_github.com/.../Game = {
  StructType { ... },
  UncommonType {
    PkgPath, Mcount=2, Xcount=1, Moff=... -> 指向 [2]Method
  },
  [2]Method [
    { Name="Load", Mtyp=&func(...), Ifn=@Game.Load (IFn), Tfn=@Game.Load (Tfn) },
    { Name="initGame", Mtyp=&func(...), Ifn=@Game.initGame, Tfn=@Game.initGame }
  ]
}
```

**符号引用关系：**
- `abi.Type`（Game 的类型描述符）包含 `UncommonType`，其中 `Moff` 指向方法数组 `[2]Method`。
- 每个 `abi.Method` 结构包含：
  - `Name`（方法名符号，可能是全名或包限定名）
  - `Mtyp`（方法函数类型符号 `type.*func`）
  - `Ifn`（接口调用用的 wrapper 符号）
  - `Tfn`（直接方法调用的符号）
- 在默认生成下，`Ifn/Tfn` 都是真实函数指针，链接器视为强依赖，无法判定哪些方法可裁剪。

**当前问题（LLD 视角下）：**
- 即便 `initGame` 从未被调用，方法表中 `Ifn/Tfn` 真实指针让普通链接器认为它“必须可达”。例如 main 引用了 `Game`，普通 LLD 认为整个类型元数据可达，从而也保留了 TFn/IFn（即便没用到），无法裁剪未用方法。

## Go 的做法
### 第 1 阶段：单包内写标记
- 编译器在“单个函数/符号”上记录语义标记（重定位或属性），每个包独立生成自己的 .o：
  - `R_USEIFACE`：在发生类型 -> 接口转换时，标记当前函数符号，目标是具体类型的 `type.*`。  
    示例：`main` 里把 `B` 转为接口 `A`，则 `main.main` 的重定位表里会写一条 `R_USEIFACE`，指向 `type.B`。
  - `R_USEIFACEMETHOD`：接口方法调用，标记当前函数，目标是接口的 `type.*`，附带方法偏移。
  - `R_USENAMEDMETHOD`：只有方法名时的保守标记（泛型接口调用或 `MethodByName("Foo")` 常量名），写在当前函数符号上，目标是方法名字符串。
  - 方法表中的 `R_METHODOFF`：Mtyp/Ifn/Tfn 三条，埋在类型元数据里。

**简易关系示意（单包标记 → 链接期可达）**
（关系：`main.main` 上 R_USEIFACE(type.B) 触达 type.B；某函数上的 R_USENAMEDMETHOD("Foo") 触达方法名 Foo；type.B 的方法表含三条 R_METHODOFF，可按可达性写偏移或哨兵。）

**具体示例：源码 → 对应标记（在单包 .o 内）**
```go
// src/main.go
package main

type B struct{}
func (B) Load() {}
func (B) hidden() {}

type A interface { Load() }

func main() {
    var i A = B{}                 // 这里在 main.main 上写 R_USEIFACE(type.B)
    _ = i.Load()                  // 在 main.main 上写 R_USEIFACEMETHOD (iface type A + 方法偏移)
    _ = reflect.TypeOf(i).MethodByName("Load") // 如果方法名是常量，则在 main.main 上写 R_USENAMEDMETHOD("Load")
}
```

**概念化的标记位置：**
- `main.main` 重定位表：
  - R_USEIFACE -> Sym = type.B
  - R_USEIFACEMETHOD -> Sym = type.A, Add = itab 中 Load 的偏移
  - R_USENAMEDMETHOD("Load") -> Sym = 字符串 "Load"（若方法名常量）
- `type.B` 方法表（uncommon.Methods）：
  - 每个方法的 Mtyp/Ifn/Tfn 三条 R_METHODOFF（Load、hidden 都各三条），后续可达性决定写实偏移或哨兵。
- 链接期 flood：一旦 `main.main` 可达，沿这些标记触达 type.B、接口方法需求、方法表 Ifn/Tfn，再决定写真实偏移或哨兵。

（编译期写标记的源码位置：`cmd/compile/internal/reflectdata/reflect.go` 中 `MarkTypeUsedInInterface/MarkUsedIfaceMethod`；`cmd/compile/internal/walk/expr.go` 中 `usemethod` 等。）

### 第 2 阶段：链接期全局可达性（deadcode）
- 编译期写入标记后，链接器在全局视角做 flood：
  - 根集合：`main`/`main..inittask`、`runtime` 基础符号、插件/导出入口、`runtime.unreachableMethod` 等先标记可达并入队；共享库模式下可保守标记本库全部定义符号。
  - 遍历重定位：普通引用直接标记可达；接口/反射标记驱动方法/类型保活；方法表 `R_METHODOFF` 可达写偏移，不可达写哨兵（如 -1）。
  - 反射/泛型标记（含 `AttrReflectMethod`、`R_USENAMEDMETHOD` 等）决定导出方法保守保活范围。
- 结果：既能保留真正需要的接口/反射路径，又能对未用方法/元数据写哨兵、丢弃代码。
  - 动态导出符号也被视为根（`dynexp` 列表）：所有对外导出的符号在 deadcode 初始化时标记为可达，避免被误剪。

**最简单的 flood 示例（BFS 工作队列）：**
```go
// 根：main
package main

func foo() {}
func bar() {}

func main() {
    foo() // main 的重定位引用 foo
}

func foo() { // foo 中调用 bar
    bar()
}

func bar() {}
```
可达性遍历：根集合 main 入队；弹出 main → 发现引用 foo，mark(foo) 入队；弹出 foo → 发现引用 bar，mark(bar) 入队；弹出 bar 无新引用，队列为空，结束。最终可达：main、foo、bar。

（链接期可达性与回填的源码位置：`cmd/link/internal/ld/deadcode.go` 处理根集合、R_USEIFACE/R_USEIFACEMETHOD/R_USENAMEDMETHOD/R_METHODOFF 等；`cmd/link/internal/ld/data.go` 在写出时对 `R_METHODOFF` 可达写偏移、不可达写 -1 哨兵。）

## LLGo 需要的标记（对齐 Go）
- 接口/反射/泛型相关：
  - `R_USEIFACE`、`R_USEIFACEMETHOD`、`R_USENAMEDMETHOD`、`AttrReflectMethod`。
- 方法表相关：
  - `R_METHODOFF`（Mtyp/Ifn/Tfn 三元组，可写真实偏移或哨兵）。
- 类型元数据保活：
  - `R_USETYPE`（反射/调试的类型描述符）。

## 设计思路（LLGo）
1) **收集阶段（SSA/IR 生成）**  
   - 在生成 LLVM IR 时追加自定义标记表（建议全局 `@__llgo_relocs`），记录上述标记，不改动现有方法表布局。  
   - 方法表的 Mtyp/Ifn/Tfn 生成 `R_METHODOFF` 记录，其他标记在接口转换/调用、反射等处写入。

2) **合并阶段（bitcode）**  
   - 在 `GenBC` 模式下合并所有模块，读取 `@__llgo_relocs`，构建“符号依赖 + 标记”图。

3) **可达性分析与回填（后续迭代）**  
   - 参考 Go `deadcode`：根集合（main/main..inittask 等）→ flood。  
   - 类型 UsedInIface → 方法表候选；`R_METHODOFF` 可填真实偏移；不可达填哨兵（-1/0）。  
   - 反射/泛型标记决定哪些导出方法、同名方法需要保守保活。

4) **输出**  
   - 仅在有标记且启用开关时生成 `@__llgo_relocs`，避免污染旧用例。  
   - 回填哨兵后再交给常规链接器/LLD。

### LLGo 适配时的“根”补充（导出/特殊包）
- Go 链接器会把动态导出符号（dynexp）作为根。LLGo 也需要确保对外导出/特定入口的符号在可达性分析时被标记为根，避免被裁剪。
- LLGo 特有的 C 包和 Python 模块初始化路径：
  - 包名为 `C` 时会触发 `ctx.initFiles(pkgPath, files, pkgName == "C")`，生成 C 层导出符号。
  - Python 模块则通过 `ctx.initPyModule()` 初始化，对应的导出入口也应作为根。
- 适配建议：在可达性根集合阶段，将导出符号、C 包导出入口、py 模块初始化符号一并标记为可达，再结合标记表做 flood/裁剪。

## 示例（为什么普通链接器不够）
- 结构体 `T` 有未使用的方法 `Hidden`，但它的 Ifn/Tfn 写入类型元数据。普通链接器看到真实函数指针，视为强依赖，无法删掉 `Hidden`。  
- 有了 `R_METHODOFF`：若 flood 判定 `Hidden` 不可达，则在方法表里写 -1，接口/反射不会调到，代码体可被丢弃。

## 目前进展
- 增加可选开关 `GenRelocLL`，收集方法表的 `R_METHODOFF` 并输出 `@__llgo_relocs`（仅当有记录且开关开启）。  
- 默认不生成标记表，避免旧用例差异。  
- 后续需要补齐接口/反射/泛型的标记收集与 flood/回填逻辑。

## 后续计划（建议）
- 扩展 SSA 收集：接口转换/调用、反射 MethodByName、泛型接口调用写入对应标记。  
- 合并后实现简化 flood：先保守处理 UsedInIface + 方法表哨兵，验证体积收益。  
- 再细化反射保活策略、R_USETYPE 等，逐步对齐 Go 的 deadcode 行为。

## 关于重定位信息的取舍（复用现有 .o vs IR 额外标记）
- 常规函数/数据引用：编译器已在 .o/.bc 里生成标准重定位表（如 R_ADDR/R_CALL 等），链接器本就可用这些重定位建立 A→B 依赖，无需在 IR 里重复记录普通引用。
- Go 特有语义：标准重定位无法表达 R_USEIFACE/R_USEIFACEMETHOD/R_USENAMEDMETHOD/R_METHODOFF 等“标记型”依赖，IR/BC 需要额外记录（例如 `@__llgo_relocs`），合并后用于可达性决策与哨兵回填。
- 要复用“全部引用信息”，必须能读取 .o（或 LLVM 的等价引用）；仅仅拼成一个 BC 并不能替代对标准重定位的读取。拼 BC 的价值在于让自定义标记和方法表在全局视角下统一处理。
- 推荐分工：  
  - 基础可达性：直接依赖 .o/.bc 自带的标准重定位。  
  - Go 语义裁剪：IR/BC 额外记录标记型重定位（接口/反射/方法表等），全局合并后结合 flood 做决策。
- LLGo 包的复用场景：编译出来的 .o 可能被其他项目/链接过程复用，因此需要把 Go 语义相关的标记型重定位也落盘到 .o（如 R_USEIFACE/R_USEIFACEMETHOD/R_USENAMEDMETHOD/R_METHODOFF），以便最终链接时仍能按可达性裁剪并回填哨兵，而不仅限于本地 IR 合并时生效。
- 当前问题：LLGo 的最终写出使用 LLVM lld，lld 不理解 Go 特有标记/哨兵逻辑。若不提前处理，可达性裁剪和方法表回填不会发生，需在前置阶段（IR 合并/自定义 pass）或自定义链接处理先完成 Go 语义的裁剪与哨兵写入，再交给 lld 做常规布局。
- 未解问题：如果最终仍由 lld 落盘，如何根据可达性分析结果对元数据做“死码消除”（如把不可达方法的 `R_METHODOFF` 回填为 -1）？需要在 lld 之前有一层自定义处理（自有链接步骤或 LLVM pass）来修改常量初始化/重定位结果，否则 lld 只会按标准重定位写真实地址，无法替我们写哨兵。
- 进一步顾虑：全局元数据分散在各包 .o 内，且可能引入第三方 .o/.a。若只在本地 IR 层裁剪/删减，已有 .o 里的数据删不掉；跨包依赖（A 依赖 B、C；A 裁剪了 C，但 B 实际引用 C）会出问题。要可靠裁剪，必须在最终链接时能处理所有输入 .o 的标记并改写其元数据，否则外部 .o 不受本地 IR 裁剪影响。

### 两种可能的落地方案（当前结论）
1) **前置处理（可行但有限）**：合并 bitcode 或读取 .o，自定义工具/LLVM pass 做可达性分析和元数据改写，生成新的 .o 再交给 lld。局限：已有外部 .o/.a 内的元数据无法在这一阶段被改写（除非能解析并重写所有输入），对外复用场景仍受限。
2) **定制 lld（成本高）**：修改/扩展 lld 让其识别 Go 语义标记并在写出时按可达性回填哨兵、裁剪元数据。代价大，超出常规使用。
