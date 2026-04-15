package main

func main() {
	c := make(chan int, 1)
	dummy := make(chan int)
	n := 7

	select {
	case c <- n:
	case dummy <- 1:
		panic("dummy send")
	case <-dummy:
		panic("dummy recv")
	}

	if got := <-c; got != n {
		panic("bad receive")
	}
	println("ok")
}
