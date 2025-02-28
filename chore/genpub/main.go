package main

import (
	"flag"
	"fmt"
	"log"
	"os"
	"strings"
	"unicode"

	"github.com/goplus/llgo/chore/genpub/pub"
)

const (
	cleanSubcmd   string = "clean"
	mergeSubcmd   string = "merge"
	helpSubcmd    string = "help"
	genpubCommand string = "main"
)

func makeFlagsetMap() map[string]*flag.FlagSet {
	flagsetMap := make(map[string]*flag.FlagSet)
	flagsetMap[cleanSubcmd] = flag.NewFlagSet(cleanSubcmd, flag.ExitOnError)
	flagsetMap[cleanSubcmd].Usage = func() {
		fmt.Println(`clean all generaged .pub file for dir and it's subdir.
usage: genpub clean dir`)
	}
	flagsetMap[mergeSubcmd] = flag.NewFlagSet(mergeSubcmd, flag.ExitOnError)
	flagsetMap[mergeSubcmd].Usage = func() {
		fmt.Println(`merge all pub files in the directory into one llcppg.pub file.
usage: genpub merge dir`)
	}
	flagsetMap[helpSubcmd] = flag.NewFlagSet(helpSubcmd, flag.ExitOnError)
	flagsetMap[helpSubcmd].Usage = func() {
		fmt.Println(`print help information for subcmds(clean,merge) or for genpub command.
usage: genpub help or genpub help [clean|merge]`)
	}
	flagsetMap[genpubCommand] = flag.NewFlagSet(genpubCommand, flag.ExitOnError)
	flagsetMap[genpubCommand].Usage = func() {
		fmt.Println(`genpub is a tool for generate、clean、merge pub files for c lib of llgo. 
usage:genpub help [clean|merge] or genpub [-r|-dirs] dir`)
	}
	return flagsetMap
}

func main() {

	flagsetMap := makeFlagsetMap()

	clean := func(do bool, args ...string) {
		fs := flagsetMap[cleanSubcmd]
		if err := fs.Parse(args); err != nil {
			log.Printf("error: %s", err)
			return
		}
		if !do {
			return
		}
		if fs.NArg() > 0 {
			defer func() {
				fmt.Println("clean finished!")
			}()
			fmt.Printf("starting clean all .pub files for %s\n", fs.Arg(0))
			pub.CleanPubfileRecursively(fs.Arg(0))
		} else {
			log.Println("please specify a directory where you want to clean up .pub files.")
			flagsetMap[cleanSubcmd].Usage()
			flagsetMap[cleanSubcmd].PrintDefaults()
		}
	}

	merge := func(do bool, args ...string) {
		fs := flagsetMap[mergeSubcmd]
		if err := fs.Parse(args); err != nil {
			log.Printf("error: %s", err)
			return
		}
		if !do {
			return
		}
		if fs.NArg() < 1 {
			fs.Usage()
			fs.PrintDefaults()
			return
		}
		dir := fs.Arg(0)
		defer func() {
			fmt.Println("merge finished!")
		}()
		fmt.Printf("starting merge all .pub files for %s to llcppg.pub\n", dir)
		pub.MergePubfilesForDir(dir)
	}

	genpub := func(do bool, args ...string) {
		fs := flagsetMap[genpubCommand]
		pR := fs.Bool("r", false, "true if generate .pub recursively")
		deflib := "c,math,net,os,pthread,time,"
		pDirs := fs.String("dirs", deflib, "list of subdirectories where llcppg.pub needs to be generated")
		if err := fs.Parse(args); err != nil {
			log.Printf("error: %s", err)
			return
		}
		if !do {
			return
		}
		if *pDirs != "" {
			pub.SubDirs = strings.FieldsFunc(*pDirs, func(r rune) bool {
				return !unicode.IsLetter(r)
			})
		}
		var dir string
		if fs.NArg() > 0 {
			dir = fs.Arg(fs.NArg() - 1)
		} else {
			dir = "."
		}
		defer func() {
			fmt.Println("generate done!")
		}()
		if *pR {
			if dir != "." {
				fmt.Printf("starting generate all .pub files recursively for %s\n", dir)
			} else {
				fmt.Println("starting generate .pub files recursively for working dir")
			}
			pub.DoDirRecursively(dir, func(pubFile string) {
				pub.WritePubfile(pubFile)
			})
		} else {
			if dir != "." {
				fmt.Printf("starting generate .pub file for %s\n", dir)
			} else {
				fmt.Println("starting generate .pub file for working dir")
			}
			pub.WritePubfile(pub.PubFilenameForDir(dir, "llcppg.pub"))
		}
	}

	help := func(args []string) {
		fs := flagsetMap[helpSubcmd]
		if err := fs.Parse(args); err != nil {
			log.Printf("error: %s", err)
			return
		}
		if fs.NArg() > 0 {
			switch args[0] {
			case cleanSubcmd:
				clean(false)
				flagsetMap[cleanSubcmd].Usage()
				flagsetMap[cleanSubcmd].PrintDefaults()
			case mergeSubcmd:
				merge(false)
				flagsetMap[mergeSubcmd].Usage()
				flagsetMap[mergeSubcmd].PrintDefaults()
			default:
				genpub(false)
				flagsetMap[genpubCommand].Usage()
				flagsetMap[genpubCommand].PrintDefaults()
			}
		} else {
			genpub(false)
			flagsetMap[genpubCommand].Usage()
			flagsetMap[genpubCommand].PrintDefaults()
		}
	}

	subcmds := func(args []string) {
		if len(args) > 1 {
			switch args[1] {
			case cleanSubcmd:
				subArgs := args[2:]
				clean(true, subArgs...)
			case mergeSubcmd:
				subArgs := args[2:]
				merge(true, subArgs...)
			case helpSubcmd:
				subArgs := args[2:]
				help(subArgs)
			default:
				subArgs := args[1:]
				genpub(true, subArgs...)
			}
		} else {
			flagsetMap[genpubCommand].Usage()
			flagsetMap[genpubCommand].PrintDefaults()
		}
	}
	subcmds(os.Args)
}
