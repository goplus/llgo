package main

import (
	"os"
	_ "unsafe"
)

const LLGoFiles = "_wrap/probe.c"

//go:linkname arm C.llgo_lifetime_arm
func arm()

//go:linkname awaitWait C.llgo_lifetime_await_wait
func awaitWait()

//go:linkname check C.llgo_lifetime_check
func check()

func main() {
	ch := make(chan int)
	switch os.Args[1] {
	case "recv":
		go func() {
			awaitWait()
			ch <- 42
		}()
		arm()
		if <-ch != 42 {
			panic("incorrect receive")
		}
	case "send":
		go func() {
			awaitWait()
			if <-ch != 42 {
				panic("incorrect send")
			}
		}()
		arm()
		ch <- 42
	case "close-recv":
		go func() {
			awaitWait()
			close(ch)
		}()
		arm()
		if value, ok := <-ch; value != 0 || ok {
			panic("incorrect closed receive")
		}
	case "close-send":
		go func() {
			awaitWait()
			close(ch)
		}()
		func() {
			defer func() {
				if recover() == nil {
					panic("send on closed channel did not panic")
				}
			}()
			arm()
			ch <- 42
		}()
	default:
		panic("unknown scenario")
	}
	check()
	println("channel signal lifetime ok")
}
