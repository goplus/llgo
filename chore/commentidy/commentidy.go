package main

import (
	"bytes"
	"flag"
	"fmt"
	"os"

	"github.com/goplus/llgo/chore/commentidy/tidy"
)

func mainUsage() {
	fmt.Fprintln(os.Stderr, "commentidy [clean] filepath")
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
	if args[0] == "clean" {
		commentidy := tidy.NewCommentidy()
		dir := "."
		if len(args) > 1 {
			dir = args[1]
		}
		commentidy.CleanDir(dir)
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
