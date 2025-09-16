//go:build testGC

package tinygogc

import (
	"testing"
	"unsafe"
)

const (
	// Mock a typical embedded system with 128KB RAM
	mockHeapSize     = 128 * 1024 // 128KB
	mockGlobalsSize  = 4 * 1024   // 4KB for globals
	mockStackSize    = 8 * 1024   // 8KB for stack
	mockReservedSize = 2048       // 2KB reserved as in real implementation
)

type testObject struct {
	data [4]uintptr
}

// mockMemoryLayout simulates the memory layout of an embedded system
type mockMemoryLayout struct {
	memory       []byte
	heapStart    uintptr
	heapEnd      uintptr
	globalsStart uintptr
	globalsEnd   uintptr
	stackStart   uintptr
	stackEnd     uintptr
}

// createMockMemoryLayout creates a simulated 128KB memory environment
func createMockMemoryLayout() *mockMemoryLayout {
	totalMemory := mockHeapSize + mockGlobalsSize + mockStackSize
	memory := make([]byte, totalMemory)
	baseAddr := uintptr(unsafe.Pointer(&memory[0]))

	layout := &mockMemoryLayout{
		memory:       memory,
		globalsStart: baseAddr,
		globalsEnd:   baseAddr + mockGlobalsSize,
		heapStart:    baseAddr + mockGlobalsSize + mockReservedSize,
		heapEnd:      baseAddr + mockGlobalsSize + mockHeapSize,
		stackStart:   baseAddr + mockGlobalsSize + mockHeapSize,
		stackEnd:     baseAddr + uintptr(totalMemory),
	}

	return layout
}

// setupMockGC initializes the GC with mock memory layout
func (m *mockMemoryLayout) setupMockGC() {
	// Set mock values
	heapStart = m.heapStart
	heapEnd = m.heapEnd
	globalsStart = m.globalsStart
	globalsEnd = m.globalsEnd
	stackTop = m.stackEnd

	// Set currentStack to the start of the mock stack
	currentStack = m.stackStart

	// Calculate metadata layout
	totalSize := heapEnd - heapStart
	metadataSize := (totalSize + blocksPerStateByte*bytesPerBlock) / (1 + blocksPerStateByte*bytesPerBlock)
	metadataStart = unsafe.Pointer(heapEnd - metadataSize)
	endBlock = (uintptr(metadataStart) - heapStart) / bytesPerBlock

	// Clear metadata
	metadataBytes := (*[1024]byte)(metadataStart)[:metadataSize:metadataSize]
	for i := range metadataBytes {
		metadataBytes[i] = 0
	}

	// Reset allocator state
	nextAlloc = 0
	isGCInit = true
}

// createTestObjects creates a network of objects for testing reachability
func createTestObjects(layout *mockMemoryLayout) []*testObject {
	// Allocate several test objects
	objects := make([]*testObject, 0, 10)

	// Dependencies Graph
	// root1 -> child1 -> grandchild1 -> child2
	// root1 -> child2 -> grandchild1

	// Create root objects (reachable from stack/globals)
	root1 := (*testObject)(Alloc(unsafe.Sizeof(testObject{})))
	root2 := (*testObject)(Alloc(unsafe.Sizeof(testObject{})))
	objects = append(objects, root1, root2)

	// Create objects reachable from root1
	child1 := (*testObject)(Alloc(unsafe.Sizeof(testObject{})))
	child2 := (*testObject)(Alloc(unsafe.Sizeof(testObject{})))
	root1.data[0] = uintptr(unsafe.Pointer(child1))
	root1.data[1] = uintptr(unsafe.Pointer(child2))
	objects = append(objects, child1, child2)

	// Create objects reachable from child1
	grandchild1 := (*testObject)(Alloc(unsafe.Sizeof(testObject{})))
	child1.data[0] = uintptr(unsafe.Pointer(grandchild1))
	objects = append(objects, grandchild1)

	// Create circular reference between child2 and grandchild1
	child2.data[0] = uintptr(unsafe.Pointer(grandchild1))
	grandchild1.data[0] = uintptr(unsafe.Pointer(child2))

	// Create unreachable objects (garbage)
	garbage1 := (*testObject)(Alloc(unsafe.Sizeof(testObject{})))
	garbage2 := (*testObject)(Alloc(unsafe.Sizeof(testObject{})))
	// Create circular reference in garbage
	garbage1.data[0] = uintptr(unsafe.Pointer(garbage2))
	garbage2.data[0] = uintptr(unsafe.Pointer(garbage1))
	objects = append(objects, garbage1, garbage2)

	return objects
}

