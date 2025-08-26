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
	var check int
	for _, e := range entries {
		fmt.Printf("%s isDir[%t]\n", e.Name(), e.IsDir())
		if !e.IsDir() {
			switch e.Name() {
			case "go.sum", "go.mod":
				check++
			}
		}
	}
	if check != 2 {
		panic("Bad readdir entries go.mod/go.sum")
	}
}
