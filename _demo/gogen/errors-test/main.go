package main

import (
	"errors"
	"fmt"
)

func main() {
	testNew()
	fmt.Println("\n=== All errors tests passed ===")
}

func testNew() {
	fmt.Println("=== Test New ===")

	err := errors.New("test error")
	if err == nil {
		panic("errors.New should not return nil")
	}

	errStr := err.Error()
	fmt.Printf("errors.New result: %s\n", errStr)

	if errStr != "test error" {
		panic(fmt.Sprintf("errors.New failed: expected 'test error', got '%s'", errStr))
	}

	fmt.Println("SUCCESS: New works correctly\n")
}
