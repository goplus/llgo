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

package io

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

type Tcp struct {
	tcp      libuv.Tcp
	listenCb func(server *Tcp, err error)
	readCb   func([]byte, error)
	writeCb  func(int, error)
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

func ParseAddr(addr string) async.Future[tuple.Tuple2[*net.SockAddr, error]] {
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

		// TODO(lijie): closure problem, instead with a struct to hold the resolve function.
		// req, cb := cbind.Bind2F[libuv.GetAddrInfo, libuv.GetaddrinfoCb](func(status c.Int, addr *net.AddrInfo) {
		// 	if status != 0 {
		// 		resolve(tuple.T2[*net.SockAddr, error](nil, libuvError(status)))
		// 		return
		// 	}
		// 	resolve(tuple.T2[*net.SockAddr, error](addr.Addr, nil))
		// })
		// if res := libuv.Getaddrinfo(async.Exec().L, req, cb, c.AllocaCStr(host), c.AllocaCStr(port), hints); res != 0 {
		// 	resolve(tuple.T2[*net.SockAddr, error](nil, libuvError(res)))
		// 	return
		// }
		bind := &getAddrInfoBind{
			resolve: resolve,
		}
		if res := libuv.Getaddrinfo(async.Exec().L, &bind.GetAddrInfo, getAddrInfoCb, c.AllocaCStr(host), c.AllocaCStr(port), hints); res != 0 {
			resolve(tuple.T2[*net.SockAddr, error](nil, libuvError(res)))
			return
		}
	})
}

func Listen(protocol, bindAddr string) async.Future[tuple.Tuple2[*Tcp, error]] {
	return async.Async(func(resolve func(tuple.Tuple2[*Tcp, error])) {
		tcp, err := NewTcp()
		if err != nil {
			resolve(tuple.T2[*Tcp, error](nil, err))
			return
		}
		ParseAddr(bindAddr)(func(v tuple.Tuple2[*net.SockAddr, error]) {
			addr, err := v.Get()
			if err != nil {
				resolve(tuple.T2[*Tcp, error](nil, err))
				return
			}
			if err := tcp.Bind(addr, 0); err != nil {
				resolve(tuple.T2[*Tcp, error](nil, err))
				return
			}
			if err := tcp.Listen(128, func(server *Tcp, err error) {
				resolve(tuple.T2[*Tcp, error](server, err))
			}); err != nil {
				resolve(tuple.T2[*Tcp, error](nil, err))
			}
		})
	})
}

func NewTcp() (*Tcp, error) {
	t := &Tcp{}
	if res := libuv.InitTcp(async.Exec().L, &t.tcp); res != 0 {
		return nil, libuvError(res)
	}
	return t, nil
}

func (t *Tcp) Bind(addr *net.SockAddr, flags uint) error {
	if res := t.tcp.Bind(addr, c.Uint(flags)); res != 0 {
		return libuvError(res)
	}
	return nil
}

func (t *Tcp) Listen(backlog int, cb func(server *Tcp, err error)) error {
	t.listenCb = cb
	res := (*libuv.Stream)(&t.tcp).Listen(c.Int(backlog), func(s *libuv.Stream, status c.Int) {
		server := (*Tcp)(unsafe.Pointer(s))
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

func (t *Tcp) Accept() (client *Tcp, err error) {
	tcp := &Tcp{}
	if res := libuv.InitTcp(async.Exec().L, &tcp.tcp); res != 0 {
		return nil, libuvError(res)
	}
	if res := (*libuv.Stream)(&t.tcp).Accept((*libuv.Stream)(&tcp.tcp)); res != 0 {
		return nil, libuvError(res)
	}
	return tcp, nil
}

type connectBind struct {
	libuv.Connect
	tcp     *Tcp
	resolve func(tuple.Tuple2[*Tcp, error])
}

func connectCb(p *libuv.Connect, status c.Int) {
	bind := (*connectBind)(unsafe.Pointer(p))
	if status != 0 {
		bind.resolve(tuple.T2[*Tcp, error](nil, libuvError(libuv.Errno(status))))
	} else {
		bind.resolve(tuple.T2[*Tcp, error](bind.tcp, nil))
	}
}

func Connect(addr *net.SockAddr) async.Future[tuple.Tuple2[*Tcp, error]] {
	return async.Async(func(resolve func(tuple.Tuple2[*Tcp, error])) {
		tcp := &Tcp{}
		if res := libuv.InitTcp(async.Exec().L, &tcp.tcp); res != 0 {
			resolve(tuple.T2[*Tcp, error]((*Tcp)(nil), libuvError(res)))
			return
		}
		// req, _ := cbind.Bind1[libuv.Connect](func(status c.Int) {
		// 	if status != 0 {
		// 		resolve(tuple.T2[*Tcp, error]((*Tcp)(nil), libuvError(libuv.Errno(status))))
		// 	} else {
		// 		resolve(tuple.T2[*Tcp, error](tcp, nil))
		// 	}
		// })
		req := &connectBind{
			tcp:     tcp,
			resolve: resolve,
		}
		if res := libuv.TcpConnect(&req.Connect, &req.tcp.tcp, addr, connectCb); res != 0 {
			resolve(tuple.T2[*Tcp, error]((*Tcp)(nil), libuvError(res)))
			return
		}
	})
}

func allocBuffer(handle *libuv.Handle, suggestedSize uintptr, buf *libuv.Buf) {
	buf.Base = (*c.Char)(c.Malloc(suggestedSize))
	buf.Len = suggestedSize
}

func (t *Tcp) StartRead(fn func(data []byte, err error)) {
	t.readCb = func(data []byte, err error) {
		fn(data, err)
	}
	tcp := (*libuv.Stream)(&t.tcp)
	res := tcp.StartRead(allocBuffer, func(client *libuv.Stream, nread c.Long, buf *libuv.Buf) {
		tcp := (*Tcp)(unsafe.Pointer(client))
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

func (t *Tcp) StopRead() error {
	tcp := (*libuv.Stream)(&t.tcp)
	if res := tcp.StopRead(); res != 0 {
		return libuvError(libuv.Errno(res))
	}
	return nil
}

// Read once from the TCP connection.
func (t *Tcp) Read() async.Future[tuple.Tuple2[[]byte, error]] {
	return async.Async(func(resolve func(tuple.Tuple2[[]byte, error])) {
		t.StartRead(func(data []byte, err error) {
			if err := t.StopRead(); err != nil {
				panic(err)
			}
			resolve(tuple.T2[[]byte, error](data, err))
		})
	})
}

func (t *Tcp) Write(data []byte) async.Future[error] {
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

// Don't use this funciton, just for deubg closure problem.
func (t *Tcp) Write1(data []byte) async.Future[error] {
	return async.Async(func(resolve func(e error)) {
		writer, cb := cbind.Bind1F[libuv.Write, libuv.WriteCb](func(req *libuv.Write, status c.Int) {
			if status != 0 {
				resolve(libuvError(libuv.Errno(status)))
				return
			}
			resolve(nil)
		})
		tcp := (*libuv.Stream)(&t.tcp)
		buf, len := cbind.CBuffer(data)
		bufs := &libuv.Buf{Base: buf, Len: uintptr(len)}
		writer.Write(tcp, bufs, 1, cb)
	})
}

func (t *Tcp) Close() {
	(*libuv.Handle)(unsafe.Pointer(&t.tcp)).Close(nil)
}
