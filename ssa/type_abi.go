package ssa

import (
	"go/types"
	"path"
	"unsafe"

	"github.com/goplus/llgo/internal/abi"
	"github.com/goplus/llvm"
)

func (b Builder) runtimeType(typ types.Type) (ret Expr) {
	if ret, ok := b.Prog.rtyps[typ]; ok {
		return ret
	}
	defer func() {
		b.Prog.rtyps[typ] = ret
	}()
	if t, ok := typ.(*types.Named); ok {
		return b._runtimeType(t.Underlying(), t.Obj().Name(), t.Obj().Pkg().Path())
	}
	return b._runtimeType(typ, "", "")
}

func (b Builder) _runtimeType(typ types.Type, name string, pkgPath string) (ret Expr) {
	var rtype abi.Type
	rtype.Size_ = uintptr(b.Prog.SizeOf(b.Prog.Type(typ, InGo)))
	rtype.Kind_ = uint8(toAbiKind(typ))
	if name != "" {
		//exported := isExported(name)
		if pkgPath != "" {
			_, f := path.Split(pkgPath)
			name = f + "." + name
		}
		rtype.TFlag |= abi.TFlagNamed | abi.TFlagExtraStar
		//t.str = resolveReflectName(newName("*"+name, "", exported))
	}
	var exts []llvm.Value
	switch t := typ.(type) {
	case *types.Basic:
	case *types.Array:
		// type ArrayType struct {
		// 	Type
		// 	Elem  *Type // array element type
		// 	Slice *Type // slice type
		// 	Len   uintptr
		// }
		exts = append(exts, b.runtimeType(t.Elem()).impl)
		exts = append(exts, b.runtimeType(types.NewSlice(t.Elem())).impl)
		exts = append(exts, b.Prog.Val(uintptr(t.Len())).impl)
	case *types.Chan:
		// type ChanType struct {
		// 	Type
		// 	Elem *Type
		// 	Dir  ChanDir
		// }
		exts = append(exts, b.runtimeType(t.Elem()).impl)
		exts = append(exts, b.Prog.Val(toChanDir(t.Dir())).impl)
	case *types.Signature:
		// type FuncType struct {
		// 	Type
		// 	InCount  uint16
		// 	OutCount uint16 // top bit is set if last input parameter is ...
		// }
		exts = append(exts, b.Prog.Val(int(t.Params().Len())).impl)
		exts = append(exts, b.Prog.Val(int(t.Results().Len())).impl)
	case *types.Interface:
		// type Imethod struct {
		// 	Name NameOff // name of method
		// 	Typ  TypeOff // .(*FuncType) underneath
		// }
		// type InterfaceType struct {
		// 	Type
		// 	PkgPath Name      // import path
		// 	Methods []Imethod // sorted by hash
		// }
		exts = append(exts, b.CStr(pkgPath).impl)
	case *types.Map:
		// type MapType struct {
		// 	Type
		// 	Key    *Type
		// 	Elem   *Type
		// 	Bucket *Type // internal type representing a hash bucket
		// 	// function for hashing keys (ptr to key, seed) -> hash
		// 	Hasher     func(unsafe.Pointer, uintptr) uintptr
		// 	KeySize    uint8  // size of key slot
		// 	ValueSize  uint8  // size of elem slot
		// 	BucketSize uint16 // size of bucket
		// 	Flags      uint32
		// }
	case *types.Pointer:
		// type PtrType struct {
		// 	Type
		// 	Elem *Type // pointer element (pointed at) type
		// }
		exts = append(exts, b.runtimeType(t.Elem()).impl)
	case *types.Slice:
		// type SliceType struct {
		// 	Type
		// 	Elem *Type // slice element type
		// }
		exts = append(exts, b.runtimeType(t.Elem()).impl)
	case *types.Struct:
		// type StructField struct {
		// 	Name   Name    // name is always non-empty
		// 	Typ    *Type   // type of field
		// 	Offset uintptr // byte offset of field
		// }
		// type StructType struct {
		// 	Type
		// 	PkgPath Name
		// 	Fields  []StructField
		// }
		exts = append(exts, b.CStr(pkgPath).impl)
	}
	vars := b.rtypList(&rtype)
	if len(exts) > 0 {
		vars = append(vars, exts...)
	}
	if name == "" {
		name = typ.String()
	}
	cv := llvm.ConstStruct(vars, false)
	global := llvm.AddGlobal(b.Func.Pkg.mod, cv.Type(), "runtime.type."+name)
	global.SetInitializer(cv)
	global.SetLinkage(llvm.LinkOnceODRLinkage)
	global.SetGlobalConstant(true)
	return Expr{global, b.Prog.Type(typ, InGo)}
}

