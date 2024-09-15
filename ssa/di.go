package ssa

import (
	"debug/dwarf"
	"fmt"
	"go/token"
	"go/types"
	"path/filepath"

	"github.com/goplus/llvm"
)

type aDIBuilder struct {
	di      *llvm.DIBuilder
	prog    Program
	diTypes map[Type]DIType
}

type diBuilder = *aDIBuilder

func newDIBuilder(prog Program, pkg Package) diBuilder {
	m := pkg.mod
	ctx := m.Context()
	m.AddNamedMetadataOperand("llvm.module.flags",
		ctx.MDNode([]llvm.Metadata{
			llvm.ConstInt(ctx.Int32Type(), 2, false).ConstantAsMetadata(), // Warning on mismatch
			ctx.MDString("Debug Info Version"),
			llvm.ConstInt(ctx.Int32Type(), 3, false).ConstantAsMetadata(),
		}),
	)
	m.AddNamedMetadataOperand("llvm.module.flags",
		ctx.MDNode([]llvm.Metadata{
			llvm.ConstInt(ctx.Int32Type(), 7, false).ConstantAsMetadata(), // Max on mismatch
			ctx.MDString("Dwarf Version"),
			llvm.ConstInt(ctx.Int32Type(), 5, false).ConstantAsMetadata(),
		}),
	)
	return &aDIBuilder{
		di:      llvm.NewDIBuilder(m),
		prog:    prog,
		diTypes: make(map[*aType]DIType),
	}
}

func (b diBuilder) Finalize() {
	b.di.Finalize()
	b.di.Destroy()
	b.di = nil
}

// ----------------------------------------------------------------------------

type aCompilationUnit struct {
	ll llvm.Metadata
}

type CompilationUnit = *aCompilationUnit

var DWARF_LANG_C llvm.DwarfLang = 0x2
var DWARF_LANG_GO llvm.DwarfLang = 0x16

func (b diBuilder) createCompileUnit(filename, dir string) CompilationUnit {
	return &aCompilationUnit{ll: b.di.CreateCompileUnit(llvm.DICompileUnit{
		// TODO(lijie): use C language for now, change after Go plugin of LLDB is ready
		Language:       DWARF_LANG_C - 1,
		File:           filename,
		Dir:            dir,
		Producer:       "LLGo",
		Optimized:      true,
		RuntimeVersion: 1,
	})}
}

// ----------------------------------------------------------------------------

type aDIScopeMeta struct {
	ll llvm.Metadata
}

type DIScopeMeta = *aDIScopeMeta

type DIScope interface {
	scopeMeta(b diBuilder, pos token.Position) DIScopeMeta
}

// ----------------------------------------------------------------------------

type aDIFile struct {
	ll llvm.Metadata
}

type DIFile = *aDIFile

func (b diBuilder) createFile(filename string) DIFile {
	dir, file := filepath.Split(filename)
	return &aDIFile{ll: b.di.CreateFile(file, dir)}
}

func (f DIFile) scopeMeta(b diBuilder, cu CompilationUnit, pos token.Position) DIScopeMeta {
	return &aDIScopeMeta{b.file(pos.Filename).ll}
}

// ----------------------------------------------------------------------------

type aDIType struct {
	ll llvm.Metadata
}

type DIType = *aDIType

