//go:build !llgo

package debug

import (
	"bytes"
	"io"
	"net"
	"os"
	"strconv"
	"testing"
	"time"
)

func TestDebugServerSingleClientTransport(t *testing.T) {
	t.Setenv("LLGO_DEBUG_TRANSPORT_HELPER", "1")
	for _, stdio := range []bool{false, true} {
		name := "single-client TCP"
		if stdio {
			name = "stdio"
		}
		t.Run(name, func(t *testing.T) {
			transport := "stdio"
			address := ""
			if !stdio {
				port, err := freeTCPPort()
				if err != nil {
					t.Fatal(err)
				}
				transport = strconv.Itoa(port)
				address = "127.0.0.1:" + transport
			}
			server, err := startServer(serverPlan{
				command: []string{os.Args[0], "-test.run=^TestDebugTransportHelper$", "--", transport},
				address: address, stdio: stdio,
			})
			if err != nil {
				t.Fatal(err)
			}
			t.Cleanup(server.stop)
			if other, err := net.Listen("tcp", server.address); err == nil {
				other.Close()
				t.Fatal("debugger port was released before the debugger connected")
			}
			client, err := net.DialTimeout("tcp", server.address, time.Second)
			if err != nil {
				t.Fatal(err)
			}
			defer client.Close()
			_ = client.SetDeadline(time.Now().Add(3 * time.Second))
			packet := []byte("$qSupported#37")
			if _, err := client.Write(packet); err != nil {
				t.Fatal(err)
			}
			response := make([]byte, len(packet))
			if _, err := io.ReadFull(client, response); err != nil {
				t.Fatalf("first stub connection did not reach the debugger: %v%s", err, server.logSuffix())
			}
			if !bytes.Equal(response, packet) {
				t.Fatalf("transport changed RSP bytes: %q", response)
			}
			server.stop()
			select {
			case <-server.relay.done:
			case <-time.After(time.Second):
				t.Fatal("relay goroutine survived server cleanup")
			}
		})
	}
}

func TestDebugServerStdioCleanupBeforeAttach(t *testing.T) {
	t.Setenv("LLGO_DEBUG_TRANSPORT_HELPER", "1")
	server, err := startServer(serverPlan{
		command: []string{os.Args[0], "-test.run=^TestDebugTransportHelper$", "--", "stdio"}, stdio: true,
	})
	if err != nil {
		t.Fatal(err)
	}
	server.stop()
	select {
	case <-server.relay.done:
	case <-time.After(time.Second):
		t.Fatal("unattached relay was not stopped")
	}
}

func TestDebugTransportHelper(t *testing.T) {
	if os.Getenv("LLGO_DEBUG_TRANSPORT_HELPER") != "1" {
		return
	}
	transport := os.Args[len(os.Args)-1]
	if transport == "stdio" {
		_, _ = io.Copy(os.Stdout, os.Stdin)
		return
	}
	listener, err := net.Listen("tcp", "127.0.0.1:"+transport)
	if err != nil {
		t.Fatal(err)
	}
	client, err := listener.Accept()
	listener.Close() // The stub permits exactly one connection.
	if err != nil {
		t.Fatal(err)
	}
	defer client.Close()
	_, _ = io.Copy(client, client)
}
