package cgi_test

import (
	"net/http/cgi"
	"testing"
)

func TestRequestFromMap(t *testing.T) {
	req, err := cgi.RequestFromMap(map[string]string{
		"REQUEST_METHOD":  "POST",
		"SERVER_PROTOCOL": "HTTP/1.1",
		"HTTP_HOST":       "example.com",
		"REQUEST_URI":     "/cgi-bin/app?x=1&y=2",
		"SCRIPT_NAME":     "/cgi-bin/app",
		"QUERY_STRING":    "x=1&y=2",
		"REMOTE_ADDR":     "127.0.0.1",
	})
	if err != nil {
		t.Fatalf("RequestFromMap: %v", err)
	}
	if req.Method != "POST" {
		t.Fatalf("Method = %q, want POST", req.Method)
	}
	if req.URL.Path != "/cgi-bin/app" {
		t.Fatalf("URL.Path = %q, want /cgi-bin/app", req.URL.Path)
	}
	if req.URL.RawQuery != "x=1&y=2" {
		t.Fatalf("URL.RawQuery = %q, want x=1&y=2", req.URL.RawQuery)
	}
	if req.Host != "example.com" {
		t.Fatalf("Host = %q, want example.com", req.Host)
	}
}

func TestRequestWithoutCGIEnv(t *testing.T) {
	t.Setenv("REQUEST_METHOD", "")
	if _, err := cgi.Request(); err == nil {
		t.Fatal("expected cgi.Request to fail without CGI environment")
	}
}

func TestPublicAPISymbols(t *testing.T) {
	_ = cgi.Request
	_ = cgi.RequestFromMap
	_ = cgi.Serve
	_ = (*cgi.Handler).ServeHTTP

	_ = cgi.Handler{}
}
