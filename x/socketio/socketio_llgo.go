//go:build llgo
// +build llgo

/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package socketio

import (
	"strings"
	"syscall"
	"unsafe"
	_ "unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/libuv"
	"github.com/goplus/llgo/c/net"
	"github.com/goplus/llgo/x/async"
	"github.com/goplus/llgo/x/cbind"
	"github.com/goplus/llgo/x/tuple"
)

type Listener struct {
	tcp      libuv.Tcp
	listenCb func(server *Listener, err error)
}

type Conn struct {
	tcp    libuv.Tcp
	readCb func([]byte, error)
}

type libuvError libuv.Errno

func (e libuvError) Error() string {
	s := libuv.Strerror(libuv.Errno(e))
	return c.GoString(s, c.Strlen(s))
}

type getAddrInfoBind struct {
	libuv.GetAddrInfo
	resolve func(tuple.Tuple2[*net.SockAddr, error])
}

func getAddrInfoCb(p *libuv.GetAddrInfo, status c.Int, addr *net.AddrInfo) {
	bind := (*getAddrInfoBind)(unsafe.Pointer(p))
	if status != 0 {
		bind.resolve(tuple.T2[*net.SockAddr, error](nil, libuvError(status)))
		return
	}
	bind.resolve(tuple.T2[*net.SockAddr, error](addr.Addr, nil))
}

func parseAddr(addr string) async.Future[tuple.Tuple2[*net.SockAddr, error]] {
	return async.Async(func(resolve func(tuple.Tuple2[*net.SockAddr, error])) {
		host := "127.0.0.1"
		var port string
		// split host and service by last colon
		idx := strings.LastIndex(addr, ":")
		if idx < 0 {
			port = addr
		} else {
			host = addr[:idx]
			port = addr[idx+1:]
		}

		hints := &net.AddrInfo{
			Family:   net.AF_INET,
			SockType: net.SOCK_STREAM,
			Protocol: syscall.IPPROTO_TCP,
			Flags:    0,
		}

		req, cb := cbind.Bind2F[libuv.GetAddrInfo, libuv.GetaddrinfoCb](func(i *libuv.GetAddrInfo, status c.Int, addr *net.AddrInfo) {
			if status != 0 {
				resolve(tuple.T2[*net.SockAddr, error](nil, libuvError(status)))
				return
			}
			resolve(tuple.T2[*net.SockAddr, error](addr.Addr, nil))
		})
		if res := libuv.Getaddrinfo(async.Exec().L, req, cb, c.AllocaCStr(host), c.AllocaCStr(port), hints); res != 0 {
			resolve(tuple.T2[*net.SockAddr, error](nil, libuvError(res)))
			return
		}
	})
}

func Listen(protocol, bindAddr string, listenCb func(client *Conn, err error)) {
	tcp, err := newListener()
	if err != nil {
		listenCb(nil, err)
		return
	}
	parseAddr(bindAddr)(func(v tuple.Tuple2[*net.SockAddr, error]) {
		addr, err := v.Get()
		if err != nil {
			listenCb(nil, err)
			return
		}
		if err := tcp.bind(addr, 0); err != nil {
			listenCb(nil, err)
			return
		}
		if err := tcp.listen(128, func(server *Listener, err error) {
			client, err := server.accept()
			listenCb(client, err)
		}); err != nil {
			listenCb(nil, err)
		}
	})
}

func newListener() (*Listener, error) {
	t := &Listener{}
	if res := libuv.InitTcp(async.Exec().L, &t.tcp); res != 0 {
		return nil, libuvError(res)
	}
	return t, nil
}

func (t *Listener) bind(addr *net.SockAddr, flags uint) error {
	if res := t.tcp.Bind(addr, c.Uint(flags)); res != 0 {
		return libuvError(res)
	}
	return nil
}

func (l *Listener) listen(backlog int, cb func(server *Listener, err error)) error {
	l.listenCb = cb
	res := (*libuv.Stream)(&l.tcp).Listen(c.Int(backlog), func(s *libuv.Stream, status c.Int) {
		server := (*Listener)(unsafe.Pointer(s))
		if status != 0 {
			server.listenCb(server, libuvError(libuv.Errno(status)))
		} else {
			server.listenCb(server, nil)
		}
	})
	if res != 0 {
		return libuvError(res)
	}
	return nil
}

