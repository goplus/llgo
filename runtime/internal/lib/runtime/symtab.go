package runtime

type pcvalueCache struct {
	entries [2][8]pcvalueCacheEnt
	inUse   int
}

type pcvalueCacheEnt struct {
	// targetpc and off together are the key of this cache entry.
	targetpc uintptr
	off      uint32

	val   int32   // The value of this entry.
	valPC uintptr // The PC at which val starts
}
