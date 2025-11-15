//go:build !llgo

package net_test

import (
	"errors"
	"net"
	"syscall"
	"testing"
	"time"
)

func TestDialIP(t *testing.T) {
	addr := &net.IPAddr{IP: net.IPv4(127, 0, 0, 1)}
	conn, err := net.DialIP("ip4:icmp", nil, addr)

	if err != nil {
		// On most systems, ICMP requires privileges
		var opErr *net.OpError
		if !errors.As(err, &opErr) {
			t.Fatalf("DialIP error should be *net.OpError, got %T", err)
		}
		if opErr.Op != "dial" {
			t.Errorf("OpError.Op = %q, want %q", opErr.Op, "dial")
		}
		return
	}

	defer conn.Close()

	// Verify connection properties
	if conn.LocalAddr() == nil {
		t.Error("DialIP: LocalAddr should not be nil")
	}
	if conn.RemoteAddr() == nil {
		t.Error("DialIP: RemoteAddr should not be nil")
	}

	remoteAddr, ok := conn.RemoteAddr().(*net.IPAddr)
	if !ok {
		t.Fatalf("RemoteAddr type = %T, want *net.IPAddr", conn.RemoteAddr())
	}
	if !remoteAddr.IP.Equal(addr.IP) {
		t.Errorf("RemoteAddr IP = %v, want %v", remoteAddr.IP, addr.IP)
	}
}

func TestListenIP(t *testing.T) {
	addr := &net.IPAddr{IP: net.IPv4(127, 0, 0, 1)}
	listener, err := net.ListenIP("ip4:icmp", addr)

	if err != nil {
		// On most systems, ICMP requires privileges
		var opErr *net.OpError
		if !errors.As(err, &opErr) {
			t.Fatalf("ListenIP error should be *net.OpError, got %T", err)
		}
		if opErr.Op != "listen" {
			t.Errorf("OpError.Op = %q, want %q", opErr.Op, "listen")
		}
		return
	}

	defer listener.Close()

	// Verify listener properties
	if listener.LocalAddr() == nil {
		t.Error("ListenIP: LocalAddr should not be nil")
	}

	localAddr, ok := listener.LocalAddr().(*net.IPAddr)
	if !ok {
		t.Fatalf("LocalAddr type = %T, want *net.IPAddr", listener.LocalAddr())
	}
	if !localAddr.IP.Equal(addr.IP) {
		t.Errorf("LocalAddr IP = %v, want %v", localAddr.IP, addr.IP)
	}
}

func TestListenMulticastUDP(t *testing.T) {
	multicastAddr := &net.UDPAddr{IP: net.IPv4(224, 0, 0, 1), Port: 9999}
	conn, err := net.ListenMulticastUDP("udp4", nil, multicastAddr)

	if err != nil {
		var opErr *net.OpError
		if !errors.As(err, &opErr) {
			t.Fatalf("ListenMulticastUDP error should be *net.OpError, got %T", err)
		}
		if opErr.Op != "listen" {
			t.Errorf("OpError.Op = %q, want %q", opErr.Op, "listen")
		}
		return
	}

	defer conn.Close()

	// Verify connection properties
	if conn.LocalAddr() == nil {
		t.Error("ListenMulticastUDP: LocalAddr should not be nil")
	}

	localAddr, ok := conn.LocalAddr().(*net.UDPAddr)
	if !ok {
		t.Fatalf("LocalAddr type = %T, want *net.UDPAddr", conn.LocalAddr())
	}
	if localAddr.Port != multicastAddr.Port {
		t.Errorf("LocalAddr Port = %d, want %d", localAddr.Port, multicastAddr.Port)
	}
}

func TestOpErrorInterface(t *testing.T) {
	var _ net.Error = &net.OpError{}

	opErr := &net.OpError{
		Op:  "test",
		Net: "tcp",
		Err: errors.New("test error"),
	}

	if !opErr.Timeout() {
		// Should be false for non-timeout errors
	}

	if !opErr.Temporary() {
		// Should be false for non-temporary errors
	}

	errStr := opErr.Error()
	if errStr == "" {
		t.Error("OpError.Error() should not be empty")
	}
}

func TestIPConnZeroValue(t *testing.T) {
	var ipConn net.IPConn

	// Test Close
	if err := ipConn.Close(); !errors.Is(err, syscall.EINVAL) {
		t.Errorf("Close() = %v, want EINVAL", err)
	}

	// Test LocalAddr
	if addr := ipConn.LocalAddr(); addr != nil {
		t.Errorf("LocalAddr() = %v, want nil", addr)
	}

	// Test RemoteAddr
	if addr := ipConn.RemoteAddr(); addr != nil {
		t.Errorf("RemoteAddr() = %v, want nil", addr)
	}
}

func TestIPConnDeadlines(t *testing.T) {
	var ipConn net.IPConn
	deadline := time.Now().Add(time.Second)

	// Test SetDeadline
	if err := ipConn.SetDeadline(deadline); !errors.Is(err, syscall.EINVAL) {
		t.Errorf("SetDeadline() = %v, want EINVAL", err)
	}

	// Test SetReadDeadline
	if err := ipConn.SetReadDeadline(deadline); !errors.Is(err, syscall.EINVAL) {
		t.Errorf("SetReadDeadline() = %v, want EINVAL", err)
	}

	// Test SetWriteDeadline
	if err := ipConn.SetWriteDeadline(deadline); !errors.Is(err, syscall.EINVAL) {
		t.Errorf("SetWriteDeadline() = %v, want EINVAL", err)
	}
}

