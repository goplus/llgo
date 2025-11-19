package main

import (
	"fmt"
	"hash/maphash"
)

func main() {
	testMakeSeed()

	fmt.Println("\n=== All hash/maphash tests passed ===")
}

func testMakeSeed() {
	fmt.Println("=== Test MakeSeed ===")

	// MakeSeed
	seed := maphash.MakeSeed()
	fmt.Printf("MakeSeed(): created seed\n")

	// Verify seed is usable with Hash
	h := &maphash.Hash{}
	h.SetSeed(seed)
	h.WriteString("test")
	hash1 := h.Sum64()
	fmt.Printf("Hash with seed: %d\n", hash1)

	// Hash should be non-zero for non-empty input
	if hash1 == 0 {
		panic("Hash of 'test' should not be 0")
	}

	// Same seed and input should give same hash
	h3 := &maphash.Hash{}
	h3.SetSeed(seed)
	h3.WriteString("test")
	hash3 := h3.Sum64()
	if hash1 != hash3 {
		panic(fmt.Sprintf("Same seed and input should give same hash: %d != %d", hash1, hash3))
	}

	// Different seed should give different hash (with high probability)
	seed2 := maphash.MakeSeed()
	h2 := &maphash.Hash{}
	h2.SetSeed(seed2)
	h2.WriteString("test")
	hash2 := h2.Sum64()
	fmt.Printf("Hash with different seed: %d\n", hash2)

	// Note: Different seeds SHOULD give different hashes, but it's not guaranteed
	// due to hash collisions. We just verify the mechanism works without panicking.

	fmt.Println("SUCCESS: MakeSeed works correctly\n")
}
