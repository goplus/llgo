package main

import (
	"fmt"
	"unicode/utf8"
)

func main() {
	testRuneCountInString()
	fmt.Println("\n=== All unicode/utf8 tests passed ===")
}

func testRuneCountInString() {
	fmt.Println("=== Test RuneCountInString ===")

	result := utf8.RuneCountInString("hello")
	if result != 5 {
		panic(fmt.Sprintf("RuneCountInString(\"hello\") should be 5, got %d", result))
	}

	result2 := utf8.RuneCountInString("你好世界")
	if result2 != 4 {
		panic(fmt.Sprintf("RuneCountInString(\"你好世界\") should be 4, got %d", result2))
	}

	fmt.Println("SUCCESS: RuneCountInString works correctly\n")
}
