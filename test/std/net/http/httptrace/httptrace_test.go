//go:build !llgo

package httptrace_test

import (
	"context"
	"crypto/tls"
	"net"
	"net/http/httptrace"
	"net/textproto"
	"testing"
	"time"
)

// Test WithClientTrace
func TestWithClientTrace(t *testing.T) {
	trace := &httptrace.ClientTrace{}
	ctx := context.Background()

	newCtx := httptrace.WithClientTrace(ctx, trace)
	if newCtx == nil {
		t.Fatal("WithClientTrace returned nil context")
	}

	if newCtx == ctx {
		t.Error("WithClientTrace returned same context")
	}
}

// Test ContextClientTrace
func TestContextClientTrace(t *testing.T) {
	// Context without trace
	ctx := context.Background()
	trace := httptrace.ContextClientTrace(ctx)
	if trace != nil {
		t.Error("ContextClientTrace returned non-nil for context without trace")
	}

	// Context with trace
	originalTrace := &httptrace.ClientTrace{}
	ctx = httptrace.WithClientTrace(ctx, originalTrace)
	retrievedTrace := httptrace.ContextClientTrace(ctx)
	if retrievedTrace != originalTrace {
		t.Error("ContextClientTrace did not return original trace")
	}
}

// Test ClientTrace struct and hooks
func TestClientTrace(t *testing.T) {
	var (
		getConnCalled           bool
		gotConnCalled           bool
		putIdleConnCalled       bool
		gotFirstResponseCalled  bool
		got100ContinueCalled    bool
		got1xxResponseCalled    bool
		dnsStartCalled          bool
		dnsDoneCalled           bool
		connectStartCalled      bool
		connectDoneCalled       bool
		tlsHandshakeStartCalled bool
		tlsHandshakeDoneCalled  bool
		wroteHeadersCalled      bool
		waitCalled              bool
		wroteRequestCalled      bool
	)

	trace := &httptrace.ClientTrace{
		GetConn: func(hostPort string) {
			getConnCalled = true
		},
		GotConn: func(info httptrace.GotConnInfo) {
			gotConnCalled = true
		},
		PutIdleConn: func(err error) {
			putIdleConnCalled = true
		},
		GotFirstResponseByte: func() {
			gotFirstResponseCalled = true
		},
		Got100Continue: func() {
			got100ContinueCalled = true
		},
		Got1xxResponse: func(code int, header textproto.MIMEHeader) error {
			got1xxResponseCalled = true
			return nil
		},
		DNSStart: func(info httptrace.DNSStartInfo) {
			dnsStartCalled = true
		},
		DNSDone: func(info httptrace.DNSDoneInfo) {
			dnsDoneCalled = true
		},
		ConnectStart: func(network, addr string) {
			connectStartCalled = true
		},
		ConnectDone: func(network, addr string, err error) {
			connectDoneCalled = true
		},
		TLSHandshakeStart: func() {
			tlsHandshakeStartCalled = true
		},
		TLSHandshakeDone: func(state tls.ConnectionState, err error) {
			tlsHandshakeDoneCalled = true
		},
		WroteHeaders: func() {
			wroteHeadersCalled = true
		},
		Wait100Continue: func() {
			waitCalled = true
		},
		WroteRequest: func(info httptrace.WroteRequestInfo) {
			wroteRequestCalled = true
		},
	}

	// Verify all hooks are set
	if trace.GetConn == nil {
		t.Error("GetConn hook is nil")
	}
	if trace.GotConn == nil {
		t.Error("GotConn hook is nil")
	}
	if trace.PutIdleConn == nil {
		t.Error("PutIdleConn hook is nil")
	}
	if trace.GotFirstResponseByte == nil {
		t.Error("GotFirstResponseByte hook is nil")
	}
	if trace.Got100Continue == nil {
		t.Error("Got100Continue hook is nil")
	}
	if trace.Got1xxResponse == nil {
		t.Error("Got1xxResponse hook is nil")
	}
	if trace.DNSStart == nil {
		t.Error("DNSStart hook is nil")
	}
	if trace.DNSDone == nil {
		t.Error("DNSDone hook is nil")
	}
	if trace.ConnectStart == nil {
		t.Error("ConnectStart hook is nil")
	}
	if trace.ConnectDone == nil {
		t.Error("ConnectDone hook is nil")
	}
	if trace.TLSHandshakeStart == nil {
		t.Error("TLSHandshakeStart hook is nil")
	}
	if trace.TLSHandshakeDone == nil {
		t.Error("TLSHandshakeDone hook is nil")
	}
	if trace.WroteHeaders == nil {
		t.Error("WroteHeaders hook is nil")
	}
	if trace.Wait100Continue == nil {
		t.Error("Wait100Continue hook is nil")
	}
	if trace.WroteRequest == nil {
		t.Error("WroteRequest hook is nil")
	}

	// Test that hooks can be called
	trace.GetConn("example.com:80")
	if !getConnCalled {
		t.Error("GetConn hook not called")
	}

	trace.GotConn(httptrace.GotConnInfo{})
	if !gotConnCalled {
		t.Error("GotConn hook not called")
	}

	trace.PutIdleConn(nil)
	if !putIdleConnCalled {
		t.Error("PutIdleConn hook not called")
	}

	trace.GotFirstResponseByte()
	if !gotFirstResponseCalled {
		t.Error("GotFirstResponseByte hook not called")
	}

	trace.Got100Continue()
	if !got100ContinueCalled {
		t.Error("Got100Continue hook not called")
	}

	trace.Got1xxResponse(100, nil)
	if !got1xxResponseCalled {
		t.Error("Got1xxResponse hook not called")
	}

	trace.DNSStart(httptrace.DNSStartInfo{})
	if !dnsStartCalled {
		t.Error("DNSStart hook not called")
	}

	trace.DNSDone(httptrace.DNSDoneInfo{})
	if !dnsDoneCalled {
		t.Error("DNSDone hook not called")
	}

	trace.ConnectStart("tcp", "example.com:80")
	if !connectStartCalled {
		t.Error("ConnectStart hook not called")
	}

	trace.ConnectDone("tcp", "example.com:80", nil)
	if !connectDoneCalled {
		t.Error("ConnectDone hook not called")
	}

	trace.TLSHandshakeStart()
	if !tlsHandshakeStartCalled {
		t.Error("TLSHandshakeStart hook not called")
	}

	trace.TLSHandshakeDone(tls.ConnectionState{}, nil)
	if !tlsHandshakeDoneCalled {
		t.Error("TLSHandshakeDone hook not called")
	}

	trace.WroteHeaders()
	if !wroteHeadersCalled {
		t.Error("WroteHeaders hook not called")
	}

	trace.Wait100Continue()
	if !waitCalled {
		t.Error("Wait100Continue hook not called")
	}

	trace.WroteRequest(httptrace.WroteRequestInfo{})
	if !wroteRequestCalled {
		t.Error("WroteRequest hook not called")
	}
}

