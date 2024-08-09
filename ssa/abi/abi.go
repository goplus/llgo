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

package abi

import (
	"crypto/sha256"
	"encoding/base64"
	"fmt"
	"go/types"
	"hash"
	"log"
	"strings"

	"github.com/goplus/llgo/internal/abi"
)

// -----------------------------------------------------------------------------

func BasicKind(t *types.Basic) abi.Kind {
	kind := t.Kind()
	switch kind {
	case types.String:
		return abi.String
	case types.UnsafePointer:
		return abi.UnsafePointer
	}
	return abi.Kind(kind)
}

func UnderlyingKind(t types.Type) abi.Kind {
	switch t := t.(type) {
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
	}
	panic("todo")
}

func ChanDir(dir types.ChanDir) (abi.ChanDir, string) {
	switch dir {
	case types.SendRecv:
		return abi.BothDir, "chan"
	case types.SendOnly:
		return abi.SendDir, "chan->"
	case types.RecvOnly:
		return abi.RecvDir, "<-chan"
	}
	panic("invlid chan dir")
}

// -----------------------------------------------------------------------------

type DataKind int

const (
	Invalid  DataKind = iota
	Indirect          // allocate memory for the value
	Pointer           // store a pointer value directly in the interface value
	Integer           // store a integer value directly in the interface value
	BitCast           // store other value (need bitcast) directly in the interface value
)

func DataKindOf(raw types.Type, lvl int, is32Bits bool) (DataKind, types.Type, int) {
	switch t := raw.Underlying().(type) {
	case *types.Basic:
		kind := t.Kind()
		switch {
		case types.Bool <= kind && kind <= types.Uintptr:
			if is32Bits && (kind == types.Int64 || kind == types.Uint64) {
				return Indirect, raw, lvl
			}
			return Integer, raw, lvl
		case kind == types.Float32:
			return BitCast, raw, lvl
		case kind == types.Float64:
			if is32Bits {
				return Indirect, raw, lvl
			}
			return BitCast, raw, lvl
		case kind == types.UnsafePointer:
			return Pointer, raw, lvl
		}
	case *types.Pointer, *types.Signature, *types.Map, *types.Chan:
		return Pointer, raw, lvl
	case *types.Struct:
		if t.NumFields() == 1 {
			return DataKindOf(t.Field(0).Type(), lvl+1, is32Bits)
		}
	case *types.Interface, *types.Slice:
	case *types.Array:
		if t.Len() == 1 {
			return DataKindOf(t.Elem(), lvl+1, is32Bits)
		}
	default:
		panic("unkown type")
	}
	return Indirect, raw, lvl
}

// -----------------------------------------------------------------------------

// Builder is a helper for constructing ABI types.
type Builder struct {
	buf []byte
	Pkg string
}

// New creates a new ABI type Builder.
func New(pkg string) *Builder {
	ret := new(Builder)
	ret.Init(pkg)
	return ret
}

func (b *Builder) Init(pkg string) {
	b.Pkg = pkg
	b.buf = make([]byte, sha256.Size)
}

// TypeName returns the ABI type name for the specified type.
func (b *Builder) TypeName(t types.Type) (ret string, pub bool) {
	switch t := t.(type) {
	case *types.Basic:
		return BasicName(t), true
	case *types.Pointer:
		ret, pub = b.TypeName(t.Elem())
		return "*" + ret, pub
	case *types.Struct:
		return b.StructName(t)
	case *types.Signature:
		return b.FuncName(t), true
	case *types.Slice:
		ret, pub = b.TypeName(t.Elem())
		return "[]" + ret, pub
	case *types.Array:
		ret, pub = b.TypeName(t.Elem())
		return fmt.Sprintf("[%v]%s", t.Len(), ret), pub
	case *types.Named:
		o := t.Obj()
		pkg := o.Pkg()
		return "_llgo_" + FullName(pkg, NamedName(t)), (pkg == nil || o.Exported())
	case *types.Interface:
		if t.Empty() {
			return "_llgo_any", true
		}
		return b.InterfaceName(t)
	case *types.Map:
		key, pub1 := b.TypeName(t.Key())
		elem, pub2 := b.TypeName(t.Elem())
		return fmt.Sprintf("map[%s]%s", key, elem), pub1 && pub2
	case *types.Chan:
		elem, pub := b.TypeName(t.Elem())
		var s string
		switch t.Dir() {
		case types.SendRecv:
			s = "chan"
		case types.SendOnly:
			s = "chan<-"
		case types.RecvOnly:
			s = "<-chan"
		}
		return fmt.Sprintf("%s %s", s, elem), pub
	}
	log.Panicf("todo: %T\n", t)
	return
}

