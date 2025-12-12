// Patch of std io.Pipe for llgo runtime.
// Uses pthread-backed sync primitives to avoid select/channel deadlocks.

package io

import (
	"errors"
	"io"

	psync "github.com/goplus/llgo/runtime/internal/clite/pthread/sync"
)

// onceError stores a single error value.
// ErrClosedPipe is the error used for read or write operations on a closed pipe.
var ErrClosedPipe = errors.New("io: read/write on closed pipe")

// pipe is the shared state for PipeReader/PipeWriter.
type pipe struct {
	mu   psync.Mutex
	rdCv psync.Cond
	wrCv psync.Cond

	data []byte
	rerr error // set by CloseWithError on reader side
	werr error // set by CloseWithError on writer side
}

func newPipe() *pipe {
	p := &pipe{}
	p.rdCv.Init(nil)
	p.wrCv.Init(nil)
	return p
}

func (p *pipe) read(b []byte) (n int, err error) {
	p.mu.Lock()
	defer p.mu.Unlock()

	for len(p.data) == 0 {
		if err := p.readCloseError(); err != nil {
			return 0, err
		}
		p.rdCv.Wait(&p.mu)
	}

	n = copy(b, p.data)
	if n == len(p.data) {
		p.data = nil
		p.wrCv.Signal()
	} else {
		p.data = p.data[n:]
	}
	return n, nil
}

func (p *pipe) write(b []byte) (n int, err error) {
	p.mu.Lock()
	defer p.mu.Unlock()

	for len(b) > 0 {
		for len(p.data) > 0 {
			if err := p.writeCloseError(); err != nil {
				return n, err
			}
			p.wrCv.Wait(&p.mu)
		}

		if err := p.writeCloseError(); err != nil {
			return n, err
		}

		p.data = b
		p.rdCv.Signal()

		for len(p.data) > 0 {
			if err := p.writeCloseError(); err != nil {
				return n, err
			}
			p.wrCv.Wait(&p.mu)
		}

		n += len(b)
		b = b[:0]
	}
	return n, nil
}

func (p *pipe) closeRead(err error) error {
	if err == nil {
		err = ErrClosedPipe
	}
	p.rerr = err
	p.rdCv.Broadcast()
	p.wrCv.Broadcast()
	return nil
}

func (p *pipe) closeWrite(err error) error {
	if err == nil {
		err = io.EOF
	}
	p.werr = err
	p.rdCv.Broadcast()
	p.wrCv.Broadcast()
	return nil
}

func (p *pipe) readCloseError() error {
	if p.rerr != nil {
		return p.rerr
	}
	if p.werr != nil {
		return p.werr
	}
	return nil
}

func (p *pipe) writeCloseError() error {
	if p.rerr != nil {
		return p.rerr
	}
	return p.werr
}

// PipeReader is the read half of a pipe.
type PipeReader struct {
	p *pipe
}

func (r *PipeReader) Read(data []byte) (n int, err error) {
	return r.p.read(data)
}

func (r *PipeReader) Close() error {
	return r.CloseWithError(nil)
}

func (r *PipeReader) CloseWithError(err error) error {
	return r.p.closeRead(err)
}

// PipeWriter is the write half of a pipe.
type PipeWriter struct {
	p *pipe
}

func (w *PipeWriter) Write(data []byte) (n int, err error) {
	return w.p.write(data)
}

func (w *PipeWriter) Close() error {
	return w.CloseWithError(nil)
}

func (w *PipeWriter) CloseWithError(err error) error {
	return w.p.closeWrite(err)
}

// Pipe creates a synchronous in-memory pipe.
func Pipe() (*PipeReader, *PipeWriter) {
	p := newPipe()
	return &PipeReader{p}, &PipeWriter{p}
}
