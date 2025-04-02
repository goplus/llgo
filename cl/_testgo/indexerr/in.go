package main

func main() {
}

func init() {
	defer func() {
		if r := recover(); r == nil {
			panic("array -1 must error")
		}
	}()
	array(-1)
}

func init() {
	defer func() {
		if r := recover(); r == nil {
			panic("array 2 must error")
		}
	}()
	array(2)
}

func init() {
	defer func() {
		if r := recover(); r == nil {
			panic("array2 must error")
		}
	}()
	array2(2)
}

func init() {
	defer func() {
		if r := recover(); r == nil {
			panic("slice -1 must error")
		}
	}()
	slice(-1)
}

func init() {
	defer func() {
		if r := recover(); r == nil {
			panic("slice 2 must error")
		}
	}()
	slice(2)
}

func init() {
	defer func() {
		if r := recover(); r == nil {
			panic("slice2 2 must error")
		}
	}()
	slice2(2)
}

func init() {
	defer func() {
		if r := recover(); r == nil {
			panic("2 must error")
		}
	}()
	a := [...]int{1, 2}
	var n = -1
	println(a[n])
}

func init() {
	defer func() {
		if r := recover(); r == nil {
			panic("-1 must error")
		}
	}()
	a := [...]int{1, 2}
	var n = 2
	println(a[n])
}

func init() {
	defer func() {
		if r := recover(); r == nil {
			panic("2 must error")
		}
	}()
	a := [...]int{1, 2}
	var n uint = 2
	println(a[n])
}

func init() {
	defer func() {
		if r := recover(); r == nil {
			panic("2 must error")
		}
	}()
	a := []int{1, 2}
	var n = -1
	println(a[n])
}

func init() {
	defer func() {
		if r := recover(); r == nil {
			panic("-1 must error")
		}
	}()
	a := []int{1, 2}
	var n = 2
	println(a[n])
}

func init() {
	defer func() {
		if r := recover(); r == nil {
			panic("2 must error")
		}
	}()
	a := []int{1, 2}
	var n uint = 2
	println(a[n])
}

func array(n int) {
	println([...]int{1, 2}[n])
}

func array2(n uint) {
	println([...]int{1, 2}[n])
}

func slice(n int) {
	println([]int{1, 2}[n])
}

func slice2(n int) {
	println([]int{1, 2}[n])
}
