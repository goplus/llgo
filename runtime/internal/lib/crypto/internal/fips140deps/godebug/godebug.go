// Copyright 2024 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package godebug

import igodebug "internal/godebug"

type Setting = igodebug.Setting

func New(name string) *Setting {
	return igodebug.New(name)
}

func Value(name string) string {
	s := igodebug.New(name)
	return s.Value()
}
