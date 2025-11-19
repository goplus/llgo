package main

import (
	"fmt"
	"path"
)

func main() {
	testJoin()
	fmt.Println("\n=== All path tests passed ===")
}

func testJoin() {
	fmt.Println("=== Test Join ===")

	result := path.Join("foo", "bar", "baz")
	fmt.Printf("path.Join(\"foo\", \"bar\", \"baz\") = %s\n", result)

	expected := "foo/bar/baz"
	if result != expected {
		panic(fmt.Sprintf("path.Join failed: expected '%s', got '%s'", expected, result))
	}

	// Test with empty strings
	result2 := path.Join("", "foo", "", "bar")
	fmt.Printf("path.Join(\"\", \"foo\", \"\", \"bar\") = %s\n", result2)
	if result2 != "foo/bar" {
		panic(fmt.Sprintf("path.Join failed: expected 'foo/bar', got '%s'", result2))
	}

	fmt.Println("SUCCESS: Join works correctly\n")
}
