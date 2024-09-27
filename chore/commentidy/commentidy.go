package main

import (
	"bytes"
	"flag"
	"fmt"
	"os"

	"github.com/goplus/llgo/chore/commentidy/tidy"
)

func mainUsage() {
	fmt.Fprintln(os.Stderr, "commentidy [filepath]")
	os.Exit(2)
}

func init() {
	flag.Usage = mainUsage
}

func main() {
	flag.Parse()
	args := flag.Args()
	if len(args) < 1 {
		flag.Usage()
	}
	if args[0] == "help" {
		flag.Usage()
		return
	}
	file := args[0]
	commentidy := tidy.NewCommentidy()
	fileInfo, err := os.Stat(file)
	if os.IsNotExist(err) {
		panic(err)
	}
	if fileInfo.IsDir() {
		commentidy.TidyDir(file, ".h", ".hpp")
	} else {
		outBytes, _ := commentidy.TidyFile(file)
		buf := bytes.NewBuffer(outBytes)
		buf.WriteTo(os.Stdout)
	}
}
