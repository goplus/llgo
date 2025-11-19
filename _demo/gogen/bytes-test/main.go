package main

import (
	"bytes"
	"fmt"
)

func main() {
	testTrimFunctions()
	testBufferMethods()

	fmt.Println("\n=== All bytes tests passed ===")
}

func testTrimFunctions() {
	fmt.Println("=== Test Trim Functions ===")

	// TrimSpace
	result := bytes.TrimSpace([]byte("  hello world  "))
	fmt.Printf("TrimSpace result: '%s'\n", result)
	if string(result) != "hello world" {
		panic(fmt.Sprintf("TrimSpace failed: expected 'hello world', got '%s'", result))
	}

	// TrimRight
	result = bytes.TrimRight([]byte("hello!!!"), "!")
	fmt.Printf("TrimRight result: '%s'\n", result)
	if string(result) != "hello" {
		panic(fmt.Sprintf("TrimRight failed: expected 'hello', got '%s'", result))
	}

	// TrimSuffix
	result = bytes.TrimSuffix([]byte("hello.txt"), []byte(".txt"))
	fmt.Printf("TrimSuffix result: '%s'\n", result)
	if string(result) != "hello" {
		panic(fmt.Sprintf("TrimSuffix failed: expected 'hello', got '%s'", result))
	}

	fmt.Println("SUCCESS: Trim functions work correctly\n")
}

func testBufferMethods() {
	fmt.Println("=== Test Buffer Methods ===")

	var buf bytes.Buffer

	// WriteString
	n, err := buf.WriteString("hello")
	if err != nil {
		panic(fmt.Sprintf("WriteString failed: %v", err))
	}
	fmt.Printf("WriteString wrote %d bytes\n", n)
	if n != 5 {
		panic(fmt.Sprintf("WriteString should write 5 bytes, got %d", n))
	}

	// WriteByte
	err = buf.WriteByte(' ')
	if err != nil {
		panic(fmt.Sprintf("WriteByte failed: %v", err))
	}
	fmt.Println("WriteByte succeeded")

	// WriteString again
	buf.WriteString("world")

	// Bytes
	result := buf.Bytes()
	fmt.Printf("Bytes result: '%s'\n", result)
	if string(result) != "hello world" {
		panic(fmt.Sprintf("Bytes failed: expected 'hello world', got '%s'", result))
	}

	// Len
	length := buf.Len()
	fmt.Printf("Len result: %d\n", length)
	if length != 11 {
		panic(fmt.Sprintf("Len should be 11, got %d", length))
	}

	fmt.Println("SUCCESS: Buffer methods work correctly\n")
}
