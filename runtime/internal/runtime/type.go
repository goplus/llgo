// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Runtime type representation.

package runtime

import (
	"github.com/goplus/llgo/runtime/abi"
)

type _type = abi.Type
type ptrtype = abi.PtrType
type functype = abi.FuncType
type slicetype = abi.SliceType
type chantype = abi.ChanType
type structfield = abi.StructField
type uncommonType = abi.UncommonType

// Exported aliases ensure the compiler can reference runtime types via export data.
type PtrType = abi.PtrType
type SliceType = abi.SliceType
type ChanType = abi.ChanType
type StructType = abi.StructType
type ArrayType = abi.ArrayType
type MapType = abi.MapType
type StructField = abi.StructField
type UncommonType = abi.UncommonType

/*
type maptype = abi.MapType

type arraytype = abi.ArrayType

type chantype = abi.ChanType

type slicetype = abi.SliceType

type functype = abi.FuncType

type ptrtype = abi.PtrType

type name = abi.Name

type structtype = abi.StructType
*/
