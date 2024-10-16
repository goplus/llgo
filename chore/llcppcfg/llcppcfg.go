package main

import (
	"flag"
	"fmt"
	"log"
	"os"

	"github.com/goplus/llgo/chore/llcppcfg/cfg"
)

func printHelp() {
	flag.Usage()
	flag.PrintDefaults()
}

func main() {
	var cpp bool = false
	var help bool = false
	flag.BoolVar(&cpp, "cpp", false, "if it is c++ lib")
	flag.BoolVar(&help, "help", false, "print help message")
	flag.Usage = func() {
		fmt.Println(`llcppcfg is to generate llcpp.cfg file.
usage: llcppcfg [-cpp|-help] libname`)
	}
	flag.Parse()
	if help || len(os.Args) <= 1 {
		printHelp()
		return
	}
	name := ""
	if len(flag.Args()) > 0 {
		name = flag.Arg(0)
	}
	buf, err := cfg.GenCfg(name, cpp)
	if err != nil {
		log.Fatal(err)
	}
	outFile := "./llcppg.cfg"
	err = os.WriteFile(outFile, buf.Bytes(), 0644)
	if err != nil {
		log.Fatal(err)
	}
}
