package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/inih"
)

func main() {
	// 将Go字符串转换为C字符串
	filename := c.Str("config.ini")

	// 调用inih包的IniParse函数，解析INI文件
	if inih.IniParse(filename, func(user c.Pointer, section *c.Char, name *c.Char, value *c.Char) c.Int {
		println("section:", c.GoString(section), "name:", c.GoString(name), "value:", c.GoString(value))
		return 1
	}, nil) < 0 {
		println("Error parsing config file")
		return
	}

	//  从文件中解析,流中解析
	file := c.Fopen(c.Str("config.ini"), c.Str("r"))
	if file == nil {
		println("Error opening config file")
		return
	} else {
		if inih.IniParseFile(file, func(user c.Pointer, section *c.Char, name *c.Char, value *c.Char) c.Int {
			println("section:", c.GoString(section), "name:", c.GoString(name), "value:", c.GoString(value))
			return 1
		}, nil) < 0 {
			println("Error parsing config file")
			return
		}
		c.Fclose(file)
	}

	// 从字符串中解析
	configData := "[settings]\nusername=lee\ntimeout=20"
	if inih.IniParseString(c.Str(configData), func(user c.Pointer, section *c.Char, name *c.Char, value *c.Char) c.Int {
		println("section:", c.GoString(section), "name:", c.GoString(name), "value:", c.GoString(value))
		return 1
	}, nil) < 0 {
		println("Error parsing config file")
		return
	} else {
		println("Config file parsed successfully")
	}

}
