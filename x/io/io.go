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

package io

import (
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
	tcp libuv.Tcp
}

type libuvError libuv.Errno

func (e libuvError) Error() string {
	s := libuv.Strerror(libuv.Errno(e))
	return c.GoString(s, c.Strlen(s))
}

func NewTcp() *Tcp {
	t := &Tcp{}
	libuv.InitTcp(async.Exec().L, &t.tcp)
	return t
}

func (t *Tcp) Bind(addr *net.SockAddr, flags uint) error {
	if res := t.tcp.Bind(addr, c.Uint(flags)); res != 0 {
		return libuvError(res)
	}
	return nil
}

func (t *Tcp) Listen(backlog int, cb func(server *libuv.Stream, status c.Int)) error {
	if res := (*libuv.Stream)(&t.tcp).Listen(c.Int(backlog), cb); res != 0 {
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

func Connect(addr *net.SockAddr) async.IO[tuple.Tuple2[*Tcp, error]] {
	return async.Async(func(resolve func(tuple.Tuple2[*Tcp, error])) {
		tcp := &Tcp{}
		if res := libuv.InitTcp(async.Exec().L, &tcp.tcp); res != 0 {
			resolve(tuple.T2[*Tcp, error]((*Tcp)(nil), libuvError(res)))
			return
		}
		req, _ := cbind.Bind1[libuv.Connect](func(status c.Int) {
			if status != 0 {
				resolve(tuple.T2[*Tcp, error]((*Tcp)(nil), libuvError(libuv.Errno(status))))
			}
		})
		if res := libuv.TcpConnect(req, &tcp.tcp, addr, cbind.Callback1[libuv.Connect, c.Int]); res != 0 {
			resolve(tuple.T2[*Tcp, error]((*Tcp)(nil), libuvError(res)))
		}
		resolve(tuple.T2[*Tcp, error](tcp, nil))
	})
}

func allocBuffer(handle *libuv.Handle, suggestedSize uintptr, buf *libuv.Buf) {
	buf.Base = (*c.Char)(c.Malloc(suggestedSize))
	buf.Len = suggestedSize
}

func (t *Tcp) Read() async.IO[tuple.Tuple2[[]byte, error]] {
	return func(ctx *async.AsyncContext) async.Future[tuple.Tuple2[[]byte, error]] {
		var result tuple.Tuple2[[]byte, error]
		var done bool
		tcp := (*libuv.Stream)(&t.tcp)
		tcp.StartRead(allocBuffer, func(client *libuv.Stream, nread c.Long, buf *libuv.Buf) {
			if nread > 0 {
				result = tuple.T2[[]byte, error](cbind.GoBytes(buf.Base, int(nread)), nil)
			} else if nread < 0 {
				result = tuple.T2[[]byte, error](nil, libuvError(libuv.Errno(nread)))
			} else {
				result = tuple.T2[[]byte, error](nil, nil)
			}
			done = true
			ctx.Complete()
		})
		return func() tuple.Tuple2[[]byte, error] {
			if !done {
				panic("Tcp.Read: Future accessed before completion")
			}
			return result
		}
	}
}

func (t *Tcp) Close() {
	(*libuv.Handle)(unsafe.Pointer(&t.tcp)).Close(nil)
}
