package main

import (
	"flag"
	"fmt"
	"log"
	"os"
	"strings"

	"github.com/goplus/llgo/cl"
	"github.com/goplus/llgo/internal/llgen"
	llssa "github.com/goplus/llgo/ssa"
	"github.com/goplus/llgo/xtool/clang"
	"github.com/goplus/llgo/xtool/env/llvm"
)

func main() {
	log.SetOutput(os.Stderr)
	log.SetFlags(0) // Remove timestamp from log output

	log.Printf("args: %v\n", os.Args)

	customFlags := flag.NewFlagSet("compile", flag.ContinueOnError)
	customFlags.SetOutput(os.Stderr)

	// Define command-line parameters
	asmhdr := customFlags.String("asmhdr", "", "write assembly header to `file`")
	buildID := customFlags.String("buildid", "", "record `id` as the build id in the export metadata")
	c := customFlags.Int("c", 10, "concurrency during compilation (1 means no concurrency)")
	complete := customFlags.Bool("complete", false, "compiling complete package (no C or assembly)")
	compilingRuntime := customFlags.Bool("+", false, "compiling runtime")
	goVersion := customFlags.String("goversion", "", "required `version` of the runtime")
	importcfg := customFlags.String("importcfg", "", "read import configuration from `file`")
	nolocalimports := customFlags.Bool("nolocalimports", false, "reject local (relative) imports")
	output := customFlags.String("o", "", "write output to `file`")
	pack := customFlags.Bool("pack", false, "write to file.a instead of file.o")
	packagePath := customFlags.String("p", "", "set expected package import `path`")
	shared := customFlags.Bool("shared", false, "generate code that can be linked into a shared library")
	std := customFlags.Bool("std", false, "compiling standard library")
	symabis := customFlags.String("symabis", "", "read symbol ABIs from `file`")
	trimpath := customFlags.String("trimpath", "", "remove `prefix` from recorded source file paths")
	versionFlag := customFlags.String("V", "no", "print version and exit")
	verbose := customFlags.Bool("v", false, "print verbose information")
	lang := customFlags.String("lang", "", "Go language `version` (e.g. go1.20)")

	err := customFlags.Parse(os.Args[1:])
	if err != nil {
		if err == flag.ErrHelp {
			log.Println("usage: compile [options] file.go...")
			customFlags.PrintDefaults()
			os.Exit(0)
		}
		log.Fatalf("Error parsing flags: %v\n", err)
	}

	if *versionFlag != "no" {
		// output version to stdout for go toolchain
		fmt.Printf("compile version 0.1.0\n")
		os.Exit(0)
	}

	sourceFiles := customFlags.Args()

	log.Println("Output file:", *output)
	log.Println("Trimpath:", *trimpath)
	log.Println("Package path:", *packagePath)
	log.Println("Build ID:", *buildID)
	log.Println("Go version:", *goVersion)
	log.Println("Symabis file:", *symabis)
	log.Println("Importcfg file:", *importcfg)
	log.Println("Assembly header file:", *asmhdr)
	log.Println("Standard library:", *std)
	log.Println("Complete package:", *complete)
	log.Println("Shared object:", *shared)
	log.Println("No local imports:", *nolocalimports)
	log.Println("Write package file:", *pack)
	log.Println("Compilation concurrency:", *c)
	log.Println("Compiling runtime:", *compilingRuntime)
	log.Println("Source files:", strings.Join(sourceFiles, ", "))
	log.Println("Go language version:", *lang)

	if *output == "" || *packagePath == "" || len(sourceFiles) == 0 {
		log.Println("usage: compile [options] file.go...")
		customFlags.PrintDefaults()
		os.Exit(1)
	}

	if !*pack {
		// TODO(lijie): doesn't support non-package file yet
		log.Fatal("output file must be a package file")
	}

	llgen.Verbose = false
	llssa.Initialize(llssa.InitAll)
	if *verbose {
		llssa.SetDebug(llssa.DbgFlagAll)
		cl.SetDebug(cl.DbgFlagAll)
	}
	cl.EnableDebugSymbols(false)

	llFile := *output + ".ll"
	llOut := llgen.GenWithAsmHdr(*asmhdr, *packagePath, sourceFiles...)
	err = os.WriteFile(llFile, []byte(llOut), 0644)
	if err != nil {
		log.Fatalf("Error writing LLVM IR to %s: %v\n", llFile, err)
	}

	env := llvm.New("")
	os.Setenv("PATH", env.BinDir()+":"+os.Getenv("PATH"))

	objFile := *output + ".o"
	cl := clang.New("clang")
	if err := cl.Exec("-c", "-o", objFile, llFile); err != nil {
		log.Fatalf("Error compiling LLVM IR %s to %s: %v\n", llFile, objFile, err)
	}

	ar := clang.New("ar")
	if err := ar.Exec("rcs", *output, objFile); err != nil {
		log.Fatalf("Error creating archive %s: %v\n", *output, err)
	}
}
