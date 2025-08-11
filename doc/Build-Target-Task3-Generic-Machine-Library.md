### goplus/lib/emb
#### machine

goplus/lib (commit bc42bc75) 的 emb package 已从 TinyGo 直接搬迁，但仍需额外适配：

**包的导入**
```go
// machine/machine_esp32.go
package machine

import (
  "device/esp"        // TinyGo 中的系统包，LLGO 中不存在
  "errors"
  "runtime/volatile"
  "unsafe"
)

const deviceName = esp.Device
```
**device**

* device 作为 TinyGo 的硬件相关库，需要迁移到 goplus/lib
* machine 包对 device 包有强依赖

**runtime/interrupt(中断库)**
* 被device包直接依赖
```go
// emb/device/esp32.go
// Pseudo function call that is replaced by the compiler with the actual
// functions registered through interrupt.New.
//
//go:linkname callHandlers runtime/interrupt.callHandlers
func callHandlers(num int)
func HandleInterrupt(num int) {
	switch num {
	case IRQ_WIFI_MAC:
		callHandlers(IRQ_WIFI_MAC)
	case IRQ_WIFI_NMI:
		callHandlers(IRQ_WIFI_NMI)
```
* 大量asm代码，需要重写

* 新建中断：id为中断id，这个id一般是硬件相关的，不同硬件的中断id往往是根据芯片来指定的

```go
// New is a compiler intrinsic that creates a new Interrupt object. You may call
// it only once, and must pass constant parameters to it. That means that the
// interrupt ID must be a Go constant and that the handler must be a simple
// function: closures are not supported.
func New(id int, handler func(Interrupt)) Interrupt
```

**中断编译器处理过程**


#### 前端部分
编译时会去查找 `interrupt.New` 符号，如果检索到了，会生成 `interrupt.handle` 全局结构体，其全局符号名称如下：

`{Package Path}.$interrupt{Interrupt ID}`

例如：
在 `runtime` 下调用 `interruput.New`
`interrupt.New(2, ...)`

会生成

`runtime/interrupt.$interrupt2`，结构体为 `interrupt.handle`:

```go
type handle struct {
	context unsafe.Pointer
	funcPtr uintptr
	Interrupt
}
```

其内容如下：
```
ptr @machine.UART0
i32 ptrtoint (ptr @"(*machine.UART).handleInterrupt$bound" to i32)
%"runtime/interrupt.Interrupt" { i32 2 }
```

`funcPtr` 为 `interrupt.New(2, func(){})` 为 `New`函数第二个参数闭包函数指针, `Interrupt`则是新生成的 `interrupt.Interrupt` 结构体

```go
type Interrupt struct {
	// Make this number unexported so it cannot be set directly. This provides
	// some encapsulation.
	num int
}
```

#### 后端部分

Pass会查找所有存在 `interrupt.handle` 的符号，获得 funcPtr 和 中断id，

例如：`runtime/interrupt.$interrupt2`，解析得到：`runtime/interrupt` 和 中断id为 2

并进行如下替换

```
runtime/interrupt.callHandlers => funcPtr
```


```
  call void @"device/arm.SetPriority"(i32 ptrtoint (ptr @"runtime/interrupt.$interrupt2" to i32), i32 192, ptr undef)
```

=>

```
  call void @"device/arm.SetPriority"(i32 2, i32 192, ptr undef)
```

其中，`i32 ptrtoint (ptr @"runtime/interrupt.$interrupt2" to i32)` => `2`


**空export函数**
该种函数仅存在于 `!baremetal` 的情况，即非裸机编程,以下平台为非裸机平台
- WASM相关: wasi, wasm-unknown, wasm, wasip2, wasip1
- Nordic nRF52系列软设备配置: nrf52-s132v6, nrf52840-s140v7, nrf52833-s113v7, nrf52840-s140v7-uf2, nrf52833-s140v7, nrf52840-s140v6-uf2, nrf51-s110v8
- 游戏机: nintendoswitch
```go
// machine/machine_generic.go
//go:build !baremetal
// .....
//export __tinygo_spi_configure
func spiConfigure(bus uint8, sck Pin, SDO Pin, SDI Pin)

//export __tinygo_spi_transfer
func spiTransfer(bus uint8, w uint8) uint8

//export __tinygo_spi_tx
func spiTX(bus uint8, wptr *byte, wlen int, rptr *byte, rlen int) uint8
```

