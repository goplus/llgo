package main

import (
	"fmt"
	"os"
	"path/filepath"
)

func main() {
	tempDir := os.TempDir()
	noexist := filepath.Join(tempDir, "noexist.txt")

	if _, err := os.Stat(noexist); err != nil {
		if os.IsNotExist(err) {
			fmt.Println("noexist:", err.Error())
		} else {
			fmt.Println("exist,other err:", err.Error())
		}
	}

	if _, err := os.Open(noexist); err != nil {
		if os.IsNotExist(err) {
			fmt.Println("noexist:", err.Error())
		} else {
			fmt.Println("exist,other err:", err.Error())
		}
	}
}
