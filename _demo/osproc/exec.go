package main

import (
	"fmt"
	"os"
	"os/exec"
	"runtime"
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
	proc, err := os.StartProcess(ls, args, &os.ProcAttr{
		Files: []*os.File{nil, os.Stdout, os.Stderr},
	})
	if err != nil {
		fmt.Println("os.StartProcess error:", err)
		return
	}
	proc.Wait()
}
