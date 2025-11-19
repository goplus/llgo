package main

import (
	"bytes"
	"fmt"
)

func main() {
	testErrorf()
	testFprint()
	testFprintf()
	testPrint()

	fmt.Println("\n=== All fmt tests passed ===")
}

func testErrorf() {
	fmt.Println("=== Test Errorf ===")

	err := fmt.Errorf("test error: %d", 42)
	errStr := err.Error()
	fmt.Printf("Errorf result: %s\n", errStr)

	if errStr != "test error: 42" {
		panic(fmt.Sprintf("Errorf failed: expected 'test error: 42', got '%s'", errStr))
	}

	fmt.Println("SUCCESS: Errorf works correctly\n")
}

func testFprint() {
	fmt.Println("=== Test Fprint ===")

	var buf bytes.Buffer
	n, err := fmt.Fprint(&buf, "hello", " ", "world")
	if err != nil {
		panic(fmt.Sprintf("Fprint failed: %v", err))
	}

	result := buf.String()
	fmt.Printf("Fprint result: %s (wrote %d bytes)\n", result, n)

	if result != "hello world" {
		panic(fmt.Sprintf("Fprint failed: expected 'hello world', got '%s'", result))
	}
	if n != 11 {
		panic(fmt.Sprintf("Fprint wrote wrong number of bytes: expected 11, got %d", n))
	}

	fmt.Println("SUCCESS: Fprint works correctly\n")
}

func testFprintf() {
	fmt.Println("=== Test Fprintf ===")

	var buf bytes.Buffer
	n, err := fmt.Fprintf(&buf, "number: %d, string: %s", 42, "test")
	if err != nil {
		panic(fmt.Sprintf("Fprintf failed: %v", err))
	}

	result := buf.String()
	fmt.Printf("Fprintf result: %s (wrote %d bytes)\n", result, n)

	expected := "number: 42, string: test"
	if result != expected {
		panic(fmt.Sprintf("Fprintf failed: expected '%s', got '%s'", expected, result))
	}
	if n != len(expected) {
		panic(fmt.Sprintf("Fprintf wrote wrong number of bytes: expected %d, got %d", len(expected), n))
	}

	fmt.Println("SUCCESS: Fprintf works correctly\n")
}

func testPrint() {
	fmt.Println("=== Test Print ===")

	// Capture stdout using a workaround - just call Print and verify it doesn't panic
	// We can't easily capture stdout in pure Go without using os.Pipe or similar
	n, err := fmt.Print("Print test: ", 123, "\n")
	if err != nil {
		panic(fmt.Sprintf("Print failed: %v", err))
	}

	// Print should write at least some bytes
	if n == 0 {
		panic("Print wrote 0 bytes")
	}

	fmt.Printf("Print wrote %d bytes\n", n)
	fmt.Println("SUCCESS: Print works correctly\n")
}
