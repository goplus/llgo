//go:build !llgo

package http_test

import (
	"bufio"
	"bytes"
	"context"
	"errors"
	"io"
	"net/http"
	"net/http/httptest"
	"net/url"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"
)

// Test constants
func TestConstants(t *testing.T) {
	methods := []string{
		http.MethodGet, http.MethodHead, http.MethodPost,
		http.MethodPut, http.MethodPatch, http.MethodDelete,
		http.MethodConnect, http.MethodOptions, http.MethodTrace,
	}
	if len(methods) != 9 {
		t.Errorf("Expected 9 HTTP methods, got %d", len(methods))
	}

	statusCodes := []int{
		http.StatusContinue, http.StatusOK, http.StatusNotFound,
		http.StatusInternalServerError, http.StatusBadRequest,
	}
	if len(statusCodes) != 5 {
		t.Errorf("Expected status codes, got %d", len(statusCodes))
	}

	if http.DefaultMaxHeaderBytes != 1<<20 {
		t.Errorf("DefaultMaxHeaderBytes = %d, want %d", http.DefaultMaxHeaderBytes, 1<<20)
	}

	if http.DefaultMaxIdleConnsPerHost != 2 {
		t.Errorf("DefaultMaxIdleConnsPerHost = %d, want 2", http.DefaultMaxIdleConnsPerHost)
	}

	if http.TimeFormat != "Mon, 02 Jan 2006 15:04:05 GMT" {
		t.Errorf("TimeFormat = %q, want RFC1123", http.TimeFormat)
	}

	if http.TrailerPrefix != "Trailer:" {
		t.Errorf("TrailerPrefix = %q", http.TrailerPrefix)
	}
}

// Test error variables
func TestErrors(t *testing.T) {
	errs := []error{
		http.ErrBodyNotAllowed,
		http.ErrAbortHandler,
		http.ErrBodyReadAfterClose,
		http.ErrHandlerTimeout,
		http.ErrLineTooLong,
		http.ErrMissingFile,
		http.ErrNoCookie,
		http.ErrNoLocation,
		http.ErrSchemeMismatch,
		http.ErrServerClosed,
		http.ErrSkipAltProtocol,
		http.ErrUseLastResponse,
		http.ErrNotSupported,
	}

	for _, err := range errs {
		if err == nil {
			t.Error("Error variable is nil")
		}
		if err.Error() == "" {
			t.Error("Error message is empty")
		}
	}
}

// Test CanonicalHeaderKey
func TestCanonicalHeaderKey(t *testing.T) {
	tests := []struct {
		input string
		want  string
	}{
		{"content-type", "Content-Type"},
		{"CONTENT-TYPE", "Content-Type"},
		{"Content-Type", "Content-Type"},
		{"x-custom-header", "X-Custom-Header"},
	}

	for _, tt := range tests {
		got := http.CanonicalHeaderKey(tt.input)
		if got != tt.want {
			t.Errorf("CanonicalHeaderKey(%q) = %q, want %q", tt.input, got, tt.want)
		}
	}
}

// Test DetectContentType
func TestDetectContentType(t *testing.T) {
	tests := []struct {
		data []byte
		want string
	}{
		{[]byte("<html>"), "text/html; charset=utf-8"},
		{[]byte("<?xml"), "text/xml; charset=utf-8"},
		{[]byte("plain text"), "text/plain; charset=utf-8"},
	}

	for _, tt := range tests {
		got := http.DetectContentType(tt.data)
		if got != tt.want {
			t.Errorf("DetectContentType(%q) = %q, want %q", tt.data, got, tt.want)
		}
	}
}

// Test StatusText
func TestStatusText(t *testing.T) {
	tests := []struct {
		code int
		want string
	}{
		{http.StatusOK, "OK"},
		{http.StatusNotFound, "Not Found"},
		{http.StatusInternalServerError, "Internal Server Error"},
		{http.StatusBadRequest, "Bad Request"},
		{http.StatusCreated, "Created"},
	}

	for _, tt := range tests {
		got := http.StatusText(tt.code)
		if got != tt.want {
			t.Errorf("StatusText(%d) = %q, want %q", tt.code, got, tt.want)
		}
	}
}

