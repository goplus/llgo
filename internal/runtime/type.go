// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Runtime type representation.

package runtime

import (
	"github.com/goplus/llgo/internal/abi"
)

// type nameOff = abi.NameOff
// type typeOff = abi.TypeOff

type _type = abi.Type

type interfacetype = abi.InterfaceType
