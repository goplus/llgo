package foo

func f(s string) bool {
	return len(s) > 2
}

func Loop() {
	for i := 0; i < 3; i++ {
		if s := "hello"; f(s) {
			defer println(s)
		} else {
			defer println("world")
			return
		}
	}
}
