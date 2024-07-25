package libuv

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/net"
	_ "unsafe"
)

const (
	/* Used with uv_tcp_bind, when an IPv6 address is used. */
	TCP_IPV6ONLY TcpFlags = 1
)

/*
 * UDP support.
 */
const (
	/* Disables dual stack mode. */
	UDP_IPV6ONLY UdpFlags = 1
	/*
	 * Indicates message was truncated because read buffer was too small. The
	 * remainder was discarded by the OS. Used in uv_udp_recv_cb.
	 */
	UDP_PARTIAL UdpFlags = 2
	/*
	 * Indicates if SO_REUSEADDR will be set when binding the handle.
	 * This sets the SO_REUSEPORT socket flag on the BSDs and OS X. On other
	 * Unix platforms, it sets the SO_REUSEADDR flag.  What that means is that
	 * multiple threads or processes can bind to the same address without error
	 * (provided they all set the flag) but only the last one to bind will receive
	 * any traffic, in effect "stealing" the port from the previous listener.
	 */
	UDP_REUSEADDR UdpFlags = 4
	/*
	 * Indicates that the message was received by recvmmsg, so the buffer provided
	 * must not be freed by the recv_cb callback.
	 */
	UDP_MMSG_CHUNK UdpFlags = 8
	/*
	 * Indicates that the buffer provided has been fully utilized by recvmmsg and
	 * that it should now be freed by the recv_cb callback. When this flag is set
	 * in uv_udp_recv_cb, nread will always be 0 and addr will always be NULL.
	 */
	UDP_MMSG_FREE UdpFlags = 16
	/*
	 * Indicates if IP_RECVERR/IPV6_RECVERR will be set when binding the handle.
	 * This sets IP_RECVERR for IPv4 and IPV6_RECVERR for IPv6 UDP sockets on
	 * Linux. This stops the Linux kernel from suppressing some ICMP error
	 * messages and enables full ICMP error reporting for faster failover.
	 * This flag is no-op on platforms other than Linux.
	 */
	UDP_LINUX_RECVERR UdpFlags = 32
	/*
	 * Indicates that recvmmsg should be used, if available.
	 */
	UDP_RECVMMSG UdpFlags = 256
)

type TcpFlags c.Int

type UdpFlags c.Int

// ----------------------------------------------

/* Handle types. */

type Tcp struct {
	Unused [264]byte
}

type Udp struct {
	Unused [0]byte
}

/* Request types. */

type UdpSend struct {
	Unused [0]byte
}

// ----------------------------------------------

/* Function type */

// llgo:type C
type CloseCb func(handle *Handle)

// llgo:type C
type ConnectCb func(req *Connect, status c.Int)

// llgo:type C
type UdpSendCb func(req *UdpSend, status c.Int)

// llgo:type C
type UdpRecvCb func(handle *Udp, nread c.Long, buf *Buf, addr *net.SockAddr, flags c.Uint)

// ----------------------------------------------

/* Tcp related function and method */

//go:linkname InitTcp C.uv_tcp_init
func InitTcp(loop *Loop, tcp *Tcp) c.Int

//go:linkname InitTcpEx C.uv_tcp_init_ex
func InitTcpEx(loop *Loop, tcp *Tcp, flags c.Uint) c.Int

// llgo:link (*Tcp).Open C.uv_tcp_open
func (tcp *Tcp) Open(sock OsSock) c.Int {
	return 0
}

// llgo:link (*Tcp).Nodelay C.uv_tcp_nodelay
func (tcp *Tcp) Nodelay(enable c.Int) c.Int {
	return 0
}

// llgo:link (*Tcp).KeepAlive C.uv_tcp_keepalive
func (tcp *Tcp) KeepAlive(enable c.Int, delay c.Uint) c.Int {
	return 0
}

// llgo:link (*Tcp).SimultaneousAccepts C.uv_tcp_simultaneous_accepts
func (tcp *Tcp) SimultaneousAccepts(enable c.Int) c.Int {
	return 0
}

// llgo:link (*Tcp).Bind C.uv_tcp_bind
func (tcp *Tcp) Bind(addr *net.SockAddr, flags c.Uint) c.Int {
	return 0
}

// llgo:link (*Tcp).Getsockname C.uv_tcp_getsockname
func (tcp *Tcp) Getsockname(name *net.SockAddr, nameLen *c.Int) c.Int {
	return 0
}

// llgo:link (*Tcp).Getpeername C.uv_tcp_getpeername
func (tcp *Tcp) Getpeername(name *net.SockAddr, nameLen *c.Int) c.Int {
	return 0
}

// llgo:link (*Tcp).CloseReset C.uv_tcp_close_reset
func (tcp *Tcp) CloseReset(closeCb CloseCb) c.Int {
	return 0
}

//go:linkname TcpConnect C.uv_tcp_connect
func TcpConnect(req *Connect, tcp *Tcp, addr *net.SockAddr, connectCb ConnectCb) c.Int

// ----------------------------------------------

/* Udp related function and method */

