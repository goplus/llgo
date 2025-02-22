package main

import (
	"flag"
	"fmt"
	"log"
	"os"

	"github.com/goplus/llgo/chore/genpub/pub"
)

func main() {
	help, r, clean := false, false, false
	flag.BoolVar(&help, "h", false, "print help infomation")
	flag.BoolVar(&r, "r", false, "true if generate .pub recursively")
	flag.BoolVar(&clean, "clean", false, "clean all generaged .pub file for dir and it's subdir")
	flag.Parse()
	flag.Usage = func() {
		fmt.Println(`genpub is used to generate a .pub file for a dir of c standard lib.
usage:genpub [path to dir]`)
		flag.PrintDefaults()
	}
	if help {
		flag.Usage()
		return
	}
	dir := "."
	if len(flag.Args()) > 0 {
		dir = flag.Args()[0]
	}
	if clean {
		pub.DoDirRecursively(dir, func(d string) {
			pubfile := pub.PubFilenameForDir(d)
			_, err := os.Stat(pubfile)
			if !os.IsNotExist(err) {
				err = os.Remove(pubfile)
				if err != nil {
					log.Panicln(err)
				} else {
					fmt.Println("remove", pubfile, "successfully")
				}
			}
		})
		return
	}
	if r {
		pub.DoDirRecursively(dir, func(d string) {
			pub.WriteDir(d)
		})
	} else {
		pub.WriteDir(dir)
	}
}
