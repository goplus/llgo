package main

import (
	c "github.com/goplus/llgo/cl/_testdata/cpkg"
)

func main() {
	println(c.Xadd(1, 2), c.Double(3.14))
}
