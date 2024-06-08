//go:build linux
// +build linux

package c

import _ "unsafe"

//go:linkname Stdin stdin
var Stdin FilePtr

//go:linkname Stdout stdout
var Stdout FilePtr

//go:linkname Stderr stderr
var Stderr FilePtr