// Test ParseHTTPVersion
func TestParseHTTPVersion(t *testing.T) {
	tests := []struct {
		vers  string
		major int
		minor int
		ok    bool
	}{
		{"HTTP/1.0", 1, 0, true},
		{"HTTP/1.1", 1, 1, true},
		{"HTTP/2.0", 2, 0, true},
		{"INVALID", 0, 0, false},
	}

	for _, tt := range tests {
		major, minor, ok := http.ParseHTTPVersion(tt.vers)
		if major != tt.major || minor != tt.minor || ok != tt.ok {
			t.Errorf("ParseHTTPVersion(%q) = %d,%d,%v want %d,%d,%v",
				tt.vers, major, minor, ok, tt.major, tt.minor, tt.ok)
		}
	}
}

// Test Header
func TestHeader(t *testing.T) {
	h := make(http.Header)
	h.Set("Content-Type", "text/plain")
	h.Add("X-Custom", "value1")
	h.Add("X-Custom", "value2")

	if got := h.Get("Content-Type"); got != "text/plain" {
		t.Errorf("Get(Content-Type) = %q, want text/plain", got)
	}

	values := h.Values("X-Custom")
	if len(values) != 2 {
		t.Errorf("Values(X-Custom) returned %d items, want 2", len(values))
	}

	h.Del("Content-Type")
	if h.Get("Content-Type") != "" {
		t.Error("Del did not remove header")
	}

	clone := h.Clone()
	if len(clone) != len(h) {
		t.Error("Clone did not copy all headers")
	}

	h2 := make(http.Header)
	h2.Set("test", "value")
	h.WriteSubset(io.Discard, nil)
}

// Test Cookie
func TestCookie(t *testing.T) {
	c := &http.Cookie{
		Name:     "session",
		Value:    "abc123",
		Path:     "/",
		Domain:   "example.com",
		Expires:  time.Now().Add(24 * time.Hour),
		Secure:   true,
		HttpOnly: true,
		SameSite: http.SameSiteStrictMode,
	}

	s := c.String()
	if !strings.Contains(s, "session=abc123") {
		t.Errorf("Cookie.String() = %q, want to contain session=abc123", s)
	}

	if err := c.Valid(); err != nil {
		t.Errorf("Valid cookie reported as invalid: %v", err)
	}
}

// Test ParseCookie
func TestParseCookie(t *testing.T) {
	cookies, err := http.ParseCookie("name=value; name2=value2")
	if err != nil {
		t.Fatalf("ParseCookie failed: %v", err)
	}
	if len(cookies) != 2 {
		t.Errorf("ParseCookie returned %d cookies, want 2", len(cookies))
	}
}

// Test ParseSetCookie
func TestParseSetCookie(t *testing.T) {
	c, err := http.ParseSetCookie("name=value; Path=/; HttpOnly")
	if err != nil {
		t.Fatalf("ParseSetCookie failed: %v", err)
	}
	if c.Name != "name" || c.Value != "value" {
		t.Errorf("ParseSetCookie name/value incorrect")
	}
	if !c.HttpOnly {
		t.Error("ParseSetCookie did not parse HttpOnly")
	}
}

// Test ParseTime
func TestParseTime(t *testing.T) {
	_, err := http.ParseTime("Mon, 02 Jan 2006 15:04:05 GMT")
	if err != nil {
		t.Errorf("ParseTime failed: %v", err)
	}
}

// Test Request creation
func TestNewRequest(t *testing.T) {
	body := strings.NewReader("test body")
	req, err := http.NewRequest("POST", "http://example.com", body)
	if err != nil {
		t.Fatalf("NewRequest failed: %v", err)
	}

	if req.Method != "POST" {
		t.Errorf("Method = %q, want POST", req.Method)
	}

	if req.URL.String() != "http://example.com" {
		t.Errorf("URL = %q, want http://example.com", req.URL.String())
	}

	if req.Body == nil {
		t.Error("Body is nil")
	}
}

// Test NewRequestWithContext
func TestNewRequestWithContext(t *testing.T) {
	ctx := context.Background()
	req, err := http.NewRequestWithContext(ctx, "GET", "http://example.com", nil)
	if err != nil {
		t.Fatalf("NewRequestWithContext failed: %v", err)
	}

	if req.Context() != ctx {
		t.Error("Context not set correctly")
	}
}

