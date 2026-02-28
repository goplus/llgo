package pprof_test

import (
	"net/http"
	"net/http/httptest"
	"net/http/pprof"
	"strings"
	"testing"
)

func TestIndexRoot(t *testing.T) {
	req := httptest.NewRequest(http.MethodGet, "/debug/pprof/", nil)
	rec := httptest.NewRecorder()
	pprof.Index(rec, req)

	if rec.Code != http.StatusOK {
		t.Fatalf("status = %d, want %d", rec.Code, http.StatusOK)
	}
	if !strings.Contains(rec.Body.String(), "profile") {
		t.Fatalf("unexpected Index response: %q", rec.Body.String())
	}
}

func TestCmdline(t *testing.T) {
	req := httptest.NewRequest(http.MethodGet, "/debug/pprof/cmdline", nil)
	rec := httptest.NewRecorder()
	pprof.Cmdline(rec, req)

	if rec.Code != http.StatusOK {
		t.Fatalf("status = %d, want %d", rec.Code, http.StatusOK)
	}
	if rec.Body.Len() == 0 {
		t.Fatal("cmdline response is empty")
	}
}

func TestHandlerFactory(t *testing.T) {
	h := pprof.Handler("goroutine")
	if h == nil {
		t.Fatal("Handler(goroutine) returned nil")
	}
}

func TestPublicAPISymbols(t *testing.T) {
	_ = pprof.Cmdline
	_ = pprof.Handler
	_ = pprof.Index
	_ = pprof.Profile
	_ = pprof.Symbol
	_ = pprof.Trace
}
