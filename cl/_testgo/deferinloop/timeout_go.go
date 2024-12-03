//go:build !llgo
// +build !llgo

package main

import (
	"time"
)

func timeout(d time.Duration) <-chan struct{} {
	ch := make(chan struct{})
	go func() {
		time.Sleep(d)
		close(ch)
	}()
	return ch
}
