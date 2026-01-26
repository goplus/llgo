package main

func main() {
	f := B
	_ = f
	takes(B)
}

func B() {}

func C() {}

func takes(fn func()) {
	_ = fn
}
