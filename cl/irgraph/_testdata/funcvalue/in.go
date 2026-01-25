package funcvalue

func B() {}

func A() {
	f := B
	f()
}
