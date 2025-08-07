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

**runtime/interrupt**
* 被device包依赖
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

**汇编代码适配**

TinyGo 允许手写汇编，存在于 device、machine 包中

```go
// machine_esp32c3.go
// wait for Core Clock to ready for configuration
for bus.GetID_REG_UPDATE() > 0 {
  riscv.Asm("nop")
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

