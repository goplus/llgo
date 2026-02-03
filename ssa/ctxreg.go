package ssa

import (
	"fmt"
	"log"
	"strings"

	"github.com/goplus/llvm"
)

type ctxAsmTemplate struct {
	write   string
	read    string
	dialect llvm.InlineAsmDialect
}

var ctxAsmTemplates = map[string]ctxAsmTemplate{
	"amd64": {
		write:   "movq $0, %%%s",
		read:    "movq %%%s, $0",
		dialect: llvm.InlineAsmDialectATT,
	},
	"386": {
		write:   "movd $0, %%%s",
		read:    "movd %%%s, $0",
		dialect: llvm.InlineAsmDialectATT,
	},
	"arm64": {
		write:   "mov %s, $0",
		read:    "mov $0, %s",
		dialect: llvm.InlineAsmDialectATT,
	},
	"riscv64": {
		write:   "mv %s, $0",
		read:    "mv $0, %s",
		dialect: llvm.InlineAsmDialectATT,
	},
	"riscv32": {
		write:   "mv %s, $0",
		read:    "mv $0, %s",
		dialect: llvm.InlineAsmDialectATT,
	},
}

func ctxAsmStrings(goarch, reg string) (write string, read string, dialect llvm.InlineAsmDialect, ok bool) {
	tmpl, ok := ctxAsmTemplates[goarch]
	if !ok {
		return "", "", llvm.InlineAsmDialectATT, false
	}
	write = fmt.Sprintf(tmpl.write, reg)
	read = fmt.Sprintf(tmpl.read, reg)
	return write, read, tmpl.dialect, true
}

func ctxRegCallerSaved(goarch string) bool {
	switch goarch {
	case "amd64", "386":
		return true
	default:
		return false
	}
}

// WriteCtxReg writes a pointer value to the closure context register.
func (b Builder) WriteCtxReg(val Expr) {
	ptrType := b.Prog.VoidPtr()
	casted := b.Convert(ptrType, val)
	reg := b.Prog.target.CtxRegister()
	if debugInstr {
		log.Printf("WriteCtxReg %v to %s\n", casted.impl, reg.Name)
	}
	if reg.Name == "" {
		panic("ssa: WriteCtxReg called without ctx register support")
	}
	writeAsm, _, dialect, ok := ctxAsmStrings(b.Prog.target.GOARCH, reg.Name)
	if !ok {
		panic("ssa: WriteCtxReg called without ctx register asm template")
	}
	ftype := llvm.FunctionType(b.Prog.tyVoid(), []llvm.Type{ptrType.ll}, false)
	parts := []string{"r"}
	if reg.Constraint != "" {
		parts = append(parts, "~"+reg.Constraint)
	}
	if ctxRegCallerSaved(b.Prog.target.GOARCH) {
		parts = append(parts, "~{memory}")
	}
	if len(parts) > 1 {
		seen := make(map[string]bool, len(parts))
		uniq := parts[:0]
		for _, p := range parts {
			if seen[p] {
				continue
			}
			seen[p] = true
			uniq = append(uniq, p)
		}
		parts = uniq
	}
	constraints := strings.Join(parts, ",")
	asm := llvm.InlineAsm(ftype, writeAsm, constraints, true, false, dialect, false)
	b.impl.CreateCall(ftype, asm, []llvm.Value{casted.impl}, "")
}

// ReadCtxReg reads the closure context pointer from the context register.
func (b Builder) ReadCtxReg() Expr {
	reg := b.Prog.target.CtxRegister()
	if debugInstr {
		log.Printf("ReadCtxReg from %s\n", reg.Name)
	}
	if reg.Name == "" {
		panic("ssa: ReadCtxReg called without ctx register support")
	}
	ptrType := b.Prog.VoidPtr()
	_, readAsm, dialect, ok := ctxAsmStrings(b.Prog.target.GOARCH, reg.Name)
	if !ok {
		panic("ssa: ReadCtxReg called without ctx register asm template")
	}
	ftype := llvm.FunctionType(ptrType.ll, nil, false)
	constraints := "=r"
	if ctxRegCallerSaved(b.Prog.target.GOARCH) {
		constraints += ",~{memory}"
	}
	asm := llvm.InlineAsm(ftype, readAsm, constraints, true, false, dialect, false)
	ret := b.impl.CreateCall(ftype, asm, nil, "")
	return Expr{ret, ptrType}
}
