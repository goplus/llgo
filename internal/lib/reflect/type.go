/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package reflect

import (
	"strconv"
	"unsafe"

	"github.com/goplus/llgo/internal/abi"
	"github.com/goplus/llgo/internal/runtime"
)

// Type is the representation of a Go type.
//
// Not all methods apply to all kinds of types. Restrictions,
// if any, are noted in the documentation for each method.
// Use the Kind method to find out the kind of type before
// calling kind-specific methods. Calling a method
// inappropriate to the kind of type causes a run-time panic.
//
// Type values are comparable, such as with the == operator,
// so they can be used as map keys.
// Two Type values are equal if they represent identical types.
type Type interface {
	// Methods applicable to all types.

	// Align returns the alignment in bytes of a value of
	// this type when allocated in memory.
	Align() int

	// FieldAlign returns the alignment in bytes of a value of
	// this type when used as a field in a struct.
	FieldAlign() int

	// Method returns the i'th method in the type's method set.
	// It panics if i is not in the range [0, NumMethod()).
	//
	// For a non-interface type T or *T, the returned Method's Type and Func
	// fields describe a function whose first argument is the receiver,
	// and only exported methods are accessible.
	//
	// For an interface type, the returned Method's Type field gives the
	// method signature, without a receiver, and the Func field is nil.
	//
	// Methods are sorted in lexicographic order.
	Method(int) Method

	// MethodByName returns the method with that name in the type's
	// method set and a boolean indicating if the method was found.
	//
	// For a non-interface type T or *T, the returned Method's Type and Func
	// fields describe a function whose first argument is the receiver.
	//
	// For an interface type, the returned Method's Type field gives the
	// method signature, without a receiver, and the Func field is nil.
	MethodByName(string) (Method, bool)

	// NumMethod returns the number of methods accessible using Method.
	//
	// For a non-interface type, it returns the number of exported methods.
	//
	// For an interface type, it returns the number of exported and unexported methods.
	NumMethod() int

	// Name returns the type's name within its package for a defined type.
	// For other (non-defined) types it returns the empty string.
	Name() string

	// PkgPath returns a defined type's package path, that is, the import path
	// that uniquely identifies the package, such as "encoding/base64".
	// If the type was predeclared (string, error) or not defined (*T, struct{},
	// []int, or A where A is an alias for a non-defined type), the package path
	// will be the empty string.
	PkgPath() string

	// Size returns the number of bytes needed to store
	// a value of the given type; it is analogous to unsafe.Sizeof.
	Size() uintptr

	// String returns a string representation of the type.
	// The string representation may use shortened package names
	// (e.g., base64 instead of "encoding/base64") and is not
	// guaranteed to be unique among types. To test for type identity,
	// compare the Types directly.
	String() string

	// Kind returns the specific kind of this type.
	Kind() Kind

	// Implements reports whether the type implements the interface type u.
	Implements(u Type) bool

	// AssignableTo reports whether a value of the type is assignable to type u.
	AssignableTo(u Type) bool

	// ConvertibleTo reports whether a value of the type is convertible to type u.
	// Even if ConvertibleTo returns true, the conversion may still panic.
	// For example, a slice of type []T is convertible to *[N]T,
	// but the conversion will panic if its length is less than N.
	ConvertibleTo(u Type) bool

	// Comparable reports whether values of this type are comparable.
	// Even if Comparable returns true, the comparison may still panic.
	// For example, values of interface type are comparable,
	// but the comparison will panic if their dynamic type is not comparable.
	Comparable() bool

	// Methods applicable only to some types, depending on Kind.
	// The methods allowed for each kind are:
	//
	//	Int*, Uint*, Float*, Complex*: Bits
	//	Array: Elem, Len
	//	Chan: ChanDir, Elem
	//	Func: In, NumIn, Out, NumOut, IsVariadic.
	//	Map: Key, Elem
	//	Pointer: Elem
	//	Slice: Elem
	//	Struct: Field, FieldByIndex, FieldByName, FieldByNameFunc, NumField

	// Bits returns the size of the type in bits.
	// It panics if the type's Kind is not one of the
	// sized or unsized Int, Uint, Float, or Complex kinds.
	Bits() int

	// ChanDir returns a channel type's direction.
	// It panics if the type's Kind is not Chan.
	ChanDir() ChanDir

	// IsVariadic reports whether a function type's final input parameter
	// is a "..." parameter. If so, t.In(t.NumIn() - 1) returns the parameter's
	// implicit actual type []T.
	//
	// For concreteness, if t represents func(x int, y ... float64), then
	//
	//	t.NumIn() == 2
	//	t.In(0) is the reflect.Type for "int"
	//	t.In(1) is the reflect.Type for "[]float64"
	//	t.IsVariadic() == true
	//
	// IsVariadic panics if the type's Kind is not Func.
	IsVariadic() bool

	// Elem returns a type's element type.
	// It panics if the type's Kind is not Array, Chan, Map, Pointer, or Slice.
	Elem() Type

	// Field returns a struct type's i'th field.
	// It panics if the type's Kind is not Struct.
	// It panics if i is not in the range [0, NumField()).
	Field(i int) StructField

	// FieldByIndex returns the nested field corresponding
	// to the index sequence. It is equivalent to calling Field
	// successively for each index i.
	// It panics if the type's Kind is not Struct.
	FieldByIndex(index []int) StructField

	// FieldByName returns the struct field with the given name
	// and a boolean indicating if the field was found.
	FieldByName(name string) (StructField, bool)

	// FieldByNameFunc returns the struct field with a name
	// that satisfies the match function and a boolean indicating if
	// the field was found.
	//
	// FieldByNameFunc considers the fields in the struct itself
	// and then the fields in any embedded structs, in breadth first order,
	// stopping at the shallowest nesting depth containing one or more
	// fields satisfying the match function. If multiple fields at that depth
	// satisfy the match function, they cancel each other
	// and FieldByNameFunc returns no match.
	// This behavior mirrors Go's handling of name lookup in
	// structs containing embedded fields.
	FieldByNameFunc(match func(string) bool) (StructField, bool)

	// In returns the type of a function type's i'th input parameter.
	// It panics if the type's Kind is not Func.
	// It panics if i is not in the range [0, NumIn()).
	In(i int) Type

	// Key returns a map type's key type.
	// It panics if the type's Kind is not Map.
	Key() Type

	// Len returns an array type's length.
	// It panics if the type's Kind is not Array.
	Len() int

	// NumField returns a struct type's field count.
	// It panics if the type's Kind is not Struct.
	NumField() int

	// NumIn returns a function type's input parameter count.
	// It panics if the type's Kind is not Func.
	NumIn() int

	// NumOut returns a function type's output parameter count.
	// It panics if the type's Kind is not Func.
	NumOut() int

	// Out returns the type of a function type's i'th output parameter.
	// It panics if the type's Kind is not Func.
	// It panics if i is not in the range [0, NumOut()).
	Out(i int) Type

	common() *abi.Type
	uncommon() *uncommonType
}

