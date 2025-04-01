package main

import (
	"fmt"

	"github.com/goplus/llgo/xtool/env"
)

func main() {
	env := env.New(nil)
	fmt.Println(env.ExpandEnv("$(pkg-config --libs bdw-gc)"))
}
