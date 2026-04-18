package gotest

import (
	"reflect"
	"testing"
)

func genericLocalRuntimeType[T any]() reflect.Type {
	type local struct {
		value T
	}
	return reflect.TypeOf(local{})
}

func TestGenericLocalRuntimeTypesIncludeOuterArgs(t *testing.T) {
	intType := genericLocalRuntimeType[int]()
	stringType := genericLocalRuntimeType[string]()
	if intType == stringType {
		t.Fatalf("local generic runtime types are identical: %v", intType)
	}
}