// A Kind represents the specific kind of type that a Type represents.
// The zero Kind is not a valid kind.
type Kind uint

const (
	Invalid Kind = iota
	Bool
	Int
	Int8
	Int16
	Int32
	Int64
	Uint
	Uint8
	Uint16
	Uint32
	Uint64
	Uintptr
	Float32
	Float64
	Complex64
	Complex128
	Array
	Chan
	Func
	Interface
	Map
	Pointer
	Slice
	String
	Struct
	UnsafePointer
)

// Ptr is the old name for the Pointer kind.
const Ptr = Pointer

// uncommonType is present only for defined types or types with methods
// (if T is a defined type, the uncommonTypes for T and *T have methods).
// Using a pointer to this struct reduces the overall size required
// to describe a non-defined type with no methods.
type uncommonType = abi.UncommonType

// Embed this type to get common/uncommon
type common struct {
	abi.Type
}

// rtype is the common implementation of most values.
// It is embedded in other struct types.
type rtype struct {
	t abi.Type
}

func (t *rtype) common() *abi.Type {
	return &t.t
}

func (t *rtype) uncommon() *abi.UncommonType {
	return t.t.Uncommon()
}

// ChanDir represents a channel type's direction.
type ChanDir int

const (
	RecvDir ChanDir             = 1 << iota // <-chan
	SendDir                                 // chan<-
	BothDir = RecvDir | SendDir             // chan
)

// arrayType represents a fixed array type.
type arrayType = abi.ArrayType

// chanType represents a channel type.
type chanType = abi.ChanType

// funcType represents a function type.
//
// A *rtype for each in and out parameter is stored in an array that
// directly follows the funcType (and possibly its uncommonType). So
// a function type with one method, one input, and one output is:
//
//	struct {
//		funcType
//		uncommonType
//		[2]*rtype    // [0] is in, [1] is out
//	}
type funcType = abi.FuncType

// interfaceType represents an interface type.
type interfaceType struct {
	abi.InterfaceType // can embed directly because not a public type.
}

func (t *interfaceType) common() *abi.Type {
	return &t.Type
}

func (t *interfaceType) uncommon() *abi.UncommonType {
	return t.Uncommon()
}

// mapType represents a map type.
type mapType struct {
	abi.MapType
}

// ptrType represents a pointer type.
type ptrType struct {
	abi.PtrType
}

