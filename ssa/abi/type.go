package abi

import (
	"go/types"
	"strconv"

	"github.com/goplus/llgo/runtime/abi"
)

func (b *Builder) MapBucket(t *types.Map) types.Type {
	return MapBucketType(t, b.Sizes)
}

func (b *Builder) MapFlags(t *types.Map) (flags int) {
	return MapTypeFlags(t, b.Sizes)
}

func (b *Builder) Hash(t types.Type) uint32 {
	return b.hasher.Hash(t)
}

func (b *Builder) Str(t types.Type) string {
	switch t := types.Unalias(t).(type) {
	case *types.Basic:
		switch t.Kind() {
		case types.UnsafePointer:
			return "unsafe.Pointer"
		}
		return t.String()
	case *types.Pointer:
		elem := t.Elem()
		if b.TFlag(elem)&abi.TFlagExtraStar != 0 {
			return "**" + b.Str(elem)
		}
		return b.Str(elem)
	case *types.Slice:
		return "[]" + b.Str(t.Elem())
	case *types.Signature:
		return b.funcStr(t)
	case *types.Interface:
		return b.interfaceStr(t)
	case *types.Struct:
		return b.structStr(t)
	case *types.Map:
		return "map[" + b.Str(t.Key()) + "]" + b.Str(t.Elem())
	case *types.Array:
		return "[" + strconv.Itoa(int(t.Len())) + "]" + b.Str(t.Elem())
	case *types.Chan:
		_, s := ChanDir(t.Dir())
		return s + " " + b.Str(t.Elem())
	case *types.Named:
		obj := t.Obj()
		pkg := PathOf(obj.Pkg())
		name := NamedName(t)
		if pkg != "" {
			return pkg + "." + name
		}
		return name
	}
	panic("unsupported str: " + t.String())
}

func (b *Builder) structStr(t *types.Struct) string {
	repr := make([]byte, 0, 64)
	repr = append(repr, "struct {"...)
	n := t.NumFields()
	for i := 0; i < n; i++ {
		if i > 0 {
			repr = append(repr, ';')
		}
		repr = append(repr, ' ')
		f := t.Field(i)
		if !f.Embedded() {
			repr = append(repr, f.Name()...)
			repr = append(repr, ' ')
		}
		repr = append(repr, b.Str(f.Type())...)
	}
	if n > 0 {
		repr = append(repr, ' ')
	}
	repr = append(repr, '}')
	return string(repr)
}

func (b *Builder) interfaceStr(t *types.Interface) string {
	repr := make([]byte, 0, 64)
	repr = append(repr, "interface {"...)
	n := t.NumMethods()
	for i := 0; i < n; i++ {
		if i > 0 {
			repr = append(repr, ';')
		}
		repr = append(repr, ' ')
		m := t.Method(i)
		repr = append(repr, m.Name()...)
		repr = append(repr, b.Str(m.Type())[4:]...)
	}
	if n > 0 {
		repr = append(repr, ' ')
	}
	repr = append(repr, '}')
	return string(repr)
}

func (b *Builder) funcStr(t *types.Signature) string {
	repr := make([]byte, 0, 64)
	repr = append(repr, "func("...)
	in := t.Params().Len()
	for i := 0; i < in; i++ {
		if i > 0 {
			repr = append(repr, ", "...)
		}
		it := t.Params().At(i).Type()
		if t.Variadic() && i == in-1 {
			repr = append(repr, "..."...)
			repr = append(repr, b.Str(types.Unalias(it).(*types.Slice).Elem())...)
		} else {
			repr = append(repr, b.Str(it)...)
		}
	}
	repr = append(repr, ')')
	out := t.Results().Len()
	if out == 1 {
		repr = append(repr, ' ')
	} else if out > 1 {
		repr = append(repr, " ("...)
	}
	for i := 0; i < out; i++ {
		if i > 0 {
			repr = append(repr, ", "...)
		}
		repr = append(repr, b.Str(t.Results().At(i).Type())...)
	}
	if out > 1 {
		repr = append(repr, ')')
	}
	return string(repr)
}

func (b *Builder) TFlag(t types.Type) (flag abi.TFlag) {
	switch t := types.Unalias(t).(type) {
	case *types.Named:
		return b.TFlag(t.Underlying()) | abi.TFlagNamed | abi.TFlagUncommon
	case *types.Struct:
		if IsClosure(t) {
			flag |= abi.TFlagClosure
		}
	case *types.Pointer:
		if b.TFlag(t.Elem())&abi.TFlagExtraStar == 0 {
			flag |= abi.TFlagExtraStar
		}
	}
	if b.IsRegularMemory(t) {
		flag |= abi.TFlagRegularMemory
	}
	return
}

