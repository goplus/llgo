package smtp_test

import (
	"bytes"
	"net/smtp"
	"testing"
)

func TestPlainAuth(t *testing.T) {
	a := smtp.PlainAuth("", "user", "pass", "smtp.example.com")

	if _, _, err := a.Start(&smtp.ServerInfo{Name: "smtp.example.com", TLS: false, Auth: []string{"PLAIN"}}); err == nil {
		t.Fatal("expected PlainAuth to reject non-TLS remote server")
	}

	proto, resp, err := a.Start(&smtp.ServerInfo{Name: "smtp.example.com", TLS: true, Auth: []string{"PLAIN"}})
	if err != nil {
		t.Fatalf("Start (TLS): %v", err)
	}
	if proto != "PLAIN" {
		t.Fatalf("proto = %q, want %q", proto, "PLAIN")
	}
	wantResp := []byte("\x00user\x00pass")
	if !bytes.Equal(resp, wantResp) {
		t.Fatalf("resp = %q, want %q", resp, wantResp)
	}

	next, err := a.Next(nil, false)
	if err != nil {
		t.Fatalf("Next: %v", err)
	}
	if next != nil {
		t.Fatalf("Next returned %q, want nil", next)
	}
}

func TestCRAMMD5Auth(t *testing.T) {
	a := smtp.CRAMMD5Auth("user", "secret")

	proto, initResp, err := a.Start(&smtp.ServerInfo{Name: "smtp.example.com", TLS: true, Auth: []string{"CRAM-MD5"}})
	if err != nil {
		t.Fatalf("Start: %v", err)
	}
	if proto != "CRAM-MD5" {
		t.Fatalf("proto = %q, want %q", proto, "CRAM-MD5")
	}
	if initResp != nil {
		t.Fatalf("initial response = %q, want nil", initResp)
	}

	challenge := []byte("<12345.67890@localhost>")
	resp, err := a.Next(challenge, true)
	if err != nil {
		t.Fatalf("Next challenge: %v", err)
	}
	if !bytes.HasPrefix(resp, []byte("user ")) {
		t.Fatalf("response = %q, want prefix %q", resp, "user ")
	}

	finalResp, err := a.Next(nil, false)
	if err != nil {
		t.Fatalf("Next final: %v", err)
	}
	if finalResp != nil {
		t.Fatalf("final response = %q, want nil", finalResp)
	}
}

func TestPublicAPISymbols(t *testing.T) {
	_ = smtp.SendMail
	_ = smtp.Dial
	_ = smtp.NewClient
	_ = smtp.CRAMMD5Auth
	_ = smtp.PlainAuth

	_ = (*smtp.Client).Auth
	_ = (*smtp.Client).Close
	_ = (*smtp.Client).Data
	_ = (*smtp.Client).Extension
	_ = (*smtp.Client).Hello
	_ = (*smtp.Client).Mail
	_ = (*smtp.Client).Noop
	_ = (*smtp.Client).Quit
	_ = (*smtp.Client).Rcpt
	_ = (*smtp.Client).Reset
	_ = (*smtp.Client).StartTLS
	_ = (*smtp.Client).TLSConnectionState
	_ = (*smtp.Client).Verify

	var _ smtp.Auth
	var _ smtp.ServerInfo
}
