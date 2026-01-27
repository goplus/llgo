# IRGraph 用例说明（直连调用边）

本文档说明 `cl/irgraph/_testdata/*` 的用例设计与预期输出。  
目标是覆盖 LLGo 生成 LLVM IR 时的“直接调用边（direct call）”行为，并记录常见的运行时辅助调用（runtime helper）在图中的表现。

## 生成方式
- 测试入口：`cl/irgraph/irgraph_test.go`  
- 每个子目录包含源码与期望输出：`in.go` / `out.txt`  
- 更新方式：将 `updateTestdata` 临时置 `true`，执行 `go test ./cl/irgraph` 后自动写回 `out.txt`，再改回 `false`。
  - Reloc 用例位于 `cl/irgraph/_testdata_reloc/*`，更新时需将 `updateRelocTestdata` 置 `true`。

## 输出格式
每行一条边：
```
call <caller> -> <callee>
ref  <holder> -> <callee>
reloc(<kind>) <owner> -> <target>
```
`call` 表示直接调用边；`ref` 表示函数值/全局初始化中对函数的引用（等价于常规重定位引用）。  
当前仍以 **直接调用**为主，函数指针/接口分派的“间接调用”本身不会形成 `call` 边，除非编译器生成了显式的 wrapper。

`reloc(<kind>)` 表示 **SSA 阶段记录的隐式依赖**，由 `__llgo_relocs` 生成，常见 kind：
- `useiface`：类型被转换为接口
- `useifacemethod`：接口方法调用
- `usenamedmethod`：通过名称查找的方法（如 `MethodByName("Foo")`）
- `reflectmethod`：反射方法访问（保守保活导出方法）
- `methodoff`：类型方法表中的方法项（Ifn/Tfn/Mtyp）

补充说明（`ref` 的来源）：
- **全局初始化**：`var F = B` 这类全局函数值会在 `init` 中写入 stub，因此会出现 `ref init -> __llgo_stub.*`。
- **指令操作数**：如 `f := B`、`takes(B)` 等将函数值作为操作数传递，会出现 `ref A -> __llgo_stub.*`。
- **类型元数据**：某些用例会出现 `ref` 指向 `memequal/structequal/typehash` 等 runtime helper，这是类型描述符中的函数指针引用，属预期行为。

---

## 用例列表与说明

### basic
- 目的：最小 direct call（A 调 B）。
- 预期：`call foo.A -> foo.B`。

### chain
- 目的：链式调用（A→B→C）。
- 预期：`A -> B`、`B -> C`。

### multicall
- 目的：同一函数中多次 direct call。
- 预期：`A -> B`、`A -> C`。

### recursion
- 目的：递归自调用。
- 预期：`A -> A`。

### mutual
- 目的：互递归调用。
- 预期：`A -> B`、`B -> A`。

### multifile
- 目的：同包多文件调用。
- 预期：`A -> B`（跨文件仍能解析为 direct call）。

### crosspkg
- 目的：跨包调用。
- 预期：`crosspkg.A -> .../crosspkg/foo.B`，同时 `crosspkg.init -> .../foo.init`。  
  说明：引用外部包会触发该包的 `init` 依赖，这是预期行为。

### initcall
- 目的：单个 init 触发调用链。
- 预期：`init -> init#1 -> A -> B`。  
  说明：Go/LLGo 会生成 `init#N` 拆分函数，属于编译器特性。

### initmulti
- 目的：多个 init 函数的链条。
- 预期：`init -> init#1`、`init -> init#2`，再分别调用 `A/B`。  
  说明：多个 `init` 会展开成多条分支，这是预期行为。

### varinit
- 目的：全局变量初始化触发调用。
- 预期：`init -> B`。  
  说明：全局变量的初始化逻辑会落在 `init` 中。

### globalmulti
- 目的：多个全局变量初始化。
- 预期：`init -> A` 与 `init -> B` 两条边。

### chanops
- 目的：通道相关运行时路径。
- 预期：`A -> runtime.NewChan`、`A -> runtime.ChanSend`、`A -> runtime.ChanRecv`。  
  说明：通道操作由运行时实现，出现这些边属预期行为。

### mapops
- 目的：map 操作触发运行时调用。
- 预期：  
  - `A -> runtime.MakeMap / MapAssign / MapAccess1 / AllocU`  
  - 可能出现 `__llgo_stub.runtime.memequal*` 的 wrapper 边  
  说明：map 需要键比较函数与运行时 map 实现，出现 memequal stub 属预期。

### sliceappend
- 目的：slice append 的运行时路径。
- 预期：`A -> runtime.SliceAppend`，可能伴随 `AllocZ`。  
  说明：append 会走运行时扩容逻辑。

### runtimealloc
- 目的：显式分配触发 runtime helper。
- 预期：`Use -> runtime.AllocZ`。  
  说明：`new(T)` 走运行时分配路径，出现 `AllocZ` 是预期行为。

