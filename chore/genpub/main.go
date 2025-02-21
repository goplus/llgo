package main

import (
	"bufio"
	"flag"
	"fmt"
	"go/ast"
	"go/parser"
	"go/token"
	"io/fs"
	"log"
	"os"
	"path/filepath"

	"github.com/goplus/llgo/chore/genpub/pub"
)

func main() {

	help := false
	flag.BoolVar(&help, "h", false, "print help infomation")
	flag.Parse()
	flag.Usage = func() {
		fmt.Println(`genpub is used to generate a .pub file for dir path
		genpub [path to dir]`)
		flag.PrintDefaults()
	}
	if help {
		flag.Usage()
		return
	}
	dir := "."
	path := ""
	if len(flag.Args()) > 0 {
		dir = flag.Args()[0]
	}
	fullpath, _ := filepath.Abs(dir)
	_, splitFile := filepath.Split(fullpath)
	path = filepath.Join(dir, splitFile+".pub")
	if len(path) <= 0 {
		panic("fatal error")
	}
	_, err := os.Stat(dir)
	if err != nil {
		panic(err)
	}
	f, err := os.Create(path)
	if err != nil {
		panic(err)
	}
	defer f.Close()
	w := bufio.NewWriter(f)
	defer func() {
		if w.Buffered() <= 0 {
			log.Println("write empty file, remove it")
			os.Remove(path)
		} else {
			w.Flush()
		}
	}()
	fset := token.NewFileSet()
	pkgMap, err := parser.ParseDir(fset, dir, func(fi fs.FileInfo) bool {
		return true
	}, 0)
	if err != nil {
		panic(err)
	}
	pubWriter := pub.NewPubWriter(w, fset)
	for _, v := range pkgMap {
		for _, f := range v.Files {
			if ast.IsGenerated(f) {
				continue
			}
			if !ast.FileExports(f) {
				continue
			}
			pubWriter.WriteFile(f)
		}
	}
}
