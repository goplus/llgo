package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/pthread"
)

var key pthread.Key

func main() {
	key.Create(nil)
	key.Set(c.Pointer(c.Str("main value\n")))

	var thd pthread.Thread
	pthread.Create(&thd, nil, func(arg c.Pointer) c.Pointer {
		key.Set(c.Pointer(c.Str("thread value\n")))
		c.Printf(c.Str("Hello, thread\nTLS: %s"), key.Get())
		return c.Pointer(c.Str("Back to main\n"))
	}, nil)

	var retval c.Pointer
	pthread.Join(thd, &retval)

	c.Printf(c.Str("%sTLS: %s"), retval, key.Get())
}
