package main

import (
	"fmt"
	"os"
)

func main() {
	entries, err := os.ReadDir("../")
	if err != nil {
		panic(err)
	}
	if len(entries) == 0 {
		panic("No files found")
	}
	for _, e := range entries {
		fmt.Printf("%s isDir[%t]\n", e.Name(), e.IsDir())
	}
}
