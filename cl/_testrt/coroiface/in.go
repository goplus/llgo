package main

import _ "unsafe"

//go:linkname coroSuspend llgo.coroSuspend
func coroSuspend()

// Worker interface with async method
type Worker interface {
	Work() int
}

// SyncWorker - no suspend points
type SyncWorker struct {
	value int
}

func (w *SyncWorker) Work() int {
	println("SyncWorker.Work: value =", w.value)
	return w.value * 2
}

// AsyncWorker - has suspend points
type AsyncWorker struct {
	value int
}

func (w *AsyncWorker) Work() int {
	println("AsyncWorker.Work: start, value =", w.value)
	coroSuspend()
	result := w.value * 3
	println("AsyncWorker.Work: done, result =", result)
	return result
}

// callWorker calls Worker.Work through interface
func callWorker(w Worker, label string) int {
	println("callWorker:", label)
	result := w.Work()
	println("callWorker: result =", result)
	return result
}

// asyncCallWorker calls Worker.Work from async context
func asyncCallWorker(w Worker, label string) int {
	println("asyncCallWorker:", label)
	coroSuspend() // make this function tainted
	result := w.Work()
	println("asyncCallWorker: result =", result)
	return result
}

// === Complex Test: Embedded Interface ===
type Namer interface {
	Name() string
}

type AdvancedWorker interface {
	Worker
	Namer
	Process(x int) int
}

type FullWorker struct {
	name  string
	value int
}

func (f *FullWorker) Work() int {
	println("FullWorker.Work: value =", f.value)
	coroSuspend()
	return f.value * 4
}

func (f *FullWorker) Name() string {
	println("FullWorker.Name:", f.name)
	return f.name
}

func (f *FullWorker) Process(x int) int {
	println("FullWorker.Process: x =", x)
	coroSuspend()
	return f.value + x
}

// === Complex Test: Interface calls interface ===
type Delegator interface {
	Delegate(w Worker) int
}

type AsyncDelegator struct {
	multiplier int
}

func (d *AsyncDelegator) Delegate(w Worker) int {
	println("AsyncDelegator.Delegate: calling worker")
	coroSuspend()
	result := w.Work() // interface call inside interface method
	println("AsyncDelegator.Delegate: worker returned", result)
	return result * d.multiplier
}

// === Complex Test: Interface returns interface ===
type WorkerFactory interface {
	Create(value int) Worker
}

type AsyncWorkerFactory struct{}

func (f *AsyncWorkerFactory) Create(value int) Worker {
	println("AsyncWorkerFactory.Create: value =", value)
	coroSuspend()
	return &AsyncWorker{value: value}
}

type SyncWorkerFactory struct{}

func (f *SyncWorkerFactory) Create(value int) Worker {
	println("SyncWorkerFactory.Create: value =", value)
	return &SyncWorker{value: value}
}

// === Complex Test: Type assertion ===
func testTypeAssertion(w Worker) {
	println("testTypeAssertion: start")
	if aw, ok := w.(*AsyncWorker); ok {
		println("testTypeAssertion: got AsyncWorker, value =", aw.value)
		result := aw.Work()
		println("testTypeAssertion: AsyncWorker result =", result)
	} else if sw, ok := w.(*SyncWorker); ok {
		println("testTypeAssertion: got SyncWorker, value =", sw.value)
		result := sw.Work()
		println("testTypeAssertion: SyncWorker result =", result)
	}
}

// === Complex Test: Interface slice ===
func processWorkers(workers []Worker) int {
	println("processWorkers: processing", len(workers), "workers")
	total := 0
	for i, w := range workers {
		println("processWorkers: worker", i)
		result := w.Work()
		total += result
	}
	println("processWorkers: total =", total)
	return total
}

// === Complex Test: Async function with interface slice ===
func asyncProcessWorkers(workers []Worker) int {
	println("asyncProcessWorkers: start")
	coroSuspend()
	total := 0
	for i, w := range workers {
		println("asyncProcessWorkers: worker", i)
		result := w.Work()
		total += result
	}
	println("asyncProcessWorkers: total =", total)
	return total
}

// === Complex Test: Nested interface embedding ===
type Resettable interface {
	Reset()
}

type ResettableWorker interface {
	Worker
	Resettable
}

type StatefulWorker struct {
	initial int
	current int
}

func (s *StatefulWorker) Work() int {
	println("StatefulWorker.Work: current =", s.current)
	coroSuspend()
	result := s.current
	s.current += 10
	return result
}

func (s *StatefulWorker) Reset() {
	println("StatefulWorker.Reset: resetting to", s.initial)
	s.current = s.initial
}

func testResettableWorker(rw ResettableWorker) {
	println("testResettableWorker: first work")
	r1 := rw.Work()
	println("testResettableWorker: result1 =", r1)

	println("testResettableWorker: second work")
	r2 := rw.Work()
	println("testResettableWorker: result2 =", r2)

	println("testResettableWorker: reset")
	rw.Reset()

	println("testResettableWorker: work after reset")
	r3 := rw.Work()
	println("testResettableWorker: result3 =", r3)
}

