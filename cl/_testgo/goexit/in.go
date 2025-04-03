package main

import (
	"runtime"
)

func main() {
	demo1()
	demo2()
	demo3()
}

func demo1() {
	ch := make(chan bool)
	go func() {
		defer func() {
			ch <- true
		}()
		runtime.Goexit()
	}()
	<-ch
}

func demo2() {
	ch := make(chan bool)
	go func() {
		defer func() {
			if r := recover(); r != nil {
				panic("must nil")
			}
			ch <- true
		}()
		runtime.Goexit()
	}()
	<-ch
}

func demo3() {
	ch := make(chan bool)
	go func() {
		defer func() {
			r := recover()
			if r != "error" {
				panic("must error")
			}
			ch <- true
		}()
		defer func() {
			if r := recover(); r != nil {
				panic("must nil")
			}
			panic("error")
		}()
		runtime.Goexit()
	}()
	<-ch
}
