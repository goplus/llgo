package ssa

import (
	"strconv"
	"strings"

	"github.com/goplus/llvm"
)

const (
	// llgoUseIfaceMetadata is a module-level named metadata table whose rows are
	// {owner name, concrete type name}. Each row means that if the named owner
	// function is reachable, the named concrete type should enter the UsedInIface
	// semantic state during deadcode analysis. Metadata stores only symbol names
	// so emission does not force extra LLVM globals into the module.
	llgoUseIfaceMetadata = "llgo.useiface"
	// llgoUseIfaceMethodMetadata is a module-level named metadata table whose
	// rows are {owner name, interface type name, normalized method name, mtyp
	// name}. Each row means that if the named owner function is reachable, the
	// referenced interface method demand should participate in later method
	// matching.
	llgoUseIfaceMethodMetadata = "llgo.useifacemethod"
	// llgoMethodOffMetadata is a module-level named metadata table whose rows are
	// {concrete type name, method index, normalized method name, mtyp name}. Each
	// row describes one concrete method candidate in the canonical abi.Method
	// order.
	llgoMethodOffMetadata = "llgo.methodoff"
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

func metadataString(ctx llvm.Context, s string) llvm.Metadata {
	return ctx.MDString(s)
}

func metadataInt32(ctx llvm.Context, i int) llvm.Metadata {
	return llvm.ConstInt(ctx.Int32Type(), uint64(i), false).ConstantAsMetadata()
}

func (p Package) emitUseIface(owner, target string) {
	if owner == "" || target == "" {
		return
	}
	ctx := p.mod.Context()
	p.semMetaEmitter.add(
		p.mod,
		llgoUseIfaceMetadata,
		metadataKey(owner, target),
		metadataString(ctx, owner),
		metadataString(ctx, target),
	)
}

func (p Package) emitUseIfaceMethod(owner, target, name, mtyp string) {
	if owner == "" || target == "" || name == "" || mtyp == "" {
		return
	}
	ctx := p.mod.Context()
	p.semMetaEmitter.add(
		p.mod,
		llgoUseIfaceMethodMetadata,
		metadataKey(owner, target, name, mtyp),
		metadataString(ctx, owner),
		metadataString(ctx, target),
		metadataString(ctx, name),
		metadataString(ctx, mtyp),
	)
}

func (p Package) emitMethodOff(owner string, index int, name, mtyp string) {
	if owner == "" || name == "" || mtyp == "" {
		return
	}
	ctx := p.mod.Context()
	p.semMetaEmitter.add(
		p.mod,
		llgoMethodOffMetadata,
		metadataKey(owner, strconv.Itoa(index), name, mtyp),
		metadataString(ctx, owner),
		metadataInt32(ctx, index),
		metadataString(ctx, name),
		metadataString(ctx, mtyp),
	)
}
