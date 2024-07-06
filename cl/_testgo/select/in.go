package main

func main() {
	send()
	recv()
}

func send() {
	ch1 := make(chan int)
	ch2 := make(chan int)

	go func() {
		println(<-ch1)
	}()
	go func() {
		println(<-ch2)
	}()

	select {
	case ch1 <- 100:
	case ch2 <- 200:
	}
}

func recv() {
	c1 := make(chan string)
	c2 := make(chan string)
	go func() {
		c1 <- "ch1"
	}()
	go func() {
		c2 <- "ch2"
	}()

	for i := 0; i < 2; i++ {
		select {
		case msg1 := <-c1:
			println(msg1)
		case msg2 := <-c2:
			println(msg2)
		default:
			println("exit")
		}
	}
}
