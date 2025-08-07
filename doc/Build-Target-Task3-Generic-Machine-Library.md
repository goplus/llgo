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

