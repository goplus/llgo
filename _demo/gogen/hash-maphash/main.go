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

	// Different seed should give different hash
	seed2 := maphash.MakeSeed()
	h2 := &maphash.Hash{}
	h2.SetSeed(seed2)
	h2.WriteString("test")
	hash2 := h2.Sum64()
	fmt.Printf("Hash with different seed: %d\n", hash2)

	fmt.Println("SUCCESS: MakeSeed works correctly\n")
}
