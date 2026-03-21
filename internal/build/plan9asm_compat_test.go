package build

import "testing"

func TestIgnorePkgSFilesListFailureForRuntimeInternalAtomic(t *testing.T) {
	if !shouldIgnorePkgSFilesListFailure("runtime/internal/atomic", "package runtime/internal/atomic is not in std") {
		t.Fatal("expected runtime/internal/atomic stdlib mismatch to be ignored")
	}
	if shouldIgnorePkgSFilesListFailure("internal/runtime/atomic", "package runtime/internal/atomic is not in std") {
		t.Fatal("unexpected ignore for different package path")
	}
	if shouldIgnorePkgSFilesListFailure("runtime/internal/atomic", "some other failure") {
		t.Fatal("unexpected ignore for unrelated failure")
	}
}
