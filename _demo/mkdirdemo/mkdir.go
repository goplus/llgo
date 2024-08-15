package main

import (
	"fmt"
	"os"
)

func main() {
	tempDir, err := os.MkdirTemp("", "example*")
	if err != nil {
		fmt.Println("Failed to create temp directory:", err)
		return
	}
	defer os.Remove(tempDir)
	fmt.Println("Temp directory:", tempDir)

	tempFile, err := os.CreateTemp("", "example*.txt")
	if err != nil {
		fmt.Println("Failed to create temp file:", err)
		return
	}
	defer tempFile.Close()
	defer os.Remove(tempFile.Name())
	fmt.Println("Temp file:", tempFile.Name())

	// todo(zzy): MkdirAll nested example
	err = os.MkdirAll(tempDir, 0755)
	if err != nil {
		fmt.Println("Failed to create nested directory:", err)
		return
	}
	fmt.Println("Nest directory 3:", tempDir)
}
