package main

import (
	"fmt"
	"os"
	"path/filepath"
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

	nestedDir := filepath.Join("nested", "directory")
	err = os.MkdirAll(nestedDir, 0755)
	if err != nil {
		fmt.Println("Failed to create nested directory:", err)
		return
	}
	fmt.Println("Nest directory:", nestedDir)
}
