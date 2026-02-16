package rpc_test

import (
	"net"
	"net/rpc"
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

	_ = (*rpc.Server).Register
	_ = (*rpc.Server).RegisterName
	_ = (*rpc.Server).ServeCodec
	_ = (*rpc.Server).ServeConn
	_ = (*rpc.Server).ServeRequest
	_ = (*rpc.Server).Accept
	_ = (*rpc.Server).ServeHTTP
	_ = (*rpc.Server).HandleHTTP

	_ = (*rpc.Client).Call
	_ = (*rpc.Client).Go
	_ = (*rpc.Client).Close

	var _ rpc.ClientCodec
	var _ rpc.ServerCodec
}
