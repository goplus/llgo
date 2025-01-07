package main

import (
	"fmt"
	"sync"
)

func main() {
	var m sync.Map
	m.Store(1, "hello")
	m.Store("1", 100)
	v, ok := m.Load("1")
	fmt.Println(v, ok)
	m.Range(func(k, v interface{}) bool {
		fmt.Printf("%#v %v\n", k, v)
		return true
	})
}