/*
	type Type struct {
		Size_       uintptr
		PtrBytes    uintptr // number of (prefix) bytes in the type that can contain pointers
		Hash        uint32  // hash of type; avoids computation in hash tables
		TFlag       TFlag   // extra type information flags
		Align_      uint8   // alignment of variable with this type
		FieldAlign_ uint8   // alignment of struct field with this type
		Kind_       uint8   // enumeration for C
		// function for comparing objects of this type
		// (ptr to object A, ptr to object B) -> ==?
		Equal func(unsafe.Pointer, unsafe.Pointer) bool
		// GCData stores the GC type data for the garbage collector.
		// If the KindGCProg bit is set in kind, GCData is a GC program.
		// Otherwise it is a ptrmask bitmap. See mbitmap.go for details.
		GCData    *byte
		Str       NameOff // string form
		PtrToThis TypeOff // type for pointer to this type, may be zero
	}
*/
func (b Builder) rtypList(t *abi.Type) []llvm.Value {
	to := func(i interface{}) llvm.Value {
		switch v := i.(type) {
		case uintptr:
			return b.Prog.IntVal(uint64(v), b.Prog.Uintptr()).impl
		case uint32:
			return b.Prog.IntVal(uint64(v), b.Prog.Type(types.Typ[types.Uint32], InGo)).impl
		case abi.TFlag:
			return b.Prog.IntVal(uint64(v), b.Prog.Type(types.Typ[types.Uint8], InGo)).impl
		case uint8:
			return b.Prog.IntVal(uint64(v), b.Prog.Type(types.Typ[types.Uint8], InGo)).impl
		case *byte:
			return b.Prog.IntVal(uint64(uintptr(unsafe.Pointer(v))), b.Prog.Uintptr()).impl
		case abi.NameOff:
			return b.Prog.IntVal(uint64(v), b.Prog.Type(types.Typ[types.Int32], InGo)).impl
		case abi.TypeOff:
			return b.Prog.IntVal(uint64(v), b.Prog.Type(types.Typ[types.Int32], InGo)).impl
		case func(unsafe.Pointer, unsafe.Pointer) bool:
			return b.Func.Pkg.rtFunc("EqualBasic").impl
		}
		panic("unreachable")
	}
	return []llvm.Value{
		to(t.Size_),
		to(t.PtrBytes),
		to(t.Hash),
		to(t.TFlag),
		to(t.Align_),
		to(t.FieldAlign_),
		to(t.Kind_),
		to(t.Equal),
		to(t.GCData),
		to(t.Str),
		to(t.PtrToThis),
	}
}

func toAbiKind(typ types.Type) (kind abi.Kind) {
	switch t := typ.(type) {
	case *types.Basic:
		kd := t.Kind()
		switch {
		case kd >= types.Bool && kd <= types.Complex128:
			kind = abi.Kind(kd)
		case kd == types.String:
			kind = abi.String
		case kd == types.UnsafePointer:
			kind = abi.UnsafePointer
		}
	case *types.Array:
		kind = abi.Array
	case *types.Chan:
		kind = abi.Chan
	case *types.Signature:
		kind = abi.Func
	case *types.Interface:
		kind = abi.Interface
	case *types.Map:
		kind = abi.Map
	case *types.Pointer:
		kind = abi.Pointer
	case *types.Slice:
		kind = abi.Slice
	case *types.Struct:
		kind = abi.Struct
	}
	return
}

func toChanDir(dir types.ChanDir) abi.ChanDir {
	switch dir {
	case types.SendRecv:
		return abi.BothDir
	case types.SendOnly:
		return abi.SendDir
	case types.RecvOnly:
		return abi.RecvDir
	}
	return abi.InvalidDir
}
