//go:build !llgo
// +build !llgo

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
	"net"

	"github.com/goplus/llgo/x/async"
	"github.com/goplus/llgo/x/tuple"
)

type Conn struct {
	conn net.Conn
}

func Listen(protocol, bindAddr string, listenCb func(client *Conn, err error)) {
	go func() {
		listener, err := net.Listen(protocol, bindAddr)
		if err != nil {
			listenCb(nil, err)
			return
		}
		for {
			conn, err := listener.Accept()
			if err != nil {
				listenCb(nil, err)
				return
			}
			listenCb(&Conn{conn: conn}, nil)
		}
	}()
}

func Connect(network, addr string) async.Future[tuple.Tuple2[*Conn, error]] {
	return async.Async(func(resolve func(tuple.Tuple2[*Conn, error])) {
		go func() {
			conn, err := net.Dial(network, addr)
			if err != nil {
				resolve(tuple.T2[*Conn, error](nil, err))
				return
			}
			resolve(tuple.T2[*Conn, error](&Conn{conn: conn}, nil))
		}()
	})
}

// Read once from the TCP connection.
func (t *Conn) Read() async.Future[tuple.Tuple2[[]byte, error]] {
	return async.Async(func(resolve func(tuple.Tuple2[[]byte, error])) {
		go func() {
			buf := make([]byte, 1024)
			n, err := t.conn.Read(buf)
			if err != nil {
				resolve(tuple.T2[[]byte, error](nil, err))
				return
			}
			resolve(tuple.T2[[]byte, error](buf[:n], nil))
		}()
	})
}

func (t *Conn) Write(data []byte) async.Future[error] {
	return async.Async(func(resolve func(error)) {
		go func() {
			_, err := t.conn.Write(data)
			resolve(err)
		}()
	})
}

func (t *Conn) Close() {
	if t.conn != nil {
		t.conn.Close()
	}
}
