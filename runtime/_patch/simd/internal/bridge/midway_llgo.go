//go:build goexperiment.simd && (amd64 || arm64 || wasm)

package bridge

// LLGoMidwayUnreachable guards declarations retained only for the initial
// type check of importing packages. Executable references use their variants.
func LLGoMidwayUnreachable() {
	panic("unexpected use of unspecialized portable SIMD")
}

// Stable predeclared bindings for inferred types in packages that shadow them.
type (
	LLGoMidwayBool       = bool
	LLGoMidwayInt        = int
	LLGoMidwayInt8       = int8
	LLGoMidwayInt16      = int16
	LLGoMidwayInt32      = int32
	LLGoMidwayInt64      = int64
	LLGoMidwayUint       = uint
	LLGoMidwayUint8      = uint8
	LLGoMidwayUint16     = uint16
	LLGoMidwayUint32     = uint32
	LLGoMidwayUint64     = uint64
	LLGoMidwayUintptr    = uintptr
	LLGoMidwayFloat32    = float32
	LLGoMidwayFloat64    = float64
	LLGoMidwayComplex64  = complex64
	LLGoMidwayComplex128 = complex128
	LLGoMidwayString     = string
	LLGoMidwayByte       = byte
	LLGoMidwayRune       = rune
	LLGoMidwayError      = error
	LLGoMidwayAny        = any
)