// sliceType represents a slice type.
type sliceType struct {
	abi.SliceType
}

// Struct field
type structField = abi.StructField

// structType represents a struct type.
type structType struct {
	abi.StructType
}

/*
 * The compiler knows the exact layout of all the data structures above.
 * The compiler does not know about the data structures and methods below.
 */

// Method represents a single method.
type Method struct {
	// Name is the method name.
	Name string

	// PkgPath is the package path that qualifies a lower case (unexported)
	// method name. It is empty for upper case (exported) method names.
	// The combination of PkgPath and Name uniquely identifies a method
	// in a method set.
	// See https://golang.org/ref/spec#Uniqueness_of_identifiers
	PkgPath string

	Type  Type  // method type
	Func  Value // func with receiver as first argument
	Index int   // index for Type.Method
}

// IsExported reports whether the method is exported.
func (m Method) IsExported() bool {
	return m.PkgPath == ""
}

const (
	kindDirectIface = 1 << 5
	kindGCProg      = 1 << 6 // Type.gc points to GC program
	kindMask        = (1 << 5) - 1
)

// String returns the name of k.
func (k Kind) String() string {
	if uint(k) < uint(len(kindNames)) {
		return kindNames[uint(k)]
	}
	return "kind" + strconv.Itoa(int(k))
}

var kindNames = []string{
	Invalid:       "invalid",
	Bool:          "bool",
	Int:           "int",
	Int8:          "int8",
	Int16:         "int16",
	Int32:         "int32",
	Int64:         "int64",
	Uint:          "uint",
	Uint8:         "uint8",
	Uint16:        "uint16",
	Uint32:        "uint32",
	Uint64:        "uint64",
	Uintptr:       "uintptr",
	Float32:       "float32",
	Float64:       "float64",
	Complex64:     "complex64",
	Complex128:    "complex128",
	Array:         "array",
	Chan:          "chan",
	Func:          "func",
	Interface:     "interface",
	Map:           "map",
	Pointer:       "ptr",
	Slice:         "slice",
	String:        "string",
	Struct:        "struct",
	UnsafePointer: "unsafe.Pointer",
}

func (t *rtype) String() string {
	return t.t.String()
}

func (t *rtype) Size() uintptr { return t.t.Size() }

func (t *rtype) Bits() int {
	if t == nil {
		panic("reflect: Bits of nil Type")
	}
	k := t.Kind()
	if k < Int || k > Complex128 {
		panic("reflect: Bits of non-arithmetic Type " + t.String())
	}
	return int(t.t.Size_) * 8
}

func (t *rtype) Align() int { return t.t.Align() }

func (t *rtype) FieldAlign() int { return t.t.FieldAlign() }

func (t *rtype) Kind() Kind { return Kind(t.t.Kind()) }

func (t *rtype) exportedMethods() []abi.Method {
	ut := t.uncommon()
	if ut == nil {
		return nil
	}
	return ut.ExportedMethods()
}

func (t *rtype) NumMethod() int {
	if t.Kind() == Interface {
		tt := (*interfaceType)(unsafe.Pointer(t))
		return tt.NumMethod()
	}
	return len(t.exportedMethods())
}

func (t *rtype) Method(i int) (m Method) {
	if t.Kind() == Interface {
		tt := (*interfaceType)(unsafe.Pointer(t))
		return tt.Method(i)
	}
	/*
		methods := t.exportedMethods()
		if i < 0 || i >= len(methods) {
			panic("reflect: Method index out of range")
		}
		p := methods[i]
		pname := t.nameOff(p.Name)
		m.Name = pname.Name()
		fl := flag(Func)
		mtyp := t.typeOff(p.Mtyp)
		ft := (*funcType)(unsafe.Pointer(mtyp))
		in := make([]Type, 0, 1+ft.NumIn())
		in = append(in, t)
		for _, arg := range ft.InSlice() {
			in = append(in, toRType(arg))
		}
		out := make([]Type, 0, ft.NumOut())
		for _, ret := range ft.OutSlice() {
			out = append(out, toRType(ret))
		}
		mt := FuncOf(in, out, ft.IsVariadic())
		m.Type = mt
		tfn := t.textOff(p.Tfn)
		fn := unsafe.Pointer(&tfn)
		m.Func = Value{&mt.(*rtype).t, fn, fl}

		m.Index = i
		return m
	*/
	panic("todo: reflect.rtype.Method")
}