### ptrrecv
- 目的：指针接收者方法调用 + 局部变量零值初始化。
- 预期：  
  - `A -> (*T).M`  
  - `(*T).M -> B`  
  - `A -> runtime.AllocZ`  
  说明：局部 `var t T` 会触发零值分配路径，从而出现 `runtime.AllocZ`。

### methodcall
- 目的：普通方法调用（值接收者）。
- 预期：  
  - `A -> T.M`  
  - `T.M -> B`  
  - 可能出现 `(*T).M -> T.M` 的 wrapper 边（由编译器生成）。

### methodvalue
- 目的：绑定方法值（`f := t.M`）。
- 预期：  
  - `T.M$bound -> T.M`  
  - `T.M -> B`  
  - `A -> runtime.AllocU`（方法值闭包环境分配）  
  说明：方法值会生成 `T.M$bound` wrapper，且可能分配闭包环境。

### methodvalueglobal
- 目的：全局方法值（`var G = t.M`）。
- 预期：  
  - `T.M$bound -> T.M`  
  - `init -> runtime.AllocU`  
  - `ref init -> T.M$bound`  
  说明：全局方法值在 `init` 里初始化，并为绑定环境分配内存。  
  对应源码：`var G = t.M`。

### methodvaluereturn
- 目的：返回方法值（`return t.M`）。
- 预期：  
  - `T.M$bound -> T.M`  
  - `A -> runtime.AllocU`  
  - `ref A -> T.M$bound`  
  说明：返回方法值会构造绑定 wrapper，并在函数内分配环境。  
  对应源码：`func A() func() { var t T; return t.M }`。

### methodvaluearg
- 目的：方法值作为参数（`takes(t.M)`）。
- 预期：  
  - `T.M$bound -> T.M`  
  - `A -> runtime.AllocU`  
  - `ref A -> T.M$bound`  
  - `call A -> takes`  
  说明：参数传递会以 `ref` 记录方法值引用，同时保留对 `takes` 的直接调用边。  
  对应源码：`func A(){ var t T; takes(t.M) }`。

### ifacecall
- 目的：接口方法调用触发 itab 与接口相关运行时逻辑。
- 预期：  
  - `A -> runtime.IfacePtrData / NewItab / AllocU`  
  - `__llgo_stub.runtime.interequal / memequal*`  
  - `(*T).M -> T.M -> B`  
  说明：接口值构造与调用会触发 itab 构建和接口比较 helper，出现 stub 边属预期。

### ifaceassert
- 目的：类型断言触发接口判定与 itab 逻辑。
- 预期：  
  - `A -> runtime.Implements / NewItab / IfacePtrData`  
  - `__llgo_stub.runtime.interequal / memequal*`  
  - `T.M -> B`  
  说明：断言路径会调用接口实现检测，属于预期运行时边。

### typeswitch
- 目的：type switch 触发类型比较与方法调用。
- 预期：  
  - `A -> T.M`、`T.M -> B`  
  - `__llgo_stub.runtime.memequal*`  
  说明：类型判定与等值比较使用 memequal helper。

### reflectcall
- 目的：反射调用路径。
- 预期：  
  - `A -> reflect.ValueOf / reflect.Value.Kind`  
  - `reflect.init`  
  - `__llgo_stub.runtime.memequal*`  
  说明：反射包初始化与反射调用路径会引入对应运行时依赖。

### funcvalue
- 目的：函数值调用（`f := B; f()`）。
- 预期：`A -> B`。  
  说明：在 LLGo 当前实现中，该场景会被降为直接调用，因此出现 direct call 边。

### funcptrglobal
- 目的：全局函数指针引用（`var F = B`）。
- 预期：  
  - `ref init -> __llgo_stub.B`  
  - `__llgo_stub.B -> B`  
 说明：函数值会被降为 `code+data` 形式，`init` 中把 stub 写入全局变量，因此出现 `ref` 边。  
  对应源码：`var F = B`。

### funcptrlocal
- 目的：局部函数指针返回（`f := B; return f`）。
- 预期：  
  - `ref A -> __llgo_stub.B`  
  - `__llgo_stub.B -> B`  
 说明：返回函数值时会引用 stub，形成 `ref` 边。  
  对应源码：`func A() func() { f := B; return f }`。

### funcptrarg
- 目的：函数指针作为参数传递（`takes(B)`）。
- 预期：  
  - `call A -> takes`  
  - `ref A -> __llgo_stub.B`  
  - `__llgo_stub.B -> B`  
 说明：参数传递是“引用边”，调用 `takes` 是普通 direct call 边。  
  对应源码：`func A() { takes(B) }`。

### funcptrstruct
- 目的：函数指针嵌入到结构体字面量（`var G = Holder{F: B}`）。
- 预期：  
  - `ref init -> __llgo_stub.B`  
  - `__llgo_stub.B -> B`  
  说明：全局复合字面量会在 `init` 中完成初始化，因此以 `ref init -> stub` 表现。  
  对应源码：`var G = Holder{F: B}`。

