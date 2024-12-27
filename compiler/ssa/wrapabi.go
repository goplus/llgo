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

package ssa

import (
	"crypto/md5"
	"fmt"
	"go/types"
	"strconv"
	"strings"
)

func CheckCFunc(fn Function) {
	fn._kind |= kindCFunc
	if checkWrapAbi(fn.Prog, fn.Type) {
		fn._kind |= kindWrapABI
		wrapCFunc(fn.Pkg, fn)
	}
}

func checkWrapAbi(prog Program, typ Type) bool {
	sig, ok := typ.RawType().(*types.Signature)
	if !ok {
		return false
	}
	n := sig.Params().Len()
	for i := 0; i < n; i++ {
		if isWrapABI(prog, i, sig.Params().At(i).Type()) {
			return true
		}
	}
	return false
}

func elemOfType(typ types.Type) int {
	switch t := typ.Underlying().(type) {
	case *types.Struct:
		var n int
		for i := 0; i < t.NumFields(); i++ {
			n += elemOfType(t.Field(i).Type())
		}
		return n
	case *types.Array:
		return elemOfType(t.Elem()) * int(t.Len())
	default:
		return 1
	}
}

func isWrapABI(prog Program, i int, typ types.Type) bool {
	if elemOfType(typ) > 2 {
		return true
	}
	return false
}

func wrapParam(pkg Package, typ types.Type, param string) string {
	switch t := typ.Underlying().(type) {
	case *types.Struct, *types.Array:
		name, ok := pkg.wrapCType[t]
		if !ok {
			hash := md5.Sum([]byte(t.String()))
			name = "typ_" + fmt.Sprintf("%x", hash[:])
			pkg.wrapCType[t] = name
			pkg.wrapCode = append(pkg.wrapCode, toCType(t, name)+";")
		}
		return name + " " + param
	default:
		return toCType(t, param)
	}
}

func wrapCFunc(pkg Package, fn Function) {
	sig := fn.RawType().(*types.Signature)
	var cext string = fn.Name() + "("
	var csig = "void llgo_wrapabi_" + fn.Name() + "("
	var cbody string
	if sig.Results().Len() == 1 {
		cbody = "*r = "
	}
	cbody += fn.Name() + "("
	for i := 0; i < sig.Params().Len(); i++ {
		if i > 0 {
			cext += ", "
			csig += ", "
			cbody += ", "
		}
		param := "p" + strconv.Itoa(i)
		t := sig.Params().At(i).Type()
		cext += wrapParam(pkg, t, param)
		if isWrapABI(pkg.Prog, i, t) {
			param = "*" + param
		}
		cbody += param
		csig += wrapParam(pkg, t, param)
	}
	cext += ");"
	if sig.Results().Len() == 1 {
		if sig.Params().Len() > 0 {
			csig += ", "
		}
		t := sig.Results().At(0).Type()
		csig += wrapParam(pkg, t, "*r")
		cext = "extern " + wrapParam(pkg, t, "") + cext
	} else {
		cext = "extern void " + cext
	}
	csig += ")"
	cbody += ")"
	pkg.wrapCode = append(pkg.wrapCode, cext)
	pkg.wrapCode = append(pkg.wrapCode, csig+" {\n    "+cbody+";\n}")
}

func toCType(typ types.Type, name string) string {
	switch t := typ.Underlying().(type) {
	case *types.Struct:
		var expr = "typedef struct {"
		for i := 0; i < t.NumFields(); i++ {
			ft := t.Field(i)
			expr += toCType(ft.Type(), "f"+strconv.Itoa(i)) + ";"
		}
		expr += "} " + name
		return expr
	case *types.Array:
		return toCType(t.Elem(), name) + "[" + strconv.Itoa(int(t.Len())) + "]"
	case *types.Basic:
		switch t.Kind() {
		case types.UnsafePointer:
			return "void *" + name
		default:
			return strings.Title(t.Name()) + " " + name
		}
	case *types.Pointer:
		return toCType(t.Elem(), "") + "*" + name
	case *types.Slice:
		return "Slice " + name
	case *types.Map:
		return "void *" + name
	case *types.Chan:
		return "void *" + name
	case *types.Interface:
		return "Interface " + name
	case *types.Signature:
		return "void *" + name
	}
	panic("toCType unsupport " + typ.String())
}

var wrapHead = `
#include <stddef.h>

typedef signed char Int8;
typedef unsigned char Uint8;
typedef short Int16;
typedef unsigned short Uint16;
typedef int Int32;
typedef unsigned int Uint32;
typedef long long Int64;
typedef unsigned long long Uint64;

#ifdef __LP64__
typedef Int64 Int;
typedef Uint64 Uint;
#else
typedef Int32 Int;
typedef Uint32 Uint;
#endif

typedef size_t Uintptr;
typedef float Float32;
typedef double Float64;

#ifdef _MSC_VER
#include <complex.h>
typedef _Fcomplex Complex64;
typedef _Dcomplex Complex128;
#else
typedef float _Complex Complex64;
typedef double _Complex Complex128;
#endif

typedef struct { const char *data; Int len; } String;
typedef struct { char *data; Int len; Int cap; } Slice;
typedef struct { void *type; void *data; } Interface;
`