func NamedName(t *types.Named) string {
	if targs := t.TypeArgs(); targs != nil {
		n := targs.Len()
		infos := make([]string, n)
		for i := 0; i < n; i++ {
			infos[i] = types.TypeString(targs.At(i), PathOf)
		}
		return t.Obj().Name() + "[" + strings.Join(infos, ",") + "]"
	}
	return t.Obj().Name()
}

func TypeArgs(typeArgs []types.Type) string {
	targs := make([]string, len(typeArgs))
	for i, t := range typeArgs {
		targs[i] = types.TypeString(t, PathOf)
	}
	return "[" + strings.Join(targs, ",") + "]"
}

const (
	PatchPathPrefix = "github.com/goplus/llgo/internal/lib/"
)

// PathOf returns the package path of the specified package.
func PathOf(pkg *types.Package) string {
	if pkg == nil {
		return ""
	}
	if pkg.Name() == "main" {
		return "main"
	}
	return strings.TrimPrefix(pkg.Path(), PatchPathPrefix)
}

// FullName returns the full name of a package member.
func FullName(pkg *types.Package, name string) string {
	if pkg == nil {
		return name
	}
	return PathOf(pkg) + "." + name
}

// TypeName returns the ABI type name for the specified named type.
func TypeName(o *types.TypeName) string {
	return FullName(o.Pkg(), o.Name())
}

// BasicName returns the ABI type name for the specified basic type.
func BasicName(t *types.Basic) string {
	return "_llgo_" + t.Name()
}

// FuncName returns the ABI type name for the specified function type.
func (b *Builder) FuncName(t *types.Signature) string {
	hash := b.funcHash(t)
	hashStr := base64.RawURLEncoding.EncodeToString(hash)
	return "_llgo_func$" + hashStr
}

func (b *Builder) funcHash(t *types.Signature) []byte {
	h := sha256.New()
	params, results := t.Params(), t.Results()
	fmt.Fprintln(h, "func", params.Len(), results.Len(), t.Variadic())
	b.tuple(h, params)
	b.tuple(h, results)
	return h.Sum(b.buf[:0])
}

func (b *Builder) tuple(h hash.Hash, t *types.Tuple) {
	n := t.Len()
	for i := 0; i < n; i++ {
		v := t.At(i)
		ft, _ := b.TypeName(v.Type())
		fmt.Fprintln(h, ft)
	}
}

// InterfaceName returns the ABI type name for the specified interface type.
func (b *Builder) InterfaceName(t *types.Interface) (ret string, pub bool) {
	hash, private := b.interfaceHash(t)
	hashStr := base64.RawURLEncoding.EncodeToString(hash)
	if private {
		return b.Pkg + ".iface$" + hashStr, false
	}
	return "_llgo_iface$" + hashStr, true
}

func (b *Builder) interfaceHash(t *types.Interface) (ret []byte, private bool) {
	h := sha256.New()
	n := t.NumMethods()
	fmt.Fprintln(h, "interface", n)
	for i := 0; i < n; i++ {
		m := t.Method(i)
		if !m.Exported() {
			private = true
		}
		ft := b.FuncName(m.Type().(*types.Signature))
		fmt.Fprintln(h, m.Name(), ft)
	}
	ret = h.Sum(b.buf[:0])
	return
}

// StructName returns the ABI type name for the specified struct type.
func (b *Builder) StructName(t *types.Struct) (ret string, pub bool) {
	hash, private := b.structHash(t)
	hashStr := base64.RawURLEncoding.EncodeToString(hash)
	if private {
		return b.Pkg + ".struct$" + hashStr, false
	}
	return "_llgo_struct$" + hashStr, true
}

func (b *Builder) structHash(t *types.Struct) (ret []byte, private bool) {
	h := sha256.New()
	n := t.NumFields()
	fmt.Fprintln(h, "struct", n)
	for i := 0; i < n; i++ {
		f := t.Field(i)
		if !f.Exported() {
			private = true
		}
		name := f.Name()
		if f.Embedded() {
			name = "-"
		}
		ft, _ := b.TypeName(f.Type())
		fmt.Fprintln(h, name, ft)
	}
	ret = h.Sum(b.buf[:0])
	return
}

// -----------------------------------------------------------------------------
