package closure

func B() {}

func A() {
	x := 1
	_ = x
	func() {
		B()
	}()
}