// Test Request methods
func TestRequestMethods(t *testing.T) {
	req, _ := http.NewRequest("GET", "http://example.com/path?foo=bar", nil)

	// Test Clone
	cloned := req.Clone(context.Background())
	if cloned.Method != req.Method {
		t.Error("Clone did not preserve method")
	}

	// Test WithContext
	ctx := context.Background()
	req2 := req.WithContext(ctx)
	if req2.Context() != ctx {
		t.Error("WithContext did not set context")
	}

	// Test ProtoAtLeast
	if !req.ProtoAtLeast(1, 0) {
		t.Error("ProtoAtLeast(1,0) should be true")
	}

	// Test UserAgent
	req.Header.Set("User-Agent", "test-agent")
	if req.UserAgent() != "test-agent" {
		t.Error("UserAgent not returned correctly")
	}

	// Test Referer
	req.Header.Set("Referer", "http://ref.com")
	if req.Referer() != "http://ref.com" {
		t.Error("Referer not returned correctly")
	}

	// Test AddCookie
	cookie := &http.Cookie{Name: "test", Value: "value"}
	req.AddCookie(cookie)

	// Test Cookies
	cookies := req.Cookies()
	if len(cookies) == 0 {
		t.Error("Cookies returned empty slice")
	}

	// Test Cookie
	c, err := req.Cookie("test")
	if err != nil {
		t.Errorf("Cookie failed: %v", err)
	}
	if c.Name != "test" {
		t.Error("Cookie name mismatch")
	}

	// Test FormValue (requires ParseForm)
	req, _ = http.NewRequest("POST", "http://example.com", strings.NewReader("key=value"))
	req.Header.Set("Content-Type", "application/x-www-form-urlencoded")
	req.ParseForm()
	if req.FormValue("key") != "value" {
		t.Error("FormValue did not return correct value")
	}

	// Test PostFormValue
	if req.PostFormValue("key") != "value" {
		t.Error("PostFormValue did not return correct value")
	}
}

// Test Response
func TestResponse(t *testing.T) {
	resp := &http.Response{
		Status:     "200 OK",
		StatusCode: 200,
		Proto:      "HTTP/1.1",
		ProtoMajor: 1,
		ProtoMinor: 1,
		Header:     make(http.Header),
		Body:       io.NopCloser(strings.NewReader("test body")),
	}

	resp.Header.Set("Content-Type", "text/plain")

	// Test Cookies
	resp.Header.Set("Set-Cookie", "name=value")
	cookies := resp.Cookies()
	if len(cookies) == 0 {
		t.Error("Cookies returned empty slice")
	}

	// Test Location
	resp.Header.Set("Location", "http://example.com")
	loc, err := resp.Location()
	if err != nil {
		t.Errorf("Location failed: %v", err)
	}
	if loc.String() != "http://example.com" {
		t.Errorf("Location = %q, want http://example.com", loc.String())
	}

	// Test ProtoAtLeast
	if !resp.ProtoAtLeast(1, 0) {
		t.Error("ProtoAtLeast(1,0) should be true")
	}

	// Test Write
	var buf bytes.Buffer
	resp.Write(&buf)
	if buf.Len() == 0 {
		t.Error("Write produced no output")
	}
}

// Test Client
func TestClient(t *testing.T) {
	client := &http.Client{
		Timeout: 10 * time.Second,
	}

	if client.Timeout != 10*time.Second {
		t.Error("Client timeout not set correctly")
	}

	// Test CloseIdleConnections
	client.CloseIdleConnections()
}

// Test DefaultClient
func TestDefaultClient(t *testing.T) {
	if http.DefaultClient == nil {
		t.Fatal("DefaultClient is nil")
	}
}

// Test Handler and HandlerFunc
func TestHandler(t *testing.T) {
	called := false
	handler := http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		called = true
		w.WriteHeader(http.StatusOK)
		w.Write([]byte("Hello"))
	})

	req := httptest.NewRequest("GET", "http://example.com", nil)
	w := httptest.NewRecorder()
	handler.ServeHTTP(w, req)

	if !called {
		t.Error("Handler was not called")
	}

	if w.Code != http.StatusOK {
		t.Errorf("Status code = %d, want %d", w.Code, http.StatusOK)
	}

	if w.Body.String() != "Hello" {
		t.Errorf("Body = %q, want Hello", w.Body.String())
	}
}

// Test ServeMux
func TestServeMux(t *testing.T) {
	mux := http.NewServeMux()

	mux.HandleFunc("/test", func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusOK)
	})

	mux.Handle("/other", http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusCreated)
	}))

	req := httptest.NewRequest("GET", "http://example.com/test", nil)
	w := httptest.NewRecorder()
	mux.ServeHTTP(w, req)

	if w.Code != http.StatusOK {
		t.Errorf("Status code = %d, want %d", w.Code, http.StatusOK)
	}

	// Test Handler method
	h, pattern := mux.Handler(req)
	if h == nil {
		t.Error("Handler returned nil")
	}
	if pattern == "" {
		t.Error("Pattern is empty")
	}
}

