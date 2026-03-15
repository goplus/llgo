package main

import "sync"

func main() {
	var mu sync.Mutex
	n := 0
	mu.Lock()
	n++
	mu.Unlock()
	println(n)

	var m sync.Map
	m.Store("x", 1)
	v, ok := m.Load("x")
	if !ok {
		panic("load failed")
	}
	println(v.(int))
}
