package main

import (
	"bytes"
	"os/exec"
)

func main() {
	var data bytes.Buffer
	cmd := exec.Command("echo", "hello llgo")
	cmd.Stdout = &data
	err := cmd.Run()
	if err != nil {
		panic(err)
	}
	println("len:", len(data.Bytes()))
	println("data:", data.String())
}