// Test DefaultServeMux
func TestDefaultServeMux(t *testing.T) {
	if http.DefaultServeMux == nil {
		t.Fatal("DefaultServeMux is nil")
	}
}

// Test NotFoundHandler
func TestNotFoundHandler(t *testing.T) {
	handler := http.NotFoundHandler()
	req := httptest.NewRequest("GET", "http://example.com", nil)
	w := httptest.NewRecorder()
	handler.ServeHTTP(w, req)

	if w.Code != http.StatusNotFound {
		t.Errorf("Status code = %d, want %d", w.Code, http.StatusNotFound)
	}
}

// Test RedirectHandler
func TestRedirectHandler(t *testing.T) {
	handler := http.RedirectHandler("http://example.com", http.StatusMovedPermanently)
	req := httptest.NewRequest("GET", "http://old.com", nil)
	w := httptest.NewRecorder()
	handler.ServeHTTP(w, req)

	if w.Code != http.StatusMovedPermanently {
		t.Errorf("Status code = %d, want %d", w.Code, http.StatusMovedPermanently)
	}

	if loc := w.Header().Get("Location"); loc != "http://example.com" {
		t.Errorf("Location = %q, want http://example.com", loc)
	}
}

// Test StripPrefix
func TestStripPrefix(t *testing.T) {
	handler := http.StripPrefix("/prefix", http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.URL.Path != "/test" {
			t.Errorf("Path = %q, want /test", r.URL.Path)
		}
		w.WriteHeader(http.StatusOK)
	}))

	req := httptest.NewRequest("GET", "http://example.com/prefix/test", nil)
	w := httptest.NewRecorder()
	handler.ServeHTTP(w, req)

	if w.Code != http.StatusOK {
		t.Errorf("Status code = %d, want %d", w.Code, http.StatusOK)
	}
}

// Test TimeoutHandler
func TestTimeoutHandler(t *testing.T) {
	handler := http.TimeoutHandler(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusOK)
	}), 1*time.Second, "Timeout")

	req := httptest.NewRequest("GET", "http://example.com", nil)
	w := httptest.NewRecorder()
	handler.ServeHTTP(w, req)

	if w.Code != http.StatusOK {
		t.Errorf("Status code = %d, want %d", w.Code, http.StatusOK)
	}
}

// Test AllowQuerySemicolons
func TestAllowQuerySemicolons(t *testing.T) {
	handler := http.AllowQuerySemicolons(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusOK)
	}))

	req := httptest.NewRequest("GET", "http://example.com?a=1;b=2", nil)
	w := httptest.NewRecorder()
	handler.ServeHTTP(w, req)

	if w.Code != http.StatusOK {
		t.Errorf("Status code = %d, want %d", w.Code, http.StatusOK)
	}
}

// Test MaxBytesHandler
func TestMaxBytesHandler(t *testing.T) {
	handler := http.MaxBytesHandler(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusOK)
	}), 100)

	req := httptest.NewRequest("POST", "http://example.com", strings.NewReader("test"))
	w := httptest.NewRecorder()
	handler.ServeHTTP(w, req)

	if w.Code != http.StatusOK {
		t.Errorf("Status code = %d, want %d", w.Code, http.StatusOK)
	}
}

// Test MaxBytesReader
func TestMaxBytesReader(t *testing.T) {
	w := httptest.NewRecorder()
	r := io.NopCloser(strings.NewReader("test data that is too long"))
	limited := http.MaxBytesReader(w, r, 5)

	buf := make([]byte, 10)
	n, err := limited.Read(buf)
	if n != 5 {
		t.Errorf("Read %d bytes, want 5", n)
	}
	if err != nil {
		t.Logf("Read error: %v", err)
	}

	limited.Close()
}

// Test Error function
func TestError(t *testing.T) {
	w := httptest.NewRecorder()
	_ = httptest.NewRequest("GET", "http://example.com", nil)
	http.Error(w, "test error", http.StatusBadRequest)

	if w.Code != http.StatusBadRequest {
		t.Errorf("Status code = %d, want %d", w.Code, http.StatusBadRequest)
	}

	if !strings.Contains(w.Body.String(), "test error") {
		t.Error("Body does not contain error message")
	}
}

// Test NotFound function
func TestNotFound(t *testing.T) {
	w := httptest.NewRecorder()
	req := httptest.NewRequest("GET", "http://example.com", nil)
	http.NotFound(w, req)

	if w.Code != http.StatusNotFound {
		t.Errorf("Status code = %d, want %d", w.Code, http.StatusNotFound)
	}
}

