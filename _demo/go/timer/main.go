package main

import (
	"time"

	"github.com/goplus/lib/c"
)

// Small demo showing timer fire, stop, and reset behavior.
func main() {
	c.Printf(c.Str("start: %s\n"), time.Now().Format(time.StampMilli))

	// Timer that fires after 300ms.
	t := time.NewTimer(300 * time.Millisecond)

	go func() {
		<-t.C
		c.Printf(c.Str("timer fired: %s\n"), time.Now().Format(time.StampMilli))
	}()

	// Stop and reset to fire later.
	if t.Stop() {
		c.Printf(c.Str("timer stopped before first fire\n"))
	}
	t.Reset(600 * time.Millisecond)

	// Schedule a function via AfterFunc.
	done := make(chan struct{})
	time.AfterFunc(150*time.Millisecond, func() {
		c.Printf(c.Str("afterfunc: %s\n"), time.Now().Format(time.StampMilli))
		close(done)
	})

	<-done
	// The timer may have fired in the goroutine; wait for it once.
	time.Sleep(50 * time.Millisecond)
	select {
	case <-t.C:
	default:
	}
	c.Printf(c.Str("done: %s\n"), time.Now().Format(time.StampMilli))
}