func (b diBuilder) createType(ty Type, pos token.Position) DIType {
	var typ llvm.Metadata
	switch t := ty.RawType().(type) {
	case *types.Basic:
		if t.Kind() == types.UnsafePointer {
			typ = b.di.CreatePointerType(llvm.DIPointerType{
				Name:         "unsafe.Pointer",
				SizeInBits:   b.prog.SizeOf(b.prog.rawType(t)) * 8,
				AlignInBits:  uint32(b.prog.sizes.Alignof(t) * 8),
				AddressSpace: 0,
			})
			return &aDIType{typ}
		}

		var encoding llvm.DwarfTypeEncoding
		if t.Info()&types.IsBoolean != 0 {
			encoding = llvm.DW_ATE_boolean
		} else if t.Info()&types.IsUnsigned != 0 {
			encoding = llvm.DW_ATE_unsigned
		} else if t.Info()&types.IsInteger != 0 {
			encoding = llvm.DW_ATE_signed
		} else if t.Info()&types.IsFloat != 0 {
			encoding = llvm.DW_ATE_float
		} else if t.Info()&types.IsComplex != 0 {
			encoding = llvm.DW_ATE_complex_float
		} else if t.Info()&types.IsString != 0 {
			typ = b.di.CreateBasicType(llvm.DIBasicType{
				Name:       "string",
				SizeInBits: b.prog.SizeOf(b.prog.rawType(t)) * 8,
				Encoding:   llvm.DW_ATE_unsigned_char,
			})
			return &aDIType{typ}
		} else {
			panic(fmt.Errorf("can't create debug info of basic type: %v, %T", ty.RawType(), ty.RawType()))
		}

		typ = b.di.CreateBasicType(llvm.DIBasicType{
			Name:       t.Name(),
			SizeInBits: b.prog.SizeOf(b.prog.rawType(t)) * 8,
			Encoding:   encoding,
		})
	case *types.Pointer:
		return b.createPointerType(b.prog.rawType(t.Elem()), pos)
	case *types.Named:
		return b.diType(b.prog.rawType(t.Underlying()), pos)
	case *types.Interface:
		return b.createBasicType(ty)
	case *types.Slice:
		return b.createBasicType(ty)
	case *types.Struct:
		return b.createStructType(ty, pos)
	case *types.Signature:
		return b.createFuncPtrType(b.prog.rawType(t), pos)
	case *types.Tuple:
		return b.createBasicType(ty)
	case *types.Array:
		return b.createBasicType(ty)
	case *types.Chan:
		return b.createBasicType(ty)
	case *types.Map:
		return b.createBasicType(ty)
	default:
		panic(fmt.Errorf("can't create debug info of type: %v, %T", ty.RawType(), ty.RawType()))
	}
	return &aDIType{typ}
}

// ----------------------------------------------------------------------------

type aDIFunction struct {
	ll llvm.Metadata
}

type DIFunction = *aDIFunction

func (b diBuilder) createFunction(scope DIScope, pos token.Position, name, linkageName string, ty DIType, isLocalToUnit, isDefinition, isOptimized bool) DIFunction {
	return &aDIFunction{ll: scope.scopeMeta(b, pos).ll}
}

// ----------------------------------------------------------------------------

type aDIGlobalVariableExpression struct {
	ll llvm.Metadata
}

type DIGlobalVariableExpression = *aDIGlobalVariableExpression

func (b diBuilder) createGlobalVariableExpression(scope DIScope, pos token.Position, name, linkageName string, ty DIType, isLocalToUnit bool) DIGlobalVariableExpression {
	return &aDIGlobalVariableExpression{
		ll: b.di.CreateGlobalVariableExpression(
			scope.scopeMeta(b, pos).ll,
			llvm.DIGlobalVariableExpression{
				Name:        name,
				LinkageName: linkageName,
				File:        b.file(pos.Filename).ll,
				Line:        pos.Line,
				Type:        ty.ll,
				LocalToUnit: isLocalToUnit,
				// TODO(lijie): check the following fields
				// Expr:				llvm.Metadata{},
				// Decl:				llvm.Metadata{},
				// AlignInBits: 0,
			},
		),
	}
}

// ----------------------------------------------------------------------------

type aDIVar struct {
	ll llvm.Metadata
}

type DIVar = *aDIVar

