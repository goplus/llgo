package heap

import "unsafe"

// no init function, we don't want to init this twice
const LLGoPackage = "noinit"

//go:linkname _heapStart _heapStart
var _heapStart [0]byte

//go:linkname _heapEnd _heapEnd
var _heapEnd [0]byte

//go:linkname _stackStart __stack
var _stackStart [0]byte

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
	StackTop      uintptr
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

// zeroSizedAlloc is just a sentinel that gets returned when allocating 0 bytes.
var zeroSizedAlloc uint8

//go:linkname memset C.memset
func memset(unsafe.Pointer, int, uintptr)

// this function MUST be initalized first, which means it's required to be initalized before runtime
func initHeap() {
	// reserve 2K blocks for malloc
	HeapStart = uintptr(unsafe.Pointer(&_heapStart)) + 2048
	HeapEnd = uintptr(unsafe.Pointer(&_heapEnd))
	GlobalsStart = uintptr(unsafe.Pointer(&_globals_start))
	GlobalsEnd = uintptr(unsafe.Pointer(&_globals_end))
	totalSize := HeapEnd - HeapStart
	metadataSize := (totalSize + blocksPerStateByte*bytesPerBlock) / (1 + blocksPerStateByte*bytesPerBlock)
	MetadataStart = unsafe.Pointer(HeapEnd - metadataSize)
	EndBlock = (uintptr(MetadataStart) - HeapStart) / bytesPerBlock
	ZeroSizedAlloc = unsafe.Pointer(&zeroSizedAlloc)
	StackTop = uintptr(unsafe.Pointer(&_stackStart))

	memset(MetadataStart, 0, metadataSize)
}
