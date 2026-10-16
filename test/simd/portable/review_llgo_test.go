//go:build llgo && goexperiment.simd && (amd64 || arm64 || wasm)

package portable

import (
	"simd"
	"testing"
)

// A generated import in another file must avoid these package-level names.
var llgoMidway1, llgoMidway1_ = 1, 2

type midwayBox[T any] struct{}

func (midwayBox[T]) Width() int { var v simd.Uint32s; return v.Len() }

var midwayGlobal midwayBox[int]

func midwayIdentity(x midwayBox[int]) midwayBox[int] { return x }
func midwayBlankWidth[_, _ any]() int                { var v simd.Uint32s; return v.Len() }

func TestPortableGenericReceiver(t *testing.T) {
	if got := midwayGlobal.Width(); got != 4 {
		t.Fatalf("global receiver width=%d", got)
	}
	if got := midwayIdentity(midwayBox[int]{}).Width(); got != 4 {
		t.Fatalf("instance width=%d", got)
	}
	if got := midwayBlankWidth[int, string](); got != 4 {
		t.Fatalf("blank type parameter width=%d", got)
	}
}

var midwayInitEvents []int

func midwayInitVector() simd.Uint32s {
	midwayInitEvents = append(midwayInitEvents, 1)
	return simd.BroadcastUint32s(7)
}
func midwayInitScalar() int { midwayInitEvents = append(midwayInitEvents, 2); return 42 }

var midwayInitA, midwayInitB = midwayInitVector(), midwayInitC
var midwayInitC = midwayInitScalar()
var midwayInitD, midwayInitE = simd.BroadcastUint32s(9), midwayInitD

func TestPortableSeparateInitializers(t *testing.T) {
	if len(midwayInitEvents) != 2 || midwayInitEvents[0] != 1 || midwayInitEvents[1] != 2 || midwayInitB != 42 {
		t.Fatalf("initialization: %v, B=%d", midwayInitEvents, midwayInitB)
	}
	for _, v := range []simd.Uint32s{midwayInitD, midwayInitE} {
		out := make([]uint32, v.Len())
		v.Store(out)
		for _, n := range out {
			if n != 9 {
				t.Fatalf("dependent initializer lane=%d", n)
			}
		}
	}
}

var midwayRecovered any

//go:noinline
func midwayCatch() {
	var v simd.Uint32s
	if v.Len() != 4 {
		panic("width")
	}
	midwayRecovered = recover()
}

//go:noinline
func midwayCatchGeneric[_ any]() {
	var v simd.Uint32s
	if v.Len() != 4 {
		panic("width")
	}
	midwayRecovered = recover()
}

//go:noinline
func midwayPanic() { defer midwayCatch(); panic("midway") }

//go:noinline
func midwayGenericPanic() { defer midwayCatchGeneric[int](); panic("generic") }

//go:noinline
func midwayIndirectCatch() { midwayCatch() }

//go:noinline
func midwayIndirectPanic() { defer midwayIndirectCatch(); panic("indirect") }

func TestPortableDeferredRecover(t *testing.T) {
	midwayRecovered = nil
	midwayPanic()
	if midwayRecovered != "midway" {
		t.Fatalf("recovered=%v", midwayRecovered)
	}
	midwayRecovered = nil
	midwayGenericPanic()
	if midwayRecovered != "generic" {
		t.Fatalf("generic recovered=%v", midwayRecovered)
	}
	// A user-written forwarding function is still a real frame.
	midwayRecovered = nil
	outer := func() (value any) { defer func() { value = recover() }(); midwayIndirectPanic(); return nil }()
	if outer != "indirect" || midwayRecovered != nil {
		t.Fatalf("indirect recovery: outer=%v inner=%v", outer, midwayRecovered)
	}
}
