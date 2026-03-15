/*
 * Copyright (c) 2024 The XGo Authors (xgo.dev). All rights reserved.
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
	"go/token"
	"go/types"
	"hash"
	"log"
	"sort"
	"strconv"
	"strings"
	"sync"

	"github.com/goplus/llgo/internal/env"
	"github.com/goplus/llgo/runtime/abi"
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
		return abi.SendDir, "chan<-"
	case types.RecvOnly:
		return abi.RecvDir, "<-chan"
	}
	panic("invalid chan dir")
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
	buf     []byte
	Pkg     string
	PtrSize uintptr
	Sizes   types.Sizes

	LocalTypeArgs []string
}

var localDisplayOrdinals sync.Map

// New creates a new ABI type Builder.
func New(pkg string, ptrSize uintptr, sizes types.Sizes) *Builder {
	ret := new(Builder)
	ret.Init(pkg, ptrSize, sizes)
	return ret
}

func (b *Builder) Init(pkg string, ptrSize uintptr, sizes types.Sizes) {
	b.Pkg = pkg
	b.buf = make([]byte, sha256.Size)
	b.PtrSize = ptrSize
	b.Sizes = sizes
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
		o := namedContextObject(t)
		pkg := o.Pkg()
		ids := scopeIndices(o)
		return "_llgo_" + FullName(pkg, b.namedName(t)+ids), (pkg == nil || o.Exported() && ids == "")
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
	case *types.Alias:
		return b.TypeName(types.Unalias(t))
	}
	log.Panicf("todo: %T\n", t)
	return
}

func NamedName(t *types.Named) string {
	var b Builder
	return b.namedName(t)
}

func (b *Builder) namedName(t *types.Named) string {
	obj := namedContextObject(t)
	name := obj.Name()
	outer, env := b.localTypeContext(obj)
	if len(outer) == 0 {
		outer, env = b.fallbackLocalTypeContext(obj, t.TypeArgs())
	}
	if targs := t.TypeArgs(); targs != nil {
		n := targs.Len()
		infos := make([]string, n)
		for i := 0; i < n; i++ {
			infos[i] = b.typeArgStringWithEnv(targs.At(i), env)
		}
		if len(outer) != 0 {
			return name + "[" + strings.Join(outer, ",") + ";" + strings.Join(infos, ",") + "]"
		}
		return name + "[" + strings.Join(infos, ",") + "]"
	}
	if len(outer) != 0 {
		return name + "[" + strings.Join(outer, ",") + "]"
	}
	return name
}

func TypeArgs(typeArgs []types.Type) string {
	var b Builder
	return b.typeArgs(typeArgs)
}

func TypeArgStrings(typeArgs []types.Type) []string {
	var b Builder
	ret := make([]string, len(typeArgs))
	for i, t := range typeArgs {
		ret[i] = b.typeArgString(t)
	}
	return ret
}

func (b *Builder) typeArgs(typeArgs []types.Type) string {
	targs := make([]string, len(typeArgs))
	for i, t := range typeArgs {
		targs[i] = b.typeArgString(t)
	}
	return "[" + strings.Join(targs, ",") + "]"
}

func namedLikeTypeArgString(obj types.Object, targs *types.TypeList) string {
	var b Builder
	return b.namedLikeTypeArgString(obj, targs)
}

func (b *Builder) namedLikeTypeArgString(obj types.Object, targs *types.TypeList) string {
	name := obj.Name()
	outer, env := b.localTypeContext(obj)
	if len(outer) == 0 {
		outer, env = b.fallbackLocalTypeContext(obj, targs)
	}
	if targs != nil {
		n := targs.Len()
		infos := make([]string, n)
		for i := 0; i < n; i++ {
			infos[i] = b.typeArgStringWithEnv(targs.At(i), env)
		}
		if len(outer) != 0 {
			name += "[" + strings.Join(outer, ",") + ";" + strings.Join(infos, ",") + "]"
		} else {
			name += "[" + strings.Join(infos, ",") + "]"
		}
	} else if len(outer) != 0 {
		name += "[" + strings.Join(outer, ",") + "]"
	}
	// Distinct local types may share the same object name (e.g. in stdlib
	// tests). Disambiguate them in symbol names using stable scope indices.
	name += scopeIndices(obj)
	if pkg := obj.Pkg(); pkg != nil {
		return userPathOf(pkg) + "." + name
	}
	return name
}

func (b *Builder) namedDisplayName(t *types.Named) string {
	obj := namedContextObject(t)
	registerDisplayScope(obj)
	name := obj.Name()
	outer, env := b.localTypeContext(obj)
	if len(outer) == 0 {
		outer, env = b.fallbackLocalTypeContext(obj, t.TypeArgs())
	}
	if targs := t.TypeArgs(); targs != nil {
		n := targs.Len()
		infos := make([]string, n)
		for i := 0; i < n; i++ {
			infos[i] = b.displayTypeArgStringWithEnv(targs.At(i), env)
		}
		if len(outer) != 0 {
			return name + "[" + strings.Join(outer, ",") + ";" + strings.Join(infos, ",") + "]"
		}
		return name + "[" + strings.Join(infos, ",") + "]"
	}
	if len(outer) != 0 {
		return name + "[" + strings.Join(outer, ",") + "]"
	}
	return name
}

func (b *Builder) displayTypeArgStringWithEnv(t types.Type, env map[string]string) string {
	switch t := t.(type) {
	case *types.Alias:
		return b.displayTypeArgStringWithEnv(types.Unalias(t), env)
	case *types.Basic:
		return t.String()
	case *types.Named:
		return b.namedLikeDisplayString(namedContextObject(t), t.TypeArgs())
	case *types.TypeParam:
		if ret, ok := env[t.Obj().Name()]; ok {
			return ret
		}
		return t.Obj().Name()
	case *types.Pointer:
		return "*" + b.displayTypeArgStringWithEnv(t.Elem(), env)
	case *types.Slice:
		return "[]" + b.displayTypeArgStringWithEnv(t.Elem(), env)
	case *types.Array:
		return fmt.Sprintf("[%v]%s", t.Len(), b.displayTypeArgStringWithEnv(t.Elem(), env))
	case *types.Map:
		return fmt.Sprintf("map[%s]%s", b.displayTypeArgStringWithEnv(t.Key(), env), b.displayTypeArgStringWithEnv(t.Elem(), env))
	case *types.Chan:
		_, s := ChanDir(t.Dir())
		elem := b.displayTypeArgStringWithEnv(t.Elem(), env)
		if t.Dir() == types.SendRecv {
			if ch, ok := t.Elem().(*types.Chan); ok && ch.Dir() == types.RecvOnly {
				elem = "(" + elem + ")"
			}
		}
		return fmt.Sprintf("%s %s", s, elem)
	default:
		return types.TypeString(t, userPathOf)
	}
}

func (b *Builder) namedLikeDisplayString(obj types.Object, targs *types.TypeList) string {
	registerDisplayScope(obj)
	name := obj.Name()
	outer, env := b.localTypeContext(obj)
	if len(outer) == 0 {
		outer, env = b.fallbackLocalTypeContext(obj, targs)
	}
	if targs != nil {
		n := targs.Len()
		infos := make([]string, n)
		for i := 0; i < n; i++ {
			infos[i] = b.displayTypeArgStringWithEnv(targs.At(i), env)
		}
		if len(outer) != 0 {
			name += "[" + strings.Join(outer, ",") + ";" + strings.Join(infos, ",") + "]"
		} else {
			name += "[" + strings.Join(infos, ",") + "]"
		}
		if suffix := displayScopeSuffix(obj); suffix != "" {
			name += suffix
		}
	} else if len(outer) != 0 {
		name += "[" + strings.Join(outer, ",") + "]"
	}
	if pkg := obj.Pkg(); pkg != nil {
		return userPathOf(pkg) + "." + name
	}
	return name
}

func displayScopeSuffix(obj types.Object) string {
	ord, ok := registerDisplayScope(obj)
	if !ok {
		return ""
	}
	return "·" + strconv.Itoa(ord)
}

func registerDisplayScope(obj types.Object) (int, bool) {
	if obj == nil {
		return 0, false
	}
	if obj.Parent() != nil {
		return 0, false
	}
	pos := obj.Pos()
	if !pos.IsValid() {
		return 0, false
	}
	if ord, ok := localDisplayOrdinals.Load(pos); ok {
		return ord.(int), true
	}
	ord := 1
	localDisplayOrdinals.Range(func(_, _ any) bool {
		ord++
		return true
	})
	actual, _ := localDisplayOrdinals.LoadOrStore(pos, ord)
	return actual.(int), true
}

func (b *Builder) fallbackLocalTypeContext(obj types.Object, targs *types.TypeList) ([]string, map[string]string) {
	if len(b.LocalTypeArgs) == 0 || obj == nil || obj.Parent() != nil || targs == nil || targs.Len() == 0 {
		return nil, nil
	}
	params := typeParamNamesInTypeArgs(targs)
	if len(params) > len(b.LocalTypeArgs) {
		return nil, nil
	}
	env := make(map[string]string, len(params))
	for i, name := range params {
		env[name] = b.LocalTypeArgs[i]
	}
	return b.LocalTypeArgs, env
}

func typeParamNamesInTypeArgs(targs *types.TypeList) []string {
	if targs == nil || targs.Len() == 0 {
		return nil
	}
	var ret []string
	seen := make(map[string]struct{})
	for i := 0; i < targs.Len(); i++ {
		collectTypeParamNames(targs.At(i), seen, &ret)
	}
	return ret
}

func collectTypeParamNames(t types.Type, seen map[string]struct{}, out *[]string) {
	switch t := types.Unalias(t).(type) {
	case *types.TypeParam:
		name := t.Obj().Name()
		if _, ok := seen[name]; ok {
			return
		}
		seen[name] = struct{}{}
		*out = append(*out, name)
	case *types.Pointer:
		collectTypeParamNames(t.Elem(), seen, out)
	case *types.Slice:
		collectTypeParamNames(t.Elem(), seen, out)
	case *types.Array:
		collectTypeParamNames(t.Elem(), seen, out)
	case *types.Map:
		collectTypeParamNames(t.Key(), seen, out)
		collectTypeParamNames(t.Elem(), seen, out)
	case *types.Chan:
		collectTypeParamNames(t.Elem(), seen, out)
	case *types.Named:
		collectTypeParamNamesInList(t.TypeArgs(), seen, out)
	case *types.Struct:
		for i := 0; i < t.NumFields(); i++ {
			collectTypeParamNames(t.Field(i).Type(), seen, out)
		}
	case *types.Interface:
		for i := 0; i < t.NumMethods(); i++ {
			collectTypeParamNames(t.Method(i).Type(), seen, out)
		}
	case *types.Signature:
		collectTypeParamNamesInTuple(t.Params(), seen, out)
		collectTypeParamNamesInTuple(t.Results(), seen, out)
	}
}

func collectTypeParamNamesInList(targs *types.TypeList, seen map[string]struct{}, out *[]string) {
	if targs == nil {
		return
	}
	for i := 0; i < targs.Len(); i++ {
		collectTypeParamNames(targs.At(i), seen, out)
	}
}

func collectTypeParamNamesInTuple(tuple *types.Tuple, seen map[string]struct{}, out *[]string) {
	if tuple == nil {
		return
	}
	for i := 0; i < tuple.Len(); i++ {
		collectTypeParamNames(tuple.At(i).Type(), seen, out)
	}
}

func typeArgString(t types.Type) string {
	var b Builder
	return b.typeArgString(t)
}

func (b *Builder) typeArgString(t types.Type) string {
	return b.typeArgStringWithEnv(t, nil)
}

func (b *Builder) typeArgStringWithEnv(t types.Type, env map[string]string) string {
	switch t := t.(type) {
	case *types.Alias:
		return b.typeArgStringWithEnv(types.Unalias(t), env)
	case *types.Basic:
		return t.String()
	case *types.Named:
		return b.namedTypeArgString(t)
	case *types.TypeParam:
		if ret, ok := env[t.Obj().Name()]; ok {
			return ret
		}
		return t.Obj().Name()
	case *types.Pointer:
		return "*" + b.typeArgStringWithEnv(t.Elem(), env)
	case *types.Slice:
		return "[]" + b.typeArgStringWithEnv(t.Elem(), env)
	case *types.Array:
		return fmt.Sprintf("[%v]%s", t.Len(), b.typeArgStringWithEnv(t.Elem(), env))
	case *types.Map:
		return fmt.Sprintf("map[%s]%s", b.typeArgStringWithEnv(t.Key(), env), b.typeArgStringWithEnv(t.Elem(), env))
	case *types.Chan:
		_, s := ChanDir(t.Dir())
		elem := t.Elem()
		elemStr := b.typeArgStringWithEnv(elem, env)
		// Keep canonical channel formatting for nested directional channels.
		// Example: chan (<-chan int), not "chan <-chan int" (ambiguous).
		if t.Dir() == types.SendRecv {
			if ch, ok := elem.(*types.Chan); ok && ch.Dir() == types.RecvOnly {
				elemStr = "(" + elemStr + ")"
			}
		}
		return fmt.Sprintf("%s %s", s, elemStr)
	default:
		// Fallback for rare type arguments (e.g. signature/interface/struct).
		// Collisions are mainly caused by local named types, handled above.
		return types.TypeString(t, userPathOf)
	}
}

func (b *Builder) namedTypeArgString(t *types.Named) string {
	return b.namedLikeTypeArgString(namedContextObject(t), t.TypeArgs())
}

func namedContextObject(t *types.Named) types.Object {
	if t == nil {
		return nil
	}
	if orig := t.Origin(); orig != nil {
		return orig.Obj()
	}
	return t.Obj()
}

func (b *Builder) localTypeContext(obj types.Object) ([]string, map[string]string) {
	if len(b.LocalTypeArgs) == 0 || obj == nil {
		return nil, nil
	}
	pkg := obj.Pkg()
	if pkg == nil {
		return nil, nil
	}
	if parent := obj.Parent(); parent == nil || parent == pkg.Scope() {
		return nil, nil
	}
	params := localTypeParams(obj.Parent())
	if len(params) == 0 {
		return nil, nil
	}
	if len(params) != len(b.LocalTypeArgs) {
		return nil, nil
	}
	env := make(map[string]string, len(params))
	for i, param := range params {
		env[param] = b.LocalTypeArgs[i]
	}
	return b.LocalTypeArgs, env
}

func localTypeParams(scope *types.Scope) []string {
	if scope == nil {
		return nil
	}
	type item struct {
		name string
		pos  token.Pos
	}
	var items []item
	for _, name := range scope.Names() {
		obj := scope.Lookup(name)
		typ, ok := obj.Type().(*types.TypeParam)
		if !ok {
			continue
		}
		items = append(items, item{name: typ.Obj().Name(), pos: obj.Pos()})
	}
	sort.Slice(items, func(i, j int) bool {
		return items[i].pos < items[j].pos
	})
	ret := make([]string, len(items))
	for i, item := range items {
		ret[i] = item.name
	}
	return ret
}

const (
	PatchPathPrefix = env.LLGoRuntimePkg + "/internal/lib/"
)

// PathOf returns the package path of the specified package.
func PathOf(pkg *types.Package) string {
	if pkg == nil {
		return ""
	}
	return strings.TrimPrefix(pkg.Path(), PatchPathPrefix)
}

func userPathOf(pkg *types.Package) string {
	if pkg == nil {
		return ""
	}
	path := PathOf(pkg)
	if pkg.Name() == "main" && path == "command-line-arguments" {
		return "main"
	}
	return path
}

func UserPathOf(pkg *types.Package) string {
	return userPathOf(pkg)
}

// FullName returns the full name of a package member.
func FullName(pkg *types.Package, name string) string {
	if pkg == nil {
		return name
	}
	return PathOf(pkg) + "." + name
}

// BasicName returns the ABI type name for the specified basic type.
func BasicName(t *types.Basic) string {
	name := t.Name()
	switch name {
	case "byte":
		name = "uint8"
	case "rune":
		name = "int32"
	}
	return "_llgo_" + name
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
	if IsClosure(t) {
		return "_llgo_closure$" + hashStr, true
	}
	if private {
		return b.Pkg + ".struct$" + hashStr, false
	}
	return "_llgo_struct$" + hashStr, false
}

func IsClosure(raw *types.Struct) bool {
	n := raw.NumFields()
	if n == 2 {
		f1, f2 := raw.Field(0), raw.Field(1)
		if _, ok := f1.Type().(*types.Signature); ok && f1.Name() == "$f" {
			return f2.Type() == types.Typ[types.UnsafePointer] && f2.Name() == "$data"
		}
	}
	return false
}

func IsClosureFields(fields []*types.Var) bool {
	if len(fields) == 2 {
		f1, f2 := fields[0], fields[1]
		if _, ok := f1.Type().(*types.Signature); ok && f1.Name() == "$f" {
			return f2.Type() == types.Typ[types.UnsafePointer] && f2.Name() == "$data"
		}
	}
	return false
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
		ft, pub := b.TypeName(f.Type())
		fmt.Fprintln(h, name, ft)
		if !pub {
			private = true
		}
	}
	ret = h.Sum(b.buf[:0])
	return
}

func scopeIndices(obj types.Object) string {
	pkg := obj.Pkg()
	if pkg == nil {
		return ""
	}
	scope := obj.Parent()
	if scope == nil {
		if pos := obj.Pos(); pos.IsValid() {
			return ".pos" + strconv.Itoa(int(pos))
		}
		return ""
	}
	if scope == pkg.Scope() {
		return ""
	}
	var ids []string
	for scope != nil && scope != pkg.Scope() {
		parent := scope.Parent()
		if parent == nil {
			break
		}
		n := parent.NumChildren()
		for i := 0; i < n; i++ {
			if parent.Child(i) == scope {
				ids = append(ids, strconv.Itoa(i))
				break
			}
		}
		scope = parent
	}
	if scope == pkg.Scope() && len(ids) != 0 {
		for i, j := 0, len(ids)-1; i < j; i, j = i+1, j-1 {
			ids[i], ids[j] = ids[j], ids[i]
		}
		return "." + strings.Join(ids, ".")
	}
	if pos := obj.Pos(); pos.IsValid() {
		return ".pos" + strconv.Itoa(int(pos))
	}
	return ""
}

// -----------------------------------------------------------------------------
