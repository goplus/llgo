package pub

import (
	"fmt"
	"go/ast"
	"go/token"
	"io"
)

var builtinTypes = []string{"Void", "Bool", "Char", "Int16", "Int32",
	"Uint16", "Int", "Uint", "Long", "Ulong", "LongLong",
	"UlongLong", "Float", "Double", "Complex64", "Complex128"}

type PubWriter struct {
	w       io.Writer
	fileset *token.FileSet
}

func NewPubWriter(w io.Writer, fileset *token.FileSet) *PubWriter {
	return &PubWriter{w: w, fileset: fileset}
}

func IsBuiltinType(typ string) bool {
	for _, name := range builtinTypes {
		if name == typ {
			return true
		}
	}
	return false
}

func (p *PubWriter) WriteSepc(spec ast.Spec) bool {
	typSpec, ok := spec.(*ast.TypeSpec)
	if !ok {
		return false
	}
	name := typSpec.Name.Name
	if !IsBuiltinType(name) {
		format := NewTypeFormatter(name, typSpec.Type, p.fileset)
		fmt.Fprintf(p.w, "%s %s\n", format.FormatExpr(typSpec.Type), format.name)
	}
	return true
}

func (p *PubWriter) WriteDecl(decl ast.Decl) bool {
	genDecl, ok := decl.(*ast.GenDecl)
	if !ok {
		return false
	}
	if genDecl.Tok != token.TYPE {
		return false
	}
	for _, spec := range genDecl.Specs {
		p.WriteSepc(spec)
	}
	return true
}

func (p *PubWriter) WriteFile(file *ast.File) {
	for _, decl := range file.Decls {
		p.WriteDecl(decl)
	}
}