**汇编代码适配**

TinyGo 允许手写汇编，存在于 device、machine 包中

```go
// machine_esp32c3.go
// wait for Core Clock to ready for configuration
for bus.GetID_REG_UPDATE() > 0 {
  riscv.Asm("nop")
}
```

**特殊字段**

`//go:extern` 关键字，用于链接动态库，静态库中的变量符号内存地址

例子：

```go
//go:extern __flash_data_start
var flashDataStart [0]byte

//go:extern __flash_data_end
var flashDataEnd [0]byte
```

需要验证：可以直接替换成 `//go:linkname`

`//go:inline` 强制函数inline
例子：
```go
//go:inline
func ceil(num uint64, denom uint64) uint64 {
	return (num + denom - 1) / denom
}
```

`//go:align` 强制内存对齐

例子：

```go
//go:align 4
var udd_ep_control_cache_buffer [256]uint8
```


更多函数：
```go
	case "//export", "//go:export":
		if len(parts) != 2 {
			continue
		}
		if hasWasmExport {
			// //go:wasmexport overrides //export.
			continue
		}

		info.linkName = parts[1]
		info.wasmName = info.linkName
		info.exported = true
	case "//go:interrupt":
		if hasUnsafeImport(f.Pkg.Pkg) {
			info.interrupt = true
		}
	case "//go:wasm-module":
		// Alternative comment for setting the import module.
		// This is deprecated, use //go:wasmimport instead.
		if len(parts) != 2 {
			continue
		}
		info.wasmModule = parts[1]
	case "//go:wasmimport":
		// Import a WebAssembly function, for example a WASI function.
		// Original proposal: https://github.com/golang/go/issues/38248
		// Allow globally: https://github.com/golang/go/issues/59149
		if len(parts) != 3 {
			continue
		}
		if f.Blocks != nil {
			// Defined functions cannot be exported.
			c.addError(f.Pos(), "can only use //go:wasmimport on declarations")
			continue
		}
		c.checkWasmImportExport(f, comment.Text)
		info.exported = true
		info.wasmModule = parts[1]
		info.wasmName = parts[2]
	case "//go:wasmexport":
		if f.Blocks == nil {
			c.addError(f.Pos(), "can only use //go:wasmexport on definitions")
			continue
		}
		if len(parts) != 2 {
			c.addError(f.Pos(), fmt.Sprintf("expected one parameter to //go:wasmexport, not %d", len(parts)-1))
			continue
		}
		name := parts[1]
		if name == "_start" || name == "_initialize" {
			c.addError(f.Pos(), fmt.Sprintf("//go:wasmexport does not allow %#v", name))
			continue
		}
		if c.BuildMode != "c-shared" && f.RelString(nil) == "main.main" {
			c.addError(f.Pos(), fmt.Sprintf("//go:wasmexport does not allow main.main to be exported with -buildmode=%s", c.BuildMode))
			continue
		}
		if c.archFamily() != "wasm32" {
			c.addError(f.Pos(), "//go:wasmexport is only supported on wasm")
		}
		c.checkWasmImportExport(f, comment.Text)
		info.wasmExport = name
		info.wasmExportPos = comment.Slash
	case "//go:inline":
		info.inline = inlineHint
	case "//go:noinline":
		info.inline = inlineNone
	case "//go:linkname":
		if len(parts) != 3 || parts[1] != f.Name() {
			continue
		}
		// Only enable go:linkname when the package imports "unsafe".
		// This is a slightly looser requirement than what gc uses: gc
		// requires the file to import "unsafe", not the package as a
		// whole.
		if hasUnsafeImport(f.Pkg.Pkg) {
			info.linkName = parts[2]
		}
	case "//go:section":
		// Only enable go:section when the package imports "unsafe".
		// go:section also implies go:noinline since inlining could
		// move the code to a different section than that requested.
		if len(parts) == 2 && hasUnsafeImport(f.Pkg.Pkg) {
			info.section = parts[1]
			info.inline = inlineNone
		}
	case "//go:nobounds":
		// Skip bounds checking in this function. Useful for some
		// runtime functions.
		// This is somewhat dangerous and thus only imported in packages
		// that import unsafe.
		if hasUnsafeImport(f.Pkg.Pkg) {
			info.nobounds = true
		}
	case "//go:noescape":
		// Don't let pointer parameters escape.
		// Following the upstream Go implementation, we only do this for
		// declarations, not definitions.
		if len(f.Blocks) == 0 {
			info.noescape = true
		}
	case "//go:variadic":
		// The //go:variadic pragma is emitted by the CGo preprocessing
		// pass for C variadic functions. This includes both explicit
		// (with ...) and implicit (no parameters in signature)
		// functions.
		if strings.HasPrefix(f.Name(), "_Cgo_") {
			// This prefix was created as a result of CGo preprocessing.
			info.variadic = true
		}
```