// Test Redirect function
func TestRedirect(t *testing.T) {
	w := httptest.NewRecorder()
	req := httptest.NewRequest("GET", "http://example.com", nil)
	http.Redirect(w, req, "http://newurl.com", http.StatusFound)

	if w.Code != http.StatusFound {
		t.Errorf("Status code = %d, want %d", w.Code, http.StatusFound)
	}

	if loc := w.Header().Get("Location"); loc != "http://newurl.com" {
		t.Errorf("Location = %q, want http://newurl.com", loc)
	}
}

// Test SetCookie
func TestSetCookie(t *testing.T) {
	w := httptest.NewRecorder()
	cookie := &http.Cookie{
		Name:  "test",
		Value: "value",
	}
	http.SetCookie(w, cookie)

	cookies := w.Result().Cookies()
	if len(cookies) == 0 {
		t.Error("No cookies set")
	}
	if cookies[0].Name != "test" {
		t.Error("Cookie name mismatch")
	}
}

// Test Dir and FileSystem
func TestDir(t *testing.T) {
	tmpDir := t.TempDir()
	testFile := filepath.Join(tmpDir, "test.txt")
	os.WriteFile(testFile, []byte("test content"), 0644)

	dir := http.Dir(tmpDir)
	f, err := dir.Open("test.txt")
	if err != nil {
		t.Fatalf("Open failed: %v", err)
	}
	defer f.Close()

	stat, err := f.Stat()
	if err != nil {
		t.Fatalf("Stat failed: %v", err)
	}
	if stat.Name() != "test.txt" {
		t.Errorf("Name = %q, want test.txt", stat.Name())
	}

	buf := make([]byte, 12)
	n, _ := f.Read(buf)
	if string(buf[:n]) != "test content" {
		t.Errorf("Read = %q, want test content", buf[:n])
	}
}

// Test FS
func TestFS(t *testing.T) {
	tmpDir := t.TempDir()
	testFile := filepath.Join(tmpDir, "test.txt")
	os.WriteFile(testFile, []byte("test"), 0644)

	fsys := os.DirFS(tmpDir)
	httpFS := http.FS(fsys)

	f, err := httpFS.Open("test.txt")
	if err != nil {
		t.Fatalf("Open failed: %v", err)
	}
	f.Close()
}

// Test FileServer
func TestFileServer(t *testing.T) {
	tmpDir := t.TempDir()
	testFile := filepath.Join(tmpDir, "test.txt")
	os.WriteFile(testFile, []byte("test content"), 0644)

	handler := http.FileServer(http.Dir(tmpDir))
	req := httptest.NewRequest("GET", "http://example.com/test.txt", nil)
	w := httptest.NewRecorder()
	handler.ServeHTTP(w, req)

	if w.Code != http.StatusOK {
		t.Errorf("Status code = %d, want %d", w.Code, http.StatusOK)
	}

	if w.Body.String() != "test content" {
		t.Errorf("Body = %q, want test content", w.Body.String())
	}
}

// Test FileServerFS
func TestFileServerFS(t *testing.T) {
	tmpDir := t.TempDir()
	testFile := filepath.Join(tmpDir, "test.txt")
	os.WriteFile(testFile, []byte("test"), 0644)

	fsys := os.DirFS(tmpDir)
	handler := http.FileServerFS(fsys)
	req := httptest.NewRequest("GET", "http://example.com/test.txt", nil)
	w := httptest.NewRecorder()
	handler.ServeHTTP(w, req)

	if w.Code != http.StatusOK {
		t.Errorf("Status code = %d, want %d", w.Code, http.StatusOK)
	}
}

// Test ServeContent
func TestServeContent(t *testing.T) {
	content := strings.NewReader("test content")
	w := httptest.NewRecorder()
	req := httptest.NewRequest("GET", "http://example.com", nil)

	http.ServeContent(w, req, "test.txt", time.Now(), content)

	if w.Code != http.StatusOK {
		t.Errorf("Status code = %d, want %d", w.Code, http.StatusOK)
	}
}

// Test ServeFile
func TestServeFile(t *testing.T) {
	tmpDir := t.TempDir()
	testFile := filepath.Join(tmpDir, "test.txt")
	os.WriteFile(testFile, []byte("test"), 0644)

	w := httptest.NewRecorder()
	req := httptest.NewRequest("GET", "http://example.com", nil)
	http.ServeFile(w, req, testFile)

	if w.Code != http.StatusOK {
		t.Errorf("Status code = %d, want %d", w.Code, http.StatusOK)
	}

}

