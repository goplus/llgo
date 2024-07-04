package main

import (
	"errors"
	"fmt"
)

func main() {
	fmt.Println("Hello, world")
	fmt.Printf("%f\n", 3.14)
	fmt.Printf("%v\n", errors.New("error message"))
}