//go:linkname InitUdp C.uv_udp_init
func InitUdp(loop *Loop, udp *Udp) c.Int

//go:linkname InitUdpEx C.uv_udp_init_ex
func InitUdpEx(loop *Loop, udp *Udp, flags c.Uint) c.Int

// llgo:link (*Udp).Open C.uv_udp_open
func (udp *Udp) Open(sock OsSock) c.Int {
	return 0
}

// llgo:link (*Udp).Bind C.uv_udp_bind
func (udp *Udp) Bind(addr *net.SockAddr, flags c.Uint) c.Int {
	return 0
}

// llgo:link (*Udp).Connect C.uv_udp_connect
func (udp *Udp) Connect(addr *net.SockAddr) c.Int {
	return 0
}

// llgo:link (*Udp).Getpeername C.uv_udp_getpeername
func (udp *Udp) Getpeername(name *net.SockAddr, nameLen *c.Int) c.Int {
	return 0
}

// llgo:link (*Udp).Getsockname C.uv_udp_getsockname
func (udp *Udp) Getsockname(name *net.SockAddr, nameLen *c.Int) c.Int {
	return 0
}

// llgo:link (*Udp).SetMembership C.uv_udp_set_membership
func (udp *Udp) SetMembership(multicastAddr *c.Char, interfaceAddr *c.Char, membership Membership) c.Int {
	return 0
}

// llgo:link (*Udp).SourceMembership C.uv_udp_set_source_membership
func (udp *Udp) SourceMembership(multicastAddr *c.Char, interfaceAddr *c.Char, sourceAddr *c.Char, membership Membership) c.Int {
	return 0
}

// llgo:link (*Udp).SetMulticastLoop C.uv_udp_set_multicast_loop
func (udp *Udp) SetMulticastLoop(on c.Int) c.Int {
	return 0
}

// llgo:link (*Udp).SetMulticastTTL C.uv_udp_set_multicast_ttl
func (udp *Udp) SetMulticastTTL(ttl c.Int) c.Int {
	return 0
}

// llgo:link (*Udp).SetMulticastInterface C.uv_udp_set_multicast_interface
func (udp *Udp) SetMulticastInterface(interfaceAddr *c.Char) c.Int {
	return 0
}

// llgo:link (*Udp).SetBroadcast C.uv_udp_set_broadcast
func (udp *Udp) SetBroadcast(on c.Int) c.Int {
	return 0
}

// llgo:link (*Udp).SetTTL C.uv_udp_set_ttl
func (udp *Udp) SetTTL(ttl c.Int) c.Int {
	return 0
}

//go:linkname Send C.uv_udp_send
func Send(req *UdpSend, udp *Udp, bufs *Buf, nbufs c.Uint, addr *net.SockAddr, sendCb UdpSendCb) c.Int

// llgo:link (*Udp).TrySend C.uv_udp_try_send
func (udp *Udp) TrySend(bufs *Buf, nbufs c.Uint, addr *net.SockAddr) c.Int {
	return 0
}

// llgo:link (*Udp).StartRecv C.uv_udp_recv_start
func (udp *Udp) StartRecv(allocCb AllocCb, recvCb UdpRecvCb) c.Int {
	return 0
}

// llgo:link (*Udp).UsingRecvmmsg C.uv_udp_using_recvmmsg
func (udp *Udp) UsingRecvmmsg() c.Int {
	return 0
}

// llgo:link (*Udp).StopRecv C.uv_udp_recv_stop
func (udp *Udp) StopRecv() c.Int {
	return 0
}

// llgo:link (*Udp).GetSendQueueSize C.uv_udp_get_send_queue_size
func (udp *Udp) GetSendQueueSize() uintptr {
	return 0
}

// llgo:link (*Udp).GetSendQueueCount C.uv_udp_get_send_queue_count
func (udp *Udp) GetSendQueueCount() uintptr {
	return 0
}

// ----------------------------------------------

//go:linkname Ip4Addr C.uv_ip4_addr
func Ip4Addr(ip *c.Char, port c.Int, addr *net.SockaddrIn) c.Int

//go:linkname Ip6Addr C.uv_ip6_addr
func Ip6Addr(ip *c.Char, port c.Int, addr *net.SockaddrIn6) c.Int

//go:linkname Ip4Name C.uv_ip4_name
func Ip4Name(src *net.SockaddrIn, dst *c.Char, size uintptr) c.Int

//go:linkname Ip6Name C.uv_ip6_name
func Ip6Name(src *net.SockaddrIn6, dst *c.Char, size uintptr) c.Int

//go:linkname IpName C.uv_ip_name
func IpName(src *net.SockAddr, dst *c.Char, size uintptr) c.Int

//go:linkname InetNtop C.uv_inet_ntop
func InetNtop(af c.Int, src c.Pointer, dst *c.Char, size uintptr) c.Int

//go:linkname InetPton C.uv_inet_pton
func InetPton(af c.Int, src *c.Char, dst c.Pointer) c.Int
