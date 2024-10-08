package main

import (
	"flag"
	"log"
	"os"

	"github.com/goplus/llgo/chore/llcppcfg/cfg"
)

func main() {
	flag.Parse()
	name := ""
	if len(flag.Args()) > 0 {
		name = flag.Arg(0)
	}
	buf, err := cfg.GenCfg(name)
	if err != nil {
		log.Fatal(err)
	}
	outFile := "./llcppg.cfg"
	err = os.WriteFile(outFile, buf.Bytes(), 0644)
	if err != nil {
		log.Fatal(err)
	}
	log.Println("Config file has been generated at ", outFile, "!")
}
