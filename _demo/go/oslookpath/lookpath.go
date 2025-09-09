package main

import (
	"fmt"
	"os/exec"
	"runtime"
)

func main() {
	ls := "ls"
	if runtime.GOOS == "windows" {
		ls = "dir"
	}
	lspath, _ := exec.LookPath(ls)
	if lspath != "" {
		ls = lspath
	}
	fmt.Println(ls)
}
