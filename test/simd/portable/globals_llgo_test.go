//go:build goexperiment.simd && llgo && (amd64 || arm64 || wasm)

package portable

import (
	"simd"
	"testing"

	"github.com/xgo-dev/llgo/test/simd/portable/internal/vectorops"
)

var initEvents []int

func record(n int) int {
	initEvents = append(initEvents, n)
	return n
}

var ordinaryFirst = record(1)
var forwardValue = readGlobal()
var globalVector, mixedScalar = makeGlobal()
var nilVector *simd.Uint32s = nil
var _ = blankGlobal()
var initCount int

func makeGlobal() (simd.Uint32s, int) {
	record(2)
	return simd.BroadcastUint32s(11), 23
}

func readGlobal() uint32 {
	record(3)
	return (vectorops.Block{Vector: globalVector}).Sum()
}

func blankGlobal() simd.Uint32s {
	record(4)
	return simd.BroadcastUint32s(17)
}

func init() {
	initCount++
	globalVector = globalVector.Add(simd.BroadcastUint32s(1))
}

func init() {
	initCount++
	globalVector = globalVector.Add(simd.BroadcastUint32s(2))
}

func TestPortableInitialization(t *testing.T) {
	if len(initEvents) != 4 {
		t.Fatalf("initializer side effects repeated: %v", initEvents)
	}
	for i, want := range []int{1, 2, 3, 4} {
		if initEvents[i] != want {
			t.Fatalf("initialization order=%v", initEvents)
		}
	}
	if ordinaryFirst != 1 || mixedScalar != 23 || initCount != 2 || nilVector != nil {
		t.Fatalf("global state: %d %d %d %v", ordinaryFirst, mixedScalar, initCount, nilVector)
	}
	if forwardValue != uint32(11*globalVector.Len()) {
		t.Fatalf("forward initialization=%d", forwardValue)
	}
	if got := (vectorops.Block{Vector: globalVector}).Sum(); got != uint32(14*globalVector.Len()) {
		t.Fatalf("selected global value=%d", got)
	}
}

func TestPortableMethodAndEmbedding(t *testing.T) {
	e := vectorops.NewEmbedded(6)
	if got := (vectorops.Block{Vector: e.Uint32s}).Sum(); got != uint32(6*e.Len()) {
		t.Fatalf("embedded field=%d", got)
	}
	var reducer interface{ Reduce([]uint32) uint32 } = vectorops.BodyReducer{}
	if got := reducer.Reduce([]uint32{1, 2, 3, 4, 5}); got != 15 {
		t.Fatalf("method-body dependent receiver=%d", got)
	}
}
