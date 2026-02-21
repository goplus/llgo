package fcgi_test

import (
	"errors"
	"net"
	"net/http"
	"net/http/fcgi"
	"testing"
)

type errListener struct{}

func (errListener) Accept() (net.Conn, error) { return nil, errors.New("accept failed") }
func (errListener) Close() error              { return nil }
func (errListener) Addr() net.Addr            { return &net.TCPAddr{} }

func TestProcessEnvDefault(t *testing.T) {
	req, err := http.NewRequest(http.MethodGet, "http://example.com/", nil)
	if err != nil {
		t.Fatalf("NewRequest: %v", err)
	}
	if env := fcgi.ProcessEnv(req); env != nil {
		t.Fatalf("ProcessEnv = %#v, want nil for non-fcgi request", env)
	}
}

func TestServeAcceptError(t *testing.T) {
	err := fcgi.Serve(errListener{}, nil)
	if err == nil {
		t.Fatal("Serve returned nil error, want accept error")
	}
	if err.Error() != "accept failed" {
		t.Fatalf("Serve error = %q, want %q", err.Error(), "accept failed")
	}
}

func TestPublicAPISymbols(t *testing.T) {
	if fcgi.ErrConnClosed == nil {
		t.Fatal("ErrConnClosed is nil")
	}
	if fcgi.ErrRequestAborted == nil {
		t.Fatal("ErrRequestAborted is nil")
	}

	_ = fcgi.ProcessEnv
	_ = fcgi.Serve
}
