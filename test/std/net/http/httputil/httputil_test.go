package httputil_test

import (
	"bytes"
	"io"
	"net/http"
	"net/http/httptest"
	"net/http/httputil"
	"net/url"
	"strings"
	"testing"
)

type bytePool struct{}

func (bytePool) Get() []byte { return make([]byte, 0, 1024) }
func (bytePool) Put([]byte)  {}

func TestDumpHelpers(t *testing.T) {
	req := httptest.NewRequest(http.MethodPost, "http://example.com/path?q=1", strings.NewReader("abc"))
	dumpReq, err := httputil.DumpRequest(req, true)
	if err != nil {
		t.Fatalf("DumpRequest: %v", err)
	}
	if !strings.Contains(string(dumpReq), "POST http://example.com/path?q=1") {
		t.Fatalf("unexpected DumpRequest output: %q", dumpReq)
	}

	outReq, _ := http.NewRequest(http.MethodGet, "http://example.com/hello", nil)
	dumpOut, err := httputil.DumpRequestOut(outReq, false)
	if err != nil {
		t.Fatalf("DumpRequestOut: %v", err)
	}
	if !strings.Contains(string(dumpOut), "GET /hello") {
		t.Fatalf("unexpected DumpRequestOut output: %q", dumpOut)
	}

	resp := &http.Response{
		StatusCode: 200,
		Status:     "200 OK",
		ProtoMajor: 1,
		ProtoMinor: 1,
		Header:     make(http.Header),
		Body:       io.NopCloser(strings.NewReader("ok")),
	}
	resp.Header.Set("X-Test", "1")
	dumpResp, err := httputil.DumpResponse(resp, true)
	if err != nil {
		t.Fatalf("DumpResponse: %v", err)
	}
	if !strings.Contains(string(dumpResp), "200 OK") {
		t.Fatalf("unexpected DumpResponse output: %q", dumpResp)
	}
}

func TestChunkedReaderWriter(t *testing.T) {
	var buf bytes.Buffer
	w := httputil.NewChunkedWriter(&buf)
	if _, err := w.Write([]byte("hello")); err != nil {
		t.Fatalf("chunked write: %v", err)
	}
	if err := w.Close(); err != nil {
		t.Fatalf("chunked close: %v", err)
	}

	r := httputil.NewChunkedReader(bytes.NewReader(buf.Bytes()))
	got, err := io.ReadAll(r)
	if err != nil {
		t.Fatalf("chunked read: %v", err)
	}
	if string(got) != "hello" {
		t.Fatalf("chunked roundtrip = %q, want %q", got, "hello")
	}
}

func TestProxyRequestHelpers(t *testing.T) {
	in := httptest.NewRequest(http.MethodGet, "http://in.example/dir?a=1", nil)
	out := in.Clone(in.Context())
	pr := &httputil.ProxyRequest{In: in, Out: out}

	target, err := url.Parse("http://upstream.example/base")
	if err != nil {
		t.Fatalf("Parse target: %v", err)
	}
	pr.SetURL(target)
	if !strings.Contains(pr.Out.URL.Path, "/base/dir") {
		t.Fatalf("SetURL path = %q", pr.Out.URL.Path)
	}

	pr.SetXForwarded()
	if pr.Out.Header.Get("X-Forwarded-Host") == "" {
		t.Fatal("X-Forwarded-Host not set")
	}
}

func TestReverseProxy(t *testing.T) {
	backend := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		_, _ = io.WriteString(w, r.Method+" "+r.URL.Path)
	}))
	defer backend.Close()

	target, err := url.Parse(backend.URL)
	if err != nil {
		t.Fatalf("Parse backend URL: %v", err)
	}
	proxy := httputil.NewSingleHostReverseProxy(target)

	front := httptest.NewServer(proxy)
	defer front.Close()

	resp, err := http.Get(front.URL + "/echo")
	if err != nil {
		t.Fatalf("GET via proxy: %v", err)
	}
	defer resp.Body.Close()
	body, _ := io.ReadAll(resp.Body)
	if !strings.Contains(string(body), "GET /echo") {
		t.Fatalf("unexpected proxy response: %q", body)
	}
}

func TestPublicAPISymbols(t *testing.T) {
	if httputil.ErrPersistEOF == nil || httputil.ErrClosed == nil || httputil.ErrPipeline == nil || httputil.ErrLineTooLong == nil {
		t.Fatal("expected exported errors to be non-nil")
	}

	_ = httputil.DumpRequest
	_ = httputil.DumpRequestOut
	_ = httputil.DumpResponse
	_ = httputil.NewChunkedReader
	_ = httputil.NewChunkedWriter
	_ = httputil.NewClientConn
	_ = httputil.NewProxyClientConn
	_ = httputil.NewSingleHostReverseProxy
	_ = httputil.NewServerConn

	_ = (*httputil.ClientConn).Close
	_ = (*httputil.ClientConn).Do
	_ = (*httputil.ClientConn).Hijack
	_ = (*httputil.ClientConn).Pending
	_ = (*httputil.ClientConn).Read
	_ = (*httputil.ClientConn).Write

	_ = (*httputil.ProxyRequest).SetURL
	_ = (*httputil.ProxyRequest).SetXForwarded
	_ = (*httputil.ReverseProxy).ServeHTTP

	_ = (*httputil.ServerConn).Close
	_ = (*httputil.ServerConn).Hijack
	_ = (*httputil.ServerConn).Pending
	_ = (*httputil.ServerConn).Read
	_ = (*httputil.ServerConn).Write

	var _ httputil.BufferPool = bytePool{}

	_ = httputil.ClientConn{}
	_ = httputil.ProxyRequest{}
	_ = httputil.ReverseProxy{}
	_ = httputil.ServerConn{}
}
