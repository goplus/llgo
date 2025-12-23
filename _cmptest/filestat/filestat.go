package main

import (
	"fmt"
	"os"
)

func main() {
	// Create test file with 400 bytes
	f, err := os.Create("test.bin")
	if err != nil {
		fmt.Println("Error creating file:", err)
		return
	}
	_, err = f.Write(make([]byte, 400))
	if err != nil {
		fmt.Println("Error writing file:", err)
		f.Close()
		return
	}
	f.Close()

	// Test 1: os.Stat() should work correctly
	info1, err := os.Stat("test.bin")
	if err != nil {
		fmt.Println("Error in os.Stat():", err)
	} else {
		fmt.Printf("os.Stat():   size = %d\n", info1.Size())
	}

	// Test 2: file.Stat() should also work correctly (was broken before fix)
	file, err := os.Open("test.bin")
	if err != nil {
		fmt.Println("Error opening file:", err)
		os.Remove("test.bin")
		return
	}
	defer file.Close()

	info2, err := file.Stat()
	if err != nil {
		fmt.Println("Error in file.Stat():", err)
	} else {
		fmt.Printf("file.Stat(): size = %d\n", info2.Size())
	}

	// Clean up
	os.Remove("test.bin")
}
