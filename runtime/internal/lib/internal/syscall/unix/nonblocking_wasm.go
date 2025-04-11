// Copyright 2023 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package unix

import (
	_ "unsafe" // for go:linkname
)

func IsNonblock(fd int) (nonblocking bool, err error) {
	panic("not implemented")
}

func HasNonblockFlag(flag int) bool {
	panic("not implemented")
}
