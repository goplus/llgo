package main

import (
	"fmt"
	"os"
	"os/exec"
	"runtime"
)

func main() {
	ls := "ls"
	if runtime.GOOS == "windows" {
		ls = "dir"
	}
	cmd := exec.Command(ls)
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr
	cmd.Run()

	output, _ := exec.Command(ls).Output()
	fmt.Print(string(output))
}
