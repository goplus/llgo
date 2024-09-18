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
	di    *llvm.DIBuilder
	prog  Program
	types map[Type]DIType
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
		di:    llvm.NewDIBuilder(m),
		prog:  prog,
		types: make(map[*aType]DIType),
	}
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
			return b.createComplexType(ty)
		} else if t.Info()&types.IsString != 0 {
			return b.createStringType()
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
		ty := b.prog.rtType("Iface")
		return b.createInterfaceType(ty)
	case *types.Slice:
		ty := b.prog.rtType("Slice")
		tyElem := b.prog.rawType(t.Elem())
		return b.createSliceType(ty, tyElem)
	case *types.Struct:
		return b.createStructType(ty, pos)
	case *types.Signature:
		return b.createFuncPtrType(b.prog.rawType(t), pos)
	case *types.Tuple:
		return b.createBasicType(ty)
	case *types.Array:
		return b.createArrayType(ty, t.Len())
	case *types.Chan:
		return b.createBasicType(ty)
	case *types.Map:
		ty := b.prog.rtType("Map")
		tk := b.prog.rawType(t.Key())
		tv := b.prog.rawType(t.Elem())
		return b.createMapType(ty, tk, tv)
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

func (b diBuilder) createStringType() DIType {
	ty := b.prog.rtType("String")

	return &aDIType{
		ll: b.di.CreateStructType(
			llvm.Metadata{},
			llvm.DIStructType{
				Name:        "string",
				SizeInBits:  b.prog.SizeOf(ty) * 8,
				AlignInBits: uint32(b.prog.sizes.Alignof(ty.RawType()) * 8),
				Elements: []llvm.Metadata{
					b.createMemberType("data", ty, b.prog.CStr(), 0),
					b.createMemberType("len", ty, b.prog.Uint(), 1),
				},
			},
		),
	}
}

func (b diBuilder) createArrayType(ty Type, l int64) DIType {
	tyElem := b.prog.rawType(ty.RawType().(*types.Array).Elem())
	return &aDIType{ll: b.di.CreateArrayType(llvm.DIArrayType{
		SizeInBits:  b.prog.SizeOf(ty) * 8,
		AlignInBits: uint32(b.prog.sizes.Alignof(ty.RawType()) * 8),
		ElementType: b.diType(tyElem, token.Position{}).ll,
		Subscripts: []llvm.DISubrange{{
			Count: l,
		}},
	})}
}

func (b diBuilder) createSliceType(ty, tyElem Type) DIType {
	pos := token.Position{}
	diElemTyPtr := b.prog.Pointer(tyElem)

	return &aDIType{
		ll: b.di.CreateStructType(
			llvm.Metadata{},
			llvm.DIStructType{
				Name:        ty.RawType().String(),
				SizeInBits:  b.prog.SizeOf(ty) * 8,
				AlignInBits: uint32(b.prog.sizes.Alignof(ty.RawType()) * 8),
				Elements: []llvm.Metadata{
					b.createMemberTypeEx("data", ty, diElemTyPtr, 0, pos, 0),
					b.createMemberTypeEx("len", ty, b.prog.Uint(), 1, pos, 0),
					b.createMemberTypeEx("cap", ty, b.prog.Uint(), 2, pos, 0),
				},
			},
		),
	}
}

func (b diBuilder) createInterfaceType(ty Type) DIType {
	tyRaw := ty.RawType().Underlying()
	tyIntr := b.prog.rawType(tyRaw)
	tyType := b.prog.VoidPtr()
	tyData := b.prog.VoidPtr()

	return &aDIType{ll: b.di.CreateStructType(
		llvm.Metadata{},
		llvm.DIStructType{
			Name:        ty.RawType().String(),
			SizeInBits:  b.prog.SizeOf(tyIntr) * 8,
			AlignInBits: uint32(b.prog.sizes.Alignof(ty.RawType()) * 8),
			Elements: []llvm.Metadata{
				b.createMemberType("type", ty, tyType, 0),
				b.createMemberType("data", ty, tyData, 1),
			},
		},
	)}
}

func (b diBuilder) createMemberType(name string, tyStruct, tyField Type, idxField int) llvm.Metadata {
	return b.createMemberTypeEx(name, tyStruct, tyField, idxField, token.Position{}, 0)
}

func (b diBuilder) createMemberTypeEx(name string, tyStruct, tyField Type, idxField int, pos token.Position, flags int) llvm.Metadata {
	return b.di.CreateMemberType(
		llvm.Metadata{},
		llvm.DIMemberType{
			Name:         name,
			SizeInBits:   b.prog.SizeOf(tyField) * 8,
			AlignInBits:  uint32(b.prog.sizes.Alignof(tyField.RawType()) * 8),
			OffsetInBits: b.prog.OffsetOf(tyStruct, idxField) * 8,
			Type:         b.diType(tyField, pos).ll,
			Flags:        flags,
		},
	)
}

func (b diBuilder) createMapType(tyMap, tk, tv Type) DIType {
	tyCount := b.prog.Int()
	return &aDIType{
		ll: b.di.CreatePointerType(llvm.DIPointerType{
			Name: tyMap.RawType().String(),
			Pointee: b.di.CreateStructType(
				llvm.Metadata{},
				llvm.DIStructType{
					Name:        tyMap.RawType().String(),
					SizeInBits:  b.prog.SizeOf(tyMap) * 8,
					AlignInBits: uint32(b.prog.sizes.Alignof(tyMap.RawType()) * 8),
					Elements: []llvm.Metadata{
						b.createMemberType("count", tyMap, tyCount, 0),
					},
				},
			),
			SizeInBits:  b.prog.SizeOf(tyMap) * 8,
			AlignInBits: uint32(b.prog.sizes.Alignof(tyMap.RawType()) * 8),
		}),
	}
}

func (b diBuilder) createComplexType(t Type) DIType {
	var tfield Type
	if t.RawType().(*types.Basic).Kind() == types.Complex128 {
		tfield = b.prog.Float64()
	} else {
		tfield = b.prog.Float32()
	}
	return &aDIType{ll: b.di.CreateStructType(
		llvm.Metadata{},
		llvm.DIStructType{
			Name:        t.RawType().String(),
			File:        llvm.Metadata{},
			Line:        0,
			SizeInBits:  b.prog.SizeOf(t) * 8,
			AlignInBits: uint32(b.prog.sizes.Alignof(t.RawType()) * 8),
			Elements: []llvm.Metadata{
				b.createMemberType("real", t, tfield, 0),
				b.createMemberType("imag", t, tfield, 1),
			},
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
	structType := ty.RawType().(*types.Struct)

	scope := b.file(pos.Filename)
	ret = &aDIType{b.di.CreateReplaceableCompositeType(
		scope.ll,
		llvm.DIReplaceableCompositeType{
			Tag:         dwarf.TagStructType,
			Name:        ty.RawType().String(),
			File:        b.file(pos.Filename).ll,
			Line:        pos.Line,
			SizeInBits:  b.prog.SizeOf(ty) * 8,
			AlignInBits: uint32(b.prog.sizes.Alignof(structType) * 8),
		},
	)}
	b.types[ty] = ret

	fields := make([]llvm.Metadata, structType.NumFields())

	for i := 0; i < structType.NumFields(); i++ {
		field := structType.Field(i)
		tyField := b.prog.rawType(field.Type())
		flags := 0
		fields[i] = b.createMemberTypeEx(field.Name(), ty, tyField, i, pos, flags)
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

func (b diBuilder) dbgDeclare(v Expr, dv DIVar, scope DIScope, pos token.Position, expr DIExpression, blk BasicBlock) {
	loc := llvm.DebugLoc{
		Line:  uint(pos.Line),
		Col:   uint(pos.Column),
		Scope: scope.scopeMeta(b, pos).ll,
	}
	b.di.InsertDeclareAtEnd(
		v.impl,
		dv.ll,
		expr.ll,
		loc,
		blk.last,
	)
}

func (b diBuilder) dbgValue(v Expr, dv DIVar, scope DIScope, pos token.Position, expr DIExpression, blk BasicBlock) {
	loc := llvm.DebugLoc{
		Line:  uint(pos.Line),
		Col:   uint(pos.Column),
		Scope: scope.scopeMeta(b, pos).ll,
	}
	b.di.InsertValueAtEnd(
		v.impl,
		dv.ll,
		expr.ll,
		loc,
		blk.last,
	)
}

func (b diBuilder) diType(t Type, pos token.Position) DIType {
	if ty, ok := b.types[t]; ok {
		return ty
	}
	ty := b.createType(t, pos)
	b.types[t] = ty
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

// ----------------------------------------------------------------------------

type aDIExpression struct {
	ll llvm.Metadata
}

type DIExpression = *aDIExpression

func (b diBuilder) createExpression(ops []uint64) DIExpression {
	return &aDIExpression{b.di.CreateExpression(ops)}
}

// -----------------------------------------------------------------------------

// Copy struct parameters to alloca'd memory.
func (b Builder) debug(v Expr) (dbgPtr Expr, dbgVal Expr, deref bool) {
	if v, ok := b.dbgVars[v]; ok {
		return v.ptr, v.val, v.deref
	}
	t := v.Type.RawType().Underlying()
	var ty Type
	switch t := t.(type) {
	case *types.Basic:
		if t.Info()&types.IsComplex != 0 {
			if t.Kind() == types.Complex128 {
				ty = b.Prog.Complex128()
			} else {
				ty = b.Prog.Complex64()
			}
		} else if t.Info()&types.IsString != 0 {
			ty = b.Prog.rtType("String")
		} else {
			ty = v.Type
		}
	case *types.Struct:
		ty = v.Type
	case *types.Slice:
		ty = b.Prog.Type(b.Prog.rtType("Slice").RawType().Underlying(), InGo)
	case *types.Signature:
		fmt.Printf("t: %T, %v\n", t, t)
		ty = b.Prog.Type(b.Prog.rtType("Func").RawType().Underlying(), InGo)
	case *types.Named:
		ty = b.Prog.Type(t.Underlying(), InGo)
	case *types.Map:
		ty = b.Prog.Type(b.Prog.rtType("Map").RawType().Underlying(), InGo)
	default:
		ty = v.Type
	}
	// fmt.Printf("ty: %T, %v, %T, %v\n", ty.RawType(), ty.RawType(), t, t)
	dbgPtr = b.AllocaT(ty)
	dbgPtr.Type = b.Prog.Pointer(v.Type)
	b.Store(dbgPtr, v)
	dbgVal = b.Load(dbgPtr)
	b.dbgVars[v] = dbgExpr{dbgPtr, dbgVal, deref}
	return dbgPtr, dbgVal, deref
}

const (
	opDeref = 0x06
)

func skipType(t types.Type) bool {
	switch t.(type) {
	case *types.Signature:
		return true
	}
	return false
}

func (b Builder) DIDeclare(v Expr, dv DIVar, scope DIScope, pos token.Position, blk BasicBlock) {
	t := v.Type.RawType().Underlying()
	if skipType(t) {
		return
	}
	dbgPtr, _, deref := b.debug(v)
	var expr DIExpression
	if deref {
		expr = b.Pkg.diBuilder().createExpression([]uint64{opDeref})
	} else {
		expr = b.Pkg.diBuilder().createExpression(nil)
	}
	b.Pkg.diBuilder().dbgDeclare(dbgPtr, dv, scope, pos, expr, blk)
}

func (b Builder) DIValue(v Expr, dv DIVar, scope DIScope, pos token.Position, blk BasicBlock) {
	t := v.Type.RawType().Underlying()
	if skipType(t) {
		return
	}
	expr := b.Pkg.diBuilder().createExpression(nil)
	b.Pkg.diBuilder().dbgValue(v, dv, scope, pos, expr, blk)
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

func (b Builder) Param(idx int) Expr {
	p := b.Func.Param(idx)
	if v, ok := b.dbgVars[p]; ok {
		return v.val
	}
	return p
}

// -----------------------------------------------------------------------------
