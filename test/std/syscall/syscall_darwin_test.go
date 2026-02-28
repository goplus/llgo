//go:build darwin

package syscall_test

import (
	"strings"
	"syscall"
	"testing"
)

func TestDarwinSysctl(t *testing.T) {
	v, err := syscall.Sysctl("kern.ostype")
	if err != nil {
		t.Fatalf("Sysctl(kern.ostype): %v", err)
	}
	if v == "" {
		t.Fatal("Sysctl(kern.ostype) empty")
	}
	if !strings.Contains(strings.ToLower(v), "darwin") {
		t.Fatalf("unexpected kern.ostype: %q", v)
	}
}
