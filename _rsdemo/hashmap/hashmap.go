package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/rust/hashmap"
)

func main() {
	m := hashmap.New()
	m.Insert(c.Str("key"), c.Str("value"))
	value := m.Get(c.Str("key"))
	c.Printf(c.Str("value: %s\n"), value)
	m.Free()
}
