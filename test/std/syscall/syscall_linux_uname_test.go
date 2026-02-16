//go:build linux

package syscall_test

import (
	"syscall"
	"testing"
)

func cString(b []int8) string {
	n := 0
	for n < len(b) && b[n] != 0 {
		n++
	}
	r := make([]byte, n)
	for i := 0; i < n; i++ {
		r[i] = byte(b[i])
	}
	return string(r)
}

func TestLinuxUname(t *testing.T) {
	var u syscall.Utsname
	if err := syscall.Uname(&u); err != nil {
		t.Fatalf("Uname: %v", err)
	}
	sysname := cString(u.Sysname[:])
	release := cString(u.Release[:])
	if sysname == "" || release == "" {
		t.Fatalf("Uname fields empty: sysname=%q release=%q", sysname, release)
	}
}
