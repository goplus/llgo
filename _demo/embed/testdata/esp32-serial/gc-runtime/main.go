package main

import (
	c "github.com/goplus/lib/c"
	_ "unsafe"
)

var sink any

const debugGC = false

type gcStats struct {
	Alloc      uint64
	TotalAlloc uint64
	Sys        uint64
	Mallocs    uint64
	Frees      uint64
	HeapAlloc  uint64
	HeapSys    uint64
	HeapIdle   uint64
	HeapInuse  uint64
	StackInuse uint64
	StackSys   uint64
	GCSys      uint64
}

//go:linkname gcCollect github.com/goplus/llgo/runtime/internal/runtime/tinygogc.GC
func gcCollect() uintptr

//go:linkname readGCStats github.com/goplus/llgo/runtime/internal/runtime/tinygogc.ReadGCStats
func readGCStats() gcStats

// Adapted from Go's runtime/testdata/testprog/gc.go DeferLiveness case.
// This exercises real stack scanning on embedded targets instead of pc_mock roots.
func escape(x any) {
	sink = x
	sink = nil
}

func fail(msg string) bool {
	println("FAIL:", msg)
	return false
}

func printStats(label string, freeBytes uintptr, s gcStats) {
	if !debugGC {
		return
	}
	println(
		"GC",
		label,
		"free", freeBytes,
		"alloc", s.Alloc,
		"total", s.TotalAlloc,
		"mallocs", s.Mallocs,
		"frees", s.Frees,
		"heapAlloc", s.HeapAlloc,
		"heapSys", s.HeapSys,
		"heapIdle", s.HeapIdle,
		"heapInuse", s.HeapInuse,
		"stackInuse", s.StackInuse,
		"stackSys", s.StackSys,
		"gcSys", s.GCSys,
	)
}

func collectAndPrint(label string) (uintptr, gcStats) {
	freeBytes := gcCollect()
	stats := readGCStats()
	printStats(label, freeBytes, stats)
	return freeBytes, stats
}

// esp32c3-basic inherits the 2KiB default stack from riscv32-esp, so keep
// the scrub buffer below that while still forcing SP to move materially.
const stackScrubSize = 1024

func collectOnCleanStack(label string) (uintptr, gcStats) {
	buf := c.Alloca(stackScrubSize)
	c.Memset(buf, 0, stackScrubSize)

	freeBytes := gcCollect()
	stats := readGCStats()
	printStats(label, freeBytes, stats)
	return freeBytes, stats
}

func testDeferLiveness() bool {
	ok := false
	func() {
		var x [10]int
		escape(&x)
		defer func() {
			ok = x[0] == 42
		}()

		x[0] = 42
		gcCollect()
		gcCollect()
		gcCollect()
	}()

	if !ok {
		return fail("defer closure lost stack root after GC")
	}
	return true
}

type node struct {
	next *node
	alt  *node
	data [4]uintptr
	id   int
}

var roots []*node
var cycleRoot *node
var pressureRoots []*node
var pressureExtra []*node

func buildReachabilityGraph() {
	root1 := &node{id: 1}
	root2 := &node{id: 2}
	child1 := &node{id: 3}
	child2 := &node{id: 4}
	grandchild1 := &node{id: 5}

	root1.next = child1
	root1.alt = child2
	child1.next = grandchild1
	child2.next = grandchild1
	grandchild1.next = child2

	roots = []*node{root1, root2}

	garbage1 := &node{id: 101}
	garbage2 := &node{id: 102}
	garbage1.next = garbage2
	garbage2.next = garbage1
	escape(garbage1)
	escape(garbage2)
}

func buildRootedCycle() {
	head := &node{id: 200}
	prev := head
	for i := 1; i < 5; i++ {
		cur := &node{id: 200 + i}
		prev.next = cur
		prev = cur
	}
	prev.next = head
	cycleRoot = head
}

func buildPressureRoots(total int) {
	pressureRoots = pressureRoots[:0]
	for i := 0; i < total; i++ {
		p := &node{id: 300 + i}
		p.data[0] = uintptr(i + 1)
		if i%2 == 0 {
			pressureRoots = append(pressureRoots, p)
		} else {
			escape(p)
		}
	}
}

func buildPressureExtra(total int) {
	pressureExtra = pressureExtra[:0]
	for i := 0; i < total; i++ {
		p := &node{id: 500 + i}
		p.data[0] = uintptr(i + 1)
		pressureExtra = append(pressureExtra, p)
	}
}

func testBasicAllocationAndStats() bool {
	_, base := collectAndPrint("basic-base")

	a := &node{id: 10}
	b := &node{id: 11, next: a}
	c := &node{id: 12, next: b, alt: a}
	escape(a)
	escape(b)
	escape(c)

	_, after := collectAndPrint("basic-after")

	if a == nil || b == nil || c == nil {
		return fail("basic allocation returned nil object")
	}
	if a == b || b == c || a == c {
		return fail("distinct allocations collapsed to same address")
	}
	if c.next != b || c.alt != a {
		return fail("allocated objects lost their references")
	}
	if after.Mallocs <= base.Mallocs {
		return fail("malloc count did not increase after basic allocation")
	}
	if after.TotalAlloc <= base.TotalAlloc {
		return fail("total allocation did not increase after basic allocation")
	}
	if after.Alloc <= base.Alloc {
		return fail("allocated bytes did not increase after basic allocation")
	}
	if after.Alloc != after.HeapAlloc {
		return fail("Alloc and HeapAlloc diverged")
	}
	if after.HeapInuse+after.HeapIdle != after.HeapSys {
		return fail("HeapSys accounting mismatch")
	}
	if after.StackInuse > after.StackSys {
		return fail("StackInuse exceeded StackSys")
	}
	if after.Sys == 0 || after.GCSys == 0 {
		return fail("GC system stats were not initialized")
	}
	return true
}

