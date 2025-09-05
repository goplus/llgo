# LLGo Embedded Development Command Line Options

## Flags

- `-o <file>` - Specify output file name
- `-target <platform>` - Specify target platform for cross-compilation
- `-file-format <format>` - Convert to specified format (**requires `-target`**)
  - Supported: `elf` (default), `bin`, `hex`, `uf2`, `zip`, `img`
- `-emulator` - Run using emulator (auto-detects required format)
- `-d <device>` - Target device for flashing or testing

## Commands

### llgo build
Compile program to output file.
- No `-target`: Native executable
- With `-target`: ELF executable (or `-file-format` if specified)

### llgo run  
Compile and run program.
- No `-target`: Run locally
- With `-target`: Run on device or emulator

### llgo test
Compile and run tests.
- No `-target`: Run tests locally
- With `-target`: Run tests on device or emulator
- Supports `-emulator` and `-d` flags

### llgo install
Install program or flash to device.
- No `-target`: Install to `$GOPATH/bin`
- With `-target`: Flash to device (use `-d` to specify device)

## Examples

```bash
# Native development
llgo build hello.go                              # -> hello
llgo build -o myapp hello.go                     # -> myapp
llgo run hello.go                                # run locally
llgo install hello.go                            # install to bin

# Cross-compilation
llgo build -target esp32 hello.go                # -> hello (ELF)
llgo build -target esp32 -file-format bin hello.go  # -> hello.bin
llgo run -target esp32 hello.go                  # run on ESP32
llgo run -target esp32 -emulator hello.go        # run in emulator
llgo test -target esp32 -d /dev/ttyUSB0          # run tests on device
llgo test -target esp32 -emulator                # run tests in emulator
llgo install -target esp32 -d /dev/ttyUSB0 hello.go  # flash to specific device
```