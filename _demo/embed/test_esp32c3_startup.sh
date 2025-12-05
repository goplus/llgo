#!/bin/bash
# ESP32-C3 Startup and .init_array Regression Test
#
# Verifies:
# 1. _start uses newlib's __libc_init_array (not TinyGo's start.S)
# 2. .init_array section is merged into .rodata section
# 3. .rodata (including .init_array) is included in BIN file

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEMP_DIR=$(mktemp -d)
TEST_GO="$TEMP_DIR/main.go"
TEST_ELF="test.elf"
TEST_BIN="test.bin"

cleanup() {
    rm -rf "$TEMP_DIR"
}
trap cleanup EXIT

# Check if esptool.py is installed
# esptool.py is required to parse ESP32-C3 BIN file format and verify
# that .rodata segment (containing .init_array) is included in the firmware
if ! command -v esptool.py &> /dev/null; then
    echo "✗ FAIL: esptool.py not found"
    echo "Please install: pip3 install esptool==5.1.0"
    exit 1
fi

echo "==> Creating minimal test program..."
cat > "$TEST_GO" << 'EOF'
package main

func main() {}
EOF

echo "==> Building for ESP32-C3 target (ELF + BIN)..."
cd "$TEMP_DIR"
llgo build -target=esp32c3 -o test -obin "$TEST_GO"

if [ ! -f "$TEST_ELF" ]; then
    echo "✗ FAIL: Build failed, $TEST_ELF not found"
    exit 1
fi

if [ ! -f "$TEST_BIN" ]; then
    echo "✗ FAIL: BIN file not generated, $TEST_BIN not found"
    exit 1
fi

echo ""
echo "=== Test 1: Verify newlib startup (calls __libc_init_array) ==="

# Disassemble _start and check for __libc_init_array call
if llvm-objdump -d "$TEST_ELF" | grep -A50 "<_start>:" | grep "__libc_init_array" > /dev/null; then
    echo "✓ PASS: _start calls __libc_init_array"
    echo "        ESP32-C3 uses newlib's standard startup"
else
    echo "✗ FAIL: _start does NOT call __libc_init_array"
    echo "        ESP32-C3 should use newlib's startup flow"
    echo ""
    echo "Expected inheritance: esp32c3 → riscv32-nostart → riscv-nostart → riscv-basic"
    echo "Current _start disassembly:"
    llvm-objdump -d "$TEST_ELF" | grep -A50 "<_start>:" || true
    exit 1
fi

echo ""
echo "=== Test 2: Verify .init_array merged into .rodata (ELF) ==="

# Get .rodata section information from ELF file
# The .rodata section should contain the merged .init_array data
#
# Real output from: llvm-readelf -S "$TEST_ELF"
#
# Section Headers:
#   [Nr] Name              Type            Address  Off    Size   ES Flg Lk Inf Al
#   [ 2] .rodata           PROGBITS        4038042c 00142c 00003c 00 WAMS  0   0  4
#   |  |                   |               |        |      |
#   $1 $2                  $4              $5       $6     $7
#   [  2]                  PROGBITS        4038042c 00142c 00003c
#      (section number)    (type)          (ADDR)   (off)  (SIZE)
#
# IMPORTANT: Note the space between '[' and '2]' - they are TWO separate fields!
#
# Field breakdown (awk splits on whitespace):
#   $1 = [           (opening bracket - yes, it's a separate field!)
#   $2 = 2]          (section number with closing bracket)
#   $3 = .rodata     (section name)
#   $4 = PROGBITS    (section type)
#   $5 = 4038042c    (address - THIS IS WHAT WE EXTRACT for RODATA_ADDR)
#   $6 = 00142c      (file offset)
#   $7 = 00003c      (size - THIS IS WHAT WE EXTRACT for RODATA_SIZE)
#   $8 = 00          (entry size)
#
# We use: awk '{print "0x"$5}' to extract address (4038042c → 0x4038042c)
#         awk '{print "0x"$7}' to extract size (00003c → 0x00003c)
RODATA_INFO=$(llvm-readelf -S "$TEST_ELF" | grep "\.rodata")
if [ -z "$RODATA_INFO" ]; then
    echo "✗ FAIL: .rodata section not found"
    exit 1
fi

RODATA_ADDR=$(echo "$RODATA_INFO" | awk '{print "0x"$5}')
RODATA_SIZE=$(echo "$RODATA_INFO" | awk '{print "0x"$7}')
RODATA_END=$(printf "0x%x" $((RODATA_ADDR + RODATA_SIZE)))

echo ".rodata section: start=$RODATA_ADDR, size=$RODATA_SIZE, end=$RODATA_END"

# Get __init_array_start symbol address
# This symbol marks where .init_array was placed by the linker script
# It should point to an address within the .rodata section
#
# Real output from: llvm-nm "$TEST_ELF"
#
# 40380450 d __init_array_start
# ^$1      ^$2 ^$3
# (Addr)   (Type: d=local data symbol in .rodata)
#
# Field breakdown:
#   $1 = 40380450          (symbol address in hex without 0x prefix)
#   $2 = d                 (symbol type: d=local data, D=global data, T=text, etc.)
#   $3 = __init_array_start (symbol name)
#
# We extract $1 and add "0x" prefix: 40380450 → 0x40380450
INIT_ARRAY_START=$(llvm-nm "$TEST_ELF" | grep "__init_array_start" | awk '{print "0x"$1}')
if [ -z "$INIT_ARRAY_START" ]; then
    echo "✗ FAIL: __init_array_start symbol not found"
    exit 1