// Test DNSStartInfo struct
func TestDNSStartInfo(t *testing.T) {
	info := httptrace.DNSStartInfo{
		Host: "example.com",
	}

	if info.Host != "example.com" {
		t.Errorf("Host = %q, want example.com", info.Host)
	}
}

// Test DNSDoneInfo struct
func TestDNSDoneInfo(t *testing.T) {
	info := httptrace.DNSDoneInfo{
		Addrs: []net.IPAddr{
			{IP: net.ParseIP("1.2.3.4")},
		},
		Err:       nil,
		Coalesced: false,
	}

	if len(info.Addrs) != 1 {
		t.Errorf("len(Addrs) = %d, want 1", len(info.Addrs))
	}

	if info.Err != nil {
		t.Error("Err should be nil")
	}

	if info.Coalesced {
		t.Error("Coalesced should be false")
	}
}

// Test GotConnInfo struct
func TestGotConnInfo(t *testing.T) {
	now := time.Now()
	info := httptrace.GotConnInfo{
		Conn:     nil,
		Reused:   true,
		WasIdle:  true,
		IdleTime: 5 * time.Second,
	}

	if !info.Reused {
		t.Error("Reused should be true")
	}

	if !info.WasIdle {
		t.Error("WasIdle should be true")
	}

	if info.IdleTime != 5*time.Second {
		t.Errorf("IdleTime = %v, want 5s", info.IdleTime)
	}

	_ = now
}

// Test WroteRequestInfo struct
func TestWroteRequestInfo(t *testing.T) {
	info := httptrace.WroteRequestInfo{
		Err: nil,
	}

	if info.Err != nil {
		t.Error("Err should be nil")
	}
}

// Test empty ClientTrace
func TestEmptyClientTrace(t *testing.T) {
	trace := &httptrace.ClientTrace{}
	ctx := httptrace.WithClientTrace(context.Background(), trace)

	retrieved := httptrace.ContextClientTrace(ctx)
	if retrieved != trace {
		t.Error("Retrieved trace does not match original")
	}
}

// Test nil trace handling - WithClientTrace panics on nil, so we skip this test

// Test multiple trace contexts
func TestMultipleTraceContexts(t *testing.T) {
	trace1 := &httptrace.ClientTrace{}
	trace2 := &httptrace.ClientTrace{}

	ctx1 := httptrace.WithClientTrace(context.Background(), trace1)
	ctx2 := httptrace.WithClientTrace(context.Background(), trace2)

	retrieved1 := httptrace.ContextClientTrace(ctx1)
	retrieved2 := httptrace.ContextClientTrace(ctx2)

	if retrieved1 != trace1 {
		t.Error("Context 1 trace mismatch")
	}

	if retrieved2 != trace2 {
		t.Error("Context 2 trace mismatch")
	}

	if retrieved1 == retrieved2 {
		t.Error("Different contexts returned same trace")
	}
}

// Test nested context with trace
func TestNestedContextWithTrace(t *testing.T) {
	baseCtx := context.Background()
	trace := &httptrace.ClientTrace{}

	ctx := httptrace.WithClientTrace(baseCtx, trace)
	nestedCtx, cancel := context.WithTimeout(ctx, 1*time.Second)
	defer cancel()

	retrieved := httptrace.ContextClientTrace(nestedCtx)
	if retrieved != trace {
		t.Error("Nested context did not preserve trace")
	}
}
