package main

import (
	"fmt"
	"os/exec"
	"runtime"
	"syscall"
)

func main() {
	ls := "ls"
	args := []string{ls, "-l"}
	if runtime.GOOS == "windows" {
		ls = "dir"
		args = []string{ls}
	}
	lspath, _ := exec.LookPath(ls)
	if lspath != "" {
		ls = lspath
	}
	err := syscall.Exec(ls, args, nil)
	if err != nil {
		fmt.Println("syscall.Exec error:", err)
		return
	}
}
