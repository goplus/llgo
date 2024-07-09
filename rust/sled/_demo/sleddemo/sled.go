package main

import (
	"fmt"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/rust/sled"
)

func main() {
	conf := sled.NewConfig().SetPath(c.Str("./db"))
	defer conf.Free()

	db := sled.Open(conf)
	db.SetString("key", "value")

	val := db.GetString("key")
	defer val.Free()

	fmt.Println("value:", val)
}
