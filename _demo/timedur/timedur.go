package main

import (
	"fmt"
	"time"
)

func main() {
	t := time.Now().Add(time.Second * 5)
	fmt.Println(time.Until(t))
}
