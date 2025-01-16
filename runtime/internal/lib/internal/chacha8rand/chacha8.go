package chacha8rand

// A State holds the state for a single random generator.
// It must be used from one goroutine at a time.
// If used by multiple goroutines at a time, the goroutines
// may see the same random values, but the code will not
// crash or cause out-of-bounds memory accesses.
type State struct {
	buf  [32]uint64
	seed [4]uint64
	i    uint32
	n    uint32
	c    uint32
}
