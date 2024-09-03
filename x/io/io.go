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
	tcp *libuv.Tcp
}

type libuvError libuv.Errno

func (e libuvError) Error() string {
	s := libuv.Strerror(libuv.Errno(e))
	return c.GoString(s, c.Strlen(s))
}

func NewTcp() *Tcp {
	t := &Tcp{&libuv.Tcp{}}
	libuv.InitTcp(async.Exec().L, t.tcp)
	return t
}

func (t *Tcp) Bind(addr *net.SockAddr, flags uint) error {
	if res := t.tcp.Bind(addr, c.Uint(flags)); res != 0 {
		return libuvError(res)
	}
	return nil
}

func (t *Tcp) Listen(backlog int, cb libuv.ConnectionCb) error {
	if res := (*libuv.Stream)(t.tcp).Listen(c.Int(backlog), cb); res != 0 {
		return libuvError(res)
	}
	return nil
}

func (t *Tcp) Accept() (client *Tcp, err error) {
	tcp := &libuv.Tcp{}
	if res := libuv.InitTcp(async.Exec().L, tcp); res != 0 {
		return nil, libuvError(res)
	}
	if res := (*libuv.Stream)(t.tcp).Accept((*libuv.Stream)(client.tcp)); res != 0 {
		return nil, libuvError(res)
	}
	return &Tcp{tcp}, nil
}

func Connect(addr *net.SockAddr) async.IO[tuple.Tuple2[*Tcp, error]] {
	return async.Async(func(resolve func(tuple.Tuple2[*Tcp, error])) {
		tcp := &libuv.Tcp{}
		if res := libuv.InitTcp(async.Exec().L, tcp); res != 0 {
			resolve(tuple.T2[*Tcp, error]((*Tcp)(nil), libuvError(res)))
			return
		}
		req, cb := cbind.Bind1[libuv.Connect](func(status c.Int) {
			if status != 0 {
				resolve(tuple.T2[*Tcp, error]((*Tcp)(nil), libuvError(libuv.Errno(status))))
			} else {
				resolve(tuple.T2[*Tcp, error](&Tcp{tcp}, nil))
			}
		})
		if res := libuv.TcpConnect(req, tcp, addr, cb); res != 0 {
			resolve(tuple.T2[*Tcp, error]((*Tcp)(nil), libuvError(res)))
		}
	})
}

func allocBuffer(handle *libuv.Handle, suggestedSize uintptr, buf *libuv.Buf) {
	buf.Base = (*c.Char)(c.Malloc(suggestedSize))
	buf.Len = suggestedSize
}

type slice struct {
	data unsafe.Pointer
	len  int
}

func goBytes(buf *int8, n int) []byte {
	return *(*[]byte)(unsafe.Pointer(&slice{unsafe.Pointer(buf), n}))
}

func (t *Tcp) Read() async.IO[tuple.Tuple2[[]byte, error]] {
	return func(ctx *async.AsyncContext) async.Future[tuple.Tuple2[[]byte, error]] {
		var result tuple.Tuple2[[]byte, error]
		var done bool
		tcp := (*libuv.Stream)(t.tcp)
		libuv.ReadStart(tcp, allocBuffer, func(client *libuv.Stream, nread c.Long, buf *libuv.Buf) {
			if nread > 0 {
				result = tuple.T2[[]byte, error](goBytes(buf.Base, int(nread)), nil)
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

func (t *Tcp) Close(cb libuv.CloseCb) {
	(*libuv.Handle)(unsafe.Pointer(t.tcp)).Close(cb)
}
