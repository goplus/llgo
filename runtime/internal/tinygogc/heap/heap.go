package heap

import "unsafe"

// no init function, we don't want to init this twice
const LLGoPackage = "noinit"

//go:linkname _heapStart _heapStart
var _heapStart [0]byte

//go:linkname _heapEnd _heapEnd
var _heapEnd [0]byte

//go:linkname _globals_start _globals_start
var _globals_start [0]byte

//go:linkname _globals_end _globals_end
var _globals_end [0]byte

// since we don't have an init() function, these should be initalized by initHeap(), which is called by <main> entry
var (
	HeapStart     uintptr
	HeapEnd       uintptr
	GlobalsStart  uintptr
	GlobalsEnd    uintptr
	MetadataStart unsafe.Pointer
	EndBlock      uintptr

	NextAlloc     uintptr // the next block that should be tried by the allocator
	GcTotalAlloc  uint64  // total number of bytes allocated
	GcTotalBlocks uint64  // total number of allocated blocks
	GcMallocs     uint64  // total number of allocations
	GcFrees       uint64  // total number of objects freed
	GcFreedBlocks uint64  // total number of freed blocks

	ZeroSizedAlloc  unsafe.Pointer
	GCStackOverflow bool
)

// Some globals + constants for the entire GC.

const (
	wordsPerBlock      = 4 // number of pointers in an allocated block
	bytesPerBlock      = wordsPerBlock * unsafe.Sizeof(HeapStart)
	stateBits          = 2 // how many bits a block state takes (see blockState type)
	blocksPerStateByte = 8 / stateBits
	markStackSize      = 8 * unsafe.Sizeof((*int)(nil)) // number of to-be-marked blocks to queue before forcing a rescan
)

//go:linkname WriteByte C.board_uart_write_char
func WriteByte(b byte)

func hexDigitToChar(digit uint8) uint8 {
	if digit < 10 {
		return 0x30 + digit // '0' = 0x30
	}
	return 0x41 + (digit - 10) // 'A' = 0x41
}

// 将int32转换为16进制字符串并按byte输出到UART
func PrintInt32Hex(value int32) {
	// 转换为uint32以便进行位操作
	uvalue := uint32(value)

	// 输出"0x"前缀
	WriteByte(0x30) // '0'
	WriteByte(0x78) // 'x'

	// 从最高位开始，每4位转换为一个十六进制字符
	for i := uint32(0); i < 8; i++ {
		// 提取第i个十六进制位（从高位开始）
		digit := uint8((uvalue >> ((7 - i) * 4)) & 0xF)
		WriteByte(hexDigitToChar(digit))
	}

	WriteByte('\n')
}

// zeroSizedAlloc is just a sentinel that gets returned when allocating 0 bytes.
var zeroSizedAlloc uint8

//go:linkname memset C.memset
func memset(unsafe.Pointer, int, uintptr)

// this function MUST be initalized first, which means it's required to be initalized before runtime
func initHeap() {
	HeapStart = uintptr(unsafe.Pointer(&_heapStart))
	HeapEnd = uintptr(unsafe.Pointer(&_heapEnd))
	GlobalsStart = uintptr(unsafe.Pointer(&_globals_start))
	GlobalsEnd = uintptr(unsafe.Pointer(&_globals_end))
	totalSize := HeapEnd - HeapStart
	metadataSize := (totalSize + blocksPerStateByte*bytesPerBlock) / (1 + blocksPerStateByte*bytesPerBlock)
	MetadataStart = unsafe.Pointer(HeapEnd - metadataSize)
	EndBlock = (uintptr(MetadataStart) - HeapStart) / bytesPerBlock
	ZeroSizedAlloc = unsafe.Pointer(&zeroSizedAlloc)

	memset(MetadataStart, 0, metadataSize)
}