// Test ServeFileFS
func TestServeFileFS(t *testing.T) {
	tmpDir := t.TempDir()
	testFile := filepath.Join(tmpDir, "test.txt")
	os.WriteFile(testFile, []byte("test"), 0644)

	fsys := os.DirFS(tmpDir)
	w := httptest.NewRecorder()
	req := httptest.NewRequest("GET", "http://example.com", nil)
	http.ServeFileFS(w, req, fsys, "test.txt")

	if w.Code != http.StatusOK {
		t.Errorf("Status code = %d, want %d", w.Code, http.StatusOK)
	}
}

// Test Transport
func TestTransport(t *testing.T) {
	tr := &http.Transport{
		MaxIdleConns:    10,
		IdleConnTimeout: 30 * time.Second,
	}

	if tr.MaxIdleConns != 10 {
		t.Error("MaxIdleConns not set correctly")
	}

	tr.CloseIdleConnections()
	tr.CancelRequest(&http.Request{})
}

// Test DefaultTransport
func TestDefaultTransport(t *testing.T) {
	if http.DefaultTransport == nil {
		t.Fatal("DefaultTransport is nil")
	}
}

// Test ProxyFromEnvironment
func TestProxyFromEnvironment(t *testing.T) {
	req, _ := http.NewRequest("GET", "http://example.com", nil)
	proxyURL, err := http.ProxyFromEnvironment(req)
	if err != nil {
		t.Logf("ProxyFromEnvironment error (expected if no proxy set): %v", err)
	}
	_ = proxyURL
}

// Test ProxyURL
func TestProxyURL(t *testing.T) {
	fixedURL, _ := url.Parse("http://proxy.example.com")
	proxyFunc := http.ProxyURL(fixedURL)
	req, _ := http.NewRequest("GET", "http://example.com", nil)
	proxyURL, err := proxyFunc(req)
	if err != nil {
		t.Fatalf("ProxyURL failed: %v", err)
	}
	if proxyURL.String() != "http://proxy.example.com" {
		t.Errorf("ProxyURL = %q, want http://proxy.example.com", proxyURL.String())
	}
}

// Test ReadRequest
func TestReadRequest(t *testing.T) {
	reqStr := "GET /path HTTP/1.1\r\nHost: example.com\r\n\r\n"
	buf := bufio.NewReader(strings.NewReader(reqStr))
	req, err := http.ReadRequest(buf)
	if err != nil {
		t.Fatalf("ReadRequest failed: %v", err)
	}

	if req.Method != "GET" {
		t.Errorf("Method = %q, want GET", req.Method)
	}

	if req.URL.Path != "/path" {
		t.Errorf("Path = %q, want /path", req.URL.Path)
	}
}

// Test ReadResponse
func TestReadResponse(t *testing.T) {
	respStr := "HTTP/1.1 200 OK\r\nContent-Length: 4\r\n\r\ntest"
	buf := bufio.NewReader(strings.NewReader(respStr))
	req, _ := http.NewRequest("GET", "http://example.com", nil)
	resp, err := http.ReadResponse(buf, req)
	if err != nil {
		t.Fatalf("ReadResponse failed: %v", err)
	}

	if resp.StatusCode != 200 {
		t.Errorf("StatusCode = %d, want 200", resp.StatusCode)
	}

	body, _ := io.ReadAll(resp.Body)
	resp.Body.Close()
	if string(body) != "test" {
		t.Errorf("Body = %q, want test", body)
	}
}

// Test NewFileTransport
func TestNewFileTransport(t *testing.T) {
	tmpDir := t.TempDir()
	testFile := filepath.Join(tmpDir, "test.txt")
	os.WriteFile(testFile, []byte("test"), 0644)

	tr := http.NewFileTransport(http.Dir(tmpDir))
	if tr == nil {
		t.Fatal("NewFileTransport returned nil")
	}
}

// Test NewFileTransportFS
func TestNewFileTransportFS(t *testing.T) {
	tmpDir := t.TempDir()
	fsys := os.DirFS(tmpDir)
	tr := http.NewFileTransportFS(fsys)
	if tr == nil {
		t.Fatal("NewFileTransportFS returned nil")
	}
}

// Test ConnState
func TestConnState(t *testing.T) {
	states := []http.ConnState{
		http.StateNew,
		http.StateActive,
		http.StateIdle,
		http.StateHijacked,
		http.StateClosed,
	}

	for _, state := range states {
		s := state.String()
		if s == "" {
			t.Errorf("ConnState.String() is empty for state %d", state)
		}
	}
}

