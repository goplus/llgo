package main

import (
	"bytes"
	"flag"
	"fmt"
	"go/ast"
	"go/printer"
	"go/token"
	"go/types"
	"log"
	"strings"

	"github.com/goplus/llgo/internal/astrewriter"
	"golang.org/x/tools/go/packages"
)

func parseRewriters(rewriterStr string) []*astrewriter.NodeRewriter {
	rewriters := []*astrewriter.NodeRewriter{}
	typeInfo := &types.Info{Types: make(map[ast.Expr]types.TypeAndValue)}

	for _, name := range strings.Split(rewriterStr, ",") {
		switch strings.TrimSpace(name) {
		case "DeferInLoop":
			rewriters = append(rewriters, astrewriter.DeferInLoopRewriter(typeInfo))
		default:
			log.Fatalf("Unknown rewriter: %s", name)
		}
	}
	return rewriters
}

func main() {
	// Add command line flag
	rewriterFlag := flag.String("rewriters", "DeferInLoop", "Comma-separated list of rewriters to use (DeferInLoop,...)")
	flag.Parse()

	// Configure package loading
	cfg := &packages.Config{
		Mode: packages.NeedSyntax |
			packages.NeedTypes |
			packages.NeedTypesInfo |
			packages.NeedFiles,
		Fset:  token.NewFileSet(),
		Tests: false,
	}

	pkgs, err := packages.Load(cfg, flag.Args()...)
	if err != nil {
		log.Fatal(err)
	}

	// Create rewriter with specified handlers
	rewriters := parseRewriters(*rewriterFlag)
	if len(rewriters) == 0 {
		log.Fatal("No valid rewriters specified")
	}
	rewriter := astrewriter.NewASTRewriter(rewriters...)

	for _, pkg := range pkgs {
		if len(pkg.Errors) > 0 {
			for _, err := range pkg.Errors {
				log.Printf("Package error: %v\n", err)
			}
			continue
		}

		// Rewrite the package
		if err := rewriter.RewritePkg(pkg); err != nil {
			log.Printf("Error rewriting package: %v\n", err)
			continue
		}

		// Output the modified code for each file
		for _, file := range pkg.Syntax {
			var buf bytes.Buffer
			if err := printer.Fprint(&buf, pkg.Fset, file); err != nil {
				log.Printf("Error formatting file: %v\n", err)
				continue
			}
			fmt.Println(buf.String())
		}
	}
}
