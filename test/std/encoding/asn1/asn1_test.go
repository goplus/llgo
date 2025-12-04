//go:build !llgo

package asn1_test

import (
	"encoding/asn1"
	"reflect"
	"testing"
)

func TestMarshalUnmarshal(t *testing.T) {
	testCases := []struct {
		name  string
		value interface{}
	}{
		{"int", 42},
		{"bool", true},
		{"string", "hello"},
		{"bytes", []byte{1, 2, 3, 4}},
	}

	for _, tc := range testCases {
		t.Run(tc.name, func(t *testing.T) {
			data, err := asn1.Marshal(tc.value)
			if err != nil {
				t.Fatalf("Marshal failed: %v", err)
			}

			var result interface{}
			switch tc.value.(type) {
			case int:
				var v int
				_, err = asn1.Unmarshal(data, &v)
				result = v
			case bool:
				var v bool
				_, err = asn1.Unmarshal(data, &v)
				result = v
			case string:
				var v string
				_, err = asn1.Unmarshal(data, &v)
				result = v
			case []byte:
				var v []byte
				_, err = asn1.Unmarshal(data, &v)
				result = v
			}

			if err != nil {
				t.Fatalf("Unmarshal failed: %v", err)
			}

			if !reflect.DeepEqual(result, tc.value) {
				t.Errorf("Round trip failed: got %v, want %v", result, tc.value)
			}
		})
	}
}

func TestObjectIdentifier(t *testing.T) {
	oid := asn1.ObjectIdentifier{1, 2, 840, 113549}

	data, err := asn1.Marshal(oid)
	if err != nil {
		t.Fatalf("Marshal failed: %v", err)
	}

	var result asn1.ObjectIdentifier
	_, err = asn1.Unmarshal(data, &result)
	if err != nil {
		t.Fatalf("Unmarshal failed: %v", err)
	}

	if !result.Equal(oid) {
		t.Errorf("OID mismatch: got %v, want %v", result, oid)
	}

	if result.String() != "1.2.840.113549" {
		t.Errorf("String: got %q, want %q", result.String(), "1.2.840.113549")
	}
}

func TestBitString(t *testing.T) {
	bs := asn1.BitString{
		Bytes:     []byte{0xFF, 0x80},
		BitLength: 9,
	}

	if bs.At(0) != 1 {
		t.Error("At(0) should be 1")
	}
	if bs.At(8) != 1 {
		t.Error("At(8) should be 1")
	}
	if bs.At(9) != 0 {
		t.Error("At(9) should be 0")
	}

	rb := bs.RightAlign()
	if len(rb) == 0 {
		t.Error("RightAlign returned empty slice")
	}

	data, err := asn1.Marshal(bs)
	if err != nil {
		t.Fatalf("Marshal failed: %v", err)
	}

	var result asn1.BitString
	_, err = asn1.Unmarshal(data, &result)
	if err != nil {
		t.Fatalf("Unmarshal failed: %v", err)
	}

	if result.BitLength != bs.BitLength {
		t.Errorf("BitLength: got %d, want %d", result.BitLength, bs.BitLength)
	}
}

func TestEnumerated(t *testing.T) {
	var enum asn1.Enumerated = 5

	data, err := asn1.Marshal(enum)
	if err != nil {
		t.Fatalf("Marshal failed: %v", err)
	}

	var result asn1.Enumerated
	_, err = asn1.Unmarshal(data, &result)
	if err != nil {
		t.Fatalf("Unmarshal failed: %v", err)
	}

	if result != enum {
		t.Errorf("Enumerated: got %d, want %d", result, enum)
	}
}

func TestFlag(t *testing.T) {
	var flag asn1.Flag = true

	data, err := asn1.Marshal(flag)
	if err != nil {
		t.Fatalf("Marshal failed: %v", err)
	}

	var result asn1.Flag
	_, err = asn1.Unmarshal(data, &result)
	if err != nil {
		t.Fatalf("Unmarshal failed: %v", err)
	}

	if result != flag {
		t.Errorf("Flag: got %v, want %v", result, flag)
	}
}

func TestNullBytes(t *testing.T) {
	if len(asn1.NullBytes) == 0 {
		t.Error("NullBytes should not be empty")
	}

	var null interface{}
	_, err := asn1.Unmarshal(asn1.NullBytes, &null)
	if err != nil {
		t.Logf("Unmarshal NullBytes: %v", err)
	}
}

func TestNullRawValue(t *testing.T) {
	nrv := asn1.NullRawValue

	if nrv.Tag != asn1.TagNull {
		t.Errorf("NullRawValue.Tag: got %d, want %d", nrv.Tag, asn1.TagNull)
	}
}

