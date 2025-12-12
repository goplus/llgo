//go:build !llgo

package runtime_test

import (
	"runtime"
	"testing"
)

// Test PanicNilError type
func TestPanicNilError(t *testing.T) {
	var pne runtime.PanicNilError

	// Test RuntimeError method
	pne.RuntimeError()

	// Test Error method
	err := pne.Error()
	if err == "" {
		t.Error("PanicNilError.Error() returned empty string")
	}
	t.Logf("PanicNilError.Error() = %q", err)
}

// Test TypeAssertionError methods
func TestTypeAssertionError(t *testing.T) {
	// TypeAssertionError.Error() requires internal type pointers to be set
	// We can't easily construct one manually, so we trigger a type assertion error
	defer func() {
		if r := recover(); r != nil {
			if tae, ok := r.(*runtime.TypeAssertionError); ok {
				// Test RuntimeError method
				tae.RuntimeError()

				// Test Error method
				err := tae.Error()
				if err == "" {
					t.Error("TypeAssertionError.Error() returned empty string")
				}
				t.Logf("TypeAssertionError.Error() = %q", err)
			} else {
				t.Errorf("Expected *runtime.TypeAssertionError, got %T", r)
			}
		} else {
			t.Error("Expected panic with TypeAssertionError")
		}
	}()

	// Trigger a type assertion error
	var i interface{} = "string"
	_ = i.(int)
	t.Error("Should have panicked")
}
