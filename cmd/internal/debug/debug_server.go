/*
 * Copyright (c) 2026 The XGo Authors (xgo.dev). All rights reserved.
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

package debug

import (
	"fmt"
	"io"
	"net"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"sync"
	"time"
)

type debugServer struct {
	cmd      *exec.Cmd
	done     <-chan error
	finished bool
	log      *os.File
	logPath  string
	address  string
	relay    *debugRelay
}

// debugRelay keeps its OS-assigned loopback listener open until the session
// ends. The debugger is its only client; no readiness connection is discarded.
type debugRelay struct {
	listener net.Listener
	input    io.WriteCloser
	output   io.ReadCloser
	mu       sync.Mutex
	client   net.Conn
	closed   bool
	done     chan struct{}
}

func newDebugRelay() (*debugRelay, error) {
	listener, err := net.Listen("tcp", "127.0.0.1:0")
	if err != nil {
		return nil, err
	}
	return &debugRelay{listener: listener, done: make(chan struct{})}, nil
}

func (r *debugRelay) serve() {
	defer close(r.done)
	client, err := r.listener.Accept()
	if err != nil {
		return
	}
	r.mu.Lock()
	if r.closed {
		r.mu.Unlock()
		client.Close()
		return
	}
	r.client = client
	r.mu.Unlock()
	defer r.close()
	finished := make(chan struct{}, 2)
	go func() { _, _ = io.Copy(r.input, client); finished <- struct{}{} }()
	go func() { _, _ = io.Copy(client, r.output); finished <- struct{}{} }()
	<-finished
	r.close()
	<-finished
}

func (r *debugRelay) close() {
	if r == nil {
		return
	}
	r.mu.Lock()
	defer r.mu.Unlock()
	if r.closed {
		return
	}
	r.closed = true
	_ = r.listener.Close()
	if r.client != nil {
		_ = r.client.Close()
	}
	if r.input != nil {
		_ = r.input.Close()
	}
	if r.output != nil {
		_ = r.output.Close()
	}
}

func startServer(plan serverPlan) (_ *debugServer, err error) {
	if len(plan.command) == 0 {
		return nil, nil
	}
	log, err := os.CreateTemp("", "llgo-debug-server-*.log")
	if err != nil {
		return nil, fmt.Errorf("llgo debug: create debug-server log: %w", err)
	}
	server := &debugServer{log: log, logPath: log.Name()}
	defer func() {
		if err != nil {
			server.stop()
		}
	}()
	relay, err := newDebugRelay()
	if err != nil {
		return nil, fmt.Errorf("llgo debug: listen for debugger: %w", err)
	}
	server.relay, server.address = relay, relay.listener.Addr().String()
	args := append([]string(nil), plan.command[1:]...)
	if plan.openOCD {
		// Redirect OpenOCD logs so they cannot corrupt its RSP pipe.
		path := strings.NewReplacer("\\", "\\\\", "\"", "\\\"", "$", "\\$", "[", "\\[", "]", "\\]").Replace(filepath.ToSlash(log.Name()))
		args = append([]string{"-c", "log_output \"" + path + "\""}, args...)
	}
	command := exec.Command(plan.command[0], args...)
	server.cmd = command
	command.Stderr = log
	if plan.stdio {
		if relay.input, err = command.StdinPipe(); err != nil {
			return nil, err
		}
		if relay.output, err = command.StdoutPipe(); err != nil {
			return nil, err
		}
	} else {
		command.Stdout = log
	}
	if err = command.Start(); err != nil {
		return nil, fmt.Errorf("llgo debug: start debug server %q: %w", plan.command[0], err)
	}
	done := make(chan error, 1)
	server.done = done
	go func() { done <- command.Wait() }()
	if !plan.stdio {
		connection, connectErr := server.connect(plan.address, 10*time.Second)
		if connectErr != nil {
			return nil, connectErr
		}
		// Keep the readiness connection as the real RSP transport. A
		// single-client stub never sees an empty disconnect.
		relay.input, relay.output = connection, connection
	}
	go relay.serve()
	return server, nil
}

func (s *debugServer) connect(address string, timeout time.Duration) (net.Conn, error) {
	deadline := time.Now().Add(timeout)
	for time.Now().Before(deadline) {
		select {
		case err := <-s.done:
			s.finished = true
			return nil, fmt.Errorf("llgo debug: debug server exited before listening at %s: %v%s", address, err, s.logSuffix())
		default:
		}
		connection, err := net.DialTimeout("tcp", address, 100*time.Millisecond)
		if err == nil {
			return connection, nil
		}
		time.Sleep(25 * time.Millisecond)
	}
	return nil, fmt.Errorf("llgo debug: timed out waiting for debug server at %s%s", address, s.logSuffix())
}

func (s *debugServer) stop() {
	if s == nil {
		return
	}
	s.relay.close()
	if s.cmd != nil && s.cmd.Process != nil {
		_ = s.cmd.Process.Kill()
	}
	if !s.finished && s.done != nil {
		select {
		case <-s.done:
			s.finished = true
		case <-time.After(2 * time.Second):
		}
	}
	if s.log != nil {
		_ = s.log.Close()
	}
	if s.logPath != "" {
		_ = os.Remove(s.logPath)
	}
}

func (s *debugServer) logSuffix() string {
	if s.log != nil {
		_ = s.log.Sync()
	}
	data, err := os.ReadFile(s.logPath)
	if err != nil || len(strings.TrimSpace(string(data))) == 0 {
		return ""
	}
	return "\n" + strings.TrimSpace(string(data))
}