func (b *Builder) IsRegularMemory(t types.Type) bool {
	switch t := types.Unalias(t).(type) {
	case *types.Basic:
		switch t.Kind() {
		case types.Float32, types.Float64, types.Complex64, types.Complex128:
			return false
		case types.String:
			return false
		}
		return true
	case *types.Pointer:
		return true
	case *types.Slice:
		return false
	case *types.Signature:
		return false
	case *types.Interface:
		return false
	case *types.Struct:
		switch n := t.NumFields(); n {
		case 0:
			return true
		case 1:
			f := t.Field(0)
			if f.Name() == "_" {
				return false
			}
			return b.IsRegularMemory(f.Type())
		default:
			fields := make([]*types.Var, n)
			for i := 0; i < n; i++ {
				fields[i] = t.Field(i)
			}
			offsets := b.Sizes.Offsetsof(fields)
			end := b.Size(t)
			for i := 0; i < n; i++ {
				f := t.Field(i)
				if f.Name() == "_" || !b.IsRegularMemory(f.Type()) || b.ispaddedfield(t, i, end, offsets) {
					return false
				}
			}
		}
	case *types.Map:
		return false
	case *types.Array:
		if b.IsRegularMemory(t.Elem()) {
			return true
		}
		if t.Len() == 0 {
			return true
		}
		return false
	case *types.Chan:
		return true
	case *types.Named:
		return b.IsRegularMemory(t.Underlying())
	}
	return true
}

func (b *Builder) ispaddedfield(st *types.Struct, i int, end uintptr, offsets []int64) bool {
	if i+1 < len(offsets) {
		end = uintptr(offsets[i+1])
	}
	return uintptr(offsets[i])+b.Size(st.Field(i).Type()) != end
}

func (b *Builder) Kind(t types.Type) abi.Kind {
	switch t := types.Unalias(t).(type) {
	case *types.Basic:
		return BasicKind(t)
	case *types.Pointer:
		return abi.Pointer
	case *types.Slice:
		return abi.Slice
	case *types.Signature:
		return abi.Func
	case *types.Interface:
		return abi.Interface
	case *types.Struct:
		return abi.Struct
	case *types.Map:
		return abi.Map
	case *types.Array:
		return abi.Array
	case *types.Chan:
		return abi.Chan
	case *types.Named:
		return b.Kind(t.Underlying())
	}
	panic("unsupported kind: " + t.String())
}

func (b *Builder) Align(t types.Type) uintptr {
	switch t := types.Unalias(t).(type) {
	case *types.Basic:
		switch t.Kind() {
		case types.Bool:
			return 1
		case types.Int8, types.Uint8:
			return 1
		case types.Int16, types.Uint16:
			return 2
		case types.Int32, types.Uint32:
			return 4
		case types.Int64, types.Uint64:
			return 8
		case types.Int, types.Uint, types.Uintptr, types.UnsafePointer:
			return b.PtrSize
		case types.Float32:
			return 4
		case types.Float64:
			return 8
		case types.Complex64:
			return 8
		case types.Complex128:
			return 16
		case types.String:
			return b.PtrSize
		}
	case *types.Pointer:
		return b.PtrSize
	case *types.Slice:
		return b.PtrSize
	case *types.Signature:
		return b.PtrSize
	case *types.Interface:
		return b.PtrSize
	case *types.Struct:
		var typalign uintptr
		n := t.NumFields()
		for i := 0; i < n; i++ {
			ft := t.Field(i).Type()
			if align := b.Align(ft); align > typalign {
				typalign = align
			}
		}
		return typalign
	case *types.Map:
		return b.PtrSize
	case *types.Array:
		return b.Align(t.Elem())
	case *types.Chan:
		return b.PtrSize
	case *types.Named:
		return b.Align(t.Underlying())
	}
	panic("unsupported align: " + t.String())
}

