package rpc_test

import (
	"io"
	"net"
	"net/http"
	"net/http/httptest"
	"net/rpc"
	"strings"
	"testing"
)

type Arith int

type Args struct {
	A int
	B int
}

func (a *Arith) Add(args *Args, reply *int) error {
	*reply = args.A + args.B
	return nil
}

func TestPipeRPC(t *testing.T) {
	srv := rpc.NewServer()
	if err := srv.RegisterName("Arith", new(Arith)); err != nil {
		t.Fatalf("RegisterName: %v", err)
	}

	sconn, cconn := net.Pipe()
	defer sconn.Close()
	defer cconn.Close()

	go srv.ServeConn(sconn)

	client := rpc.NewClient(cconn)
	defer client.Close()

	var reply int
	if err := client.Call("Arith.Add", &Args{A: 2, B: 3}, &reply); err != nil {
		t.Fatalf("Call: %v", err)
	}
	if reply != 5 {
		t.Fatalf("reply = %d, want 5", reply)
	}

	var reply2 int
	call := client.Go("Arith.Add", &Args{A: 40, B: 2}, &reply2, make(chan *rpc.Call, 1))
	result := <-call.Done
	if result.Error != nil {
		t.Fatalf("Go error: %v", result.Error)
	}
	if reply2 != 42 {
		t.Fatalf("reply2 = %d, want 42", reply2)
	}

	_ = client.Close()
}

func TestPublicAPISymbols(t *testing.T) {
	if rpc.DefaultServer == nil {
		t.Fatal("DefaultServer is nil")
	}
	if rpc.DefaultRPCPath == "" || rpc.DefaultDebugPath == "" {
		t.Fatal("default paths must not be empty")
	}
	if rpc.ErrShutdown == nil {
		t.Fatal("ErrShutdown is nil")
	}

	var req rpc.Request
	req.ServiceMethod = "Arith.Add"
	req.Seq = 1
	var resp rpc.Response
	resp.ServiceMethod = req.ServiceMethod
	resp.Seq = req.Seq
	if resp.ServiceMethod != "Arith.Add" || resp.Seq != 1 {
		t.Fatalf("unexpected request/response values: %+v %+v", req, resp)
	}

	var se rpc.ServerError = "boom"
	if se.Error() != "boom" {
		t.Fatalf("ServerError.Error() = %q, want %q", se.Error(), "boom")
	}

	// Function and method references for exported API surface coverage.
	_ = rpc.Accept
	_ = rpc.HandleHTTP
	_ = rpc.Register
	_ = rpc.RegisterName
	_ = rpc.ServeCodec
	_ = rpc.ServeConn
	_ = rpc.ServeRequest
	_ = rpc.Dial
	_ = rpc.DialHTTP
	_ = rpc.DialHTTPPath
	_ = rpc.NewClient
	_ = rpc.NewClientWithCodec

	var _ rpc.ClientCodec
	var _ rpc.ServerCodec
}

func TestServerServeRequestAndServeCodec(t *testing.T) {
	srv := rpc.NewServer()
	if err := srv.RegisterName("Arith", new(Arith)); err != nil {
		t.Fatalf("RegisterName: %v", err)
	}

	codecReq := newOneShotCodec("Arith.Add", &Args{A: 20, B: 22})
	if err := srv.ServeRequest(codecReq); err != nil {
		t.Fatalf("ServeRequest: %v", err)
	}
	if codecReq.reply != 42 {
		t.Fatalf("ServeRequest reply = %d, want 42", codecReq.reply)
	}

	codecLoop := newOneShotCodec("Arith.Add", &Args{A: 4, B: 7})
	srv.ServeCodec(codecLoop)
	if codecLoop.reply != 11 {
		t.Fatalf("ServeCodec reply = %d, want 11", codecLoop.reply)
	}
}

