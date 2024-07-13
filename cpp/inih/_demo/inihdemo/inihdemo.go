package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/cpp/inih"
)

func main() {
	filename := c.Str("config.ini")

	if inih.Parse(filename, func(user c.Pointer, section *c.Char, name *c.Char, value *c.Char) c.Int {
		println("section:", c.GoString(section), "name:", c.GoString(name), "value:", c.GoString(value))
		return 1
	}, nil) < 0 {
		println("Error parsing config file")
		return
	}

	file := c.Fopen(c.Str("config.ini"), c.Str("r"))
	if file == nil {
		println("Error opening config file")
		return
	} else {
		if inih.ParseFile(file, func(user c.Pointer, section *c.Char, name *c.Char, value *c.Char) c.Int {
			println("section:", c.GoString(section), "name:", c.GoString(name), "value:", c.GoString(value))
			return 1
		}, nil) < 0 {
			println("Error parsing config file")
			return
		}
		c.Fclose(file)
	}

	configData := "[settings]\nusername=lee\ntimeout=20"
	if inih.ParseString(c.Str(configData), func(user c.Pointer, section *c.Char, name *c.Char, value *c.Char) c.Int {
		println("section:", c.GoString(section), "name:", c.GoString(name), "value:", c.GoString(value))
		return 1
	}, nil) < 0 {
		println("Error parsing config file")
		return
	} else {
		println("Config file parsed successfully")
	}
}
