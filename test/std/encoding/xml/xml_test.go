package xml_test

import (
	"bytes"
	"encoding/xml"
	"io"
	"reflect"
	"strings"
	"testing"
)

type Person struct {
	XMLName xml.Name `xml:"person"`
	Name    string   `xml:"name"`
	Age     int      `xml:"age"`
}

type tokenSliceReader struct {
	toks []xml.Token
	i    int
}

func (r *tokenSliceReader) Token() (xml.Token, error) {
	if r.i >= len(r.toks) {
		return nil, io.EOF
	}
	t := r.toks[r.i]
	r.i++
	return t, nil
}

func TestMarshalUnmarshal(t *testing.T) {
	p := Person{Name: "Alice", Age: 20}
	data, err := xml.Marshal(p)
	if err != nil {
		t.Fatalf("Marshal: %v", err)
	}
	if !bytes.Contains(data, []byte("<name>Alice</name>")) {
		t.Fatalf("unexpected marshal output: %q", data)
	}

	dataIndent, err := xml.MarshalIndent(p, "", "  ")
	if err != nil {
		t.Fatalf("MarshalIndent: %v", err)
	}
	if !bytes.Contains(dataIndent, []byte("\n")) {
		t.Fatalf("expected indented output, got: %q", dataIndent)
	}

	var out Person
	if err := xml.Unmarshal(data, &out); err != nil {
		t.Fatalf("Unmarshal: %v", err)
	}
	if out.Name != "Alice" || out.Age != 20 {
		t.Fatalf("unmarshal result = %+v", out)
	}
}

func TestDecoderEncoderAndTokens(t *testing.T) {
	input := strings.NewReader(`<person><name>Bob</name><age>30</age></person>`)
	dec := xml.NewDecoder(input)
	if dec == nil {
		t.Fatal("NewDecoder returned nil")
	}

	var sawStart bool
	for {
		tok, err := dec.Token()
		if err == io.EOF {
			break
		}
		if err != nil {
			t.Fatalf("Token: %v", err)
		}
		switch tok.(type) {
		case xml.StartElement:
			sawStart = true
		}
	}
	if !sawStart {
		t.Fatal("did not see StartElement")
	}

	_ = dec.InputOffset()
	_, _ = dec.InputPos()

	tr := &tokenSliceReader{toks: []xml.Token{xml.StartElement{Name: xml.Name{Local: "x"}}, xml.EndElement{Name: xml.Name{Local: "x"}}}}
	dec2 := xml.NewTokenDecoder(tr)
	if _, err := dec2.RawToken(); err != nil {
		t.Fatalf("RawToken: %v", err)
	}
	dec3 := xml.NewDecoder(strings.NewReader(`<a><b></b></a>`))
	if _, err := dec3.Token(); err != nil { // consume <a>
		t.Fatalf("Token before Skip: %v", err)
	}
	if err := dec3.Skip(); err != nil { // skip to </a>
		t.Fatalf("Skip: %v", err)
	}

	var buf bytes.Buffer
	enc := xml.NewEncoder(&buf)
	enc.Indent("", "  ")
	if err := enc.EncodeElement(struct {
		Value string `xml:",chardata"`
	}{Value: "v"}, xml.StartElement{Name: xml.Name{Local: "x"}}); err != nil {
		t.Fatalf("EncodeElement: %v", err)
	}
	if err := enc.EncodeToken(xml.Comment("c")); err != nil {
		t.Fatalf("EncodeToken: %v", err)
	}
	if err := enc.Flush(); err != nil {
		t.Fatalf("Flush: %v", err)
	}
	if err := enc.Close(); err != nil {
		t.Fatalf("Close: %v", err)
	}
	if buf.Len() == 0 {
		t.Fatal("encoder output is empty")
	}
}

func TestEscapeAndCopies(t *testing.T) {
	var escaped bytes.Buffer
	xml.Escape(&escaped, []byte(`<a&b>`))
	if !strings.Contains(escaped.String(), "&lt;") {
		t.Fatalf("Escape output: %q", escaped.String())
	}

	escaped.Reset()
	if err := xml.EscapeText(&escaped, []byte(`<x>`)); err != nil {
		t.Fatalf("EscapeText: %v", err)
	}

	se := xml.StartElement{Name: xml.Name{Local: "n"}, Attr: []xml.Attr{{Name: xml.Name{Local: "k"}, Value: "v"}}}
	_ = se.Copy()
	_ = se.End()
	_ = xml.CharData("x").Copy()
	_ = xml.Comment("x").Copy()
	_ = xml.ProcInst{Target: "xml", Inst: []byte("version=\"1.0\"")}.Copy()
	_ = xml.Directive("x").Copy()
	_ = xml.CopyToken(se)
}

func TestErrorsAndSymbols(t *testing.T) {
	if got := (&xml.SyntaxError{}).Error(); got == "" {
		t.Fatal("SyntaxError.Error() is empty")
	}
	if got := (&xml.UnsupportedTypeError{Type: reflect.TypeOf(make(chan int))}).Error(); got == "" {
		t.Fatal("UnsupportedTypeError.Error() is empty")
	}
	if got := xml.UnmarshalError("x").Error(); got != "x" {
		t.Fatalf("UnmarshalError.Error() = %q", got)
	}
	if got := (&xml.TagPathError{}).Error(); got == "" {
		t.Fatal("TagPathError.Error() is empty")
	}

	_ = xml.Header
	_ = xml.HTMLAutoClose
	_ = xml.HTMLEntity

	_ = xml.Escape
	_ = xml.EscapeText
	_ = xml.Marshal
	_ = xml.MarshalIndent
	_ = xml.Unmarshal
	_ = xml.NewDecoder
	_ = xml.NewTokenDecoder
	_ = xml.NewEncoder
	_ = xml.CopyToken

	_ = (*xml.Decoder).Decode
	_ = (*xml.Decoder).DecodeElement
	_ = (*xml.Decoder).Token
	_ = (*xml.Decoder).RawToken
	_ = (*xml.Decoder).Skip
	_ = (*xml.Decoder).InputOffset
	_ = (*xml.Decoder).InputPos
	_ = (*xml.Encoder).Encode
	_ = (*xml.Encoder).EncodeElement
	_ = (*xml.Encoder).EncodeToken
	_ = (*xml.Encoder).Indent
	_ = (*xml.Encoder).Flush
	_ = (*xml.Encoder).Close

	var _ xml.Token = xml.StartElement{}
	var _ xml.Token = xml.EndElement{}
	var _ xml.Token = xml.CharData("x")
	var _ xml.Token = xml.Comment("x")
	var _ xml.Token = xml.Directive("x")
	var _ xml.Token = xml.ProcInst{}
	var _ xml.TokenReader = &tokenSliceReader{}

	_ = xml.Name{}
	_ = xml.Attr{}
	_ = xml.StartElement{}
	_ = xml.EndElement{}
	_ = xml.CharData("x")
	_ = xml.Comment("x")
	_ = xml.ProcInst{}
	_ = xml.Directive("x")
	_ = xml.Decoder{}
	_ = xml.Encoder{}
	_ = xml.SyntaxError{}
	_ = xml.UnmarshalError("")
	_ = xml.UnsupportedTypeError{}
	_ = xml.TagPathError{}

	var _ xml.Marshaler
	var _ xml.MarshalerAttr
	var _ xml.Unmarshaler
	var _ xml.UnmarshalerAttr
}
