//go:build llgo
// +build llgo

package test

import (
	"testing"

	"github.com/goplus/lib/c"
	"github.com/goplus/lib/c/setjmp"
)

func TestSetjmpPreservesUpdatedLocalAcrossLongjmp(t *testing.T) {
	var jb setjmp.JmpBuf
	var count c.Int
	ret := setjmp.Setjmp(&jb)
	if ret == 0 {
		count++
		setjmp.Longjmp(&jb, count)
	}
	if want := c.Int(1); ret != want || count != want {
		t.Fatalf("after longjmp: ret=%d count=%d, want 1/1", ret, count)
	}
}
