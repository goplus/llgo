package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/spdlog"
)

func main() {
	spdlog.SpdlogPrintInfo(c.Str("Hello World"))
}
