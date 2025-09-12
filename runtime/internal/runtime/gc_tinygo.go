package runtime

import (
	"unsafe"
	_ "unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/tinygogc/heap"
)

const gcDebug = false
const needsStaticHeap = true

// Some globals + constants for the entire GC.

const (
	wordsPerBlock      = 4 // number of pointers in an allocated block
	bytesPerBlock      = wordsPerBlock * unsafe.Sizeof(heap.HeapStart)
	stateBits          = 2 // how many bits a block state takes (see blockState type)
	blocksPerStateByte = 8 / stateBits
	markStackSize      = 8 * unsafe.Sizeof((*int)(nil)) // number of to-be-marked blocks to queue before forcing a rescan
)

// Provide some abc.Straction over heap blocks.

// blockState stores the four states in which a block can be. It is two bits in
// size.

const (
	blockStateFree uint8 = 0 // 00
	blockStateHead uint8 = 1 // 01
	blockStateTail uint8 = 2 // 10
	blockStateMark uint8 = 3 // 11
	blockStateMask uint8 = 3 // 11
)

// The byte value of a block where every block is a 'tail' block.
const blockStateByteAllTails = 0 |
	uint8(blockStateTail<<(stateBits*3)) |
	uint8(blockStateTail<<(stateBits*2)) |
	uint8(blockStateTail<<(stateBits*1)) |
	uint8(blockStateTail<<(stateBits*0))

// blockFromAddr returns a block given an address somewhere in the heap (which
// might not be heap-aligned).
func blockFromAddr(addr uintptr) uintptr {
	if false && (addr < heap.HeapStart || addr >= uintptr(heap.MetadataStart)) {
		println("gc: trying to get block from invalid address")
	}
	return (addr - heap.HeapStart) / bytesPerBlock
}

// Return a pointer to the start of the allocated object.
func gcPointerOf(blockAddr uintptr) unsafe.Pointer {
	return unsafe.Pointer(gcAddressOf(blockAddr))
}

// Return the address of the start of the allocated object.
func gcAddressOf(blockAddr uintptr) uintptr {
	addr := heap.HeapStart + blockAddr*bytesPerBlock
	if false && addr > uintptr(heap.MetadataStart) {
		println("gc: block pointing inside metadata")
	}
	return addr
}

// findHead returns the head (first block) of an object, assuming the block
// points to an allocated object. It returns the same block if this block
// already points to the head.
func gcFindHead(blockAddr uintptr) uintptr {
	for {
		// Optimization: check whether the current block state byte (which
		// contains the state of multiple blocks) is composed entirely of tail
		// blocks. If so, we can skip back to the last block in the previous
		// state byte.
		// This optimization speeds up findHead for pointers that point into a
		// large allocation.
		stateByte := gcStateByteOf(blockAddr)
		if stateByte == blockStateByteAllTails {
			blockAddr -= (blockAddr % blocksPerStateByte) + 1
			continue
		}

		// Check whether we've found a non-tail block, which means we found the
		// head.
		state := gcStateFromByte(blockAddr, stateByte)
		if state != blockStateTail {
			break
		}
		blockAddr--
	}
	if true {
		if gcStateOf(blockAddr) != blockStateHead && gcStateOf(blockAddr) != blockStateMark {
			println("gc: found tail without head")
		}
	}
	return blockAddr
}

// findNext returns the first block just past the end of the tail. This may or
// may not be the head of an object.
func gcFindNext(blockAddr uintptr) uintptr {
	if gcStateOf(blockAddr) == blockStateHead || gcStateOf(blockAddr) == blockStateMark {
		blockAddr++
	}
	for gcAddressOf(blockAddr) < uintptr(heap.MetadataStart) && gcStateOf(blockAddr) == blockStateTail {
		blockAddr++
	}
	return blockAddr
}

func gcStateByteOf(blockAddr uintptr) byte {
	return *(*uint8)(unsafe.Add(heap.MetadataStart, blockAddr/blocksPerStateByte))
}

