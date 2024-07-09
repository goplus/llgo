package spdlog

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoPackage = "link: $(pkg-config --libs cppWrap); -lcppWrap -lspdlog -pthread -lfmt"
)

//go:linkname SpdlogPrintInfo C.PrintInfo
func SpdlogPrintInfo(msg *c.Char)