### funcptrslice
- 目的：函数指针嵌入到切片字面量（`var G = []func(){B}`）。
- 预期：  
  - `ref init -> __llgo_stub.B`  
  - `__llgo_stub.B -> B`  
  - `call/ref init -> runtime.AllocZ`  
  说明：切片字面量需要分配 backing array，因此会出现 `AllocZ` 的调用与引用。  
  对应源码：`var G = []func(){B}`。

### funcptrmap
- 目的：函数指针嵌入到 map 字面量（`var G = map[string]func(){"x": B}`）。
- 预期：  
  - `ref init -> __llgo_stub.B`  
  - `__llgo_stub.B -> B`  
  - `call/ref init -> runtime.MakeMap / MapAssign / AllocU`  
  - 可能出现大量 `ref ... -> memequal/strequal/typehash/arrayequal`  
  说明：map 字面量会走运行时构建路径，并引入键比较/哈希函数的类型元数据引用，所以输出较“噪”。  
  对应源码：`var G = map[string]func(){"x": B}`。

### closure
- 目的：闭包函数生成与调用。
- 预期：  
  - `A -> A$1`（闭包函数）  
  - `A$1 -> B`  
  说明：闭包被拆成独立函数 `$1`，调用链应体现为 direct call。

### goroutine
- 目的：go 语句生成新的执行入口。
- 预期：  
  - `A -> runtime.CreateThread`  
  - `A -> malloc`  
  - `__llgo_stub.* -> _llgo_routine$1`  
  - `_llgo_routine$1 -> free`  
  说明：go 语句会生成 `_llgo_routine$1`，并通过 stub 间接调度；运行时线程创建和内存分配是预期行为。

---

# Reloc 用例说明（隐式依赖）

以下用例来自 `cl/irgraph/_testdata_reloc/*`，用于验证 **SSA 记录的 reloc 元信息** 是否正确进入 IRGraph。

### useiface
- 目的：类型被转换为接口（UsedInIface）。
- 预期：  
  - `reloc(useiface) useiface.A -> _llgo_useiface.T`  
  - 一组 `reloc(methodoff) _llgo_useiface.T -> <method>`  
  说明：`A` 中 `sink = t` 触发接口转换；类型元数据携带方法表指针属于预期。

### useifacemethod
- 目的：接口方法调用（记录方法索引/接口类型）。
- 预期：  
  - `reloc(useifacemethod) useifacemethod.Use -> _llgo_iface$...`  
  说明：接口类型符号是编译器生成的匿名接口描述符，名称带 hash 属预期行为。

### reflectmethod
- 目的：最小的 `Value.MethodByName("Foo")` 常量路径。
- 预期：  
  - `reloc(usenamedmethod) reflectmethod.A -> methodname:Foo`  
  - `reloc(useiface) reflectmethod.A -> _llgo_reflectmethod.T`  
  - 若干 `reloc(methodoff)` 指向 `T` 的方法表  
  说明：常量字符串走 `usenamedmethod`，不需要 `reflectmethod` 标记。

### reflectmethodvar
- 目的：`Value.MethodByName(name)`（非静态字符串）。
- 预期：  
  - `reloc(reflectmethod) reflectmethodvar.A -> reflectmethodvar.A`  
  - `reloc(useiface) reflectmethodvar.A -> _llgo_reflectmethodvar.T`  
  - 若干 `reloc(methodoff)`  
  说明：无法静态确定方法名时，保守用 `reflectmethod` 标记。

### reflectmethodindex
- 目的：`Value.Method(0)` 索引访问。
- 预期：  
  - `reloc(reflectmethod) reflectmethodindex.A -> reflectmethodindex.A`  
  - `reloc(useiface) reflectmethodindex.A -> _llgo_reflectmethodindex.T`  
  - 若干 `reloc(methodoff)`  
  说明：索引访问同样需要保守保活导出方法。

### reflecttypemethod
- 目的：`Type.MethodByName("Foo")` 常量路径。
- 预期：  
  - `reloc(usenamedmethod) reflecttypemethod.A -> methodname:Foo`  
  - `reloc(useiface) reflecttypemethod.A -> _llgo_reflecttypemethod.T`  
  - 若干 `reloc(methodoff)`  
  说明：`reflect.Type` 版本的 MethodByName 也应触发 `usenamedmethod`。

### reflectcombo
- 目的：混合 Value/Type + 常量/非常量 + 索引访问的组合场景。
- 预期：  
  - 同时出现 `reloc(reflectmethod)` 与 `reloc(usenamedmethod)`  
  - 以及 `reloc(useiface)` 与若干 `reloc(methodoff)`  
  说明：用于验证多条标记在同一函数内共存的情况。

---

## 备注与已知限制
- **接口调用/反射调用** 属于间接调用，直连图不会显示真实目标方法边。  
- 若只看 direct call/ref，需结合 `reloc(useiface/useifacemethod/methodoff/reflectmethod)` 才能理解隐式依赖。
- 运行这些测试时，建议在命令行设置 `LLGO_ROOT=/path/to/llgo`，确保运行时包可从源码导入。