func (t *rtype) MethodByName(name string) (m Method, ok bool) {
	if t.Kind() == Interface {
		tt := (*interfaceType)(unsafe.Pointer(t))
		return tt.MethodByName(name)
	}
	/*
		ut := t.uncommon()
		if ut == nil {
			return Method{}, false
		}

		methods := ut.ExportedMethods()

		// We are looking for the first index i where the string becomes >= s.
		// This is a copy of sort.Search, with f(h) replaced by (t.nameOff(methods[h].name).name() >= name).
		i, j := 0, len(methods)
		for i < j {
			h := int(uint(i+j) >> 1) // avoid overflow when computing h
			// i ≤ h < j
			if !(t.nameOff(methods[h].Name).Name() >= name) {
				i = h + 1 // preserves f(i-1) == false
			} else {
				j = h // preserves f(j) == true
			}
		}
		// i == j, f(i-1) == false, and f(j) (= f(i)) == true  =>  answer is i.
		if i < len(methods) && name == t.nameOff(methods[i].Name).Name() {
			return t.Method(i), true
		}

		return Method{}, false
	*/
	panic("todo: reflect.rtype.MethodByName")
}

func (t *rtype) PkgPath() string {
	if t.t.TFlag&abi.TFlagNamed == 0 {
		return ""
	}
	ut := t.uncommon()
	if ut == nil {
		return ""
	}
	return ut.PkgPath_
}

func pkgPathFor(t *abi.Type) string {
	return toRType(t).PkgPath()
}

func (t *rtype) Name() string {
	/*
		if !t.t.HasName() {
			return ""
		}
		s := t.String()
		i := len(s) - 1
		sqBrackets := 0
		for i >= 0 && (s[i] != '.' || sqBrackets != 0) {
			switch s[i] {
			case ']':
				sqBrackets++
			case '[':
				sqBrackets--
			}
			i--
		}
		return s[i+1:]
	*/
	panic("todo: reflect.rtype.Name")
}

func nameFor(t *abi.Type) string {
	return toRType(t).Name()
}

func (t *rtype) ChanDir() ChanDir {
	if t.Kind() != Chan {
		panic("reflect: ChanDir of non-chan type " + t.String())
	}
	tt := (*abi.ChanType)(unsafe.Pointer(t))
	return ChanDir(tt.Dir)
}

func toRType(t *abi.Type) *rtype {
	return (*rtype)(unsafe.Pointer(t))
}

func elem(t *abi.Type) *abi.Type {
	et := t.Elem()
	if et != nil {
		return et
	}
	// TODO(xsw):
	// panic("reflect: Elem of invalid type " + stringFor(t))
	panic("todo: reflect.elem")
}

func (t *rtype) Elem() Type {
	return toType(elem(t.common()))
}

func (t *rtype) Field(i int) StructField {
	/*
		if t.Kind() != Struct {
			panic("reflect: Field of non-struct type " + t.String())
		}
		tt := (*structType)(unsafe.Pointer(t))
		return tt.Field(i)
	*/
	panic("todo: reflect.rtype.Field")
}

func (t *rtype) FieldByIndex(index []int) StructField {
	/*
		if t.Kind() != Struct {
			panic("reflect: FieldByIndex of non-struct type " + t.String())
		}
		tt := (*structType)(unsafe.Pointer(t))
		return tt.FieldByIndex(index)
	*/
	panic("todo: reflect.rtype.FieldByIndex")
}

func (t *rtype) FieldByName(name string) (StructField, bool) {
	/*
		if t.Kind() != Struct {
			panic("reflect: FieldByName of non-struct type " + t.String())
		}
		tt := (*structType)(unsafe.Pointer(t))
		return tt.FieldByName(name)
	*/
	panic("todo: reflect.rtype.FieldByName")
}

func (t *rtype) FieldByNameFunc(match func(string) bool) (StructField, bool) {
	/*
		if t.Kind() != Struct {
			panic("reflect: FieldByNameFunc of non-struct type " + t.String())
		}
		tt := (*structType)(unsafe.Pointer(t))
		return tt.FieldByNameFunc(match)
	*/
	panic("todo: reflect.rtype.FieldByNameFunc")
}

func (t *rtype) Key() Type {
	if t.Kind() != Map {
		panic("reflect: Key of non-map type " + t.String())
	}
	tt := (*mapType)(unsafe.Pointer(t))
	return toType(tt.Key)
}

func (t *rtype) Len() int {
	if t.Kind() != Array {
		panic("reflect: Len of non-array type " + t.String())
	}
	tt := (*arrayType)(unsafe.Pointer(t))
	return int(tt.Len)
}

func (t *rtype) NumField() int {
	if t.Kind() != Struct {
		panic("reflect: NumField of non-struct type " + t.String())
	}
	tt := (*structType)(unsafe.Pointer(t))
	return len(tt.Fields)
}

