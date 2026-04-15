package ssa

import (
	"go/token"

	"github.com/goplus/llgo/internal/semmeta"
)

const (
	llgoUseIfaceMetadata       = semmeta.UseIfaceMetadata
	llgoUseIfaceMethodMetadata = semmeta.UseIfaceMethodMetadata
	llgoInterfaceInfoMetadata  = semmeta.InterfaceInfoMetadata
	llgoMethodInfoMetadata     = semmeta.MethodInfoMetadata
	llgoUseNamedMethodMetadata = semmeta.UseNamedMethodMetadata
	llgoReflectMethodMetadata  = semmeta.ReflectMethodMetadata
)

func (p Package) emitUseIface(owner, target string) {
	p.semMetaEmitter.AddUseIface(semmeta.Symbol(owner), semmeta.Symbol(target))
}

func (p Package) emitUseIfaceMethod(owner, target, name, mtyp string) {
	p.semMetaEmitter.AddUseIfaceMethod(semmeta.Symbol(owner), semmeta.IfaceMethodDemand{
		Target: semmeta.Symbol(target),
		Sig: semmeta.MethodSig{
			Name:  name,
			MType: semmeta.Symbol(mtyp),
		},
	})
}

func (p Package) emitInterfaceInfo(target string, methods []semmeta.MethodSig) {
	p.semMetaEmitter.AddInterfaceInfo(semmeta.Symbol(target), methods)
}

func (p Package) emitMethodInfo(typeSym string, slots []semmeta.MethodSlot) {
	p.semMetaEmitter.AddMethodInfo(semmeta.Symbol(typeSym), slots)
}

func (p Package) emitUseNamedMethod(owner, name string) {
	if !token.IsExported(name) && p.Path() != "" {
		name = p.Path() + "." + name
	}
	p.semMetaEmitter.AddUseNamedMethod(semmeta.Symbol(owner), name)
}

func (p Package) emitReflectMethod(owner string) {
	p.semMetaEmitter.AddReflectMethod(semmeta.Symbol(owner))
}

// EmitUseNamedMethod records a MethodByName-like exact method-name demand for
// later whole-program deadcode analysis.
func (p Package) EmitUseNamedMethod(owner, name string) {
	p.emitUseNamedMethod(owner, name)
}

// EmitReflectMethod records a conservative reflection marker for later
// whole-program deadcode analysis.
func (p Package) EmitReflectMethod(owner string) {
	p.emitReflectMethod(owner)
}
