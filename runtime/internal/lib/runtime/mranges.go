package runtime

// offAddr represents an address in a contiguous view
// of the address space on systems where the address space is
// segmented. On other systems, it's just a normal address.
type offAddr struct {
	// a is just the virtual address, but should never be used
	// directly. Call addr() to get this value instead.
	a uintptr
}

// addrRange represents a region of address space.
//
// An addrRange must never span a gap in the address space.
type addrRange struct {
	// base and limit together represent the region of address space
	// [base, limit). That is, base is inclusive, limit is exclusive.
	// These are address over an offset view of the address space on
	// platforms with a segmented address space, that is, on platforms
	// where arenaBaseOffset != 0.
	base, limit offAddr
}
