## Overview
This issue tracks the implementation of Task 3 from the overall cross-platform compilation design (#1176): Generic Machine Library providing cross-platform hardware abstraction interfaces for GPIO, SPI, I2C, UART based on TinyGo's hardware abstraction design.

The `goplus/lib/emb` package (commit bc42bc75) has been migrated from TinyGo but requires significant adaptation for LLGO compiler integration. Key challenges include missing `device` package dependencies, complex interrupt system requiring compiler frontend/backend cooperation, and extensive use of TinyGo-specific pragmas and inline assembly that need LLGO adaptation.

Unlike TinyGo's approach, we can build the generic machine library together with Task 4: Hardware-Specific Machine Library, similar to LLGO's current method to implement Go system library.

## Scope
Generic hardware abstraction layer implementation including:

- **Package Migration**: TinyGo `device` package migration to `goplus/lib/emb` and `machine` package adaptation
- **Runtime Integration**: Interrupt system adaptation and assembly code conversion for LLGO compiler
- **Build System Integration**: Build-tags integration and target-specific compilation support
- **Hardware Abstraction Interfaces**: Cross-platform GPIO, SPI, I2C, UART interfaces
- **Special Pragma Support**: TinyGo-specific pragma adaptation (`//go:extern`, `//go:align`, `//export`, etc.)

## Implementation Details

## Implementation Details

### 1. Package Migration
#### 1.1 Device Package Migration

**Current Status**: TinyGo `device` package needs to be migrated to `goplus/lib/emb` with module path changes.

**Importance**: The `device` package is the core component of the Hardware Abstraction Layer (HAL), heavily depended upon by the `machine` package, and serves as the foundation of the entire embedded ecosystem.

**Key Components**:
- **Hardware register definitions**: Platform-specific memory-mapped I/O registers
- **Interrupt definitions**: Hardware interrupt ID constants and handlers
- **Assembly functions**: Low-level hardware access routines

**Dependency Relationship**:
```go
// machine package's strong dependency on device package
// machine/machine_esp32.go
package machine

import (
    "device/esp"        // Required dependency: hardware constants and register definitions
    "errors"
    "runtime/volatile"
    "unsafe"
)

const deviceName = esp.Device  // Directly uses hardware definitions from device package
```

**Migration Steps**:
```go
// Before (TinyGo)
import "device/esp"

// After (LLGO)
import "github.com/goplus/lib/emb/device/esp"
```

**Challenges**:
- **Module path updates**: All imports need to change from `device/*` to `github.com/goplus/lib/emb/device/*`
- **Symbol dependencies**: Device-specific constants and registers must be preserved to ensure machine package functionality
- **Platform coverage**: Support for 100+ embedded targets from existing `targets/` directory
- **HAL integrity**: As the HAL foundation, any missing components will affect the entire hardware abstraction layer
#### 1.2 Machine Package Adaptation

**Current Status**: The `machine` package has been migrated from TinyGo to `goplus/lib/emb`, but still requires resolution of `device` package dependencies and LLGO compiler adaptation.

**Core Functionality**:
- **Hardware abstraction interfaces**: Cross-platform hardware interfaces for GPIO, SPI, I2C, UART, etc.
- **Platform-specific implementations**: Concrete functionality based on hardware definitions provided by the `device` package
- **Volatile memory operations**: Hardware register access through `runtime/volatile`

**Current Dependency Issues**:
```go
// machine/machine_esp32.go - Current existing issues
package machine

import (
    "device/esp"        // TinyGo system package, missing in LLGO
    "errors"
    "runtime/volatile"  // Already adapted: goplus/lib/emb/runtime/volatile
    "unsafe"
)

const deviceName = esp.Device  // Depends on hardware constants from device package
```

**Adaptation Strategy**:
- **Dependency path updates**: Update all `device/*` imports to `github.com/goplus/lib/emb/device/*`
- **Volatile operations integration**: Utilize the already adapted `goplus/lib/emb/runtime/volatile`:
  ```go
  // Completed volatile operation adaptation
  //go:linkname StoreUint64 llgo.atomicStore
  func StoreUint64(addr *uint64, val uint64)
  
  //go:linkname LoadUint64 llgo.atomicLoad  
  func LoadUint64(addr *uint64) uint64
  ```
- **Platform compatibility**: Maintain consistency with TinyGo, supporting the same embedded target platforms

### 2. Runtime Integration
#### 2.1 Interrupt System Adaptation

**Core Challenge**: TinyGo's interrupt system requires deep integration between compiler frontend and backend, LLGO needs to implement equivalent compiler support.

**Compiler Frontend Processing**:
- **Interrupt registration detection**: Scan source code for `interrupt.New` function calls
- **Global symbol generation**: Create `{PackagePath}.$interrupt{InterruptID}` symbols for each interrupt
- **Struct generation**: Create `interrupt.handle` structs to store interrupt information

**Interrupt Registration Flow**:
```go
// Source code example
interrupt.New(2, handlerFunc)

// Compiler-generated global symbol
runtime/interrupt.$interrupt2

// Generated struct content
type handle struct {
    context unsafe.Pointer
    funcPtr uintptr      // Function pointer to handlerFunc
    Interrupt           // { num: 2 }
}
```

**Compiler Backend Processing**:
- **Symbol lookup**: Scan all `interrupt.handle` symbols, extract interrupt IDs and function pointers
- **Function replacement**: Replace `runtime/interrupt.callHandlers` with specific interrupt handler function calls
- **Parameter optimization**: Optimize symbol address conversions to direct interrupt ID constants

**Code Transformation Example**:
```go
// Before transformation
call void @"runtime/interrupt.callHandlers"(i32 %interrupt_num)
call void @"device/arm.SetPriority"(i32 ptrtoint (ptr @"runtime/interrupt.$interrupt2" to i32), i32 192, ptr undef)

// After transformation
call void @handlerFunc(ptr %context)  // Direct handler function call
call void @"device/arm.SetPriority"(i32 2, i32 192, ptr undef)  // Optimized to constant
```

#### 2.2 Assembly Code Conversion

**Core Challenge**: TinyGo contains extensive platform-specific inline assembly code that needs to be converted to LLGO-supported inline assembly syntax.

**TinyGo Assembly Code Example**:
```go
// wait for Core Clock to ready for configuration
for bus.GetID_REG_UPDATE() > 0 {
    riscv.Asm("nop")
}
```

**LLGO Compiler Processing**:
- **Special function recognition**: Compiler needs to recognize and handle assembly calls like `device.Asm`, `device/riscv.Asm`
- **Inline assembly conversion**: Convert to LLGO-supported inline assembly syntax

### 3. Build-Tags Integration

**Core Requirement**: Need to correctly carry build-tags from targets when building Go packages.

**Importance**: The HAL (Hardware Abstraction Layer) libraries depend on target-specific build-tags to compile the correct hardware drivers for each platform.

**Build-Tags Sources**:
- **Target configuration files**: `build-tags` field defined in each `targets/*.json` file
- **Platform-specific tags**: Such as `baremetal`, `cortex_m`, `esp32c3`, `rp2040`, etc.
- **Architecture tags**: Such as `arm`, `riscv`, `wasm`, etc.

**Integration Requirements**:
- **Tag propagation**: Correctly propagate build-tags from target configuration to Go compilation process
- **Conditional compilation**: Ensure platform-specific code is conditionally compiled based on correct tags

**Related Implementation**: [PR #1214](https://github.com/goplus/llgo/pull/1214) - Build-tags integration for HAL libraries

### 4. Special Pragma Support
#### 4.1 Memory Layout Pragmas

**Core Challenge**: TinyGo uses special pragma directives for memory management and layout control, LLGO needs to provide equivalent support.

**Key Pragma Directives**:

**`//go:extern` - External Symbol Linking**:
```go
//go:extern __flash_data_start
var flashDataStart [0]byte
//go:extern __flash_data_end
var flashDataEnd [0]byte
```
- **Purpose**: Link variable symbol memory addresses from dynamic/static libraries
- **LLGO Adaptation**: Verify if it can be directly replaced with `//go:linkname`

**`//go:align` - Memory Alignment**:
```go
//go:align 4
var udd_ep_control_cache_buffer [256]uint8
```
- **Purpose**: Force variable memory alignment, ensuring hardware access requirements
- **Importance**: Critical requirement for hardware register access in embedded systems
#### 4.2 Export Function Pragmas
#### 4.3 Inline Assembly Adaptation


## Dependencies

**Prerequisites:**
- **Task 1 (#1194) - Basic Target Parameter Support** ✅ (Completed)
- **Task 2 (TBD) - Multi-Platform LLVM Support** (Required for embedded target compilation support)

**Related Issues:**
- **#1214 - Build-tags integration** (Build system integration for target-specific compilation)

**External Dependencies:**
- **goplus/lib repository** - Host repository for `emb` package
- **LLGO compiler support** - Special pragma and interrupt handling capabilities
