package astrewriter

import (
	"fmt"
	"go/ast"
	"go/printer"
	"strings"

	"golang.org/x/tools/go/ast/astutil"
	"golang.org/x/tools/go/packages"
)

type NodeRewriter struct {
	Rewrite func(c *astutil.Cursor) bool
}

// ASTRewriter is a generic AST rewriter that can apply multiple rewriters
type ASTRewriter struct {
	rewriters []*NodeRewriter
}

// NewASTRewriter creates a new AST rewriter with the given rewriters
func NewASTRewriter(rewriters ...*NodeRewriter) *ASTRewriter {
	return &ASTRewriter{
		rewriters: rewriters,
	}
}

// RewriteFile rewrites a single file
func (r *ASTRewriter) RewriteFile(file *ast.File) error {
	for _, rewriter := range r.rewriters {
		astutil.Apply(file, nil, func(c *astutil.Cursor) bool {
			return rewriter.Rewrite(c)
		})
	}
	return nil
}

// RewritePkg rewrites all files in a package
func (r *ASTRewriter) RewritePkg(pkg *packages.Package) error {
	for _, file := range pkg.Syntax {
		r.RewriteFile(file)
	}
	return nil
}

func pkgToStr(pkg *packages.Package, file *ast.File) string {
	var buf strings.Builder
	err := printer.Fprint(&buf, pkg.Fset, file)
	if err != nil {
		panic(fmt.Sprintf("failed to print AST: %v", err))
	}
	return buf.String()
}
