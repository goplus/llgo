package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/rust/sled"
)

func main() {
	//c.Printf(c.Str("helloworld\n"))
	var valueLen c.Ulong
	conf := &sled.SledConfig{}
	conf.SetPath(c.Str("./db.sled"))
	db := conf.OpenDB()
	db.Set(c.Str("key"), 3, c.Str("value"), 5)
	value := db.Get(c.Str("key"), 3, &valueLen)
	c.Printf(c.Str("value: %s\n"), value)
}
