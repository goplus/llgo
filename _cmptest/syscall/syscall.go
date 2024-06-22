package main

import "syscall"

func main() {
	wd, err := syscall.Getwd()
	if err != nil {
		panic(err)
	}
	println("cwd:", wd)
}
