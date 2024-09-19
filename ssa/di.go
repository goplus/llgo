package ssa

import (
	"debug/dwarf"
	"fmt"
	"go/token"
	"go/types"
	"path/filepath"

	"github.com/goplus/llvm"
)

type Positioner interface {
	Position(pos token.Pos) token.Position
}

type aDIBuilder struct {
	di         *llvm.DIBuilder
	prog       Program
	types      map[Type]DIType
	positioner Positioner
}

type diBuilder = *aDIBuilder

func newDIBuilder(prog Program, pkg Package, positioner Positioner) diBuilder {
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
		di:         llvm.NewDIBuilder(m),
		prog:       prog,
		types:      make(map[*aType]DIType),
		positioner: positioner,
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
		Optimized:      false,
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

func (f DIFile) scopeMeta(b diBuilder, pos token.Position) DIScopeMeta {
	return &aDIScopeMeta{b.file(pos.Filename).ll}
}

// ----------------------------------------------------------------------------

type aDIType struct {
	ll llvm.Metadata
}

type DIType = *aDIType

func (b diBuilder) createType(name string, ty Type, pos token.Position) DIType {
	var typ llvm.Metadata
	switch t := ty.RawType().(type) {
	case *types.Basic:
		if t.Kind() == types.UnsafePointer {
			typ = b.di.CreatePointerType(llvm.DIPointerType{
				Name:         name,
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
			Name:       name,
			SizeInBits: b.prog.SizeOf(b.prog.rawType(t)) * 8,
			Encoding:   encoding,
		})
	case *types.Pointer:
		return b.createPointerType(name, b.prog.rawType(t.Elem()), pos)
	case *types.Named:
		ty = b.prog.rawType(t.Underlying())
		pos = b.positioner.Position(t.Obj().Pos())
		return b.diTypeEx(name, ty, pos)
	case *types.Interface:
		ty := b.prog.rtType("Iface")
		return b.createInterfaceType(name, ty)
	case *types.Slice:
		ty := b.prog.rtType("Slice")
		tyElem := b.prog.rawType(t.Elem())
		return b.createSliceType(name, ty, tyElem)
	case *types.Struct:
		return b.createStructType(name, ty, pos)
	case *types.Signature:
		tyFn := b.prog.Closure(ty)
		return b.createFuncPtrType(name, tyFn, pos)
	case *types.Array:
		return b.createArrayType(ty, t.Len())
	case *types.Chan:
		return b.createChanType(name, ty, pos)
	case *types.Map:
		ty := b.prog.rtType("Map")
		return b.createMapType(name, ty, pos)
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

func (b diBuilder) createGlobalVariableExpression(scope DIScope, pos token.Position, name, linkageName string, ty Type, isLocalToUnit bool) DIGlobalVariableExpression {
	return &aDIGlobalVariableExpression{
		ll: b.di.CreateGlobalVariableExpression(
			scope.scopeMeta(b, pos).ll,
			llvm.DIGlobalVariableExpression{
				Name:        name,
				LinkageName: linkageName,
				File:        b.file(pos.Filename).ll,
				Line:        pos.Line,
				Type:        b.diType(ty, pos).ll,
				LocalToUnit: isLocalToUnit,
				AlignInBits: uint32(b.prog.sizes.Alignof(ty.RawType()) * 8),
			},
		),
	}
}

// ----------------------------------------------------------------------------

type aDIVar struct {
	ll llvm.Metadata
}

type DIVar = *aDIVar

func (b diBuilder) createParameterVariable(f Function, pos token.Position, name string, argNo int, ty DIType) DIVar {
	return &aDIVar{
		ll: b.di.CreateParameterVariable(
			f.scopeMeta(b, pos).ll,
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

func (b diBuilder) createStringType() DIType {
	ty := b.prog.rtType("String")
	return b.doCreateStructType("string", ty, token.Position{}, func(ditStruct DIType) []llvm.Metadata {
		return []llvm.Metadata{
			b.createMemberType("data", ty, b.prog.CStr(), 0),
			b.createMemberType("len", ty, b.prog.Uint(), 1),
		}
	})
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

func (b diBuilder) createSliceType(name string, ty, tyElem Type) DIType {
	pos := token.Position{}
	diElemTyPtr := b.prog.Pointer(tyElem)

	return b.doCreateStructType(name, ty, pos, func(ditStruct DIType) []llvm.Metadata {
		return []llvm.Metadata{
			b.createMemberTypeEx("data", ty, diElemTyPtr, 0, pos, 0),
			b.createMemberTypeEx("len", ty, b.prog.Uint(), 1, pos, 0),
			b.createMemberTypeEx("cap", ty, b.prog.Uint(), 2, pos, 0),
		}
	})
}

func (b diBuilder) createInterfaceType(name string, ty Type) DIType {
	tyRaw := ty.RawType().Underlying()
	tyIntr := b.prog.rawType(tyRaw)
	tyType := b.prog.VoidPtr()
	tyData := b.prog.VoidPtr()

	return b.doCreateStructType(name, tyIntr, token.Position{}, func(ditStruct DIType) []llvm.Metadata {
		return []llvm.Metadata{
			b.createMemberType("type", ty, tyType, 0),
			b.createMemberType("data", ty, tyData, 1),
		}
	})
}

func (b diBuilder) createMemberType(name string, tyStruct, tyField Type, idxField int) llvm.Metadata {
	return b.createMemberTypeEx(name, tyStruct, tyField, idxField, token.Position{}, 0)
}

func (b diBuilder) createMemberTypeEx(name string, tyStruct, tyField Type, idxField int, pos token.Position, flags int) llvm.Metadata {
	return b.di.CreateMemberType(
		b.diType(tyStruct, pos).ll,
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

func (b diBuilder) createMapType(name string, tyMap Type, pos token.Position) DIType {
	// ty := tyMap.RawType().(*types.Map)
	// tk := b.prog.rawType(ty.Key())
	// tv := b.prog.rawType(ty.Elem())
	tyCount := b.prog.Int()
	return b.doCreateStructType(name, tyMap, pos, func(ditStruct DIType) []llvm.Metadata {
		return []llvm.Metadata{
			b.createMemberType("count", tyMap, tyCount, 0),
		}
	})
}

func (b diBuilder) createChanType(name string, t Type, pos token.Position) DIType {
	return b.doCreateStructType(name, t, pos, func(ditStruct DIType) []llvm.Metadata {
		return []llvm.Metadata{}
	})
}

func (b diBuilder) createComplexType(t Type) DIType {
	var tfield Type
	if t.RawType().(*types.Basic).Kind() == types.Complex128 {
		tfield = b.prog.Float64()
	} else {
		tfield = b.prog.Float32()
	}
	return b.doCreateStructType("complex", t, token.Position{}, func(ditStruct DIType) []llvm.Metadata {
		return []llvm.Metadata{
			b.createMemberType("real", t, tfield, 0),
			b.createMemberType("imag", t, tfield, 1),
		}
	})
}

func (b diBuilder) createPointerType(name string, ty Type, pos token.Position) DIType {
	return &aDIType{ll: b.di.CreatePointerType(llvm.DIPointerType{
		Name:         name,
		Pointee:      b.diType(ty, pos).ll,
		SizeInBits:   b.prog.SizeOf(ty) * 8,
		AlignInBits:  uint32(b.prog.sizes.Alignof(ty.RawType())) * 8,
		AddressSpace: 0,
	})}
}

func (b diBuilder) doCreateStructType(name string, ty Type, pos token.Position, fn func(ty DIType) []llvm.Metadata) (ret DIType) {
	structType := ty.RawType().Underlying()

	scope := b.file(pos.Filename)
	ret = &aDIType{b.di.CreateReplaceableCompositeType(
		scope.ll,
		llvm.DIReplaceableCompositeType{
			Tag:         dwarf.TagStructType,
			Name:        name,
			File:        b.file(pos.Filename).ll,
			Line:        pos.Line,
			SizeInBits:  b.prog.SizeOf(ty) * 8,
			AlignInBits: uint32(b.prog.sizes.Alignof(structType) * 8),
		},
	)}
	b.types[ty] = ret

	fields := fn(ret)

	st := b.di.CreateStructType(
		scope.ll,
		llvm.DIStructType{
			Name:        name,
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

func (b diBuilder) createStructType(name string, ty Type, pos token.Position) (ret DIType) {
	structType := ty.RawType().(*types.Struct)
	return b.doCreateStructType(name, ty, pos, func(ditStruct DIType) []llvm.Metadata {
		fields := make([]llvm.Metadata, structType.NumFields())
		for i := 0; i < structType.NumFields(); i++ {
			field := structType.Field(i)
			tyField := b.prog.rawType(field.Type())
			flags := 0
			pos := b.positioner.Position(field.Pos())
			fields[i] = b.createMemberTypeEx(field.Name(), ty, tyField, i, pos, flags)
		}
		return fields
	})
}

func (b diBuilder) createFuncPtrType(name string, ty Type, pos token.Position) DIType {
	ptr := b.prog.VoidPtr()
	return &aDIType{ll: b.di.CreatePointerType(llvm.DIPointerType{
		Name:        name,
		Pointee:     b.diType(ptr, pos).ll,
		SizeInBits:  b.prog.SizeOf(ptr) * 8,
		AlignInBits: uint32(b.prog.sizes.Alignof(ptr.RawType()) * 8),
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
	name := t.RawType().String()
	return b.diTypeEx(name, t, pos)
}

func (b diBuilder) diTypeEx(name string, t Type, pos token.Position) DIType {
	if ty, ok := b.types[t]; ok {
		return ty
	}
	ty := b.createType(name, t, pos)
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
	return b.createAutoVariable(f, pos, varName, vt)
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

// Copy to alloca'd memory to get declareable address.
func (b Builder) constructDebugAddr(v Expr) (dbgPtr Expr, dbgVal Expr, deref bool) {
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
		ty = b.Prog.Closure(b.Prog.rawType(t))
	case *types.Named:
		ty = b.Prog.Type(t.Underlying(), InGo)
	case *types.Map:
		ty = b.Prog.Type(b.Prog.rtType("Map").RawType().Underlying(), InGo)
	default:
		ty = v.Type
	}
	dbgPtr = b.AllocaT(ty)
	dbgPtr.Type = b.Prog.Pointer(v.Type)
	b.Store(dbgPtr, v)
	dbgVal = b.Load(dbgPtr)
	b.dbgVars[v] = dbgExpr{dbgPtr, dbgVal, deref}
	return dbgPtr, dbgVal, deref
}

func (b Builder) DIDeclare(v Expr, dv DIVar, scope DIScope, pos token.Position, blk BasicBlock) {
	dbgPtr, _, _ := b.constructDebugAddr(v)
	expr := b.Pkg.diBuilder().createExpression(nil)
	b.Pkg.diBuilder().dbgDeclare(dbgPtr, dv, scope, pos, expr, blk)
}

func (b Builder) DIValue(v Expr, dv DIVar, scope DIScope, pos token.Position, blk BasicBlock) {
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

func (b Builder) DIGlobal(v Expr, name string, pos token.Position) {
	gv := b.Pkg.diBuilder().createGlobalVariableExpression(
		b.Pkg.diBuilder().file(pos.Filename),
		pos,
		name,
		name,
		v.Type,
		false,
	)
	v.impl.AddMetadata(0, gv.ll)
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
