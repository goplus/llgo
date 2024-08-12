package main

import (
	"os"
	"path/filepath"
)

func main() {
	dirPath := filepath.Join("temp", "myapp", "data", "logs")
	os.MkdirAll(dirPath, 0755)
}
