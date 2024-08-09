package main

import (
	"fmt"
	"os"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse"
)

func main() {
	if c.Argc != 2 {
		fmt.Fprintln(os.Stderr, "Usage: cvt <headerFile>")
		return
	}
	sourceFile := *c.Advance(c.Argv, 1)
	c.Printf(c.Str("sourceFile: %s\n"), sourceFile)
	converter, err := parse.NewConverter(c.GoString(sourceFile))
	if err != nil {
		panic(err)
	}
	defer converter.Dispose()
	converter.Convert()
}
