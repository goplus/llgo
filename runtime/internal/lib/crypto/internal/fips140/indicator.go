// Copyright 2024 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package fips140

import (
	_ "unsafe"

	"github.com/goplus/llgo/runtime/internal/clite/tls"
)

// The service indicator lets users of the module query whether invoked services
// are approved. Three states are stored in a per-goroutine value by the
// runtime. The indicator starts at indicatorUnset after a reset. Invoking an
// approved service transitions to indicatorTrue. Invoking a non-approved
// service transitions to indicatorFalse, and it can't leave that state until a
// reset. The idea is that functions can "delegate" checks to inner functions,
// and if there's anything non-approved in the stack, the final result is
// negative. Finally, we expose indicatorUnset as negative to the user, so that
// we don't need to explicitly annotate fully non-approved services.

var idTLS = tls.Alloc[uint8](func(head *uint8) {
	if head != nil {
		*head = indicatorUnset
	}
})

func getIndicator() uint8 {
	return idTLS.Get()
}

func setIndicator(v uint8) {
	idTLS.Set(v)
}

const (
	indicatorUnset uint8 = iota
	indicatorFalse
	indicatorTrue
)

func fatal(s string) {
	print("fatal error: ", s, "\n")
}
