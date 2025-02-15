package atomic

// An Int64 is an atomic int64. The zero value is zero.
type Int64 struct {
	_ noCopy
	_ align64
	v int64
}

// Load atomically loads and returns the value stored in x.
func (x *Int64) Load() int64 { return LoadInt64(&x.v) }

// Store atomically stores val into x.
func (x *Int64) Store(val int64) { StoreInt64(&x.v, val) }

// Swap atomically stores new into x and returns the previous value.
func (x *Int64) Swap(new int64) (old int64) { return SwapInt64(&x.v, new) }

// CompareAndSwap executes the compare-and-swap operation for x.
func (x *Int64) CompareAndSwap(old, new int64) (swapped bool) {
	return CompareAndSwapInt64(&x.v, old, new)
}

// Add atomically adds delta to x and returns the new value.
func (x *Int64) Add(delta int64) (new int64) { return AddInt64(&x.v, delta) }

// And atomically performs a bitwise AND operation on x using the bitmask
// provided as mask and returns the old value.
func (x *Int64) And(mask int64) (old int64) { return AndInt64(&x.v, mask) }

// Or atomically performs a bitwise OR operation on x using the bitmask
// provided as mask and returns the old value.
func (x *Int64) Or(mask int64) (old int64) { return OrInt64(&x.v, mask) }

// A Uint64 is an atomic uint64. The zero value is zero.
type Uint64 struct {
	_ noCopy
	_ align64
	v uint64
}

// Load atomically loads and returns the value stored in x.
func (x *Uint64) Load() uint64 { return LoadUint64(&x.v) }

// Store atomically stores val into x.
func (x *Uint64) Store(val uint64) { StoreUint64(&x.v, val) }

// Swap atomically stores new into x and returns the previous value.
func (x *Uint64) Swap(new uint64) (old uint64) { return SwapUint64(&x.v, new) }

// CompareAndSwap executes the compare-and-swap operation for x.
func (x *Uint64) CompareAndSwap(old, new uint64) (swapped bool) {
	return CompareAndSwapUint64(&x.v, old, new)
}

// Add atomically adds delta to x and returns the new value.
func (x *Uint64) Add(delta uint64) (new uint64) { return AddUint64(&x.v, delta) }

// And atomically performs a bitwise AND operation on x using the bitmask
// provided as mask and returns the old value.
func (x *Uint64) And(mask uint64) (old uint64) { return AndUint64(&x.v, mask) }

// Or atomically performs a bitwise OR operation on x using the bitmask
// provided as mask and returns the old value.
func (x *Uint64) Or(mask uint64) (old uint64) { return OrUint64(&x.v, mask) }

// noCopy may be added to structs which must not be copied
// after the first use.
//
// See https://golang.org/issues/8005#issuecomment-190753527
// for details.
//
// Note that it must not be embedded, due to the Lock and Unlock methods.
type noCopy struct{}

// Lock is a no-op used by -copylocks checker from `go vet`.
func (*noCopy) Lock()   {}
func (*noCopy) Unlock() {}

// align64 may be added to structs that must be 64-bit aligned.
// This struct is recognized by a special case in the compiler
// and will not work if copied to any other package.
type align64 struct{}

// llgo:link AndInt64 llgo.atomicAnd
func AndInt64(addr *int64, mask int64) (old int64) {
	panic("implement by llgo instruction")
}

// llgo:link AndUint64 llgo.atomicAnd
func AndUint64(addr *uint64, mask uint64) (old uint64) {
	panic("implement by llgo instruction")
}

// llgo:link OrInt64 llgo.atomicOr
func OrInt64(addr *int64, mask int64) (old int64) {
	panic("implement by llgo instruction")
}

// llgo:link OrUint64 llgo.atomicOr
func OrUint64(addr *uint64, mask uint64) (old uint64) {
	panic("implement by llgo instruction")
}