func (t *rtype) In(i int) Type {
	/*
		if t.Kind() != Func {
			panic("reflect: In of non-func type " + t.String())
		}
		tt := (*abi.FuncType)(unsafe.Pointer(t))
		return toType(tt.InSlice()[i])
	*/
	panic("todo: reflect.rtype.In")
}

func (t *rtype) NumIn() int {
	/*
		if t.Kind() != Func {
			panic("reflect: NumIn of non-func type " + t.String())
		}
		tt := (*abi.FuncType)(unsafe.Pointer(t))
		return tt.NumIn()
	*/
	panic("todo: reflect.rtype.NumIn")
}

func (t *rtype) NumOut() int {
	/*
		if t.Kind() != Func {
			panic("reflect: NumOut of non-func type " + t.String())
		}
		tt := (*abi.FuncType)(unsafe.Pointer(t))
		return tt.NumOut()
	*/
	panic("todo: reflect.rtype.NumOut")
}

func (t *rtype) Out(i int) Type {
	/*
		if t.Kind() != Func {
			panic("reflect: Out of non-func type " + t.String())
		}
		tt := (*abi.FuncType)(unsafe.Pointer(t))
		return toType(tt.OutSlice()[i])
	*/
	panic("todo: reflect.rtype.Out")
}

func (t *rtype) IsVariadic() bool {
	/*
		if t.Kind() != Func {
			panic("reflect: IsVariadic of non-func type " + t.String())
		}
		tt := (*abi.FuncType)(unsafe.Pointer(t))
		return tt.IsVariadic()
	*/
	panic("todo: reflect.rtype.IsVariadic")
}

// add returns p+x.
//
// The whySafe string is ignored, so that the function still inlines
// as efficiently as p+x, but all call sites should use the string to
// record why the addition is safe, which is to say why the addition
// does not cause x to advance to the very end of p's allocation
// and therefore point incorrectly at the next block in memory.
func add(p unsafe.Pointer, x uintptr, whySafe string) unsafe.Pointer {
	return unsafe.Pointer(uintptr(p) + x)
}

// Method returns the i'th method in the type's method set.
func (t *interfaceType) Method(i int) (m Method) {
	if i < 0 || i >= len(t.Methods) {
		return
	}
	p := &t.Methods[i]
	m.Name = p.Name()
	m.PkgPath = p.PkgPath()
	m.Type = toType(&p.Typ_.Type)
	m.Index = i
	return
}

// NumMethod returns the number of interface methods in the type's method set.
func (t *interfaceType) NumMethod() int { return len(t.Methods) }

// MethodByName method with the given name in the type's method set.
func (t *interfaceType) MethodByName(name string) (m Method, ok bool) {
	if t == nil {
		return
	}
	var p *abi.Imethod
	for i := range t.Methods {
		p = &t.Methods[i]
		if p.Name() == name {
			return t.Method(i), true
		}
	}
	return
}

// A StructField describes a single field in a struct.
type StructField struct {
	// Name is the field name.
	Name string

	// PkgPath is the package path that qualifies a lower case (unexported)
	// field name. It is empty for upper case (exported) field names.
	// See https://golang.org/ref/spec#Uniqueness_of_identifiers
	PkgPath string

	Type      Type      // field type
	Tag       StructTag // field tag string
	Offset    uintptr   // offset within struct, in bytes
	Index     []int     // index sequence for Type.FieldByIndex
	Anonymous bool      // is an embedded field
}

// IsExported reports whether the field is exported.
func (f StructField) IsExported() bool {
	return f.PkgPath == ""
}

// A StructTag is the tag string in a struct field.
//
// By convention, tag strings are a concatenation of
// optionally space-separated key:"value" pairs.
// Each key is a non-empty string consisting of non-control
// characters other than space (U+0020 ' '), quote (U+0022 '"'),
// and colon (U+003A ':').  Each value is quoted using U+0022 '"'
// characters and Go string literal syntax.
type StructTag string

// Get returns the value associated with key in the tag string.
// If there is no such key in the tag, Get returns the empty string.
// If the tag does not have the conventional format, the value
// returned by Get is unspecified. To determine whether a tag is
// explicitly set to the empty string, use Lookup.
func (tag StructTag) Get(key string) string {
	v, _ := tag.Lookup(key)
	return v
}