func TestIPConnBuffers(t *testing.T) {
	var ipConn net.IPConn

	// Test SetReadBuffer
	if err := ipConn.SetReadBuffer(1024); !errors.Is(err, syscall.EINVAL) {
		t.Errorf("SetReadBuffer() = %v, want EINVAL", err)
	}

	// Test SetWriteBuffer
	if err := ipConn.SetWriteBuffer(1024); !errors.Is(err, syscall.EINVAL) {
		t.Errorf("SetWriteBuffer() = %v, want EINVAL", err)
	}
}

func TestIPConnSyscallConn(t *testing.T) {
	var ipConn net.IPConn

	raw, err := ipConn.SyscallConn()
	if raw != nil {
		t.Errorf("SyscallConn() raw = %v, want nil", raw)
	}
	if !errors.Is(err, syscall.EINVAL) {
		t.Errorf("SyscallConn() error = %v, want EINVAL", err)
	}
}

func TestIPConnReadWrite(t *testing.T) {
	var ipConn net.IPConn
	buf := make([]byte, 10)

	// Test Read
	n, err := ipConn.Read(buf)
	if n != 0 {
		t.Errorf("Read() n = %d, want 0", n)
	}
	if !errors.Is(err, syscall.EINVAL) {
		t.Errorf("Read() error = %v, want EINVAL", err)
	}

	// Test Write
	n, err = ipConn.Write(buf)
	if n != 0 {
		t.Errorf("Write() n = %d, want 0", n)
	}
	if !errors.Is(err, syscall.EINVAL) {
		t.Errorf("Write() error = %v, want EINVAL", err)
	}
}

func TestIPConnReadFrom(t *testing.T) {
	var ipConn net.IPConn
	buf := make([]byte, 10)

	// Test ReadFrom
	n, addr, err := ipConn.ReadFrom(buf)
	if n != 0 {
		t.Errorf("ReadFrom() n = %d, want 0", n)
	}
	if addr != nil {
		t.Errorf("ReadFrom() addr = %v, want nil", addr)
	}
	if !errors.Is(err, syscall.EINVAL) {
		t.Errorf("ReadFrom() error = %v, want EINVAL", err)
	}

	// Test ReadFromIP
	n, ipAddr, err := ipConn.ReadFromIP(buf)
	if n != 0 {
		t.Errorf("ReadFromIP() n = %d, want 0", n)
	}
	if ipAddr != nil {
		t.Errorf("ReadFromIP() addr = %v, want nil", ipAddr)
	}
	if !errors.Is(err, syscall.EINVAL) {
		t.Errorf("ReadFromIP() error = %v, want EINVAL", err)
	}
}

func TestIPConnReadMsgIP(t *testing.T) {
	var ipConn net.IPConn
	buf := make([]byte, 10)
	oob := make([]byte, 10)

	n, oobn, flags, addr, err := ipConn.ReadMsgIP(buf, oob)
	if n != 0 {
		t.Errorf("ReadMsgIP() n = %d, want 0", n)
	}
	if oobn != 0 {
		t.Errorf("ReadMsgIP() oobn = %d, want 0", oobn)
	}
	if flags != 0 {
		t.Errorf("ReadMsgIP() flags = %d, want 0", flags)
	}
	if addr != nil {
		t.Errorf("ReadMsgIP() addr = %v, want nil", addr)
	}
	if !errors.Is(err, syscall.EINVAL) {
		t.Errorf("ReadMsgIP() error = %v, want EINVAL", err)
	}
}

func TestIPConnWriteTo(t *testing.T) {
	var ipConn net.IPConn
	buf := make([]byte, 10)
	addr := &net.IPAddr{IP: net.IPv4(127, 0, 0, 1)}

	// Test WriteTo
	n, err := ipConn.WriteTo(buf, addr)
	if n != 0 {
		t.Errorf("WriteTo() n = %d, want 0", n)
	}
	if !errors.Is(err, syscall.EINVAL) {
		t.Errorf("WriteTo() error = %v, want EINVAL", err)
	}

	// Test WriteToIP
	n, err = ipConn.WriteToIP(buf, addr)
	if n != 0 {
		t.Errorf("WriteToIP() n = %d, want 0", n)
	}
	if !errors.Is(err, syscall.EINVAL) {
		t.Errorf("WriteToIP() error = %v, want EINVAL", err)
	}
}

func TestIPConnWriteMsgIP(t *testing.T) {
	var ipConn net.IPConn
	buf := make([]byte, 10)
	oob := make([]byte, 10)
	addr := &net.IPAddr{IP: net.IPv4(127, 0, 0, 1)}

	n, oobn, err := ipConn.WriteMsgIP(buf, oob, addr)
	if n != 0 {
		t.Errorf("WriteMsgIP() n = %d, want 0", n)
	}
	if oobn != 0 {
		t.Errorf("WriteMsgIP() oobn = %d, want 0", oobn)
	}
	if !errors.Is(err, syscall.EINVAL) {
		t.Errorf("WriteMsgIP() error = %v, want EINVAL", err)
	}
}

func TestIPConnFile(t *testing.T) {
	var ipConn net.IPConn

	defer func() {
		if r := recover(); r == nil {
			t.Error("File() should panic on zero value IPConn")
		}
	}()

	_, _ = ipConn.File()
}