// mockStackScan simulates scanning stack for root pointers
func mockStackScan(roots []*testObject) {
	// Simulate stack by creating local variables pointing to roots

	for _, root := range roots[:2] { // Only first 2 are actually roots
		addr := uintptr(unsafe.Pointer(&root))
		ptr := uintptr(unsafe.Pointer(root))
		markRoot(addr, ptr)
	}
}

func TestMockGCBasicAllocation(t *testing.T) {
	layout := createMockMemoryLayout()
	layout.setupMockGC()

	// Test basic allocation
	ptr1 := Alloc(32)
	if ptr1 == nil {
		t.Fatal("Failed to allocate 32 bytes")
	}

	ptr2 := Alloc(64)
	if ptr2 == nil {
		t.Fatal("Failed to allocate 64 bytes")
	}

	// Verify pointers are within heap bounds
	addr1 := uintptr(ptr1)
	addr2 := uintptr(ptr2)

	if addr1 < heapStart || addr1 >= uintptr(metadataStart) {
		t.Errorf("ptr1 %x not within heap bounds [%x, %x)", addr1, heapStart, uintptr(metadataStart))
	}

	if addr2 < heapStart || addr2 >= uintptr(metadataStart) {
		t.Errorf("ptr2 %x not within heap bounds [%x, %x)", addr2, heapStart, uintptr(metadataStart))
	}

	t.Logf("Allocated ptr1 at %x, ptr2 at %x", addr1, addr2)
	t.Logf("Heap bounds: [%x, %x)", heapStart, uintptr(metadataStart))
}

func TestMockGCReachabilityAndSweep(t *testing.T) {
	layout := createMockMemoryLayout()
	layout.setupMockGC()

	// Track initial stats
	initialMallocs := gcMallocs
	initialFrees := gcFrees

	// Create test object network
	objects := createTestObjects(layout)
	roots := objects[:2] // First 2 are roots

	t.Logf("Created %d objects, %d are roots", len(objects), len(roots))
	t.Logf("Mallocs: %d", gcMallocs-initialMallocs)

	// Verify all objects are initially allocated
	for i, obj := range objects {
		addr := uintptr(unsafe.Pointer(obj))
		block := blockFromAddr(addr)
		state := gcStateOf(block)
		if state != blockStateHead {
			t.Errorf("Object %d at %x has state %d, expected %d (HEAD)", i, addr, state, blockStateHead)
		}
	}

	// Perform GC with manual root scanning
	// Mark reachable objects first
	mockStackScan(roots)
	finishMark()

	// Then sweep unreachable objects
	freedBytes := sweep()
	t.Logf("Freed %d bytes during GC", freedBytes)
	t.Logf("Frees: %d (delta: %d)", gcFrees, gcFrees-initialFrees)

	// Verify reachable objects are still allocated
	reachableObjects := []unsafe.Pointer{
		unsafe.Pointer(objects[0]), // root1
		unsafe.Pointer(objects[1]), // root2
		unsafe.Pointer(objects[2]), // child1 (reachable from root1)
		unsafe.Pointer(objects[3]), // child2 (reachable from root1)
		unsafe.Pointer(objects[4]), // grandchild1 (reachable from child1, child2)
	}

	for i, obj := range reachableObjects {
		addr := uintptr(obj)
		block := blockFromAddr(addr)
		state := gcStateOf(block)
		if state != blockStateHead {
			t.Errorf("Reachable object %d at %x has state %d, expected %d (HEAD)", i, addr, state, blockStateHead)
		}
	}

	// Verify unreachable objects are freed
	unreachableObjects := []unsafe.Pointer{
		unsafe.Pointer(objects[5]), // garbage1
		unsafe.Pointer(objects[6]), // garbage2
	}

	for i, obj := range unreachableObjects {
		addr := uintptr(obj)
		block := blockFromAddr(addr)
		state := gcStateOf(block)
		if state != blockStateFree {
			t.Errorf("Unreachable object %d at %x has state %d, expected %d (FREE)", i, addr, state, blockStateFree)
		}
	}

	// Verify some memory was actually freed
	if freedBytes == 0 {
		t.Error("Expected some memory to be freed, but freed 0 bytes")
	}

	if gcFrees == initialFrees {
		t.Error("Expected some objects to be freed, but free count didn't change")
	}

	// clear ref for grandchild
	objects[2].data[0] = 0
	objects[3].data[0] = 0

	// Perform GC with manual root scanning
	// Mark reachable objects first
	mockStackScan(roots)
	finishMark()

	// Then sweep unreachable objects
	freedBytes = sweep()

	blockAddr := blockFromAddr(uintptr(unsafe.Pointer(objects[3])))

	state := gcStateOf(blockAddr)
	if state != blockStateHead {
		t.Errorf("Unreachable object %d at %x has state %d, expected %d (HEAD)", 3, blockAddr, state, blockStateHead)
	}

	blockAddr = blockFromAddr(uintptr(unsafe.Pointer(objects[4])))

	state = gcStateOf(blockAddr)
	if state != blockStateFree {
		t.Errorf("Reachable object %d at %x has state %d, expected %d (HEAD)", 4, blockAddr, state, blockStateHead)
	}
}