**特殊处理函数**

```go
	case name == "device.Asm" || name == "device/arm.Asm" || name == "device/arm64.Asm" || name == "device/avr.Asm" || name == "device/riscv.Asm":
		return b.createInlineAsm(instr.Args)
	case name == "device.AsmFull" || name == "device/arm.AsmFull" || name == "device/arm64.AsmFull" || name == "device/avr.AsmFull" || name == "device/riscv.AsmFull":
		return b.createInlineAsmFull(instr)
	case strings.HasPrefix(name, "device/arm.SVCall"):
		return b.emitSVCall(instr.Args, getPos(instr))
	case strings.HasPrefix(name, "device/arm64.SVCall"):
		return b.emitSV64Call(instr.Args, getPos(instr))
	case strings.HasPrefix(name, "(device/riscv.CSR)."):
		return b.emitCSROperation(instr)
	case strings.HasPrefix(name, "syscall.Syscall") || strings.HasPrefix(name, "syscall.RawSyscall") || strings.HasPrefix(name, "golang.org/x/sys/unix.Syscall") || strings.HasPrefix(name, "golang.org/x/sys/unix.RawSyscall"):
		if b.GOOS != "darwin" {
			return b.createSyscall(instr)
		}
	case strings.HasPrefix(name, "syscall.rawSyscallNoError") || strings.HasPrefix(name, "golang.org/x/sys/unix.RawSyscallNoError"):
		return b.createRawSyscallNoError(instr)
	case name == "runtime.supportsRecover":
		supportsRecover := uint64(0)
		if b.supportsRecover() {
			supportsRecover = 1
		}
		return llvm.ConstInt(b.ctx.Int1Type(), supportsRecover, false), nil
	case name == "runtime.panicStrategy":
		panicStrategy := map[string]uint64{
			"print": tinygo.PanicStrategyPrint,
			"trap":  tinygo.PanicStrategyTrap,
		}[b.Config.PanicStrategy]
		return llvm.ConstInt(b.ctx.Int8Type(), panicStrategy, false), nil
	case name == "runtime/interrupt.New":
		return b.createInterruptGlobal(instr)
	case name == "runtime.exportedFuncPtr":
		_, ptr := b.getFunction(instr.Args[0].(*ssa.Function))
		return b.CreatePtrToInt(ptr, b.uintptrType, ""), nil
	case name == "(*runtime/interrupt.Checkpoint).Save":
		return b.createInterruptCheckpoint(instr.Args[0]), nil
	case name == "internal/abi.FuncPCABI0":
		retval := b.createDarwinFuncPCABI0Call(instr)
		if !retval.IsNil() {
			return retval, nil
		}
	}
```



**已经处理的内容**
`goplus/lib/emb/runtime/volatile`
将原先的存储和加载指令，直接映射为llgo的指令
```go
// StoreUint64 stores val to the volatile value *addr.
func StoreUint64(addr *uint64, val uint64)
```
```go
// StoreUint64 stores val to the volatile value *addr.
//
//go:linkname StoreUint64 llgo.atomicStore
func StoreUint64(addr *uint64, val uint64)
```



TODO
1.迁移device到lib仓库，修改module path
2.cgo部分代码更改为llgo wrapper形式


tinygo
src/runtime/volatile

