// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

//go:build js && wasm

package syscall

type Stat_t struct {
	Dev       int64
	Ino       uint64
	Mode      uint32
	Nlink     uint32
	Uid       uint32
	Gid       uint32
	Rdev      int64
	Size      int64
	Blksize   int32
	Blocks    int32
	Atime     int64
	AtimeNsec int64
	Mtime     int64
	MtimeNsec int64
	Ctime     int64
	CtimeNsec int64
}
