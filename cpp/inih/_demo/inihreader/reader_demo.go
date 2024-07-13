package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/cpp/inih"
	"github.com/goplus/llgo/cpp/std"
)

func demoFromBuffer() {
	buf := `[settings]
username=admin
timeout=100
`
	reader := inih.NewReader(c.Str(buf), uintptr(len(buf)))
	defer reader.Dispose()

	println(reader.ParseError())
	sec := std.Str("settings")
	name := std.Str("timeout")
	value := reader.GetInteger(sec, name, 0)
	println("value:", value)
}

func demoFromFile() {
	reader := inih.NewReaderFile(std.Str("config.ini"))
	defer reader.Dispose()

	if ret := reader.ParseError(); ret != 0 {
		println("Error parsing config file:", ret)
		return
	}
	isDatabaseEnabled := reader.GetBoolean(std.Str("database"), std.Str("enabled"), false)
	port := reader.GetInteger(std.NewString("database"), std.Str("port"), 0)
	s := reader.GetString(std.Str("database"), std.Str("server"), std.Str("unknown"))
	println("s:", s.Str())
	println("isDatabaseEnabled:", isDatabaseEnabled, "port:", port)
}

func main() {
	demoFromBuffer()
	demoFromFile()
}