func (b *Builder) PtrBytes(t types.Type) uintptr {
	switch t := types.Unalias(t).(type) {
	case *types.Basic:
		switch t.Kind() {
		case types.String, types.UnsafePointer:
			return b.PtrSize
		}
		return 0
	case *types.Pointer:
		return b.PtrSize
	case *types.Slice:
		return b.PtrSize
	case *types.Signature:
		return b.PtrSize
	case *types.Interface:
		return 2 * b.PtrSize
	case *types.Struct:
		var field int = -1
		var bytes uintptr
		n := t.NumFields()
		fields := make([]*types.Var, n)
		for i := 0; i < n; i++ {
			f := t.Field(i)
			fields[i] = f
			if bytes = b.PtrBytes(f.Type()); bytes != 0 {
				field = i
			}
		}
		if field == -1 {
			return 0
		}
		return uintptr(b.Sizes.Offsetsof(fields)[field]) + bytes
	case *types.Map:
		return b.PtrSize
	case *types.Array:
		if t.Len() != 0 {
			elem := t.Elem()
			if bytes := b.PtrBytes(elem); bytes != 0 {
				return b.Size(t) - b.Size(elem) + bytes
			}
		}
		return 0
	case *types.Chan:
		return b.PtrSize
	case *types.Named:
		return b.PtrBytes(t.Underlying())
	}
	panic("unsupported ptrbytes: " + t.String())
}

func (b *Builder) Size(t types.Type) uintptr {
	switch t := types.Unalias(t).(type) {
	case *types.Basic:
		switch t.Kind() {
		case types.Bool:
			return 1
		case types.Int8, types.Uint8:
			return 1
		case types.Int16, types.Uint16:
			return 2
		case types.Int32, types.Uint32:
			return 4
		case types.Int64, types.Uint64:
			return 8
		case types.Int, types.Uint, types.Uintptr, types.UnsafePointer:
			return b.PtrSize
		case types.Float32:
			return 4
		case types.Float64:
			return 8
		case types.Complex64:
			return 8
		case types.Complex128:
			return 16
		case types.String:
			return 2 * b.PtrSize
		}
	case *types.Pointer:
		return b.PtrSize
	case *types.Slice:
		return 3 * b.PtrSize
	case *types.Signature:
		return b.PtrSize
	case *types.Interface:
		return 2 * b.PtrSize
	case *types.Struct:
		return uintptr(b.Sizes.Sizeof(t))
	case *types.Map:
		return b.PtrSize
	case *types.Array:
		return uintptr(t.Len()) * b.Size(t.Elem())
	case *types.Chan:
		return b.PtrSize
	case *types.Named:
		return b.Size(t.Underlying())
	}
	panic("unsupported size: " + t.String())
}

func (b *Builder) RuntimeName(t types.Type) string {
	switch t := types.Unalias(t).(type) {
	case *types.Basic:
		return "_type"
	case *types.Pointer:
		return "ptrtype"
	case *types.Slice:
		return "slicetype"
	case *types.Signature:
		return "functype"
	case *types.Interface:
		return "interfacetype"
	case *types.Struct:
		return "structtype"
	case *types.Map:
		return "maptype"
	case *types.Array:
		return "arraytype"
	case *types.Chan:
		return "chantype"
	case *types.Named:
		return b.RuntimeName(t.Underlying())
	}
	panic("unsupported runtime type: " + t.String())
}

func (b *Builder) EqualName(t types.Type) string {
	switch t := types.Unalias(t).(type) {
	case *types.Basic:
		switch t.Kind() {
		case types.Bool:
			return "memequal8"
		case types.Int8, types.Uint8:
			return "memequal8"
		case types.Int16, types.Uint16:
			return "memequal16"
		case types.Int32, types.Uint32:
			return "memequal32"
		case types.Int64, types.Uint64:
			return "memequal64"
		case types.Int, types.Uint, types.Uintptr:
			if b.PtrSize == 64 {
				return "memequal64"
			}
			return "memequal32"
		case types.Float32:
			return "f32equal"
		case types.Float64:
			return "f64equal"
		case types.Complex64:
			return "c64equal"
		case types.Complex128:
			return "c128equal"
		case types.String:
			return "strequal"
		case types.UnsafePointer:
			return "memequalptr"
		}
	case *types.Pointer:
		return "memequalptr"
	case *types.Slice:
		return ""
	case *types.Signature:
		return ""
	case *types.Interface:
		if t.NumMethods() == 0 {
			return "nilinterequal"
		}
		return "interequal"
	case *types.Struct:
		n := t.NumFields()
		if n == 0 {
			return "memequal0"
		}
		for i := 0; i < n; i++ {
			if b.EqualName(t.Field(i).Type()) == "" {
				return ""
			}
		}
		return "structequal"
	case *types.Map:
		return ""
	case *types.Array:
		elem := t.Elem()
		if b.EqualName(elem) != "" {
			if b.Size(elem) == 0 {
				return "memequal0"
			}
			return "arrayequal"
		}
		return ""
	case *types.Chan:
		return "memequalptr"
	case *types.Named:
		return b.EqualName(t.Underlying())
	}
	panic("unsupported equal: " + t.String())
}
