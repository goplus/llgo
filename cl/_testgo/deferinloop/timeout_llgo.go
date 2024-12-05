//go:build llgo
// +build llgo

package main

import (
	"time"

	"github.com/goplus/llgo/c"
)

func timeout(d time.Duration) <-chan struct{} {
	ch := make(chan struct{})
	go func() {
		c.Usleep(c.Uint(d.Microseconds()))
		close(ch)
	}()
	return ch
}
