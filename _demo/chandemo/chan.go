package main

func main() {
	c1 := make(chan string)
	c2 := make(chan string, 1)
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
		}
	}
}
