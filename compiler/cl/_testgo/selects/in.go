package main

func main() {
	c1 := make(chan struct{}, 1)
	c2 := make(chan struct{}, 1)
	c3 := make(chan struct{}, 1)
	c4 := make(chan struct{}, 1)

	go func() {
		<-c1
		println("<-c1")

		select {
		case c2 <- struct{}{}:
			println("c2<-")
		case <-c3:
			println("<-c3")
		}
	}()

	c1 <- struct{}{}
	println("c1<-")

	select {
	case <-c2:
		println("<-c2")
	case <-c4:
		println("<-c4")
	}
}
