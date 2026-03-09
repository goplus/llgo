package main

func main() {
	send()
	recv()
}

func send() {
	ch1 := make(chan int)
	ready := make(chan struct{})
	done := make(chan struct{})

	go func() {
		close(ready)
		println(<-ch1)
		close(done)
	}()
	<-ready

	select {
	case ch1 <- 100:
	}
	<-done
}

func recv() {
	c1 := make(chan string, 1)
	c1 <- "ch1"

	for i := 0; i < 2; i++ {
		select {
		case msg1 := <-c1:
			println(msg1)
		default:
			println("exit")
		}
	}
}
