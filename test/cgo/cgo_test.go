//go:build llgo
// +build llgo

package cgo

import (
	"syscall"
	"testing"
)

func TestCgoBasicCall(t *testing.T) {
	if got := Add(20, 22); got != 42 {
		t.Fatalf("c_add mismatch: got %d, want 42", got)
	}
}

func TestC2funcStructs(t *testing.T) {
	sum, err := SumStructs()
	if err != nil {
		t.Fatalf("unexpected errno: %v", err)
	}
	if got := sum; got != 35 {
		t.Fatalf("sum_structs mismatch: got %d, want 35", got)
	}
}

func TestC2funcErrno(t *testing.T) {
	v, err := ErrnoWrap(-1)
	if v != -1 {
		t.Fatalf("c_errno_wrap(-1) value mismatch: got %d, want -1", v)
	}
	if err == nil {
		t.Fatal("c_errno_wrap(-1) expected non-nil errno")
	}
	errno, ok := err.(syscall.Errno)
	if !ok || errno == 0 {
		t.Fatalf("unexpected errno type/value: %T %v", err, err)
	}

	v, err = ErrnoWrap(9)
	if err != nil {
		t.Fatalf("c_errno_wrap(9) unexpected errno: %v", err)
	}
	if got := v; got != 10 {
		t.Fatalf("c_errno_wrap(9) value mismatch: got %d, want 10", got)
	}
}
