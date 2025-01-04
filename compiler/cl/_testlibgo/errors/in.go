package main

import "errors"

func main() {
	err := errors.New("error")
	panic(err)
}
