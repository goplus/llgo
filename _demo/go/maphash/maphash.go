package main

import (
	"fmt"
	"hash/maphash"
)

func main() {
	testHashBasics()
	testMakeSeed()
	testSetSeed()
	testWriteMethods()
	testBytes()
	testString()
}

func testHashBasics() {
	fmt.Println("=== Test Hash Basics ===")
	var h maphash.Hash
	n, err := h.WriteString("hello")
	if err != nil {
		panic(fmt.Sprintf("WriteString failed: %v", err))
	}
	if n != 5 {
		panic(fmt.Sprintf("WriteString returned %d, expected 5", n))
	}
	hash1 := h.Sum64()
	fmt.Printf("Hash of 'hello': 0x%x\n", hash1)

	h.Reset()
	n, err = h.WriteString("world")
	if err != nil {
		panic(fmt.Sprintf("WriteString failed: %v", err))
	}
	hash2 := h.Sum64()
	fmt.Printf("Hash of 'world': 0x%x\n", hash2)

	h.Reset()
	n, err = h.WriteString("hello")
	if err != nil {
		panic(fmt.Sprintf("WriteString failed: %v", err))
	}
	hash3 := h.Sum64()
	if hash1 != hash3 {
		panic(fmt.Sprintf("Hash mismatch: 0x%x != 0x%x", hash1, hash3))
	}
	fmt.Printf("Hash consistency verified: 0x%x == 0x%x\n", hash1, hash3)
}

func testMakeSeed() {
	fmt.Println("\n=== Test MakeSeed ===")
	seed1 := maphash.MakeSeed()
	seed2 := maphash.MakeSeed()
	fmt.Printf("Seed 1: %v\n", seed1)
	fmt.Printf("Seed 2: %v\n", seed2)
	if seed1 == seed2 {
		fmt.Println("Warning: Seeds are identical (rare but possible)")
	}
}

func testSetSeed() {
	fmt.Println("\n=== Test SetSeed ===")
	var h1, h2 maphash.Hash
	seed := maphash.MakeSeed()
	
	h1.SetSeed(seed)
	_, err := h1.WriteString("test")
	if err != nil {
		panic(fmt.Sprintf("WriteString failed: %v", err))
	}
	hash1 := h1.Sum64()
	
	h2.SetSeed(seed)
	_, err = h2.WriteString("test")
	if err != nil {
		panic(fmt.Sprintf("WriteString failed: %v", err))
	}
	hash2 := h2.Sum64()
	
	if hash1 != hash2 {
		panic(fmt.Sprintf("Hashes with same seed should match: 0x%x != 0x%x", hash1, hash2))
	}
	fmt.Printf("Same seed produces same hash: 0x%x == 0x%x\n", hash1, hash2)
}

func testWriteMethods() {
	fmt.Println("\n=== Test Write Methods ===")
	var h maphash.Hash
	
	data := []byte("hello")
	n, err := h.Write(data)
	if err != nil {
		panic(fmt.Sprintf("Write failed: %v", err))
	}
	if n != len(data) {
		panic(fmt.Sprintf("Write returned %d, expected %d", n, len(data)))
	}
	hash1 := h.Sum64()
	fmt.Printf("Hash after Write: 0x%x\n", hash1)
	
	h.Reset()
	err = h.WriteByte('A')
	if err != nil {
		panic(fmt.Sprintf("WriteByte failed: %v", err))
	}
	hash2 := h.Sum64()
	fmt.Printf("Hash after WriteByte('A'): 0x%x\n", hash2)
}

func testBytes() {
	fmt.Println("\n=== Test Bytes Function ===")
	seed := maphash.MakeSeed()
	data := []byte("test data")
	hash := maphash.Bytes(seed, data)
	fmt.Printf("Bytes hash: 0x%x\n", hash)
}

func testString() {
	fmt.Println("\n=== Test String Function ===")
	seed := maphash.MakeSeed()
	str := "test string"
	hash := maphash.String(seed, str)
	fmt.Printf("String hash: 0x%x\n", hash)
}
