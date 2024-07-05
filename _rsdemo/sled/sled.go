package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/rust/sled"
)

func main() {
	var valueLen c.Ulong
	conf := sled.CreateConfig()
	path := c.Str("./db")
	copyPath := c.Strdup(path)
	pathConfig := conf.SetPath(copyPath)
	db := pathConfig.OpenDb()
	db.Set(c.Str("key"), 3, c.Str("value"), 5)
	value := db.Get(c.Str("key"), 3, &valueLen)
	c.Printf(c.Str("value: %s\n"), value)
}
