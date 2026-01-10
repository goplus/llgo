package main

import "fmt"

func SimpleMapIter() {
	m := map[string]int{
		"a": 1,
		"b": 2,
		"c": 3,
	}

	sum := 0
	for k, v := range m {
		fmt.Printf("key=%s, value=%d\n", k, v)
		sum += v
	}
	fmt.Printf("sum=%d\n", sum)
}

func main() {
	SimpleMapIter()
}