func (l *Listener) accept() (client *Conn, err error) {
	tcp := &Conn{}
	if res := libuv.InitTcp(async.Exec().L, &tcp.tcp); res != 0 {
		return nil, libuvError(res)
	}
	if res := (*libuv.Stream)(&l.tcp).Accept((*libuv.Stream)(&tcp.tcp)); res != 0 {
		return nil, libuvError(res)
	}
	return tcp, nil
}

func Connect(network, addr string) async.Future[tuple.Tuple2[*Conn, error]] {
	return async.Async(func(resolve func(tuple.Tuple2[*Conn, error])) {
		parseAddr(addr)(func(v tuple.Tuple2[*net.SockAddr, error]) {
			addr, err := v.Get()
			if err != nil {
				resolve(tuple.T2[*Conn, error]((*Conn)(nil), err))
				return
			}

			tcp := &Conn{}
			if res := libuv.InitTcp(async.Exec().L, &tcp.tcp); res != 0 {
				resolve(tuple.T2[*Conn, error]((*Conn)(nil), libuvError(res)))
				return
			}
			req, cb := cbind.Bind1F[libuv.Connect, libuv.ConnectCb](func(c *libuv.Connect, status c.Int) {
				if status != 0 {
					resolve(tuple.T2[*Conn, error]((*Conn)(nil), libuvError(libuv.Errno(status))))
				} else {
					resolve(tuple.T2[*Conn, error](tcp, nil))
				}
			})
			if res := libuv.TcpConnect(req, &tcp.tcp, addr, cb); res != 0 {
				resolve(tuple.T2[*Conn, error]((*Conn)(nil), libuvError(res)))
				return
			}
		})
	})
}

func allocBuffer(handle *libuv.Handle, suggestedSize uintptr, buf *libuv.Buf) {
	buf.Base = (*c.Char)(c.Malloc(suggestedSize))
	buf.Len = suggestedSize
}

func (t *Conn) StartRead(fn func(data []byte, err error)) {
	t.readCb = func(data []byte, err error) {
		fn(data, err)
	}
	tcp := (*libuv.Stream)(&t.tcp)
	res := tcp.StartRead(allocBuffer, func(client *libuv.Stream, nread c.Long, buf *libuv.Buf) {
		tcp := (*Conn)(unsafe.Pointer(client))
		if nread > 0 {
			tcp.readCb(cbind.GoBytes(buf.Base, int(nread)), nil)
		} else if nread < 0 {
			tcp.readCb(nil, libuvError(libuv.Errno(nread)))
		} else {
			tcp.readCb(nil, nil)
		}
	})
	if res != 0 {
		t.readCb(nil, libuvError(libuv.Errno(res)))
	}
}

func (t *Conn) StopRead() error {
	tcp := (*libuv.Stream)(&t.tcp)
	if res := tcp.StopRead(); res != 0 {
		return libuvError(libuv.Errno(res))
	}
	return nil
}

// Read once from the TCP connection.
func (t *Conn) Read() async.Future[tuple.Tuple2[[]byte, error]] {
	return async.Async(func(resolve func(tuple.Tuple2[[]byte, error])) {
		t.StartRead(func(data []byte, err error) {
			if err := t.StopRead(); err != nil {
				panic(err)
			}
			resolve(tuple.T2[[]byte, error](data, err))
		})
	})
}

func (t *Conn) Write(data []byte) async.Future[error] {
	return async.Async(func(resolve func(error)) {
		writer, _ := cbind.Bind1[libuv.Write](func(req *libuv.Write, status c.Int) {
			var result error
			if status != 0 {
				result = libuvError(libuv.Errno(status))
			}
			resolve(result)
		})
		tcp := (*libuv.Stream)(&t.tcp)
		buf, len := cbind.CBuffer(data)
		bufs := &libuv.Buf{Base: buf, Len: uintptr(len)}
		writer.Write(tcp, bufs, 1, cbind.Callback1[libuv.Write, c.Int])
	})
}

func (t *Conn) Close() {
	(*libuv.Handle)(unsafe.Pointer(&t.tcp)).Close(nil)
}
