package main

import "fmt"

func main() {
	fmt.Println("=== Integer Type Conversions ===")

	// 1. Signed/Unsigned conversions
	fmt.Println("\n1. Negative to Unsigned:")
	var negInt int32 = -1
	fmt.Printf("int32(-1) -> uint32: %d (0x%X)\n", uint32(negInt), uint32(negInt))
	fmt.Printf("int32(-1) -> uint8: %d (0x%X)\n", uint8(negInt), uint8(negInt))

	var negInt64 int64 = -1234567890
	fmt.Printf("int64(-1234567890) -> uint32: %d (0x%X)\n", uint32(negInt64), uint32(negInt64))

	// 2. Large unsigned to signed
	fmt.Println("\n2. Large Unsigned to Signed:")
	var bigUint uint32 = 0xFFFFFFFF
	fmt.Printf("uint32(0xFFFFFFFF) -> int32: %d\n", int32(bigUint))
	fmt.Printf("uint32(0xFFFFFFFF) -> int16: %d\n", int16(bigUint))

	var bigUint64 uint64 = 0xFFFFFFFFFFFFFFFF
	fmt.Printf("uint64(max) -> int32: %d\n", int32(bigUint64))

	// 3. Truncation (downward conversion)
	fmt.Println("\n3. Truncation (Larger to Smaller):")
	var i64 int64 = 0x123456789ABC
	fmt.Printf("int64(0x123456789ABC) -> int32: 0x%X\n", int32(i64))
	fmt.Printf("int64(0x123456789ABC) -> int16: 0x%X\n", int16(i64))
	fmt.Printf("int64(0x123456789ABC) -> int8: 0x%X\n", int8(i64))

	var u64 uint64 = 0xFFFFFFFFFFFFFFFF
	fmt.Printf("uint64(max) -> uint32: 0x%X\n", uint32(u64))
	fmt.Printf("uint64(max) -> uint16: 0x%X\n", uint16(u64))
	fmt.Printf("uint64(max) -> uint8: 0x%X\n", uint8(u64))

	// 4. Sign extension vs zero extension
	fmt.Println("\n4. Sign Extension vs Zero Extension:")
	var i8 int8 = -1
	fmt.Printf("int8(-1) -> int16: %d (0x%04X)\n", int16(i8), uint16(int16(i8)))
	fmt.Printf("int8(-1) -> int32: %d (0x%08X)\n", int32(i8), uint32(int32(i8)))
	fmt.Printf("int8(-1) -> int64: %d (0x%016X)\n", int64(i8), uint64(int64(i8)))

	var u8 uint8 = 0xFF
	fmt.Printf("uint8(0xFF) -> uint16: %d (0x%04X)\n", uint16(u8), uint16(u8))
	fmt.Printf("uint8(0xFF) -> uint32: %d (0x%08X)\n", uint32(u8), uint32(u8))

	// 5. Mixed sign conversions with specific values
	fmt.Println("\n5. Mixed Sign Conversions:")
	var si16 int16 = -32768 // MinInt16
	fmt.Printf("int16(MinInt16) -> uint16: %d\n", uint16(si16))

	var su16 uint16 = 32768
	fmt.Printf("uint16(32768) -> int16: %d\n", int16(su16))

	// 6. Boundary values
	fmt.Println("\n6. Boundary Value Conversions:")
	var maxI8 int8 = 127
	var minI8 int8 = -128
	fmt.Printf("int8(MaxInt8=%d) -> uint8: %d\n", maxI8, uint8(maxI8))
	fmt.Printf("int8(MinInt8=%d) -> uint8: %d\n", minI8, uint8(minI8))

	var maxU8 uint8 = 255
	fmt.Printf("uint8(MaxUint8=%d) -> int8: %d\n", maxU8, int8(maxU8))
}
