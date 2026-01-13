package main

import (
	"fmt"
	"io"
	"os"
	"strings"
)

func main() {
	// Create a temporary test file
	tempFile, err := os.CreateTemp("", "osfile_test_*.txt")
	if err != nil {
		fmt.Println("Failed to create temp file:", err)
		return
	}
	defer os.Remove(tempFile.Name())
	defer tempFile.Close()

	fmt.Println("Created temp file:", tempFile.Name())

	// Test 1: WriteString
	fmt.Println("\n=== Testing WriteString ===")
	content := "Hello, LLGo!\n"
	n, err := tempFile.WriteString(content)
	if err != nil {
		fmt.Println("WriteString failed:", err)
		return
	}
	fmt.Printf("Wrote %d bytes using WriteString: %q\n", n, content)

	// Test 2: WriteAt
	fmt.Println("\n=== Testing WriteAt ===")
	data := []byte("WORLD")
	offset := int64(7) // Replace "LLGo" with "WORLD"
	n, err = tempFile.WriteAt(data, offset)
	if err != nil {
		fmt.Println("WriteAt failed:", err)
		return
	}
	fmt.Printf("Wrote %d bytes at offset %d: %q\n", n, offset, string(data))

	// Test 3: Seek
	fmt.Println("\n=== Testing Seek ===")
	// Seek to beginning
	pos, err := tempFile.Seek(0, io.SeekStart)
	if err != nil {
		fmt.Println("Seek failed:", err)
		return
	}
	fmt.Printf("Seeked to position: %d\n", pos)

	// Seek to end
	endPos, err := tempFile.Seek(0, io.SeekEnd)
	if err != nil {
		fmt.Println("Seek to end failed:", err)
		return
	}
	fmt.Printf("File size (seeked to end): %d bytes\n", endPos)

	// Seek back to start
	tempFile.Seek(0, io.SeekStart)

	// Test 4: ReadAt
	fmt.Println("\n=== Testing ReadAt ===")
	buf := make([]byte, 5)
	n, err = tempFile.ReadAt(buf, 0)
	if err != nil && err != io.EOF {
		fmt.Println("ReadAt failed:", err)
		return
	}
	fmt.Printf("Read %d bytes from offset 0: %q\n", n, string(buf[:n]))

	buf2 := make([]byte, 5)
	n, err = tempFile.ReadAt(buf2, 7)
	if err != nil && err != io.EOF {
		fmt.Println("ReadAt failed:", err)
		return
	}
	fmt.Printf("Read %d bytes from offset 7: %q\n", n, string(buf2[:n]))

	// Test 5: ReadFrom
	fmt.Println("\n=== Testing ReadFrom ===")
	// Create another temp file to read from
	sourceFile, err := os.CreateTemp("", "osfile_source_*.txt")
	if err != nil {
		fmt.Println("Failed to create source file:", err)
		return
	}
	defer os.Remove(sourceFile.Name())
	defer sourceFile.Close()

	sourceContent := "This content was read using ReadFrom!"
	sourceFile.WriteString(sourceContent)
	sourceFile.Seek(0, io.SeekStart)

	// Read from source into our test file
	readBytes, err := tempFile.ReadFrom(sourceFile)
	if err != nil {
		fmt.Println("ReadFrom failed:", err)
		return
	}
	fmt.Printf("ReadFrom copied %d bytes\n", readBytes)

	// Verify the final content
	fmt.Println("\n=== Final File Content ===")
	tempFile.Seek(0, io.SeekStart)
	allContent, err := io.ReadAll(tempFile)
	if err != nil {
		fmt.Println("Failed to read final content:", err)
		return
	}
	fmt.Printf("Final content (%d bytes):\n%s\n", len(allContent), string(allContent))

	// Additional test: Seek relative to current position
	fmt.Println("\n=== Testing Seek with SeekCurrent ===")
	tempFile.Seek(0, io.SeekStart)
	pos, _ = tempFile.Seek(5, io.SeekCurrent)
	fmt.Printf("Seeked 5 bytes from start, now at position: %d\n", pos)

	buf3 := make([]byte, 5)
	n, _ = tempFile.Read(buf3)
	fmt.Printf("Read %d bytes: %q\n", n, string(buf3[:n]))

	// Test ReadFrom with strings.Reader
	fmt.Println("\n=== Testing ReadFrom with io.Reader ===")
	reader := strings.NewReader("Appended via ReadFrom")
	readBytes, err = tempFile.ReadFrom(reader)
	if err != nil {
		fmt.Println("ReadFrom with reader failed:", err)
		return
	}
	fmt.Printf("ReadFrom appended %d bytes from strings.Reader\n", readBytes)

	fmt.Println("\n=== All tests completed successfully! ===")
}
