package astrewriter

import (
	"go/ast"

	"golang.org/x/tools/go/ast/astutil"
	"golang.org/x/tools/go/packages"
)

type NodeRewriter struct {
	pre  func(c *astutil.Cursor) bool
	post func(c *astutil.Cursor) bool
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
		astutil.Apply(file, rewriter.pre, rewriter.post)
	}
	return nil
}

// RewritePkg rewrites all files in a package
func (r *ASTRewriter) RewritePkg(pkg *packages.Package) error {
	for _, rewriter := range r.rewriters {
		for _, file := range pkg.Syntax {
			astutil.Apply(file, rewriter.pre, rewriter.post)
		}
	}
	return nil
}
