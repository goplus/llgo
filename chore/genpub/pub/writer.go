package pub

import (
	"fmt"
	"go/ast"
	"go/token"
	"io"
	"strings"
)

var builtinTypes = []string{"Void", "Bool", "Char", "Int16", "Int32",
	"Uint16", "Int", "Uint", "Long", "Ulong", "LongLong",
	"UlongLong", "Float", "Double", "Complex64", "Complex128",
	"Pointer"}

type PubWriter struct {
	w             io.Writer
	fileset       *token.FileSet
	uniqueNameMap map[string]struct{}
}

func NewPubWriter(w io.Writer, fileset *token.FileSet) *PubWriter {
	return &PubWriter{w: w, fileset: fileset,
		uniqueNameMap: make(map[string]struct{})}
}

func IsBuiltinType(typ string) bool {
	for _, name := range builtinTypes {
		if name == typ {
			return true
		}
	}
	return false
}

func (p *PubWriter) cnameFromTypSpec(spec *ast.TypeSpec) string {
	if spec == nil {
		return ""
	}
	if spec.Comment == nil {
		return ""
	}
	if spec.Comment.List == nil {
		return ""
	}
	for _, c := range spec.Comment.List {
		if strings.HasPrefix(c.Text, "//cname:") {
			return strings.TrimPrefix(c.Text, "//cname:")
		}
	}
	return ""
}

func (p *PubWriter) WriteStruct(typSpec *ast.TypeSpec) bool {
	if typSpec == nil {
		return false
	}
	_, ok := typSpec.Type.(*ast.StructType)
	if !ok {
		return false
	}
	fmt.Fprintf(p.w, "%s\n", typSpec.Name.Name)
	return true
}

func (p *PubWriter) WriteCname(cname, name string) bool {
	if cname == "_" {
		return true
	}
	if len(cname) > 0 {
		fmt.Fprintf(p.w, "%s %s\n", cname, name)
		return true
	}
	return false
}

func (p *PubWriter) WriteSepc(spec ast.Spec) bool {
	typSpec, ok := spec.(*ast.TypeSpec)
	if !ok {
		return false
	}
	name := typSpec.Name.Name
	_, ok = p.uniqueNameMap[name]
	if !ok && !IsBuiltinType(name) {
		p.uniqueNameMap[name] = struct{}{}
		cname := p.cnameFromTypSpec(typSpec)
		if p.WriteCname(cname, name) {
			return true
		}
		if p.WriteStruct(typSpec) {
			return true
		}
		format := NewTypeFormatter(name, typSpec.Type, p.fileset)
		typ := format.FormatExpr(typSpec.Type)
		if len(typ) > 0 {
			fmt.Fprintf(p.w, "todo:%s %s at positon:%v\n", typ, format.name, p.fileset.Position(typSpec.Pos()))
		}
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