func TestMockGCMemoryPressure(t *testing.T) {
	layout := createMockMemoryLayout()
	layout.setupMockGC()

	// Calculate available heap space
	heapSize := uintptr(metadataStart) - heapStart
	blockSize := bytesPerBlock
	maxBlocks := heapSize / blockSize

	t.Logf("Heap size: %d bytes, Block size: %d bytes, Max blocks: %d",
		heapSize, blockSize, maxBlocks)

	// Allocate until we trigger GC
	var allocations []unsafe.Pointer
	allocSize := uintptr(32) // Small allocations

	// Allocate about 80% of heap to trigger GC pressure
	targetAllocations := int(maxBlocks * 4 / 5) // 80% capacity

	for i := 0; i < targetAllocations; i++ {
		ptr := Alloc(allocSize)
		if ptr == nil {
			t.Fatalf("Failed to allocate at iteration %d", i)
		}
		allocations = append(allocations, ptr)
	}

	initialMallocs := gcMallocs
	t.Logf("Allocated %d objects (%d mallocs total)", len(allocations), initialMallocs)

	// Clear references to half the allocations (make them garbage)
	garbageCount := len(allocations) / 2
	allocations = allocations[garbageCount:]

	// Force GC
	freeBytes := GC()

	t.Logf("GC freed %d bytes", freeBytes)
	t.Logf("Objects freed: %d", gcFrees)

	// Try to allocate more after GC
	for i := 0; i < 10; i++ {
		ptr := Alloc(allocSize)
		if ptr == nil {
			t.Fatalf("Failed to allocate after GC at iteration %d", i)
		}
	}

	t.Log("Successfully allocated more objects after GC")
}

func TestMockGCCircularReferences(t *testing.T) {
	layout := createMockMemoryLayout()
	layout.setupMockGC()

	type Node struct {
		data [3]uintptr
		next uintptr
	}

	// Create a circular linked list
	nodes := make([]*Node, 5)
	for i := range nodes {
		nodes[i] = (*Node)(Alloc(unsafe.Sizeof(Node{})))
		nodes[i].data[0] = uintptr(i) // Store index as data
	}

	// Link them in a circle
	for i := range nodes {
		nextIdx := (i + 1) % len(nodes)
		nodes[i].next = uintptr(unsafe.Pointer(nodes[nextIdx]))
	}

	t.Logf("Created circular list of %d nodes", len(nodes))

	// Initially all should be allocated
	for i, node := range nodes {
		addr := uintptr(unsafe.Pointer(node))
		block := blockFromAddr(addr)
		state := gcStateOf(block)
		if state != blockStateHead {
			t.Errorf("Node %d at %x has state %d, expected %d", i, addr, state, blockStateHead)
		}
	}

	// Clear references (make entire circle unreachable)
	// for i := range nodes {
	// 	nodes[zi] = nil
	// }

	// Force GC without roots
	freeBytes := GC()

	t.Logf("GC freed %d bytes", freeBytes)

	// All nodes should now be freed since they're not reachable
	// Note: We can't check the specific nodes since we cleared the references,
	// but we can verify that significant memory was freed
	expectedFreed := uintptr(len(nodes)) * ((unsafe.Sizeof(Node{}) + bytesPerBlock - 1) / bytesPerBlock) * bytesPerBlock

	if freeBytes < expectedFreed {
		t.Errorf("Expected at least %d bytes freed, got %d", expectedFreed, freeBytes)
	}

	// Verify we can allocate new objects in the freed space
	newPtr := Alloc(unsafe.Sizeof(Node{}))
	if newPtr == nil {
		t.Error("Failed to allocate after freeing circular references")
	}
}