// Return the block state given a state byte. The state byte must have been
// obtained using b.stateByte(), otherwise the result is incorrect.
func gcStateFromByte(blockAddr uintptr, stateByte byte) uint8 {
	return uint8(stateByte>>((blockAddr%blocksPerStateByte)*stateBits)) & blockStateMask
}

// State returns the current block state.
func gcStateOf(blockAddr uintptr) uint8 {
	return gcStateFromByte(blockAddr, gcStateByteOf(blockAddr))
}

// setState sets the current block to the given state, which must contain more
// bits than the current state. Allowed transitions: from free to any state and
// from head to mark.
func gcSetState(blockAddr uintptr, newState uint8) {
	stateBytePtr := (*uint8)(unsafe.Add(heap.MetadataStart, blockAddr/blocksPerStateByte))
	*stateBytePtr |= uint8(newState << ((blockAddr % blocksPerStateByte) * stateBits))
	if false && gcStateOf(blockAddr) != newState {
		println("gc: setState() was not successful")
	}
}

// markFree sets the block state to free, no matter what state it was in before.
func gcMarkFree(blockAddr uintptr) {
	stateBytePtr := (*uint8)(unsafe.Add(heap.MetadataStart, blockAddr/blocksPerStateByte))
	*stateBytePtr &^= uint8(blockStateMask << ((blockAddr % blocksPerStateByte) * stateBits))
	if false && gcStateOf(blockAddr) != blockStateFree {
		println("gc: markFree() was not successful")
	}
	if true {
		*(*[wordsPerBlock]uintptr)(unsafe.Pointer(gcAddressOf(blockAddr))) = [wordsPerBlock]uintptr{}
	}
}

// unmark changes the state of the block from mark to head. It must be marked
// before calling this function.
func gcUnmark(blockAddr uintptr) {
	if false && gcStateOf(blockAddr) != blockStateMark {
		println("gc: unmark() on a block that is not marked")
	}
	clearMask := blockStateMask ^ blockStateHead // the bits to clear from the state
	stateBytePtr := (*uint8)(unsafe.Add(heap.MetadataStart, blockAddr/blocksPerStateByte))
	*stateBytePtr &^= uint8(clearMask << ((blockAddr % blocksPerStateByte) * stateBits))
	if false && gcStateOf(blockAddr) != blockStateHead {
		println("gc: unmark() was not successful")
	}
}

func isOnHeap(ptr uintptr) bool {
	return ptr >= heap.HeapStart && ptr < uintptr(heap.MetadataStart)
}

//export _tinygoGC
func _tinygoGC() {
	GC()
}

// alloc tries to find some free space on the heap, possibly doing a garbage
// collection cycle if needed. If no space is free, it panics.
//
//go:noinline
func Alloc(size uintptr) unsafe.Pointer {
	if size == 0 {
		return heap.ZeroSizedAlloc
	}
	// Make sure there are no concurrent allocations. The heap is not currently
	// designed for concurrent alloc/GC.

	heap.GcTotalAlloc += uint64(size)
	heap.GcMallocs++

	neededBlocks := (size + (bytesPerBlock - 1)) / bytesPerBlock
	heap.GcTotalBlocks += uint64(neededBlocks)

	// Continue looping until a run of free blocks has been found that fits the
	// requested size.
	index := heap.NextAlloc
	numFreeBlocks := uintptr(0)
	heapScanCount := uint8(0)
	for {
		if index == heap.NextAlloc {
			if heapScanCount == 0 {
				heapScanCount = 1
			} else if heapScanCount == 1 {
				// The entire heap has been searched for free memory, but none
				// could be found. Run a garbage collection cycle to reclaim
				// free memory and try again.
				heapScanCount = 2
				freeBytes := GC()
				heapSize := uintptr(heap.MetadataStart) - heap.HeapStart
				if freeBytes < heapSize/3 {
					// Ensure there is at least 33% headroom.
					// This percentage was arbitrarily chosen, and may need to
					// be tuned in the future.
					growHeap()
				}
			} else {
				// Even after garbage collection, no free memory could be found.
				// Try to increase heap size.
				if growHeap() {
					// Success, the heap was increased in size. Try again with a
					// larger heap.
				} else {
					// Unfortunately the heap could not be increased. This
					// happens on baremetal systems for example (where all
					// available RAM has already been dedicated to the heap).
					println("out of memory")
				}
			}
		}

		// Wrap around the end of the heap.
		if index == heap.EndBlock {
			index = 0
			// Reset numFreeBlocks as allocations cannot wrap.
			numFreeBlocks = 0
			// In rare cases, the initial heap might be so small that there are
			// no blocks at all. In this case, it's better to jump back to the
			// start of the loop and try again, until the GC realizes there is
			// no memory and grows the heap.
			// This can sometimes happen on WebAssembly, where the initial heap
			// is created by whatever is left on the last memory page.
			continue
		}

		// Is the block we're looking at free?
		if gcStateOf(index) != blockStateFree {
			// This block is in use. Try again from this point.
			numFreeBlocks = 0
			index++
			continue
		}
		numFreeBlocks++
		index++

		// Are we finished?
		if numFreeBlocks == neededBlocks {
			// Found a big enough range of free blocks!
			heap.NextAlloc = index
			thisAlloc := index - neededBlocks

			// Set the following blocks as being allocated.
			gcSetState(thisAlloc, blockStateHead)
			for i := thisAlloc + 1; i != heap.NextAlloc; i++ {
				gcSetState(i, blockStateTail)
			}

			// We've claimed this allocation, now we can unlock the heap.

			// Return a pointer to this allocation.
			pointer := gcPointerOf(thisAlloc)
			memset(pointer, 0, size)
			return pointer
		}
	}
}

