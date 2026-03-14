package runtime

import "testing"

func TestMakeTypeAssertionErrorImplementsRuntimeError(t *testing.T) {
	errv := MakeTypeAssertionError("interface{}", "int")
	if _, ok := errv.(interface{ RuntimeError() }); !ok {
		t.Fatalf("MakeTypeAssertionError() = %T, want runtime.Error-compatible value", errv)
	}
	if got := errv.(error).Error(); got != "type assertion interface{} -> int failed" {
		t.Fatalf("MakeTypeAssertionError().Error() = %q", got)
	}
}