func testCycleCollection() bool {
	roots = nil
	_, base := collectAndPrint("reachability-base")

	buildReachabilityGraph()
	_, mid := collectAndPrint("reachability-after-build")

	if len(roots) != 2 || roots[0] == nil || roots[0].next == nil || roots[0].alt == nil {
		return fail("root graph was not constructed")
	}
	if roots[0].next.next == nil || roots[0].next.next.id != 5 {
		return fail("reachable grandchild was corrupted during GC")
	}
	if roots[0].alt.next == nil || roots[0].alt.next.id != 5 {
		return fail("shared reachable child was corrupted during GC")
	}
	if mid.Mallocs <= base.Mallocs {
		return fail("malloc count did not increase for reachability graph")
	}
	if mid.Frees <= base.Frees {
		return fail("unreachable garbage cycle was not collected")
	}
	if mid.Alloc != mid.HeapAlloc {
		return fail("Alloc and HeapAlloc diverged")
	}
	if mid.HeapInuse+mid.HeapIdle != mid.HeapSys {
		return fail("HeapSys accounting mismatch")
	}

	dropReachabilityGrandchild()
	_, afterDrop := collectOnCleanStack("reachability-after-drop")

	if afterDrop.Frees <= mid.Frees {
		return fail("dropping reachable references did not free grandchild cycle")
	}
	if roots[0].alt == nil || roots[0].alt.id != 4 {
		return fail("live child was corrupted after dropping grandchild")
	}
	if afterDrop.Alloc > mid.Alloc+1024 {
		return fail("heap usage did not shrink after dropping roots")
	}
	return true
}

func dropReachabilityGrandchild() {
	roots[0].next.next = nil
	roots[0].alt.next = nil
}

func sumCycle(head *node) (int, bool) {
	cur := head
	sum := 0
	for i := 0; i < 5; i++ {
		if cur == nil {
			return 0, false
		}
		sum += cur.id
		cur = cur.next
	}
	return sum, cur == head
}

func testCircularReferences() bool {
	cycleRoot = nil
	_, base := collectAndPrint("cycle-base")

	buildRootedCycle()
	_, mid := collectAndPrint("cycle-rooted")

	sum, ok := sumCycle(cycleRoot)
	if !ok {
		return fail("rooted cycle no longer closed after GC")
	}
	if sum != 200+201+202+203+204 {
		return fail("rooted cycle payload was corrupted after GC")
	}

	dropCycleRoot()
	_, after := collectOnCleanStack("cycle-dropped")

	if mid.Mallocs <= base.Mallocs {
		return fail("rooted cycle did not allocate objects")
	}
	if after.Frees <= mid.Frees {
		return fail("dropping rooted cycle did not free cycle objects")
	}
	if after.Alloc >= mid.Alloc {
		return fail("heap usage did not shrink after dropping rooted cycle")
	}
	return true
}

func dropCycleRoot() {
	cycleRoot = nil
}

func testMemoryPressure() bool {
	pressureRoots = nil
	pressureExtra = nil
	_, base := collectAndPrint("pressure-base")

	buildPressureRoots(192)
	_, kept := collectAndPrint("pressure-kept")

	if len(pressureRoots) != 96 {
		return fail("pressure roots count mismatch")
	}
	if kept.Mallocs <= base.Mallocs {
		return fail("memory pressure allocations did not increase malloc count")
	}

	buildPressureExtra(48)
	_, afterExtra := collectAndPrint("pressure-extra")

	if len(pressureExtra) != 48 || pressureExtra[0] == nil || pressureExtra[len(pressureExtra)-1] == nil {
		return fail("allocation under memory pressure failed")
	}
	if afterExtra.Mallocs <= kept.Mallocs {
		return fail("extra allocations under pressure did not advance malloc count")
	}

	dropPressureState()
	_, afterDrop := collectOnCleanStack("pressure-drop")

	if afterDrop.Frees <= afterExtra.Frees {
		return fail("dropping pressure roots did not free pressure objects")
	}
	if afterDrop.Alloc > kept.Alloc+4096 {
		return fail("heap usage stayed high after releasing pressure roots")
	}
	return true
}

func dropPressureState() {
	pressureRoots = nil
	pressureExtra = nil
}

func testStatsConsistency() bool {
	_, stats := collectAndPrint("stats")

	if stats.Alloc != stats.HeapAlloc {
		return fail("Alloc and HeapAlloc diverged in stats check")
	}
	if stats.HeapSys != stats.HeapInuse+stats.HeapIdle {
		return fail("HeapSys was inconsistent with HeapInuse and HeapIdle")
	}
	if stats.Mallocs < stats.Frees {
		return fail("malloc count fell below free count")
	}
	if stats.StackInuse > stats.StackSys {
		return fail("StackInuse exceeded StackSys in stats check")
	}
	if stats.Sys == 0 || stats.GCSys == 0 {
		return fail("stats check observed zeroed system counters")
	}
	return true
}

func main() {
	if !testBasicAllocationAndStats() {
		return
	}
	if !testStatsConsistency() {
		return
	}
	if !testDeferLiveness() {
		return
	}
	if !testCycleCollection() {
		return
	}
	if !testCircularReferences() {
		return
	}
	if !testMemoryPressure() {
		return
	}
	println("OK")
}
