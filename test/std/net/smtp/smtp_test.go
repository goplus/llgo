package smtp_test

import (
	"bufio"
	"bytes"
	"crypto/tls"
	"net"
	"net/smtp"
	"strings"
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

	var _ smtp.Auth
	var _ smtp.ServerInfo
}

func TestClientMethodFlow(t *testing.T) {
	client, done := newSMTPClient(t, func(conn net.Conn) {
		r := bufio.NewReader(conn)
		w := bufio.NewWriter(conn)
		writeSMTPLine(t, w, "220 localhost ESMTP")

		expectSMTPPrefix(t, r, "EHLO ")
		writeSMTPLine(t, w, "250-localhost")
		writeSMTPLine(t, w, "250-AUTH PLAIN")
		writeSMTPLine(t, w, "250 HELP")

		expectSMTPPrefix(t, r, "AUTH PLAIN ")
		writeSMTPLine(t, w, "235 2.7.0 auth ok")

		expectSMTPPrefix(t, r, "MAIL FROM:")
		writeSMTPLine(t, w, "250 2.1.0 ok")

		expectSMTPPrefix(t, r, "RCPT TO:")
		writeSMTPLine(t, w, "250 2.1.5 ok")

		expectSMTPLine(t, r, "DATA")
		writeSMTPLine(t, w, "354 end with <CRLF>.<CRLF>")
		readSMTPData(t, r)
		writeSMTPLine(t, w, "250 2.0.0 queued")

		expectSMTPLine(t, r, "NOOP")
		writeSMTPLine(t, w, "250 2.0.0 ok")

		expectSMTPLine(t, r, "RSET")
		writeSMTPLine(t, w, "250 2.0.0 reset")

		expectSMTPPrefix(t, r, "VRFY ")
		writeSMTPLine(t, w, "250 user verified")

		expectSMTPLine(t, r, "QUIT")
		writeSMTPLine(t, w, "221 2.0.0 bye")
	})
	defer waitSMTPDone(t, done)

	ok, param := client.Extension("AUTH")
	if !ok || !strings.Contains(param, "PLAIN") {
		t.Fatalf("Extension(AUTH) = (%v,%q), want true with PLAIN", ok, param)
	}

	auth := smtp.PlainAuth("", "user", "pass", "localhost")
	if err := client.Auth(auth); err != nil {
		t.Fatalf("Auth: %v", err)
	}
	if err := client.Mail("sender@example.com"); err != nil {
		t.Fatalf("Mail: %v", err)
	}
	if err := client.Rcpt("rcpt@example.com"); err != nil {
		t.Fatalf("Rcpt: %v", err)
	}
	wc, err := client.Data()
	if err != nil {
		t.Fatalf("Data: %v", err)
	}
	if _, err := wc.Write([]byte("Subject: test\r\n\r\nhello\r\n")); err != nil {
		t.Fatalf("Data.Write: %v", err)
	}
	if err := wc.Close(); err != nil {
		t.Fatalf("Data.Close: %v", err)
	}
	if err := client.Noop(); err != nil {
		t.Fatalf("Noop: %v", err)
	}
	if err := client.Reset(); err != nil {
		t.Fatalf("Reset: %v", err)
	}
	if err := client.Verify("user"); err != nil {
		t.Fatalf("Verify: %v", err)
	}
	if err := client.Quit(); err != nil {
		t.Fatalf("Quit: %v", err)
	}
}

func TestClientHelloCloseAndStartTLSError(t *testing.T) {
	client, done := newSMTPClient(t, func(conn net.Conn) {
		r := bufio.NewReader(conn)
		w := bufio.NewWriter(conn)
		writeSMTPLine(t, w, "220 localhost ESMTP")

		expectSMTPLine(t, r, "EHLO llgo.local")
		writeSMTPLine(t, w, "250 localhost")
	})
	if err := client.Hello("llgo.local"); err != nil {
		t.Fatalf("Hello: %v", err)
	}
	if _, ok := client.TLSConnectionState(); ok {
		t.Fatal("TLSConnectionState ok=true before STARTTLS")
	}
	if err := client.StartTLS(&tls.Config{InsecureSkipVerify: true}); err == nil {
		t.Fatal("StartTLS should fail without STARTTLS extension")
	}
	if err := client.Close(); err != nil {
		t.Fatalf("Close: %v", err)
	}
	waitSMTPDone(t, done)
}

func TestDial(t *testing.T) {
	ln, err := net.Listen("tcp", "127.0.0.1:0")
	if err != nil {
		t.Fatalf("Listen: %v", err)
	}
	defer ln.Close()

	serverDone := make(chan error, 1)
	go func() {
		conn, err := ln.Accept()
		if err != nil {
			serverDone <- err
			return
		}
		defer conn.Close()
		w := bufio.NewWriter(conn)
		writeSMTPLine(t, w, "220 localhost ESMTP")
		serverDone <- nil
	}()

	c, err := smtp.Dial(ln.Addr().String())
	if err != nil {
		t.Fatalf("Dial: %v", err)
	}
	if err := c.Close(); err != nil {
		t.Fatalf("Close after Dial: %v", err)
	}
	if err := <-serverDone; err != nil {
		t.Fatalf("server accept: %v", err)
	}
}

func newSMTPClient(t *testing.T, serve func(conn net.Conn)) (*smtp.Client, chan error) {
	t.Helper()
	sconn, cconn := net.Pipe()
	done := make(chan error, 1)
	go func() {
		defer sconn.Close()
		serve(sconn)
		done <- nil
	}()

	client, err := smtp.NewClient(cconn, "localhost")
	if err != nil {
		_ = cconn.Close()
		t.Fatalf("NewClient: %v", err)
	}
	return client, done
}

func expectSMTPLine(t *testing.T, r *bufio.Reader, want string) {
	t.Helper()
	line, err := r.ReadString('\n')
	if err != nil {
		t.Fatalf("ReadString: %v", err)
	}
	got := strings.TrimRight(line, "\r\n")
	if got != want {
		t.Fatalf("SMTP line = %q, want %q", got, want)
	}
}

func expectSMTPPrefix(t *testing.T, r *bufio.Reader, prefix string) {
	t.Helper()
	line, err := r.ReadString('\n')
	if err != nil {
		t.Fatalf("ReadString: %v", err)
	}
	got := strings.TrimRight(line, "\r\n")
	if !strings.HasPrefix(got, prefix) {
		t.Fatalf("SMTP line = %q, want prefix %q", got, prefix)
	}
}

func writeSMTPLine(t *testing.T, w *bufio.Writer, line string) {
	t.Helper()
	if _, err := w.WriteString(line + "\r\n"); err != nil {
		t.Fatalf("WriteString: %v", err)
	}
	if err := w.Flush(); err != nil {
		t.Fatalf("Flush: %v", err)
	}
}

func readSMTPData(t *testing.T, r *bufio.Reader) {
	t.Helper()
	for {
		line, err := r.ReadString('\n')
		if err != nil {
			t.Fatalf("Read data: %v", err)
		}
		if strings.TrimRight(line, "\r\n") == "." {
			return
		}
	}
}

func waitSMTPDone(t *testing.T, done chan error) {
	t.Helper()
	if err := <-done; err != nil {
		t.Fatalf("smtp server goroutine: %v", err)
	}
}
