package runtime

import "testing"

func TestMakeTypeAssertionErrorImplementsRuntimeError(t *testing.T) {
	errv := MakeTypeAssertionError("interface{}", nil, "int", "")
	if _, ok := errv.(interface{ RuntimeError() }); !ok {
		t.Fatalf("MakeTypeAssertionError() = %T, want runtime.Error-compatible value", errv)
	}
	if got := errv.(error).Error(); got != "interface conversion: interface{} is nil, not int" {
		t.Fatalf("MakeTypeAssertionError().Error() = %q", got)
	}
}
