package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/pthread/sync"
)

var once sync.Once = sync.OnceInit

func f() {
	once.Do(func() {
		c.Printf(c.Str("Do once\n"))
	})
}

func main() {
	f()
	f()
}
