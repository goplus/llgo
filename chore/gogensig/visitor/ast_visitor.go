package visitor

import (
	"fmt"

	"github.com/goplus/llgo/chore/llcppg/ast"
)

type DocVisitor interface {
	VisitStart(incPath string)
	Visit(node ast.Node)
	VisitFuncDecl(funcDecl *ast.FuncDecl)
	VisitDone(incPath string)
	VisitStruct(structName *ast.Ident, fields *ast.FieldList, typeDecl *ast.TypeDecl)
	//VisitClass(className *ast.Ident, fields *ast.FieldList, typeDecl *ast.TypeDecl)
	//VisitMethod(className *ast.Ident, method *ast.FuncDecl, typeDecl *ast.TypeDecl)
	VisitUnion(unionName *ast.Ident, fields *ast.FieldList, typeDecl *ast.TypeDecl)
	VisitEnumTypeDecl(enumTypeDecl *ast.EnumTypeDecl)
	VisitTypedefDecl(typedefDecl *ast.TypedefDecl)
}

type BaseDocVisitor struct {
	DocVisitor
}

func NewBaseDocVisitor(Visitor DocVisitor) *BaseDocVisitor {
	return &BaseDocVisitor{DocVisitor: Visitor}
}

func (p *BaseDocVisitor) visitNode(decl ast.Node) {
	switch v := decl.(type) {
	case *ast.FuncDecl:
		p.visitFuncDecl(v)
	case *ast.TypeDecl:
		p.visitTypeDecl(v)
	case *ast.EnumTypeDecl:
		p.visitEnumTypeDecl(v)
	case *ast.TypedefDecl:
		p.visitTypedefDecl(v)
	default:
		panic(fmt.Errorf("todo visit %v", v))
	}
}

func (p *BaseDocVisitor) Visit(node ast.Node) {
	switch v := node.(type) {
	case *ast.File:
		for _, decl := range v.Decls {
			p.visitNode(decl)
		}
	default:
		p.visitNode(v)
	}
}

func (p *BaseDocVisitor) visitFuncDecl(funcDecl *ast.FuncDecl) {
	if funcDecl == nil {
		return
	}
	p.VisitFuncDecl(funcDecl)
}

func (p *BaseDocVisitor) visitTypeDecl(typeDecl *ast.TypeDecl) {
	if typeDecl == nil {
		return
	}
	if typeDecl.Type.Tag == ast.Class {
		p.visitClass(typeDecl.Name, typeDecl.Type.Fields, typeDecl)
		for _, method := range typeDecl.Type.Methods {
			p.visitMethod(typeDecl.Name, method, typeDecl)
		}
	} else if typeDecl.Type.Tag == ast.Struct {
		p.visitStruct(typeDecl.Name, typeDecl.Type.Fields, typeDecl)
	} else if typeDecl.Type.Tag == ast.Union {
		p.visitUnion(typeDecl.Name, typeDecl.Type.Fields, typeDecl)
	}
}

func (p *BaseDocVisitor) visitClass(className *ast.Ident, fields *ast.FieldList, typeDecl *ast.TypeDecl) {
	//p.VisitClass(className, fields, typeDecl)
}

func (p *BaseDocVisitor) visitMethod(className *ast.Ident, method *ast.FuncDecl, typeDecl *ast.TypeDecl) {
	//p.VisitMethod(className, method, typeDecl)
}

func (p *BaseDocVisitor) visitStruct(structName *ast.Ident, fields *ast.FieldList, typeDecl *ast.TypeDecl) {
	p.VisitStruct(structName, fields, typeDecl)
}

func (p *BaseDocVisitor) visitUnion(unionName *ast.Ident, fields *ast.FieldList, typeDecl *ast.TypeDecl) {
	p.VisitUnion(unionName, fields, typeDecl)
}

func (p *BaseDocVisitor) visitEnumTypeDecl(enumTypeDecl *ast.EnumTypeDecl) {
	if enumTypeDecl == nil {
		return
	}
	p.VisitEnumTypeDecl(enumTypeDecl)
}

func (p *BaseDocVisitor) visitTypedefDecl(typedefDecl *ast.TypedefDecl) {
	if typedefDecl == nil {
		return
	}
	p.VisitTypedefDecl(typedefDecl)
}
