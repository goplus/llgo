package main

import (
	"fmt"
	"os"
)

func main() {
	f, err := os.CreateTemp("", "llgo-writestring-*.txt")
	if err != nil {
		panic(err)
	}
	defer os.Remove(f.Name())

	const content = "hello writestring"
	if n, err := f.WriteString(content); err != nil {
		panic(err)
	} else if n != len(content) {
		panic(fmt.Sprintf("WriteString wrote %d bytes, want %d", n, len(content)))
	}

	if err := f.Close(); err != nil {
		panic(err)
	}

	data, err := os.ReadFile(f.Name())
	if err != nil {
		panic(err)
	}
	if string(data) != content {
		panic(fmt.Sprintf("content mismatch: got %q, want %q", string(data), content))
	}

	fmt.Println("ok")
}
