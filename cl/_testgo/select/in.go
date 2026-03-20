package main

func main() {
	send()
	recv()
}

func send() {
	ch1 := make(chan int, 1)
	ch2 := make(chan int, 1)

	select {
	case ch1 <- 100:
	default:
		println("send1 failed")
	}
	select {
	case ch2 <- 200:
	default:
		println("send2 failed")
	}

	println(<-ch1)
	println(<-ch2)
}

func recv() {
	c1 := make(chan string, 1)
	c2 := make(chan string, 1)

	c1 <- "ch1"
	select {
	case msg1 := <-c1:
		println(msg1)
	case msg2 := <-c2:
		println(msg2)
	default:
		println("exit1")
	}

	c2 <- "ch2"
	select {
	case msg1 := <-c1:
		println(msg1)
	case msg2 := <-c2:
		println(msg2)
	default:
		println("exit2")
	}

	select {
	case msg1 := <-c1:
		println(msg1)
	case msg2 := <-c2:
		println(msg2)
	default:
		println("exit")
	}
}
