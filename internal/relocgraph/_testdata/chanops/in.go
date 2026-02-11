package chanops

func A() {
	ch := make(chan int, 1)
	ch <- 1
	<-ch
}
