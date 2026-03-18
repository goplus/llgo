package ssa

import (
	"strings"

	"github.com/goplus/llvm"
)

const (
	// llgoUseIfaceMetadata is a module-level named metadata table whose rows are
	// {owner, concrete type target}. Each row means that if the owner function is
	// reachable, the target concrete type should enter the UsedInIface semantic
	// state during deadcode analysis.
	llgoUseIfaceMetadata = "llgo.useiface"
)

type semMetaEmitter struct {
	seen map[string]struct{}
}

func newSemMetaEmitter() *semMetaEmitter {
	return &semMetaEmitter{
		seen: make(map[string]struct{}),
	}
}

func (e *semMetaEmitter) add(mod llvm.Module, table, key string, fields ...llvm.Metadata) {
	fullKey := table + ":" + key
	if _, ok := e.seen[fullKey]; ok {
		return
	}
	e.seen[fullKey] = struct{}{}
	mod.AddNamedMetadataOperand(table, mod.Context().MDNode(fields))
}

func metadataKey(parts ...string) string {
	return strings.Join(parts, ":")
}

func metadataSymbol(v llvm.Value) llvm.Metadata {
	return v.ConstantAsMetadata()
}

func (p Package) emitUseIface(owner, target llvm.Value) {
	if owner.IsNil() || target.IsNil() {
		return
	}
	p.semMetaEmitter.add(
		p.mod,
		llgoUseIfaceMetadata,
		metadataKey(owner.Name(), target.Name()),
		metadataSymbol(owner),
		metadataSymbol(target),
	)
}