func Realloc(ptr unsafe.Pointer, size uintptr) unsafe.Pointer {
	if ptr == nil {
		return Alloc(size)
	}

	ptrAddress := uintptr(ptr)
	endOfTailAddress := gcAddressOf(gcFindNext(blockFromAddr(ptrAddress)))

	// this might be a few bytes longer than the original size of
	// ptr, because we align to full blocks of size bytesPerBlock
	oldSize := endOfTailAddress - ptrAddress
	if size <= oldSize {
		return ptr
	}

	newAlloc := Alloc(size)
	memcpy(newAlloc, ptr, oldSize)
	free(ptr)

	return newAlloc
}

func free(ptr unsafe.Pointer) {
	// TODO: free blocks on request, when the compiler knows they're unused.
}

// runGC performs a garbage collection cycle. It is the internal implementation
// of the runtime.GC() function. The difference is that it returns the number of
// free bytes in the heap after the GC is finished.
func GC() (freeBytes uintptr) {
	if gcDebug {
		println("running collection cycle...")
	}

	// Mark phase: mark all reachable objects, recursively.
	gcMarkReachable()

	finishMark()

	// If we're using threads, resume all other threads before starting the
	// sweep.
	gcResumeWorld()

	// Sweep phase: free all non-marked objects and unmark marked objects for
	// the next collection cycle.
	freeBytes = sweep()

	return
}

// markRoots reads all pointers from start to end (exclusive) and if they look
// like a heap pointer and are unmarked, marks them and scans that object as
// well (recursively). The start and end parameters must be valid pointers and
// must be aligned.
func markRoots(start, end uintptr) {

	if true {
		if start >= end {
			println("gc: unexpected range to mark")
		}
		if start%unsafe.Alignof(start) != 0 {
			println("gc: unaligned start pointer")
		}
		if end%unsafe.Alignof(end) != 0 {
			println("gc: unaligned end pointer")
		}
	}

	// Reduce the end bound to avoid reading too far on platforms where pointer alignment is smaller than pointer size.
	// If the size of the range is 0, then end will be slightly below start after this.
	end -= unsafe.Sizeof(end) - unsafe.Alignof(end)

	for addr := start; addr < end; addr += unsafe.Alignof(addr) {
		root := *(*uintptr)(unsafe.Pointer(addr))
		markRoot(addr, root)
	}
}

