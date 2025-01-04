package main

import "os"

func main() {
	wd, err := os.Getwd()
	if err != nil {
		panic(err)
	}
	println("cwd:", wd)
}
