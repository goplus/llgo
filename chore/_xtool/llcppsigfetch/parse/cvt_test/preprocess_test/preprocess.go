package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse"
)

func main() {
	TestDefine()
	TestInclude()
}

func TestDefine() {
	testCases := []string{
		`#define OK 1`,
		`#define SQUARE(x) ((x) * (x))`,
	}

	for i, content := range testCases {
		converter, err := parse.NewConverter(&parse.Config{
			File: content,
			Temp: true,
		})
		if err != nil {
			panic(err)
		}

		_, err = converter.Convert()
		if err != nil {
			panic(err)
		}

		json := converter.MarshalASTFiles()
		c.Printf(c.Str("TestDefine Case %d:\n%s\n\n"), c.Int(i+1), json.Print())

		converter.Dispose()
	}
}

func TestInclude() {
	testCases := []string{
		`#include "foo.h"`,
		// `#include <limits.h>`, //  Standard libraries are mostly platform-dependent
	}

	for i, content := range testCases {
		converter, err := parse.NewConverter(&parse.Config{
			File: content,
			Temp: true,
		})
		if err != nil {
			panic(err)
		}

		_, err = converter.Convert()
		if err != nil {
			panic(err)
		}

		json := converter.MarshalASTFiles()
		c.Printf(c.Str("TestInclude Case %d:\n%s\n\n"), c.Int(i+1), json.Print())

		converter.Dispose()
	}
}
