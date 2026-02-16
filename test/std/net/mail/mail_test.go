package mail_test

import (
	"io"
	"net/mail"
	"strings"
	"testing"
	"time"
)

func TestAddressParsingAndFormatting(t *testing.T) {
	a, err := mail.ParseAddress("Alice <alice@example.com>")
	if err != nil {
		t.Fatalf("ParseAddress failed: %v", err)
	}
	if a.Name != "Alice" || a.Address != "alice@example.com" {
		t.Fatalf("ParseAddress returned %+v", a)
	}
	if got := a.String(); !strings.Contains(got, "alice@example.com") {
		t.Fatalf("Address.String unexpected: %q", got)
	}

	list, err := mail.ParseAddressList("Bob <bob@example.com>, carol@example.com")
	if err != nil {
		t.Fatalf("ParseAddressList failed: %v", err)
	}
	if len(list) != 2 {
		t.Fatalf("ParseAddressList len=%d, want 2", len(list))
	}
}

func TestAddressParserAndHeader(t *testing.T) {
	p := &mail.AddressParser{}
	a, err := p.Parse("Dan <dan@example.com>")
	if err != nil {
		t.Fatalf("AddressParser.Parse failed: %v", err)
	}
	if a.Address != "dan@example.com" {
		t.Fatalf("AddressParser.Parse address=%q", a.Address)
	}
	if _, err := p.ParseList("Eve <eve@example.com>, frank@example.com"); err != nil {
		t.Fatalf("AddressParser.ParseList failed: %v", err)
	}

	h := mail.Header{
		"From": []string{"Grace <grace@example.com>"},
		"To":   []string{"Heidi <heidi@example.com>, ivan@example.com"},
		"Date": []string{"Mon, 02 Jan 2006 15:04:05 -0700"},
	}
	if got := h.Get("from"); !strings.Contains(got, "grace@example.com") {
		t.Fatalf("Header.Get returned %q", got)
	}
	toList, err := h.AddressList("To")
	if err != nil {
		t.Fatalf("Header.AddressList failed: %v", err)
	}
	if len(toList) != 2 {
		t.Fatalf("Header.AddressList len=%d, want 2", len(toList))
	}
	d, err := h.Date()
	if err != nil {
		t.Fatalf("Header.Date failed: %v", err)
	}
	if d.Year() != 2006 {
		t.Fatalf("Header.Date year=%d, want 2006", d.Year())
	}
	if _, err := (mail.Header{}).Date(); err != mail.ErrHeaderNotPresent {
		t.Fatalf("empty Header.Date error=%v, want ErrHeaderNotPresent", err)
	}
}

func TestReadMessageAndParseDate(t *testing.T) {
	raw := "From: A <a@example.com>\r\n" +
		"Date: Mon, 02 Jan 2006 15:04:05 -0700\r\n" +
		"\r\nhello body"
	msg, err := mail.ReadMessage(strings.NewReader(raw))
	if err != nil {
		t.Fatalf("ReadMessage failed: %v", err)
	}
	// Reference exported Message type explicitly.
	var _ *mail.Message = msg

	body, err := io.ReadAll(msg.Body)
	if err != nil {
		t.Fatalf("ReadAll body failed: %v", err)
	}
	if got := string(body); got != "hello body" {
		t.Fatalf("message body=%q, want %q", got, "hello body")
	}

	d, err := mail.ParseDate("Mon, 02 Jan 2006 15:04:05 -0700")
	if err != nil {
		t.Fatalf("ParseDate failed: %v", err)
	}
	if d.Location() == time.UTC && d.Hour() != 15 {
		t.Fatalf("ParseDate result unexpected: %v", d)
	}
}