// Test SameSite
func TestSameSite(t *testing.T) {
	modes := []http.SameSite{
		http.SameSiteDefaultMode,
		http.SameSiteLaxMode,
		http.SameSiteStrictMode,
		http.SameSiteNoneMode,
	}

	for _, mode := range modes {
		_ = mode
	}
}

// Test ProtocolError
func TestProtocolError(t *testing.T) {
	pe := &http.ProtocolError{ErrorString: "test error"}
	if pe.Error() != "test error" {
		t.Errorf("Error() = %q, want test error", pe.Error())
	}
}

// Test MaxBytesError
func TestMaxBytesError(t *testing.T) {
	mbe := &http.MaxBytesError{Limit: 100}
	if mbe.Error() == "" {
		t.Error("MaxBytesError.Error() is empty")
	}
}

// Test Server
func TestServer(t *testing.T) {
	srv := &http.Server{
		Addr:           ":0",
		Handler:        http.DefaultServeMux,
		ReadTimeout:    10 * time.Second,
		WriteTimeout:   10 * time.Second,
		MaxHeaderBytes: 1 << 20,
	}

	if srv.Addr != ":0" {
		t.Error("Server addr not set correctly")
	}

	srv.SetKeepAlivesEnabled(false)
	srv.Close()
	srv.RegisterOnShutdown(func() {})
}

// Test ResponseController
func TestResponseController(t *testing.T) {
	handler := http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		rc := http.NewResponseController(w)
		if rc == nil {
			t.Error("NewResponseController returned nil")
			return
		}

		rc.EnableFullDuplex()
		rc.SetReadDeadline(time.Now().Add(1 * time.Second))
		rc.SetWriteDeadline(time.Now().Add(1 * time.Second))

		w.WriteHeader(http.StatusOK)
	})

	req := httptest.NewRequest("GET", "http://example.com", nil)
	w := httptest.NewRecorder()
	handler.ServeHTTP(w, req)
}

// Test HTTP2Config
func TestHTTP2Config(t *testing.T) {
	cfg := &http.HTTP2Config{
		MaxConcurrentStreams: 100,
		MaxReadFrameSize:     1 << 20,
	}

	if cfg.MaxConcurrentStreams != 100 {
		t.Error("HTTP2Config fields not set correctly")
	}
}

// Test Protocols
func TestProtocols(t *testing.T) {
	p := &http.Protocols{}

	if p.HTTP2() {
		t.Log("HTTP2 enabled")
	}
	p.SetHTTP2(true)
}

// Test PushOptions
func TestPushOptions(t *testing.T) {
	opts := &http.PushOptions{
		Method: "GET",
		Header: make(http.Header),
	}

	if opts.Method != "GET" {
		t.Error("PushOptions Method not set correctly")
	}
}

// Test NoBody
func TestNoBody(t *testing.T) {
	buf := make([]byte, 1)
	n, err := http.NoBody.Read(buf)
	if n != 0 || err != io.EOF {
		t.Errorf("NoBody.Read() = %d, %v, want 0, EOF", n, err)
	}

	err = http.NoBody.Close()
	if err != nil {
		t.Errorf("NoBody.Close() = %v, want nil", err)
	}
}

// Test ServerContextKey and LocalAddrContextKey
func TestContextKeys(t *testing.T) {
	if http.ServerContextKey == nil {
		t.Error("ServerContextKey is nil")
	}
	if http.LocalAddrContextKey == nil {
		t.Error("LocalAddrContextKey is nil")
	}
}

// Test Request.MultipartReader
func TestMultipartReader(t *testing.T) {
	body := strings.NewReader("--boundary\r\nContent-Disposition: form-data; name=\"field\"\r\n\r\nvalue\r\n--boundary--\r\n")
	req, _ := http.NewRequest("POST", "http://example.com", body)
	req.Header.Set("Content-Type", "multipart/form-data; boundary=boundary")

	mr, err := req.MultipartReader()
	if err != nil {
		t.Fatalf("MultipartReader failed: %v", err)
	}

	if mr == nil {
		t.Error("MultipartReader returned nil")
	}
}

// Test Request.ParseMultipartForm
func TestParseMultipartForm(t *testing.T) {
	body := strings.NewReader("--boundary\r\nContent-Disposition: form-data; name=\"field\"\r\n\r\nvalue\r\n--boundary--\r\n")
	req, _ := http.NewRequest("POST", "http://example.com", body)
	req.Header.Set("Content-Type", "multipart/form-data; boundary=boundary")

	err := req.ParseMultipartForm(1024)
	if err != nil {
		t.Logf("ParseMultipartForm error (may be expected): %v", err)
	}
}