func TestRawValue(t *testing.T) {
	rv := asn1.RawValue{
		Tag:   asn1.TagInteger,
		Bytes: []byte{42},
	}

	data, err := asn1.Marshal(rv)
	if err != nil {
		t.Fatalf("Marshal failed: %v", err)
	}

	var result asn1.RawValue
	_, err = asn1.Unmarshal(data, &result)
	if err != nil {
		t.Fatalf("Unmarshal failed: %v", err)
	}

	if result.Tag != rv.Tag {
		t.Errorf("Tag: got %d, want %d", result.Tag, rv.Tag)
	}
}

func TestRawContent(t *testing.T) {
	type testStruct struct {
		A int
		B asn1.RawContent
	}

	ts := testStruct{A: 42, B: []byte{0x02, 0x01, 0x05}}

	data, err := asn1.Marshal(ts)
	if err != nil {
		t.Fatalf("Marshal failed: %v", err)
	}

	var result testStruct
	_, err = asn1.Unmarshal(data, &result)
	if err != nil {
		t.Fatalf("Unmarshal failed: %v", err)
	}

	if result.A != ts.A {
		t.Errorf("A: got %d, want %d", result.A, ts.A)
	}
}

func TestStructuralError(t *testing.T) {
	se := asn1.StructuralError{Msg: "test error"}

	errMsg := se.Error()
	if errMsg != "asn1: structure error: test error" {
		t.Errorf("Error: got %q", errMsg)
	}
}

func TestSyntaxError(t *testing.T) {
	se := asn1.SyntaxError{Msg: "invalid syntax"}

	errMsg := se.Error()
	if errMsg != "asn1: syntax error: invalid syntax" {
		t.Errorf("Error: got %q", errMsg)
	}
}

func TestMarshalWithParams(t *testing.T) {
	value := 42
	data, err := asn1.MarshalWithParams(value, "")
	if err != nil {
		t.Fatalf("MarshalWithParams failed: %v", err)
	}

	var result int
	_, err = asn1.Unmarshal(data, &result)
	if err != nil {
		t.Fatalf("Unmarshal failed: %v", err)
	}

	if result != value {
		t.Errorf("Round trip: got %d, want %d", result, value)
	}
}

func TestUnmarshalWithParams(t *testing.T) {
	value := 42
	data, err := asn1.Marshal(value)
	if err != nil {
		t.Fatalf("Marshal failed: %v", err)
	}

	var result int
	_, err = asn1.UnmarshalWithParams(data, &result, "")
	if err != nil {
		t.Fatalf("UnmarshalWithParams failed: %v", err)
	}

	if result != value {
		t.Errorf("UnmarshalWithParams: got %d, want %d", result, value)
	}
}

func TestTagConstants(t *testing.T) {
	tags := map[string]int{
		"TagBoolean":         asn1.TagBoolean,
		"TagInteger":         asn1.TagInteger,
		"TagBitString":       asn1.TagBitString,
		"TagOctetString":     asn1.TagOctetString,
		"TagNull":            asn1.TagNull,
		"TagOID":             asn1.TagOID,
		"TagEnum":            asn1.TagEnum,
		"TagUTF8String":      asn1.TagUTF8String,
		"TagSequence":        asn1.TagSequence,
		"TagSet":             asn1.TagSet,
		"TagNumericString":   asn1.TagNumericString,
		"TagPrintableString": asn1.TagPrintableString,
		"TagT61String":       asn1.TagT61String,
		"TagIA5String":       asn1.TagIA5String,
		"TagUTCTime":         asn1.TagUTCTime,
		"TagGeneralizedTime": asn1.TagGeneralizedTime,
		"TagGeneralString":   asn1.TagGeneralString,
		"TagBMPString":       asn1.TagBMPString,
	}

	for name, tag := range tags {
		if tag < 0 {
			t.Errorf("%s should be non-negative, got %d", name, tag)
		}
	}
}

func TestClassConstants(t *testing.T) {
	classes := map[string]int{
		"ClassUniversal":       asn1.ClassUniversal,
		"ClassApplication":     asn1.ClassApplication,
		"ClassContextSpecific": asn1.ClassContextSpecific,
		"ClassPrivate":         asn1.ClassPrivate,
	}

	for name, class := range classes {
		if class < 0 {
			t.Errorf("%s should be non-negative, got %d", name, class)
		}
	}
}

func TestInvalidData(t *testing.T) {
	invalidData := [][]byte{
		{},
		{0xFF},
		{0x02, 0xFF, 0x00},
	}

	for i, data := range invalidData {
		var v int
		_, err := asn1.Unmarshal(data, &v)
		if err == nil {
			t.Errorf("Test %d: Expected error for invalid data, got nil", i)
		}
	}
}
