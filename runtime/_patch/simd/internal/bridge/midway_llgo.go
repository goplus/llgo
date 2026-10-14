//go:build goexperiment.simd && (amd64 || arm64 || wasm)

package bridge

// LLGoMidwayUnreachable guards declarations retained only for the initial
// type check of importing packages. Executable references use their variants.
func LLGoMidwayUnreachable() {
	panic("unexpected use of unspecialized portable SIMD")
}