func TestServerAccept(t *testing.T) {
	srv := rpc.NewServer()
	if err := srv.Register(new(Arith)); err != nil {
		t.Fatalf("Register: %v", err)
	}

	sconn, cconn := net.Pipe()
	defer sconn.Close()
	defer cconn.Close()

	done := make(chan struct{})
	go func() {
		srv.Accept(&oneConnListener{conn: sconn})
		close(done)
	}()

	client := rpc.NewClient(cconn)
	defer client.Close()
	var reply int
	if err := client.Call("Arith.Add", &Args{A: 5, B: 6}, &reply); err != nil {
		t.Fatalf("Call via Accept: %v", err)
	}
	if reply != 11 {
		t.Fatalf("reply = %d, want 11", reply)
	}
	_ = client.Close()
	<-done
}

func TestServerServeHTTPAndHandleHTTP(t *testing.T) {
	srv := rpc.NewServer()
	if err := srv.RegisterName("Arith", new(Arith)); err != nil {
		t.Fatalf("RegisterName: %v", err)
	}

	rr := httptest.NewRecorder()
	req := httptest.NewRequest(http.MethodGet, "http://example.com/_rpc", nil)
	srv.ServeHTTP(rr, req)
	if rr.Code != http.StatusMethodNotAllowed {
		t.Fatalf("ServeHTTP GET status = %d, want %d", rr.Code, http.StatusMethodNotAllowed)
	}

	rpcPath := "/_llgo_rpc_" + strings.ReplaceAll(t.Name(), "/", "_")
	debugPath := "/_llgo_rpc_debug_" + strings.ReplaceAll(t.Name(), "/", "_")
	srv.HandleHTTP(rpcPath, debugPath)

	rrRPC := httptest.NewRecorder()
	reqRPC := httptest.NewRequest(http.MethodGet, "http://example.com"+rpcPath, nil)
	http.DefaultServeMux.ServeHTTP(rrRPC, reqRPC)
	if rrRPC.Code != http.StatusMethodNotAllowed {
		t.Fatalf("default mux rpc path status = %d, want %d", rrRPC.Code, http.StatusMethodNotAllowed)
	}

	rrDebug := httptest.NewRecorder()
	reqDebug := httptest.NewRequest(http.MethodGet, "http://example.com"+debugPath, nil)
	http.DefaultServeMux.ServeHTTP(rrDebug, reqDebug)
	if rrDebug.Code != http.StatusOK {
		t.Fatalf("default mux debug path status = %d, want %d", rrDebug.Code, http.StatusOK)
	}
}

type oneShotCodec struct {
	method string
	args   *Args

	served bool
	reply  int
}

func newOneShotCodec(method string, args *Args) *oneShotCodec {
	return &oneShotCodec{method: method, args: args}
}

func (c *oneShotCodec) ReadRequestHeader(r *rpc.Request) error {
	if c.served {
		return io.EOF
	}
	c.served = true
	r.ServiceMethod = c.method
	r.Seq = 1
	return nil
}

func (c *oneShotCodec) ReadRequestBody(v any) error {
	if v == nil {
		return nil
	}
	p, ok := v.(*Args)
	if !ok {
		return nil
	}
	*p = *c.args
	return nil
}

func (c *oneShotCodec) WriteResponse(_ *rpc.Response, v any) error {
	if v == nil {
		c.reply = 0
		return nil
	}
	if p, ok := v.(*int); ok {
		c.reply = *p
	}
	return nil
}

func (c *oneShotCodec) Close() error { return nil }

type oneConnListener struct {
	conn net.Conn
	used bool
}

func (l *oneConnListener) Accept() (net.Conn, error) {
	if l.used {
		return nil, io.EOF
	}
	l.used = true
	return l.conn, nil
}

func (l *oneConnListener) Close() error { return nil }

func (l *oneConnListener) Addr() net.Addr { return dummyAddr("rpc-test") }

type dummyAddr string

func (a dummyAddr) Network() string { return "test" }
func (a dummyAddr) String() string  { return string(a) }
