package goroutine

func B() {}

func A() {
	go B()
}
