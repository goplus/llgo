package quick_test

import (
	"math/rand"
	"reflect"
	"testing"
	"testing/quick"
)

type evenInt int

func (evenInt) Generate(r *rand.Rand, _ int) reflect.Value {
	return reflect.ValueOf(evenInt(r.Intn(100) * 2))
}

var _ quick.Generator = evenInt(0)

func TestCheckSymbolsAndConfig(t *testing.T) {
	_ = quick.Check
	_ = quick.CheckEqual

	cfg := quick.Config{
		MaxCount:      20,
		MaxCountScale: 1.0,
		Rand:          rand.New(rand.NewSource(1)),
		Values: func(args []reflect.Value, _ *rand.Rand) {
			for i := range args {
				args[i] = reflect.Zero(args[i].Type())
			}
		},
	}
	if cfg.MaxCount == 0 || cfg.MaxCountScale == 0 || cfg.Rand == nil || cfg.Values == nil {
		t.Fatalf("unexpected zero config fields")
	}

	ce := &quick.CheckError{Count: 1, In: []any{1}}
	if ce.Error() == "" {
		t.Fatalf("CheckError.Error returned empty string")
	}
}

func TestCheckEqualAndError(t *testing.T) {
	ce := &quick.CheckEqualError{CheckError: quick.CheckError{Count: 1, In: []any{1}}, Out1: []any{2}, Out2: []any{3}}
	if len(ce.Out1) == 0 || len(ce.Out2) == 0 {
		t.Fatalf("CheckEqualError outputs should be non-empty")
	}
	if ce.Error() == "" {
		t.Fatalf("CheckEqualError.Error returned empty string")
	}
}

func TestValueAndSetupError(t *testing.T) {
	v, ok := quick.Value(reflect.TypeOf(evenInt(0)), rand.New(rand.NewSource(4)))
	if !ok {
		t.Fatalf("Value returned ok=false")
	}
	if got := int(v.Interface().(evenInt)); got%2 != 0 {
		t.Fatalf("generated evenInt = %d, want even", got)
	}

	se := quick.SetupError("bad setup")
	if se.Error() == "" {
		t.Fatalf("SetupError.Error returned empty string")
	}
}
