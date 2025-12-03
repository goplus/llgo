//go:build testGC

package tinygogc

import (
	"testing"
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
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

// mockGCEnv provides a controlled root environment for GC testing
type mockGCEnv struct {
	memory       []byte
	heapStart    uintptr
	heapEnd      uintptr
	globalsStart uintptr
	globalsEnd   uintptr
	stackStart   uintptr
	stackEnd     uintptr
	// Controlled root sets for testing
	rootObjects []unsafe.Pointer
	// Original GC state to restore
	originalHeapStart     uintptr
	originalHeapEnd       uintptr
	originalGlobalsStart  uintptr
	originalGlobalsEnd    uintptr
	originalStackTop      uintptr
	originalEndBlock      uintptr
	originalMetadataStart unsafe.Pointer
	originalNextAlloc     uintptr
	originalIsGCInit      bool
	// Mock mode flag
	mockMode bool
}

// createMockGCEnv creates a completely isolated GC environment
func createMockGCEnv() *mockGCEnv {
	totalMemory := mockHeapSize + mockGlobalsSize + mockStackSize
	memory := make([]byte, totalMemory)
	baseAddr := uintptr(unsafe.Pointer(&memory[0]))

	env := &mockGCEnv{
		memory:       memory,
		globalsStart: baseAddr,
		globalsEnd:   baseAddr + mockGlobalsSize,
		heapStart:    baseAddr + mockGlobalsSize + mockReservedSize,
		heapEnd:      baseAddr + mockGlobalsSize + mockHeapSize,
		stackStart:   baseAddr + mockGlobalsSize + mockHeapSize,
		stackEnd:     baseAddr + uintptr(totalMemory),
		rootObjects:  make([]unsafe.Pointer, 0),
		mockMode:     false,
	}

	return env
}

// setupMockGC initializes the GC with mock memory layout using initGC's logic
func (env *mockGCEnv) setupMockGC() {
	// Save original GC state
	env.originalHeapStart = heapStart
	env.originalHeapEnd = heapEnd
	env.originalGlobalsStart = globalsStart
	env.originalGlobalsEnd = globalsEnd
	env.originalStackTop = stackTop
	env.originalEndBlock = endBlock
	env.originalMetadataStart = metadataStart
	env.originalNextAlloc = nextAlloc
	env.originalIsGCInit = isGCInit

	// Set currentStack for getsp()
	currentStack = env.stackStart

	// Apply initGC's logic with our mock memory layout
	// This is the same logic as initGC() but with our mock addresses
	heapStart = env.heapStart + 2048 // reserve 2K blocks like initGC does
	heapEnd = env.heapEnd
	globalsStart = env.globalsStart
	globalsEnd = env.globalsEnd
	stackTop = env.stackEnd

	totalSize := heapEnd - heapStart
	metadataSize := (totalSize + blocksPerStateByte*bytesPerBlock) / (1 + blocksPerStateByte*bytesPerBlock)
	metadataStart = unsafe.Pointer(heapEnd - metadataSize)
	endBlock = (uintptr(metadataStart) - heapStart) / bytesPerBlock

	// Clear metadata using memset like initGC does
	c.Memset(metadataStart, 0, metadataSize)

	// Reset allocator state and all GC statistics for clean test environment
	nextAlloc = 0
	isGCInit = true

	// Reset all GC statistics to start from clean state
	gcTotalAlloc = 0
	gcTotalBlocks = 0
	gcMallocs = 0
	gcFrees = 0
	gcFreedBlocks = 0
	markStackOverflow = false
}

// restoreOriginalGC restores the original GC state
func (env *mockGCEnv) restoreOriginalGC() {
	heapStart = env.originalHeapStart
	heapEnd = env.originalHeapEnd
	globalsStart = env.originalGlobalsStart
	globalsEnd = env.originalGlobalsEnd
	stackTop = env.originalStackTop
	endBlock = env.originalEndBlock
	metadataStart = env.originalMetadataStart
	nextAlloc = env.originalNextAlloc
	isGCInit = false
}

// enableMockMode enables mock root scanning mode
func (env *mockGCEnv) enableMockMode() {
	env.mockMode = true
}

// disableMockMode disables mock root scanning mode
func (env *mockGCEnv) disableMockMode() {
	env.mockMode = false
}

// addRoot adds an object to the controlled root set
func (env *mockGCEnv) addRoot(ptr unsafe.Pointer) {
	env.rootObjects = append(env.rootObjects, ptr)
}

// clearRoots removes all objects from the controlled root set
func (env *mockGCEnv) clearRoots() {
	env.rootObjects = env.rootObjects[:0]
}

// mockMarkReachable replaces gcMarkReachable when in mock mode
func (env *mockGCEnv) mockMarkReachable() {
	if !env.mockMode {
		// Use original logic
		markRoots(uintptr(getsp()), stackTop)
		markRoots(globalsStart, globalsEnd)
		return
	}

	// Mock mode: only scan our controlled roots
	for _, root := range env.rootObjects {
		addr := uintptr(root)
		markRoot(addr, addr)
	}
}

// runMockGC runs standard GC but with controlled root scanning
func (env *mockGCEnv) runMockGC() uintptr {
	lock(&gcMutex)
	defer unlock(&gcMutex)

	lazyInit()

	if gcDebug {
		println("running mock collection cycle...")
	}

	// Mark phase: use our mock root scanning
	env.mockMarkReachable()
	finishMark()

	// Resume world (no-op in single threaded)
	gcResumeWorld()

	// Sweep phase: use standard sweep logic
	return sweep()
}

// createTestObjects creates a network of objects for testing reachability
func createTestObjects(env *mockGCEnv) []*testObject {
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

func TestMockGCBasicAllocation(t *testing.T) {
	env := createMockGCEnv()
	env.setupMockGC()
	defer env.restoreOriginalGC()

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
	env := createMockGCEnv()
	env.setupMockGC()
	defer env.restoreOriginalGC()

	// Track initial stats
	initialMallocs := gcMallocs
	initialFrees := gcFrees

	// Create test object network
	objects := createTestObjects(env)

	// Add first 2 objects as roots using mock control
	env.enableMockMode()
	env.addRoot(unsafe.Pointer(objects[0])) // root1
	env.addRoot(unsafe.Pointer(objects[1])) // root2

	t.Logf("Created %d objects, 2 are roots", len(objects))
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

	// Perform GC with controlled root scanning
	freedBytes := env.runMockGC()
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

	// Clear refs to make grandchild1 unreachable
	objects[2].data[0] = 0 // child1 -> grandchild1
	objects[3].data[0] = 0 // child2 -> grandchild1

	// Run GC again with same roots
	freedBytes = env.runMockGC()

	// child2 should still be reachable (through root1)
	blockAddr := blockFromAddr(uintptr(unsafe.Pointer(objects[3])))
	state := gcStateOf(blockAddr)
	if state != blockStateHead {
		t.Errorf("Object child2 at %x has state %d, expected %d (HEAD)", blockAddr, state, blockStateHead)
	}

	// grandchild1 should now be unreachable and freed
	blockAddr = blockFromAddr(uintptr(unsafe.Pointer(objects[4])))
	state = gcStateOf(blockAddr)
	if state != blockStateFree {
		t.Errorf("Object grandchild1 at %x has state %d, expected %d (FREE)", blockAddr, state, blockStateFree)
	}
}

func TestMockGCMemoryPressure(t *testing.T) {
	env := createMockGCEnv()
	env.setupMockGC()
	defer env.restoreOriginalGC()

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

	// Enable mock mode and keep only half the allocations as roots
	env.enableMockMode()
	keepCount := len(allocations) / 2
	for i := 0; i < keepCount; i++ {
		env.addRoot(allocations[i])
	}

	t.Logf("Keeping %d objects as roots, %d should be freed", keepCount, len(allocations)-keepCount)

	// Force GC with controlled roots
	freeBytes := env.runMockGC()

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

func TestMockGCStats(t *testing.T) {
	env := createMockGCEnv()
	env.setupMockGC()
	defer env.restoreOriginalGC()

	// Get initial stats
	initialStats := ReadGCStats()
	t.Logf("Initial stats - Mallocs: %d, Frees: %d, TotalAlloc: %d, Alloc: %d",
		initialStats.Mallocs, initialStats.Frees, initialStats.TotalAlloc, initialStats.Alloc)

	// Verify basic system stats
	expectedSys := uint64(env.heapEnd - env.heapStart - 2048)
	if initialStats.Sys != expectedSys {
		t.Errorf("Expected Sys %d, got %d", expectedSys, initialStats.Sys)
	}

	expectedGCSys := uint64(env.heapEnd - uintptr(metadataStart))
	if initialStats.GCSys != expectedGCSys {
		t.Errorf("Expected GCSys %d, got %d", expectedGCSys, initialStats.GCSys)
	}

	// Allocate some objects
	var allocations []unsafe.Pointer
	allocSize := uintptr(64)
	numAllocs := 10

	for i := 0; i < numAllocs; i++ {
		ptr := Alloc(allocSize)
		if ptr == nil {
			t.Fatalf("Failed to allocate at iteration %d", i)
		}
		allocations = append(allocations, ptr)
	}

	// Check stats after allocation
	afterAllocStats := ReadGCStats()
	t.Logf("After allocation - Mallocs: %d, Frees: %d, TotalAlloc: %d, Alloc: %d",
		afterAllocStats.Mallocs, afterAllocStats.Frees, afterAllocStats.TotalAlloc, afterAllocStats.Alloc)

	// Verify allocation stats increased
	if afterAllocStats.Mallocs <= initialStats.Mallocs {
		t.Errorf("Expected Mallocs to increase from %d, got %d", initialStats.Mallocs, afterAllocStats.Mallocs)
	}

	if afterAllocStats.TotalAlloc <= initialStats.TotalAlloc {
		t.Errorf("Expected TotalAlloc to increase from %d, got %d", initialStats.TotalAlloc, afterAllocStats.TotalAlloc)
	}

	if afterAllocStats.Alloc <= initialStats.Alloc {
		t.Errorf("Expected Alloc to increase from %d, got %d", initialStats.Alloc, afterAllocStats.Alloc)
	}

	// Verify Alloc and HeapAlloc are the same
	if afterAllocStats.Alloc != afterAllocStats.HeapAlloc {
		t.Errorf("Expected Alloc (%d) to equal HeapAlloc (%d)", afterAllocStats.Alloc, afterAllocStats.HeapAlloc)
	}

	// Perform GC with controlled roots - keep only half the allocations
	env.enableMockMode()
	keepCount := len(allocations) / 2
	for i := 0; i < keepCount; i++ {
		env.addRoot(allocations[i])
	}

	freedBytes := env.runMockGC()
	t.Logf("GC freed %d bytes", freedBytes)

	// Check stats after GC
	afterGCStats := ReadGCStats()
	t.Logf("After GC - Mallocs: %d, Frees: %d, TotalAlloc: %d, Alloc: %d",
		afterGCStats.Mallocs, afterGCStats.Frees, afterGCStats.TotalAlloc, afterGCStats.Alloc)

	// Verify GC stats
	if afterGCStats.Frees <= afterAllocStats.Frees {
		t.Errorf("Expected Frees to increase from %d, got %d", afterAllocStats.Frees, afterGCStats.Frees)
	}

	// TotalAlloc should not decrease (cumulative)
	if afterGCStats.TotalAlloc != afterAllocStats.TotalAlloc {
		t.Errorf("Expected TotalAlloc to remain %d after GC, got %d", afterAllocStats.TotalAlloc, afterGCStats.TotalAlloc)
	}

	// Alloc should decrease (freed objects)
	if afterGCStats.Alloc >= afterAllocStats.Alloc {
		t.Errorf("Expected Alloc to decrease from %d after GC, got %d", afterAllocStats.Alloc, afterGCStats.Alloc)
	}

	// Verify heap statistics consistency
	if afterGCStats.HeapSys != afterGCStats.HeapInuse+afterGCStats.HeapIdle {
		t.Errorf("Expected HeapSys (%d) to equal HeapInuse (%d) + HeapIdle (%d)",
			afterGCStats.HeapSys, afterGCStats.HeapInuse, afterGCStats.HeapIdle)
	}

	// Verify live objects calculation
	expectedLiveObjects := afterGCStats.Mallocs - afterGCStats.Frees
	t.Logf("Live objects: %d (Mallocs: %d - Frees: %d)", expectedLiveObjects, afterGCStats.Mallocs, afterGCStats.Frees)

	// The number of live objects should be reasonable (we kept half the allocations plus some overhead)
	if expectedLiveObjects < uint64(keepCount) {
		t.Errorf("Expected at least %d live objects, got %d", keepCount, expectedLiveObjects)
	}

	// Test stack statistics
	if afterGCStats.StackInuse > afterGCStats.StackSys {
		t.Errorf("StackInuse (%d) should not exceed StackSys (%d)", afterGCStats.StackInuse, afterGCStats.StackSys)
	}
}

func TestMockGCCircularReferences(t *testing.T) {
	env := createMockGCEnv()
	env.setupMockGC()
	defer env.restoreOriginalGC()

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

	// Test 1: With root references - objects should NOT be freed
	env.enableMockMode()
	// Add the first node as root (keeps entire circle reachable)
	env.addRoot(unsafe.Pointer(nodes[0]))

	freeBytes := env.runMockGC()
	t.Logf("GC with root reference freed %d bytes", freeBytes)

	// All nodes should still be allocated since they're reachable through the root
	for i, node := range nodes {
		addr := uintptr(unsafe.Pointer(node))
		block := blockFromAddr(addr)
		state := gcStateOf(block)
		if state != blockStateHead {
			t.Errorf("Node %d at %x should still be allocated, but has state %d", i, addr, state)
		}
	}

	// Test 2: Without root references - all circular objects should be freed
	env.clearRoots() // Remove all root references

	freeBytes = env.runMockGC()
	t.Logf("GC without roots freed %d bytes", freeBytes)

	// All nodes should now be freed since they're not reachable from any roots
	expectedFreed := uintptr(len(nodes)) * ((unsafe.Sizeof(Node{}) + bytesPerBlock - 1) / bytesPerBlock) * bytesPerBlock

	if freeBytes < expectedFreed {
		t.Errorf("Expected at least %d bytes freed, got %d", expectedFreed, freeBytes)
	}

	// Verify all nodes are actually freed
	for i, node := range nodes {
		addr := uintptr(unsafe.Pointer(node))
		block := blockFromAddr(addr)
		state := gcStateOf(block)
		if state != blockStateFree {
			t.Errorf("Node %d at %x should be freed, but has state %d", i, addr, state)
		}
	}

	// Verify we can allocate new objects in the freed space
	newPtr := Alloc(unsafe.Sizeof(Node{}))
	if newPtr == nil {
		t.Error("Failed to allocate after freeing circular references")
	}
}