// Lookup returns the value associated with key in the tag string.
// If the key is present in the tag the value (which may be empty)
// is returned. Otherwise the returned value will be the empty string.
// The ok return value reports whether the value was explicitly set in
// the tag string. If the tag does not have the conventional format,
// the value returned by Lookup is unspecified.
func (tag StructTag) Lookup(key string) (value string, ok bool) {
	// When modifying this code, also update the validateStructTag code
	// in cmd/vet/structtag.go.

	for tag != "" {
		// Skip leading space.
		i := 0
		for i < len(tag) && tag[i] == ' ' {
			i++
		}
		tag = tag[i:]
		if tag == "" {
			break
		}

		// Scan to colon. A space, a quote or a control character is a syntax error.
		// Strictly speaking, control chars include the range [0x7f, 0x9f], not just
		// [0x00, 0x1f], but in practice, we ignore the multi-byte control characters
		// as it is simpler to inspect the tag's bytes than the tag's runes.
		i = 0
		for i < len(tag) && tag[i] > ' ' && tag[i] != ':' && tag[i] != '"' && tag[i] != 0x7f {
			i++
		}
		if i == 0 || i+1 >= len(tag) || tag[i] != ':' || tag[i+1] != '"' {
			break
		}
		name := string(tag[:i])
		tag = tag[i+1:]

		// Scan quoted string to find value.
		i = 1
		for i < len(tag) && tag[i] != '"' {
			if tag[i] == '\\' {
				i++
			}
			i++
		}
		if i >= len(tag) {
			break
		}
		qvalue := string(tag[:i+1])
		tag = tag[i+1:]

		if key == name {
			value, err := strconv.Unquote(qvalue)
			if err != nil {
				break
			}
			return value, true
		}
	}
	return "", false
}

// TypeOf returns the reflection Type that represents the dynamic type of i.
// If i is a nil interface value, TypeOf returns nil.
func TypeOf(i any) Type {
	eface := *(*emptyInterface)(unsafe.Pointer(&i))
	// Noescape so this doesn't make i to escape. See the comment
	// at Value.typ for why this is safe.
	return toType((*abi.Type)(unsafe.Pointer(eface.typ)))
}

// rtypeOf directly extracts the *rtype of the provided value.
func rtypeOf(i any) *abi.Type {
	eface := *(*emptyInterface)(unsafe.Pointer(&i))
	return eface.typ
}

/* TODO(xsw):
// ptrMap is the cache for PointerTo.
var ptrMap sync.Map // map[*rtype]*ptrType
*/

// PtrTo returns the pointer type with element t.
// For example, if t represents type Foo, PtrTo(t) represents *Foo.
//
// PtrTo is the old spelling of PointerTo.
// The two functions behave identically.
func PtrTo(t Type) Type { return PointerTo(t) }

// PointerTo returns the pointer type with element t.
// For example, if t represents type Foo, PointerTo(t) represents *Foo.
func PointerTo(t Type) Type {
	return toRType(t.(*rtype).ptrTo())
}

func (t *rtype) ptrTo() *abi.Type {
	/*
		at := &t.t
		if at.PtrToThis != 0 {
			return t.typeOff(at.PtrToThis)
		}

		// Check the cache.
		if pi, ok := ptrMap.Load(t); ok {
			return &pi.(*ptrType).Type
		}

		// Look in known types.
		s := "*" + t.String()
		for _, tt := range typesByString(s) {
			p := (*ptrType)(unsafe.Pointer(tt))
			if p.Elem != &t.t {
				continue
			}
			pi, _ := ptrMap.LoadOrStore(t, p)
			return &pi.(*ptrType).Type
		}

		// Create a new ptrType starting with the description
		// of an *unsafe.Pointer.
		var iptr any = (*unsafe.Pointer)(nil)
		prototype := *(**ptrType)(unsafe.Pointer(&iptr))
		pp := *prototype

		pp.Str = resolveReflectName(newName(s, "", false, false))
		pp.PtrToThis = 0

		// For the type structures linked into the binary, the
		// compiler provides a good hash of the string.
		// Create a good hash for the new string by using
		// the FNV-1 hash's mixing function to combine the
		// old hash and the new "*".
		pp.Hash = fnv1(t.t.Hash, '*')

		pp.Elem = at

		pi, _ := ptrMap.LoadOrStore(t, &pp)
		return &pi.(*ptrType).Type
	*/
	panic("todo: reflect.rtype.ptrTo")
}

func ptrTo(t *abi.Type) *abi.Type {
	return toRType(t).ptrTo()
}

// TODO(xsw): check if this is needed
// fnv1 incorporates the list of bytes into the hash x using the FNV-1 hash function.
func fnv1(x uint32, list ...byte) uint32 {
	for _, b := range list {
		x = x*16777619 ^ uint32(b)
	}
	return x
}

func (t *rtype) Implements(u Type) bool {
	/*
		if u == nil {
			panic("reflect: nil type passed to Type.Implements")
		}
		if u.Kind() != Interface {
			panic("reflect: non-interface type passed to Type.Implements")
		}
		return implements(u.common(), t.common())
	*/
	panic("todo: reflect.rtype.Implements")
}

