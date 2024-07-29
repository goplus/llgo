package main

import (
	"fmt"

	"github.com/goplus/llgo/xtool/env"
)

func main() {
	fmt.Println(env.ExpandEnv("$(pkg-config --libs bdw-gc)"))
}