// === Complex Test: Interface method value ===
func testMethodValue(w Worker) {
	println("testMethodValue: getting method value")
	workFn := w.Work // method value
	println("testMethodValue: calling method value")
	result := workFn()
	println("testMethodValue: result =", result)
}

// === Complex Test: Async method value call ===
func asyncTestMethodValue(w Worker) {
	println("asyncTestMethodValue: start")
	coroSuspend()
	workFn := w.Work
	println("asyncTestMethodValue: calling method value")
	result := workFn()
	println("asyncTestMethodValue: result =", result)
}

// === Complex Test: Method expression ($thunk) ===
// Method expression T.Method creates a function that takes receiver as first arg
func testMethodExpression() {
	println("testMethodExpression: start")
	// Method expression: (*AsyncWorker).Work creates a $thunk
	workThunk := (*AsyncWorker).Work
	aw := &AsyncWorker{value: 99}
	println("testMethodExpression: calling thunk with receiver")
	result := workThunk(aw)
	println("testMethodExpression: result =", result)
}

// === Complex Test: Async method expression call ===
func asyncTestMethodExpression() {
	println("asyncTestMethodExpression: start")
	coroSuspend()
	workThunk := (*SyncWorker).Work
	sw := &SyncWorker{value: 88}
	println("asyncTestMethodExpression: calling thunk")
	result := workThunk(sw)
	println("asyncTestMethodExpression: result =", result)
}

func main() {
	println("=== Test 1: Sync worker through interface (sync context) ===")
	sw := &SyncWorker{value: 10}
	r1 := callWorker(sw, "sync worker")
	println("main: sync worker result =", r1)

	println("\n=== Test 2: Async worker through interface (sync context) ===")
	aw := &AsyncWorker{value: 20}
	r2 := callWorker(aw, "async worker")
	println("main: async worker result =", r2)

	println("\n=== Test 3: Sync worker through interface (async context) ===")
	go asyncCallWorker(sw, "sync worker async")

	println("\n=== Test 4: Async worker through interface (async context) ===")
	go asyncCallWorker(aw, "async worker async")

	println("\n=== Test 5: Direct interface call in main ===")
	var w Worker = &AsyncWorker{value: 30}
	r5 := w.Work()
	println("main: direct interface result =", r5)

	println("\n=== Test 6: Embedded interface ===")
	fw := &FullWorker{name: "full", value: 50}
	var advW AdvancedWorker = fw
	r6a := advW.Work()
	println("main: FullWorker.Work result =", r6a)
	n6 := advW.Name()
	println("main: FullWorker.Name result =", n6)
	r6b := advW.Process(100)
	println("main: FullWorker.Process result =", r6b)

	println("\n=== Test 7: Interface calls interface (delegator) ===")
	delegator := &AsyncDelegator{multiplier: 2}
	var d Delegator = delegator
	r7 := d.Delegate(&AsyncWorker{value: 15})
	println("main: delegator result =", r7)

	println("\n=== Test 8: Interface returns interface (factory) ===")
	var factory WorkerFactory = &AsyncWorkerFactory{}
	created := factory.Create(25)
	r8 := created.Work()
	println("main: factory created worker result =", r8)

	println("\n=== Test 9: Type assertion ===")
	testTypeAssertion(&AsyncWorker{value: 35})
	testTypeAssertion(&SyncWorker{value: 40})

	println("\n=== Test 10: Interface slice ===")
	workers := []Worker{
		&SyncWorker{value: 5},
		&AsyncWorker{value: 10},
		&SyncWorker{value: 15},
	}
	r10 := processWorkers(workers)
	println("main: processWorkers total =", r10)

	println("\n=== Test 11: Async process interface slice ===")
	go asyncProcessWorkers(workers)

	println("\n=== Test 12: Resettable worker (nested embedding) ===")
	stateful := &StatefulWorker{initial: 100, current: 100}
	testResettableWorker(stateful)

	println("\n=== Test 13: Method value (sync context) ===")
	testMethodValue(&AsyncWorker{value: 60})

	println("\n=== Test 14: Method value (async context) ===")
	go asyncTestMethodValue(&AsyncWorker{value: 70})

	println("\n=== Test 15: Sync factory ===")
	var syncFactory WorkerFactory = &SyncWorkerFactory{}
	syncCreated := syncFactory.Create(45)
	r15 := syncCreated.Work()
	println("main: sync factory created worker result =", r15)

	println("\n=== Test 16: Method expression ($thunk) sync context ===")
	testMethodExpression()

	println("\n=== Test 17: Method expression ($thunk) async context ===")
	go asyncTestMethodExpression()

	println("main: done")
}
