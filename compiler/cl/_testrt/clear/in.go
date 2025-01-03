package clear

func Clear() {
	a := []int{1, 2, 3, 4}
	clear(a)
	println(a)

	b := map[int]int{1: 1, 2: 2, 3: 3, 4: 4}
	clear(b)
	println(b)
}
