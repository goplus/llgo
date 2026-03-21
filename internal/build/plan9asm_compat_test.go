package build

import "testing"

func TestIgnorePkgSFilesListFailureForRuntimeInternalAtomic(t *testing.T) {
	if !shouldIgnorePkgSFilesListFailure("runtime/internal/atomic", "package runtime/internal/atomic is not in std") {
		t.Fatal("expected runtime/internal/atomic stdlib mismatch to be ignored")
	}
	if !shouldIgnorePkgSFilesListFailure("runtime/internal/atomic", "package internal/runtime/atomic is not in std") {
		t.Fatal("expected remapped internal/runtime/atomic stdlib mismatch to be ignored")
	}
	if shouldIgnorePkgSFilesListFailure("internal/runtime/atomic", "package runtime/internal/atomic is not in std") {
		t.Fatal("unexpected ignore for different package path")
	}
	if shouldIgnorePkgSFilesListFailure("runtime/internal/atomic", "some other failure") {
		t.Fatal("unexpected ignore for unrelated failure")
	}
}

func TestIgnorePkgSFilesListFailureForRuntimeInternalSyscall(t *testing.T) {
	if !shouldIgnorePkgSFilesListFailure("runtime/internal/syscall", "package runtime/internal/syscall is not in std") {
		t.Fatal("expected runtime/internal/syscall stdlib mismatch to be ignored")
	}
	if !shouldIgnorePkgSFilesListFailure("runtime/internal/syscall", "package internal/runtime/syscall is not in std") {
		t.Fatal("expected remapped internal/runtime/syscall stdlib mismatch to be ignored")
	}
	if shouldIgnorePkgSFilesListFailure("runtime/internal/syscall", "some other failure") {
		t.Fatal("unexpected ignore for unrelated failure")
	}
}

func TestPkgSFilesLookupPathForRuntimeInternalPackages(t *testing.T) {
	if got := pkgSFilesLookupPath("runtime/internal/atomic"); got != "internal/runtime/atomic" {
		t.Fatalf("unexpected atomic lookup path: %q", got)
	}
	if got := pkgSFilesLookupPath("runtime/internal/syscall"); got != "internal/runtime/syscall" {
		t.Fatalf("unexpected syscall lookup path: %q", got)
	}
	if got := pkgSFilesLookupPath("syscall"); got != "syscall" {
		t.Fatalf("unexpected passthrough path: %q", got)
	}
}
