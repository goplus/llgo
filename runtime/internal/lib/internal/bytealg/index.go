// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package bytealg

const MaxBruteForce = 16

func init() {
	MaxLen = 32
}

// Cutover reports the number of failures of IndexByte we should tolerate
// before switching over to Index.
func Cutover(n int) int {
	return 4 + n>>4
}

func Index(a, b []byte) int {
	n := len(b)
	switch {
	case n == 0:
		return 0
	case n == 1:
		return IndexByte(a, b[0])
	case n > len(a):
		return -1
	}
	for i := 0; i+n <= len(a); i++ {
		if a[i] != b[0] {
			continue
		}
		if string(a[i:i+n]) == string(b) {
			return i
		}
	}
	return -1
}

func IndexString(a, b string) int {
	n := len(b)
	switch {
	case n == 0:
		return 0
	case n == 1:
		return IndexByteString(a, b[0])
	case n > len(a):
		return -1
	}
	for i := 0; i+n <= len(a); i++ {
		if a[i] != b[0] {
			continue
		}
		if a[i:i+n] == b {
			return i
		}
	}
	return -1
}

func IndexByte(b []byte, c byte) int {
	for i, x := range b {
		if x == c {
			return i
		}
	}
	return -1
}

func IndexByteString(s string, c byte) int {
	for i := 0; i < len(s); i++ {
		if s[i] == c {
			return i
		}
	}
	return -1
}
