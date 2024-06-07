//go:build !linux
// +build !linux

package c

import _ "unsafe"

//go:linkname Stdin __stdinp
var Stdin FilePtr

//go:linkname Stdout __stdoutp
var Stdout FilePtr

//go:linkname Stderr __stderrp
var Stderr FilePtr