// startMark starts the marking process on a root and all of its children.
func startMark(root uintptr) {
	var stack [markStackSize]uintptr
	stack[0] = root
	gcSetState(root, blockStateMark)
	stackLen := 1
	for stackLen > 0 {
		// Pop a block off of the stack.
		stackLen--
		block := stack[stackLen]

		start, end := gcAddressOf(block), gcAddressOf(gcFindNext(block))

		for addr := start; addr != end; addr += unsafe.Alignof(addr) {
			// Load the word.
			word := *(*uintptr)(unsafe.Pointer(addr))

			if !isOnHeap(word) {
				// Not a heap pointer.
				continue
			}

			// Find the corresponding memory block.
			referencedBlock := blockFromAddr(word)

			if gcStateOf(referencedBlock) == blockStateFree {
				// The to-be-marked object doesn't actually exist.
				// This is probably a false positive.
				continue
			}

			// Move to the block's head.
			referencedBlock = gcFindHead(referencedBlock)

			if gcStateOf(referencedBlock) == blockStateMark {
				// The block has already been marked by something else.
				continue
			}

			// Mark block.

			gcSetState(referencedBlock, blockStateMark)

			println("mark: %lx from %lx", gcPointerOf(referencedBlock), gcPointerOf(root))

			if stackLen == len(stack) {
				// The stack is full.
				// It is necessary to rescan all marked blocks once we are done.
				heap.GCStackOverflow = true
				if gcDebug {
					println("gc stack overflowed")
				}
				continue
			}

			// Push the pointer onto the stack to be scanned later.
			stack[stackLen] = referencedBlock
			stackLen++
		}
	}
}

// finishMark finishes the marking process by processing all stack overflows.
func finishMark() {
	for heap.GCStackOverflow {
		// Re-mark all blocks.
		heap.GCStackOverflow = false
		for block := uintptr(0); block < heap.EndBlock; block++ {
			if gcStateOf(block) != blockStateMark {
				// Block is not marked, so we do not need to rescan it.
				continue
			}

			// Re-mark the block.
			startMark(block)
		}
	}
}

// mark a GC root at the address addr.
func markRoot(addr, root uintptr) {
	if isOnHeap(root) {
		println("on the heap: %lx", gcPointerOf(root))
		block := blockFromAddr(root)
		if gcStateOf(block) == blockStateFree {
			// The to-be-marked object doesn't actually exist.
			// This could either be a dangling pointer (oops!) but most likely
			// just a false positive.
			return
		}
		head := gcFindHead(block)

		if gcStateOf(head) != blockStateMark {
			startMark(head)
		}
	}
}

// Sweep goes through all memory and frees unmarked memory.
// It returns how many bytes are free in the heap after the sweep.
func sweep() (freeBytes uintptr) {
	freeCurrentObject := false
	var freed uint64
	for block := uintptr(0); block < heap.EndBlock; block++ {
		switch gcStateOf(block) {
		case blockStateHead:
			// Unmarked head. Free it, including all tail blocks following it.
			gcMarkFree(block)
			freeCurrentObject = true
			heap.GcFrees++
			freed++
		case blockStateTail:
			if freeCurrentObject {
				// This is a tail object following an unmarked head.
				// Free it now.
				gcMarkFree(block)
				freed++
			}
		case blockStateMark:
			// This is a marked object. The next tail blocks must not be freed,
			// but the mark bit must be removed so the next GC cycle will
			// collect this object if it is unreferenced then.
			gcUnmark(block)
			freeCurrentObject = false
		case blockStateFree:
			freeBytes += bytesPerBlock
		}
	}
	heap.GcFreedBlocks += freed
	freeBytes += uintptr(freed) * bytesPerBlock
	return
}

// growHeap tries to grow the heap size. It returns true if it succeeds, false
// otherwise.
func growHeap() bool {
	// On baremetal, there is no way the heap can be grown.
	return false
}

//go:linkname getsp llgo.getSP
func getsp() uintptr { return 0 }

func gcMarkReachable() {
	// a compiler trick to get current SP
	println("scan stack", unsafe.Pointer(getsp()), c.Pointer(heap.StackTop))
	markRoots(getsp(), heap.StackTop)
	markRoots(heap.GlobalsStart, heap.GlobalsEnd)
}

func gcResumeWorld() {
	// Nothing to do here (single threaded).
}