func (b diBuilder) createParameterVariable(scope DIScope, pos token.Position, name string, argNo int, ty DIType) DIVar {
	return &aDIVar{
		ll: b.di.CreateParameterVariable(
			scope.scopeMeta(b, pos).ll,
			llvm.DIParameterVariable{
				Name:           name,
				File:           b.file(pos.Filename).ll,
				Line:           pos.Line,
				ArgNo:          argNo,
				Type:           ty.ll,
				AlwaysPreserve: true,
			},
		),
	}
}

func (b diBuilder) createAutoVariable(scope DIScope, pos token.Position, name string, ty DIType) DIVar {
	return &aDIVar{
		ll: b.di.CreateAutoVariable(
			scope.scopeMeta(b, pos).ll,
			llvm.DIAutoVariable{
				Name:           name,
				File:           b.file(pos.Filename).ll,
				Line:           pos.Line,
				Type:           ty.ll,
				AlwaysPreserve: true,
			},
		),
	}
}

func (b diBuilder) createBasicType(t Type) DIType {
	return &aDIType{ll: b.di.CreateBasicType(llvm.DIBasicType{
		Name:       t.RawType().String(),
		SizeInBits: b.prog.SizeOf(t) * 8,
		Encoding:   llvm.DW_ATE_unsigned,
	})}
}

func (b diBuilder) createPointerType(ty Type, pos token.Position) DIType {
	return &aDIType{ll: b.di.CreatePointerType(llvm.DIPointerType{
		Pointee:      b.diType(ty, pos).ll,
		SizeInBits:   b.prog.SizeOf(ty) * 8,
		AlignInBits:  uint32(b.prog.sizes.Alignof(ty.RawType())) * 8,
		AddressSpace: 0,
	})}
}

func (b diBuilder) createStructType(ty Type, pos token.Position) (ret DIType) {
	scope := b.file(pos.Filename)
	ret = &aDIType{b.di.CreateReplaceableCompositeType(
		scope.ll,
		llvm.DIReplaceableCompositeType{
			Tag:  dwarf.TagStructType,
			Name: ty.RawType().String(),
		},
	)}
	b.diTypes[ty] = ret

	// Create struct type
	structType := ty.RawType().(*types.Struct)
	fields := make([]llvm.Metadata, structType.NumFields())

	for i := 0; i < structType.NumFields(); i++ {
		field := structType.Field(i)
		fields[i] = b.di.CreateMemberType(
			scope.ll,
			llvm.DIMemberType{
				Name:         field.Name(),
				File:         b.file(pos.Filename).ll,
				Line:         pos.Line,
				SizeInBits:   b.prog.SizeOf(b.prog.rawType(field.Type())) * 8,
				AlignInBits:  8,
				OffsetInBits: b.prog.OffsetOf(ty, i) * 8,
				Type:         b.diType(b.prog.rawType(field.Type()), pos).ll,
			},
		)
	}
	st := b.di.CreateStructType(
		scope.ll,
		llvm.DIStructType{
			Name:        ty.RawType().String(),
			File:        b.file(pos.Filename).ll,
			Line:        pos.Line,
			SizeInBits:  b.prog.SizeOf(ty) * 8,
			AlignInBits: uint32(b.prog.sizes.Alignof(structType) * 8),
			Elements:    fields,
		},
	)
	ret.ll.ReplaceAllUsesWith(st)
	ret.ll = st
	return
}

func (b diBuilder) createFuncPtrType(ty Type, pos token.Position) DIType {
	sig := ty.RawType().(*types.Signature)
	retTy := b.diType(b.prog.rawType(sig.Results()), pos)
	paramTys := make([]DIType, sig.Params().Len())
	for i := 0; i < sig.Params().Len(); i++ {
		paramTys[i] = b.diType(b.prog.rawType(sig.Params().At(i).Type()), pos)
	}
	rt := b.createSubroutineType(b.file(pos.Filename), retTy, paramTys)
	return &aDIType{ll: b.di.CreatePointerType(llvm.DIPointerType{
		Pointee:      rt.ll,
		SizeInBits:   b.prog.SizeOf(ty) * 8,
		AlignInBits:  8,
		AddressSpace: 0,
	})}
}

