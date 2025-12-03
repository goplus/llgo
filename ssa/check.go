package ssa

import (
	"go/types"
	"log"
)

func (b Program) CheckSig(pkg Package, fn string, sig *types.Signature) *types.Signature {
	if pkg.Path() == "github.com/goplus/llgo/cmd/demo/big" {
		log.Println("======>", pkg.Path(), fn, sig)
	}
	return sig
}

func (b Program) checkSig(sig *types.Signature, bg Background) *types.Signature {
	log.Println("========>", sig, bg)
	return sig
}

func (b Program) CheckArgs(pkg Package, fn Function, sig *types.Signature, args []Expr) []Expr {
	if pkg.Path() == "github.com/goplus/llgo/cmd/demo/big" {
		log.Println("======>", pkg.Path(), fn.Expr.RawType(), sig, args)
	}
	return args
}
