TinyGo provides two inline assembly interfaces:
- `device.Asm(asm string)` - Simple control instructions, no return value https://github.com/goplus/llgo/issues/1216
- `device.AsmFull(asm string, regs map[string]interface{}) uintptr` - Advanced assembly, supports operands and return values

This document focuses on designing the implementation of the advanced assembly form `asmFull`:

#### Function Signature & Mapping

User declares the advanced assembly function and maps it to the `llgo.asm` compiler directive:

```go
// Advanced assembly function declaration (corresponding to TinyGo device.AsmFull)  
//go:linkname asmFull llgo.asm
func asmFull(instruction string, regs map[string]interface{}) uintptr
```

**Compiler mapping**: Both `asm(string)` and `asmFull(string, map)` map to the same `llgo.asm` directive, distinguished by parameter count (1 vs 2 parameters).

#### Parameter Usage & Features

Design based on TinyGo, supporting:

**Parameters:**
- `instruction string` - Assembly instruction template with placeholder support
- `regs map[string]interface{}` - Input operand mapping (key: placeholder name, value: actual value)
- `return uintptr` - Output register value when instruction contains output placeholder

**Supported features:**

1. **Placeholder system**
   - `{}` → `$0` (output operand, with return value)
   - `{name}` → `$1, $2...` (input operands, by order of appearance)

2. **Automatic constraint string generation**
   - `=&r` : Output to general register
   - `r` : Input from general register  

3. **Return value mechanism**
   - Returns `uintptr` when `{}` placeholder exists
   - Returns `void` when no output
   - **Design constraint**: Fixed single output return value (referencing TinyGo AsmFull's simplified design, balancing functionality and implementation complexity)

#### Usage

```go
func examples() {
    // Advanced assembly - with return value
    pc := asmFull("mov {}, sp", nil)                    // Read stack pointer
    
    // Advanced assembly - with input parameters
    asmFull("msr tpidr_el0, {value}", map[string]interface{}{
        "value": 0x12345678,
    })
}
```

#### Expected LLVM IR Mapping Rules

Consistent interface and transformation approach with TinyGo, our expected transformation rules:

**Rule 1: Input parameters only** *(no return value, for control instructions)*
```go
asmFull("mov r0, {value}", map[string]interface{}{
    "value": uint32(42),
})
```
Expected IR:
```llvm
call void asm sideeffect "mov r0, ${0}", "r"(i32 42)
```

**Rule 2: Output + input parameters** *(with return value, for data transfer)*  
```go
result := asmFull("mov {}, {value}", map[string]interface{}{
    "value": uint32(42),
})
// {} placeholder effect: allocate output register, return register content as result
```
Expected IR:
```llvm
%0 = call i32 asm sideeffect "mov $0, ${1}", "=&r,r"(i32 42)
```

**Rule 3: Output parameters only** *(with return value, for reading registers/status)*
```go
result := asmFull("mov {}, r0", nil)
// {} placeholder effect: allocate output register, copy r0 value to output register, return as result
```
Expected IR:
```llvm
%0 = call i32 asm sideeffect "mov $0, r0", "=&r"()
```

#### Implementation

Use the **same compiler directive `llgo.asm`**, distinguish functionality through **parameter count**:

