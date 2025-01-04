package main

import (
	"sync"
)

var once sync.Once

func f(s string) {
	once.Do(func() {
		println(s)
	})
}

func main() {
	f("Do once")
	f("Do twice")
}
