package C

type DebugPair struct {
	Left  int32
	Right int32
}

var DebugSink int32

func XhandleHardFault() {}

func XhandleInterrupt() {}

//go:noinline
func debugStep(value int32) int32 {
	return value*2 + 1
}

func Reset_Handler() {
	seed := int32(7)
	pair := DebugPair{Left: seed, Right: seed + 1}
	values := [3]int32{9, 10, 11}
	text := "embedded"
	result := debugStep(pair.Left) + values[1] + int32(len(text))
	DebugSink = result
	if DebugSink == 33 { // LLGO_EMBEDDED_DEBUG_BREAK
		result++
	}
	for {
		DebugSink = result
	}
}
