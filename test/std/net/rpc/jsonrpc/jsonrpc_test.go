package jsonrpc_test

import (
	"fmt"
	"net"
	"net/rpc"
	"net/rpc/jsonrpc"
	"sync/atomic"
	"testing"
)

type Args struct {
	A, B int
}

type Arith struct{}

func (Arith) Mul(args *Args, reply *int) error {
	*reply = args.A * args.B
	return nil
}

var serviceID uint64

func registerService(t *testing.T) string {
	t.Helper()
	name := fmt.Sprintf("ArithJSONRPC%d", atomic.AddUint64(&serviceID, 1))
	if err := rpc.RegisterName(name, new(Arith)); err != nil {
		t.Fatalf("RegisterName failed: %v", err)
	}
	return name
}

func TestServeConnAndNewClient(t *testing.T) {
	svc := registerService(t)
	serverConn, clientConn := net.Pipe()
	defer clientConn.Close()

	go jsonrpc.ServeConn(serverConn)

	client := jsonrpc.NewClient(clientConn)
	defer client.Close()

	var reply int
	if err := client.Call(svc+".Mul", &Args{A: 6, B: 7}, &reply); err != nil {
		t.Fatalf("Call failed: %v", err)
	}
	if reply != 42 {
		t.Fatalf("reply = %d, want 42", reply)
	}
}

func TestCodecHelpers(t *testing.T) {
	svc := registerService(t)
	serverConn, clientConn := net.Pipe()
	defer clientConn.Close()

	serverCodec := jsonrpc.NewServerCodec(serverConn)
	go rpc.ServeCodec(serverCodec)

	clientCodec := jsonrpc.NewClientCodec(clientConn)
	client := rpc.NewClientWithCodec(clientCodec)
	defer client.Close()

	var reply int
	if err := client.Call(svc+".Mul", &Args{A: 3, B: 5}, &reply); err != nil {
		t.Fatalf("Call with codec failed: %v", err)
	}
	if reply != 15 {
		t.Fatalf("reply = %d, want 15", reply)
	}
}

func TestDial(t *testing.T) {
	svc := registerService(t)
	ln, err := net.Listen("tcp", "127.0.0.1:0")
	if err != nil {
		t.Fatalf("Listen failed: %v", err)
	}
	defer ln.Close()

	go func() {
		conn, err := ln.Accept()
		if err != nil {
			return
		}
		jsonrpc.ServeConn(conn)
	}()

	client, err := jsonrpc.Dial("tcp", ln.Addr().String())
	if err != nil {
		t.Fatalf("Dial failed: %v", err)
	}
	defer client.Close()

	var reply int
	if err := client.Call(svc+".Mul", &Args{A: 8, B: 9}, &reply); err != nil {
		t.Fatalf("Dialed Call failed: %v", err)
	}
	if reply != 72 {
		t.Fatalf("reply = %d, want 72", reply)
	}
}