func (b diBuilder) createSubroutineType(file DIFile, retTy DIType, paramTys []DIType) DIType {
	params := make([]llvm.Metadata, len(paramTys)+1)
	params[0] = retTy.ll
	for i, ty := range paramTys {
		params[i+1] = ty.ll
	}
	return &aDIType{ll: b.di.CreateSubroutineType(llvm.DISubroutineType{
		File:       file.ll,
		Parameters: params,
		Flags:      0,
	})}
}

// ----------------------------------------------------------------------------

func (b diBuilder) dbgDeclare(v Expr, dv DIVar, scope DIScope, pos token.Position, blk BasicBlock) {
	loc := llvm.DebugLoc{
		Line:  uint(pos.Line),
		Col:   uint(pos.Column),
		Scope: scope.scopeMeta(b, pos).ll,
	}
	b.di.InsertDeclareAtEnd(
		v.impl,
		dv.ll,
		b.di.CreateExpression(nil),
		loc,
		blk.last,
	)
}

func (b diBuilder) dbgValue(v Expr, dv DIVar, scope DIScope, pos token.Position, blk BasicBlock) {
	loc := llvm.DebugLoc{
		Line:  uint(pos.Line),
		Col:   uint(pos.Column),
		Scope: scope.scopeMeta(b, pos).ll,
	}
	b.di.InsertValueAtEnd(
		v.impl,
		dv.ll,
		b.di.CreateExpression(nil),
		loc,
		blk.last,
	)
}

func (b diBuilder) diType(t Type, pos token.Position) DIType {
	if ty, ok := b.diTypes[t]; ok {
		return ty
	}
	ty := b.createType(t, pos)
	b.diTypes[t] = ty
	return ty
}

func (b diBuilder) varParam(f Function, pos token.Position, varName string, vt DIType, argNo int) DIVar {
	return b.createParameterVariable(
		f,
		pos,
		varName,
		argNo,
		vt,
	)
}

func (b diBuilder) varAuto(f Function, pos token.Position, varName string, vt DIType) DIVar {
	return b.createAutoVariable(
		f,
		pos,
		varName,
		vt,
	)
}

func (b diBuilder) file(filename string) DIFile {
	return b.createFile(filename)
}

// -----------------------------------------------------------------------------

func (b Builder) DIDeclare(v Expr, dv DIVar, scope DIScope, pos token.Position, blk BasicBlock) {
	b.Pkg.diBuilder().dbgDeclare(v, dv, scope, pos, blk)
}

func (b Builder) DIValue(v Expr, dv DIVar, scope DIScope, pos token.Position, blk BasicBlock) {
	b.Pkg.diBuilder().dbgValue(v, dv, scope, pos, blk)
}

func (b Builder) DIVarParam(f Function, pos token.Position, varName string, vt Type, argNo int) DIVar {
	t := b.Pkg.diBuilder().diType(vt, pos)
	return b.Pkg.diBuilder().varParam(f, pos, varName, t, argNo)
}

func (b Builder) DIVarAuto(f Function, pos token.Position, varName string, vt Type) DIVar {
	t := b.Pkg.diBuilder().diType(vt, pos)
	return b.Pkg.diBuilder().varAuto(f, pos, varName, t)
}

func (b Builder) DISetCurrentDebugLocation(f Function, pos token.Position) {
	b.impl.SetCurrentDebugLocation(
		uint(pos.Line),
		uint(pos.Column),
		f.scopeMeta(b.Pkg.diBuilder(), pos).ll,
		f.impl.InstructionDebugLoc(),
	)
}

func (b Builder) DebugFunction(f Function, pos token.Position) {
	// attach debug info to function
	f.scopeMeta(b.Pkg.di, pos)
}

// -----------------------------------------------------------------------------
