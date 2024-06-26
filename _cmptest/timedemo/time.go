package main

import "time"

func main() {
	t := time.Date(2018, time.January, 1, 2, 3, 4, 5, time.UTC)
	println(t.String())
}
