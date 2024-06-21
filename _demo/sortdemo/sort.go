package main

import "sort"

func main() {
	vals := []int{32, 58, 25, 92, 45, 78}
	sort.Ints(vals)
	for _, v := range vals {
		println(v)
	}
}