fi

echo "__init_array_start: $INIT_ARRAY_START"

# Verify that __init_array_start address falls within .rodata section bounds
# This confirms the linker script successfully merged .init_array into .rodata
INIT_ADDR_DEC=$((INIT_ARRAY_START))
RODATA_ADDR_DEC=$((RODATA_ADDR))
RODATA_END_DEC=$((RODATA_END))

if [ $INIT_ADDR_DEC -ge $RODATA_ADDR_DEC ] && [ $INIT_ADDR_DEC -lt $RODATA_END_DEC ]; then
    OFFSET=$((INIT_ADDR_DEC - RODATA_ADDR_DEC))
    echo "✓ PASS: __init_array_start is within .rodata (offset: +0x$(printf '%x' $OFFSET))"
else
    echo "✗ FAIL: __init_array_start is NOT within .rodata"
    echo "        .rodata: [$RODATA_ADDR, $RODATA_END)"
    echo "        __init_array_start: $INIT_ARRAY_START"
    exit 1
fi

echo ""
echo "=== Test 3: Verify .rodata included in BIN file ==="

# Get BIN file segment information using esptool.py
# ESP32-C3 BIN files contain multiple segments with load addresses
# We need to verify that .rodata segment exists in the BIN file
#
# Real output from: esptool.py --chip esp32c3 image_info test.bin
#
# Segments Information
# ====================
# Segment   Length   Load addr   File offs  Memory types
# -------  -------  ----------  ----------  ------------
#       0  0x000f0  0x3fc84468  0x00000018  DRAM
#       1  0x00004  0x3fc84558  0x00000110  DRAM
#       2  0x0006c  0x3fc8455c  0x0000011c  DRAM
#       3  0x0042c  0x40380000  0x00000190  IRAM
#       4  0x0003c  0x4038042c  0x000005c4  IRAM  ← This is .rodata!
#          ^$2      ^$3         ^$4
#          (Length) (LoadAddr)  (FileOffset)
#
# Field breakdown for segment line:
#   $1 = 4           (segment number)
#   $2 = 0x0003c     (segment length/size)
#   $3 = 0x4038042c  (load address - matches .rodata address from ELF!)
#   $4 = 0x000005c4  (file offset in BIN)
#   $5+ = IRAM       (memory type)
#
# We extract $2 (length) and $3 (load addr) to verify __init_array_start is within bounds
if ! BIN_INFO=$(esptool.py --chip esp32c3 image_info "$TEST_BIN" 2>&1); then
    echo "✗ FAIL: esptool.py failed to parse BIN file"
    echo "$BIN_INFO"
    exit 1
fi

# Find the segment containing .rodata by matching its load address
# Strip leading "0x" and zeros from address for grepping
RODATA_ADDR_CLEAN=$(echo "$RODATA_ADDR" | sed 's/^0x0*//')
RODATA_SEG=$(echo "$BIN_INFO" | grep -i "$RODATA_ADDR_CLEAN")

if [ -z "$RODATA_SEG" ]; then
    echo "✗ FAIL: .rodata segment not found in BIN file"
    echo "Looking for address: $RODATA_ADDR"
    echo ""
    echo "BIN segments:"
    echo "$BIN_INFO" | grep -A20 "Segments Information"
    exit 1
fi

# Extract segment information from esptool.py output
# Format: Segment_Number Length Load_Address ...
# We parse these three fields to determine segment boundaries
SEG_NUM=$(echo "$RODATA_SEG" | awk '{print $1}')
SEG_LEN=$(echo "$RODATA_SEG" | awk '{print $2}')
SEG_LOAD=$(echo "$RODATA_SEG" | awk '{print $3}')

SEG_LEN_DEC=$((SEG_LEN))
SEG_LOAD_DEC=$((SEG_LOAD))
SEG_END=$((SEG_LOAD_DEC + SEG_LEN_DEC))

echo "BIN Segment $SEG_NUM: start=$SEG_LOAD, length=$SEG_LEN, end=$(printf '0x%x' $SEG_END)"

# Verify that __init_array_start falls within this BIN segment
# This confirms that .init_array data (merged into .rodata) will be
# correctly flashed to ESP32-C3 and available at runtime
if [ $INIT_ADDR_DEC -ge $SEG_LOAD_DEC ] && [ $INIT_ADDR_DEC -lt $SEG_END ]; then
    OFFSET=$((INIT_ADDR_DEC - SEG_LOAD_DEC))
    echo "✓ PASS: __init_array_start is within BIN Segment $SEG_NUM (offset: +0x$(printf '%x' $OFFSET))"
else
    echo "✗ FAIL: __init_array_start is NOT within BIN segment"
    echo "        Segment range: [$SEG_LOAD, $(printf '0x%x' $SEG_END))"
    echo "        __init_array_start: $INIT_ARRAY_START"
    exit 1
fi

echo ""
echo "=== All Tests Passed ==="
echo "✓ ESP32-C3 uses newlib startup (_start calls __libc_init_array)"
echo "✓ .init_array merged into .rodata section"
echo "✓ .rodata (including .init_array) included in BIN file"
echo "✓ Constructor function pointers will be correctly flashed to ESP32-C3"

exit 0