func (t *rtype) AssignableTo(u Type) bool {
	/*
		if u == nil {
			panic("reflect: nil type passed to Type.AssignableTo")
		}
		uu := u.common()
		return directlyAssignable(uu, t.common()) || implements(uu, t.common())
	*/
	panic("todo: reflect.rtype.AssignableTo")
}

func (t *rtype) ConvertibleTo(u Type) bool {
	/*
		if u == nil {
			panic("reflect: nil type passed to Type.ConvertibleTo")
		}
		return convertOp(u.common(), t.common()) != nil
	*/
	panic("todo: reflect.rtype.ConvertibleTo")
}

func (t *rtype) Comparable() bool {
	return t.t.Equal != nil
}

// implements reports whether the type V implements the interface type T.
func implements(T, V *abi.Type) bool {
	if T.Kind() != abi.Interface {
		return false
	}
	t := (*interfaceType)(unsafe.Pointer(T))
	if len(t.Methods) == 0 {
		return true
	}

	/*
		// The same algorithm applies in both cases, but the
		// method tables for an interface type and a concrete type
		// are different, so the code is duplicated.
		// In both cases the algorithm is a linear scan over the two
		// lists - T's methods and V's methods - simultaneously.
		// Since method tables are stored in a unique sorted order
		// (alphabetical, with no duplicate method names), the scan
		// through V's methods must hit a match for each of T's
		// methods along the way, or else V does not implement T.
		// This lets us run the scan in overall linear time instead of
		// the quadratic time  a naive search would require.
		// See also ../runtime/iface.go.
		if V.Kind() == abi.Interface {
			v := (*interfaceType)(unsafe.Pointer(V))
			i := 0
			for j := 0; j < len(v.Methods); j++ {
				tm := &t.Methods[i]
				tmName := t.nameOff(tm.Name)
				vm := &v.Methods[j]
				vmName := nameOffFor(V, vm.Name)
				if vmName.Name() == tmName.Name() && typeOffFor(V, vm.Typ) == t.typeOff(tm.Typ) {
					if !tmName.IsExported() {
						tmPkgPath := pkgPath(tmName)
						if tmPkgPath == "" {
							tmPkgPath = t.PkgPath.Name()
						}
						vmPkgPath := pkgPath(vmName)
						if vmPkgPath == "" {
							vmPkgPath = v.PkgPath.Name()
						}
						if tmPkgPath != vmPkgPath {
							continue
						}
					}
					if i++; i >= len(t.Methods) {
						return true
					}
				}
			}
			return false
		}

		v := V.Uncommon()
		if v == nil {
			return false
		}
		i := 0
		vmethods := v.Methods()
		for j := 0; j < int(v.Mcount); j++ {
			tm := &t.Methods[i]
			tmName := t.nameOff(tm.Name)
			vm := vmethods[j]
			vmName := nameOffFor(V, vm.Name)
			if vmName.Name() == tmName.Name() && typeOffFor(V, vm.Mtyp) == t.typeOff(tm.Typ) {
				if !tmName.IsExported() {
					tmPkgPath := pkgPath(tmName)
					if tmPkgPath == "" {
						tmPkgPath = t.PkgPath.Name()
					}
					vmPkgPath := pkgPath(vmName)
					if vmPkgPath == "" {
						vmPkgPath = nameOffFor(V, v.PkgPath).Name()
					}
					if tmPkgPath != vmPkgPath {
						continue
					}
				}
				if i++; i >= len(t.Methods) {
					return true
				}
			}
		}
		return false
	*/
	panic("todo: reflect.implements")
}

// specialChannelAssignability reports whether a value x of channel type V
// can be directly assigned (using memmove) to another channel type T.
// https://golang.org/doc/go_spec.html#Assignability
// T and V must be both of Chan kind.
func specialChannelAssignability(T, V *abi.Type) bool {
	/*
		// Special case:
		// x is a bidirectional channel value, T is a channel type,
		// x's type V and T have identical element types,
		// and at least one of V or T is not a defined type.
		return V.ChanDir() == abi.BothDir && (nameFor(T) == "" || nameFor(V) == "") && haveIdenticalType(T.Elem(), V.Elem(), true)
	*/
	panic("todo: reflect.specialChannelAssignability")
}

// directlyAssignable reports whether a value x of type V can be directly
// assigned (using memmove) to a value of type T.
// https://golang.org/doc/go_spec.html#Assignability
// Ignoring the interface rules (implemented elsewhere)
// and the ideal constant rules (no ideal constants at run time).
func directlyAssignable(T, V *abi.Type) bool {
	// x's type V is identical to T?
	if T == V {
		return true
	}

	// Otherwise at least one of T and V must not be defined
	// and they must have the same kind.
	if T.HasName() && V.HasName() || T.Kind() != V.Kind() {
		return false
	}

	if T.Kind() == abi.Chan && specialChannelAssignability(T, V) {
		return true
	}

	// x's type T and V must have identical underlying types.
	return haveIdenticalUnderlyingType(T, V, true)
}

