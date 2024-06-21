package main

import "sort"

func main() {
	vals := []int{32, 58, 25, 92, 45, 78}
	sort.Ints(vals)
	for _, v := range vals {
		println(v)
	}

	texts := []string{"apple", "banana", "cherry", "date", "elderberry", "fig"}
	sort.Slice(texts, func(i, j int) bool {
		leni, lenj := len(texts[i]), len(texts[j])
		if leni != lenj {
			return leni < lenj
		}
		return texts[i] < texts[j]
	})
	for _, v := range texts {
		println(v)
	}
}
