package gob_test

import (
	"bytes"
	"encoding/gob"
	"reflect"
	"strconv"
	"testing"
)

type payload struct {
	Name string
	N    int
}

type altPayload struct {
	Value string
}

type customInt int

func (c customInt) GobEncode() ([]byte, error) {
	return []byte(strconv.Itoa(int(c))), nil
}

func (c *customInt) GobDecode(data []byte) error {
	v, err := strconv.Atoi(string(data))
	if err != nil {
		return err
	}
	*c = customInt(v)
	return nil
}

func TestEncodeDecode(t *testing.T) {
	var buf bytes.Buffer
	enc := gob.NewEncoder(&buf)
	dec := gob.NewDecoder(&buf)

	in := payload{Name: "alice", N: 7}
	if err := enc.Encode(in); err != nil {
		t.Fatalf("Encode: %v", err)
	}

	var out payload
	if err := dec.Decode(&out); err != nil {
		t.Fatalf("Decode: %v", err)
	}
	if out != in {
		t.Fatalf("Decode result = %+v, want %+v", out, in)
	}
}

func TestEncodeValueDecodeValue(t *testing.T) {
	var buf bytes.Buffer
	enc := gob.NewEncoder(&buf)
	dec := gob.NewDecoder(&buf)

	in := payload{Name: "bob", N: 9}
	if err := enc.EncodeValue(reflect.ValueOf(in)); err != nil {
		t.Fatalf("EncodeValue: %v", err)
	}

	out := payload{}
	if err := dec.DecodeValue(reflect.ValueOf(&out).Elem()); err != nil {
		t.Fatalf("DecodeValue: %v", err)
	}
	if out != in {
		t.Fatalf("DecodeValue result = %+v, want %+v", out, in)
	}
}

func TestRegisterAndCustomGobTypes(t *testing.T) {
	gob.Register(payload{})
	gob.RegisterName("custom/alt_payload", altPayload{})

	var buf bytes.Buffer
	enc := gob.NewEncoder(&buf)
	dec := gob.NewDecoder(&buf)

	in := customInt(123)
	if err := enc.Encode(in); err != nil {
		t.Fatalf("Encode customInt: %v", err)
	}

	var out customInt
	if err := dec.Decode(&out); err != nil {
		t.Fatalf("Decode customInt: %v", err)
	}
	if out != in {
		t.Fatalf("customInt decode = %d, want %d", out, in)
	}
}

func TestPublicAPISymbols(t *testing.T) {
	_ = gob.Register
	_ = gob.RegisterName
	_ = gob.NewEncoder
	_ = gob.NewDecoder

	_ = gob.CommonType{}
	_ = gob.Encoder{}
	_ = gob.Decoder{}

	var _ gob.GobEncoder = customInt(1)
	var _ gob.GobDecoder = (*customInt)(nil)
}
