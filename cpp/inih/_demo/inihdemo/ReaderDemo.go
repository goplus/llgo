package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/cpp/inih"
)

/*
	expected output:
	section: owner name: name value: John Doe
	section: owner name: organization value: Acme Widgets Inc.
	section: database name: server value: 192.0.2.62
	section: database name: port value: 143
	section: database name: file value: "payroll.dat"
	section: database name: enabled value: true
	section: owner name: name value: John Doe
	section: owner name: organization value: Acme Widgets Inc.
	section: database name: server value: 192.0.2.62
	section: database name: port value: 143
	section: database name: file value: "payroll.dat"
	section: database name: enabled value: true
	section: settings name: username value: lee
	section: settings name: timeout value: 20
	Config file parsed successfully
	isDatabaseEnabled: true port: 143
	0x10e2c8e20
	0
	value: 100

*/

func main() {
	demo1()
	reader := inih.NewReaderFile(inih.Str("config.ini"))
	if reader.ParseError() != 0 {
		println("Error parsing config file")
		return
	}
	isDatabaseEnabled := reader.GetBoolean(inih.Str("database"), inih.Str("enabled"), false)
	port := reader.GetInteger(inih.Str("database"), inih.Str("port"), 0)
	s := reader.GetString(inih.Str("database"), inih.Str("server"), inih.Str("unknown")).String()
	println("s :", s)
	println("isDatabaseEnabled:", isDatabaseEnabled, "port:", port)
	demo2()

}

func demo2() {
	buf := `[settings]
username=admin
timeout=100
`
	reader := inih.NewReader(c.Str(buf), c.Ulong(len(buf)))

	println(&reader)
	println(reader.ParseError())
	sec := inih.Str("settings")
	name := inih.Str("timeout")
	value := reader.GetInteger(sec, name, 0)
	println("value:", value)
}
