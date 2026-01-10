//go:build llgo
// +build llgo

package asyncpull

import (
	"testing"

	"github.com/goplus/llgo/async"
)

// -----------------------------------------------------------------------------
// Switch Statement Tests
// -----------------------------------------------------------------------------

func TestSwitchAwait(t *testing.T) {
	tests := []struct {
		input int
		want  int
	}{
		{0, 0},    // Compute(0) = 0*2 = 0
		{1, 20},   // Compute(10) = 10*2 = 20
		{2, 40},   // Compute(20) = 20*2 = 40
		{99, 200}, // Compute(100) = 100*2 = 200
	}

	for _, tt := range tests {
		fut := SwitchAwaitAsync(tt.input)
		got := pollReady(t, fut)
		if got != tt.want {
			t.Errorf("SwitchAwaitAsync(%d) = %d, want %d", tt.input, got, tt.want)
		}
	}
}

func TestSwitchMultipleCases(t *testing.T) {
	tests := []struct {
		input int
		want  int
	}{
		{-5, 10},  // Compute(-(-5)) = 5*2 = 10
		{0, 0},    // x == 0 branch
		{5, 20},   // Compute(5)*2 = 10*2 = 20 (b*2 where b=10)
		{15, 130}, // Compute(15)+100 = 30+100 = 130
	}

	for _, tt := range tests {
		fut := SwitchMultipleCases(tt.input)
		got := pollReady(t, fut)
		if got != tt.want {
			t.Errorf("SwitchMultipleCases(%d) = %d, want %d", tt.input, got, tt.want)
		}
	}
}

// -----------------------------------------------------------------------------
// Map Parameter Tests
// -----------------------------------------------------------------------------

func TestMapParamAsync(t *testing.T) {
	m := map[string]int{"a": 5, "b": 10}

	// Key exists
	got := pollReady(t, MapParamAsync(m, "a"))
	if got != 10 { // Compute(5) = 10
		t.Errorf("MapParamAsync(m, 'a') = %d, want 10", got)
	}

	// Key missing
	got = pollReady(t, MapParamAsync(m, "missing"))
	if got != -1 {
		t.Errorf("MapParamAsync(m, 'missing') = %d, want -1", got)
	}
}

func TestMapIterAsync(t *testing.T) {
	m := map[string]int{"x": 1, "y": 2, "z": 3}
	got := pollReady(t, MapIterAsync(m))
	// Compute(1) + Compute(2) + Compute(3) = 2 + 4 + 6 = 12
	if got != 12 {
		t.Errorf("MapIterAsync = %d, want 12", got)
	}
}

// -----------------------------------------------------------------------------
// Heap Alloc Tests
// -----------------------------------------------------------------------------

func TestHeapAllocAsync(t *testing.T) {
	got := pollReady(t, HeapAllocAsync(21))
	// Compute(21) = 42
	if got != 42 {
		t.Errorf("HeapAllocAsync(21) = %d, want 42", got)
	}
}

func TestStructAllocAsync(t *testing.T) {
	got := pollReady(t, StructAllocAsync(3, 4))
	// Compute(3) + Compute(4) = 6 + 8 = 14
	if got != 14 {
		t.Errorf("StructAllocAsync(3, 4) = %d, want 14", got)
	}
}

// -----------------------------------------------------------------------------
// Complex Control Flow Tests
// -----------------------------------------------------------------------------

func TestNestedLoopAsync(t *testing.T) {
	got := pollReady(t, NestedLoopAsync(2, 3))
	// i=0: j=0,1,2 -> Compute(0,1,2) = 0,2,4 -> sum=6
	// i=1: j=0,1,2 -> Compute(1,2,3) = 2,4,6 -> sum=12
	// total = 6+12 = 18
	if got != 18 {
		t.Errorf("NestedLoopAsync(2, 3) = %d, want 18", got)
	}
}

func TestLoopWithMultipleAwaits(t *testing.T) {
	got := pollReady(t, LoopWithMultipleAwaits(3))
	// i=0: a=0, b=0
	// i=1: a=2, b=4
	// i=2: a=4, b=8
	// sum = 0+4+8 = 12
	if got != 12 {
		t.Errorf("LoopWithMultipleAwaits(3) = %d, want 12", got)
	}
}

