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

### 1. Package Migration
#### 1.1 Device Package Migration
#### 1.2 Machine Package Adaptation

### 2. Runtime Integration
#### 2.1 Interrupt System Adaptation
#### 2.2 Assembly Code Conversion

### 3. Build System Integration
#### 3.1 Build-Tags Integration
#### 3.2 Target-Specific Compilation

### 4. Hardware Abstraction Interfaces
#### 4.1 GPIO Interface
#### 4.2 SPI Interface
#### 4.3 I2C Interface
#### 4.4 UART Interface

### 5. Special Pragma Support
#### 5.1 Memory Layout Pragmas
#### 5.2 Export Function Pragmas
#### 5.3 Inline Assembly Adaptation
