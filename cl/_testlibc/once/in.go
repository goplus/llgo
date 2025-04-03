package main

import (
	"github.com/goplus/lib/c"
	"github.com/goplus/lib/c/pthread/sync"
)

var once sync.Once = sync.OnceInit

func f() {
	once.Do(func() {
		c.Printf(c.Str("Do once\n"))
	})
}

func main() {
	println(c.GoString(c.Str("sync.Once demo\n"), 9))
	println(c.GoString(c.Str("sync.Once demo\n")))
	f()
	f()
}