func TestConditionalLoopAsync(t *testing.T) {
	got := pollReady(t, ConditionalLoopAsync(4))
	// i=0 (even): Compute(0) = 0
	// i=1 (odd): Compute(2) = 4
	// i=2 (even): Compute(2) = 4
	// i=3 (odd): Compute(6) = 12
	// sum = 0+4+4+12 = 20
	if got != 20 {
		t.Errorf("ConditionalLoopAsync(4) = %d, want 20", got)
	}
}

func TestRangeSliceIdxValAsync(t *testing.T) {
	arr := []int{2, 4, 6}
	// idx:0,1,2 -> Compute(idx)=0,2,4
	// val:2,4,6 -> Compute(val)=4,8,12
	// sum = (0+4)+(2+8)+(4+12) = 30
	got := pollReady(t, RangeSliceIdxValAsync(arr))
	if got != 30 {
		t.Errorf("RangeSliceIdxValAsync = %d, want 30", got)
	}
}

func TestRangeChanAsync(t *testing.T) {
	got := pollReady(t, RangeChanAsync(4))
	// channel has 0,1,2,3 -> Compute = 0,2,4,6 -> sum = 12
	if got != 12 {
		t.Errorf("RangeChanAsync(4) = %d, want 12", got)
	}
}

func TestSelectChanAsync(t *testing.T) {
	got := pollReady(t, SelectChanAsync())
	// deterministic: ch1 ready with 3 -> Compute(4) = 8
	if got != 8 {
		t.Errorf("SelectChanAsync = %d, want 8", got)
	}
}

// -----------------------------------------------------------------------------
// Additional Existing Functions Tests
// -----------------------------------------------------------------------------

func TestTwoAwaits(t *testing.T) {
	got := pollReady(t, TwoAwaits(5))
	// Compute(5) = 10, Compute(10) = 20
	if got != 20 {
		t.Errorf("TwoAwaits(5) = %d, want 20", got)
	}
}

func TestAwaitInBranches(t *testing.T) {
	gotTrue := pollReady(t, AwaitInBranches(true))
	if gotTrue != 20 { // Compute(10) = 20
		t.Errorf("AwaitInBranches(true) = %d, want 20", gotTrue)
	}

	gotFalse := pollReady(t, AwaitInBranches(false))
	if gotFalse != 40 { // Compute(20) = 40
		t.Errorf("AwaitInBranches(false) = %d, want 40", gotFalse)
	}
}

func TestAwaitInLoop(t *testing.T) {
	got := pollReady(t, AwaitInLoop(4))
	// Compute(0)+Compute(1)+Compute(2)+Compute(3) = 0+2+4+6 = 12
	if got != 12 {
		t.Errorf("AwaitInLoop(4) = %d, want 12", got)
	}
}

func TestModifyBetweenAwaits(t *testing.T) {
	got := pollReady(t, ModifyBetweenAwaits(5))
	// Compute(5) = 10, *2 = 20, Compute(20) = 40, sum = 20+40 = 60
	if got != 60 {
		t.Errorf("ModifyBetweenAwaits(5) = %d, want 60", got)
	}
}

func TestEarlyReturn(t *testing.T) {
	gotNeg := pollReady(t, EarlyReturn(-1))
	if gotNeg != -1 {
		t.Errorf("EarlyReturn(-1) = %d, want -1", gotNeg)
	}

	gotPos := pollReady(t, EarlyReturn(10))
	if gotPos != 20 { // Compute(10) = 20
		t.Errorf("EarlyReturn(10) = %d, want 20", gotPos)
	}
}

func TestDivmodAsync(t *testing.T) {
	fut := DivmodAsync(10, 3)
	ctx := &async.Context{}
	poll := fut.Poll(ctx)
	if !poll.IsReady() {
		t.Fatal("DivmodAsync not ready")
	}
	q, r := poll.Value().Get()
	// Compute(10/3) = Compute(3) = 6, Compute(10%3) = Compute(1) = 2
	if q != 6 || r != 2 {
		t.Errorf("DivmodAsync(10, 3) = (%d, %d), want (6, 2)", q, r)
	}
}