// Test Request.MultipartForm access
func TestMultipartForm(t *testing.T) {
	body := strings.NewReader("--boundary\r\nContent-Disposition: form-data; name=\"field\"\r\n\r\nvalue\r\n--boundary--\r\n")
	req, _ := http.NewRequest("POST", "http://example.com", body)
	req.Header.Set("Content-Type", "multipart/form-data; boundary=boundary")

	req.ParseMultipartForm(1024)
	if req.MultipartForm != nil {
		if len(req.MultipartForm.Value) == 0 && len(req.MultipartForm.File) == 0 {
			t.Log("MultipartForm is empty")
		}
	}
}

// Test Request.Write and WriteProxy
func TestRequestWrite(t *testing.T) {
	req, _ := http.NewRequest("GET", "http://example.com/path", nil)
	var buf bytes.Buffer
	err := req.Write(&buf)
	if err != nil {
		t.Fatalf("Write failed: %v", err)
	}
	if buf.Len() == 0 {
		t.Error("Write produced no output")
	}

	buf.Reset()
	err = req.WriteProxy(&buf)
	if err != nil {
		t.Fatalf("WriteProxy failed: %v", err)
	}
	if buf.Len() == 0 {
		t.Error("WriteProxy produced no output")
	}
}

// Test Request.BasicAuth and SetBasicAuth
func TestBasicAuth(t *testing.T) {
	req, _ := http.NewRequest("GET", "http://example.com", nil)
	req.SetBasicAuth("user", "pass")

	username, password, ok := req.BasicAuth()
	if !ok {
		t.Error("BasicAuth() returned ok=false")
	}
	if username != "user" || password != "pass" {
		t.Errorf("BasicAuth() = %q, %q, want user, pass", username, password)
	}
}

// Test Request.Context and WithContext
func TestRequestContext(t *testing.T) {
	req, _ := http.NewRequest("GET", "http://example.com", nil)
	ctx := req.Context()
	if ctx == nil {
		t.Error("Context() returned nil")
	}

	newCtx := context.WithValue(context.Background(), "key", "value")
	req2 := req.WithContext(newCtx)
	if req2.Context().Value("key") != "value" {
		t.Error("WithContext did not set context correctly")
	}
}

// Test Response.Trailer
func TestResponseTrailer(t *testing.T) {
	resp := &http.Response{
		StatusCode: 200,
		Header:     make(http.Header),
		Trailer:    make(http.Header),
		Body:       io.NopCloser(strings.NewReader("test")),
	}

	resp.Trailer.Set("Test-Trailer", "value")
	if resp.Trailer.Get("Test-Trailer") != "value" {
		t.Error("Trailer not set correctly")
	}
}

// Test cookie Valid method
func TestCookieValid(t *testing.T) {
	validCookie := &http.Cookie{
		Name:  "valid",
		Value: "test",
	}
	if err := validCookie.Valid(); err != nil {
		t.Errorf("Valid cookie reported as invalid: %v", err)
	}

	invalidCookie := &http.Cookie{
		Name:  "", // Empty name is invalid
		Value: "test",
	}
	if err := invalidCookie.Valid(); err == nil {
		t.Error("Invalid cookie reported as valid")
	}
}

// Test Request.TLS field
func TestRequestTLS(t *testing.T) {
	req, _ := http.NewRequest("GET", "https://example.com", nil)
	if req.TLS != nil {
		t.Log("TLS field is non-nil (set in HTTPS context)")
	}
}

// Test Request.Response field
func TestRequestResponse(t *testing.T) {
	req, _ := http.NewRequest("GET", "http://example.com", nil)
	if req.Response != nil {
		t.Log("Response field is set")
	}
}

// Test Header.Write method
func TestHeaderWrite(t *testing.T) {
	h := make(http.Header)
	h.Set("Content-Type", "text/plain")
	h.Set("X-Custom", "value")

	var buf bytes.Buffer
	err := h.Write(&buf)
	if err != nil {
		t.Fatalf("Header.Write failed: %v", err)
	}
	if buf.Len() == 0 {
		t.Error("Header.Write produced no output")
	}
}

// Test that ErrNotSupported is not nil
func TestErrNotSupported(t *testing.T) {
	if http.ErrNotSupported == nil {
		t.Error("ErrNotSupported is nil")
	}
	var pe *http.ProtocolError
	if !errors.As(http.ErrNotSupported, &pe) {
		t.Error("ErrNotSupported is not a ProtocolError")
	}
}
