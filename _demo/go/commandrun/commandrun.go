package main

import (
	"bytes"
	"os/exec"
	"path/filepath"
)

func main() {
	var data bytes.Buffer
	cmd := exec.Command("echo", "hello llgo")
	cmd.Dir = filepath.Dir("./")
	cmd.Stdout = &data
	err := cmd.Run()
	if err != nil {
		panic(err)
	}
	println("len:", len(data.Bytes()))
	println("data:", data.String())
}