func haveIdenticalType(T, V *abi.Type, cmpTags bool) bool {
	if cmpTags {
		return T == V
	}

	if nameFor(T) != nameFor(V) || T.Kind() != V.Kind() || pkgPathFor(T) != pkgPathFor(V) {
		return false
	}

	return haveIdenticalUnderlyingType(T, V, false)
}

func haveIdenticalUnderlyingType(T, V *abi.Type, cmpTags bool) bool {
	if T == V {
		return true
	}

	kind := Kind(T.Kind())
	if kind != Kind(V.Kind()) {
		return false
	}

	// Non-composite types of equal kind have same underlying type
	// (the predefined instance of the type).
	if Bool <= kind && kind <= Complex128 || kind == String || kind == UnsafePointer {
		return true
	}

	/*
		// Composite types.
		switch kind {
		case Array:
			return T.Len() == V.Len() && haveIdenticalType(T.Elem(), V.Elem(), cmpTags)

		case Chan:
			return V.ChanDir() == T.ChanDir() && haveIdenticalType(T.Elem(), V.Elem(), cmpTags)

		case Func:
			t := (*funcType)(unsafe.Pointer(T))
			v := (*funcType)(unsafe.Pointer(V))
			if t.OutCount != v.OutCount || t.InCount != v.InCount {
				return false
			}
			for i := 0; i < t.NumIn(); i++ {
				if !haveIdenticalType(t.In(i), v.In(i), cmpTags) {
					return false
				}
			}
			for i := 0; i < t.NumOut(); i++ {
				if !haveIdenticalType(t.Out(i), v.Out(i), cmpTags) {
					return false
				}
			}
			return true

		case Interface:
			t := (*interfaceType)(unsafe.Pointer(T))
			v := (*interfaceType)(unsafe.Pointer(V))
			if len(t.Methods) == 0 && len(v.Methods) == 0 {
				return true
			}
			// Might have the same methods but still
			// need a run time conversion.
			return false

		case Map:
			return haveIdenticalType(T.Key(), V.Key(), cmpTags) && haveIdenticalType(T.Elem(), V.Elem(), cmpTags)

		case Pointer, Slice:
			return haveIdenticalType(T.Elem(), V.Elem(), cmpTags)

		case Struct:
			t := (*structType)(unsafe.Pointer(T))
			v := (*structType)(unsafe.Pointer(V))
			if len(t.Fields) != len(v.Fields) {
				return false
			}
			if t.PkgPath.Name() != v.PkgPath.Name() {
				return false
			}
			for i := range t.Fields {
				tf := &t.Fields[i]
				vf := &v.Fields[i]
				if tf.Name.Name() != vf.Name.Name() {
					return false
				}
				if !haveIdenticalType(tf.Typ, vf.Typ, cmpTags) {
					return false
				}
				if cmpTags && tf.Name.Tag() != vf.Name.Tag() {
					return false
				}
				if tf.Offset != vf.Offset {
					return false
				}
				if tf.Embedded() != vf.Embedded() {
					return false
				}
			}
			return true
		}

		return false
	*/
	panic("todo: reflect.haveIdenticalUnderlyingType")
}

// SliceOf returns the slice type with element type t.
// For example, if t represents int, SliceOf(t) represents []int.
func SliceOf(t Type) Type {
	typ := t.common()

	/* TODO(xsw): no cache
	// Look in cache.
	ckey := cacheKey{Slice, typ, nil, 0}
	if slice, ok := lookupCache.Load(ckey); ok {
		return slice.(Type)
	}

	// Look in known types.
	s := "[]" + stringFor(typ)
	for _, tt := range typesByString(s) {
		slice := (*sliceType)(unsafe.Pointer(tt))
		if slice.Elem == typ {
			ti, _ := lookupCache.LoadOrStore(ckey, toRType(tt))
			return ti.(Type)
		}
	}
	*/

	slice := runtime.SliceOf(typ)

	// TODO(xsw):
	// ti, _ := lookupCache.LoadOrStore(ckey, toRType(&slice.Type))
	// return ti.(Type)

	return toType(slice)
}

// toType converts from a *rtype to a Type that can be returned
// to the client of package reflect. In gc, the only concern is that
// a nil *rtype must be replaced by a nil Type, but in gccgo this
// function takes care of ensuring that multiple *rtype for the same
// type are coalesced into a single Type.
func toType(t *abi.Type) Type {
	if t == nil {
		return nil
	}
	return toRType(t)
}
