package main

import "github.com/goplus/llgo/c"

type point struct {
	x int
	y int
}

func main() {
	a := [...]point{{1, 2}, {3, 4}, {5, 6}}[2]
	c.Printf(c.Str("%d %d\n"), a.x, a.y)

	b := [...][2]int{[2]int{1, 2}, [2]int{3, 4}}[1]
	c.Printf(c.Str("%d %d\n"), b[0], b[1])

	var i int = 2
	n := [...]int{1, 2, 3, 4, 5}[i]
	c.Printf(c.Str("%d\n"), n)
	c.Printf(c.Str("%d\n"), [...]int{1, 2, 3, 4, 5}[i])

	s := "123456"
	c.Printf(c.Str("%c\n"), s[i])
	c.Printf(c.Str("%c\n"), "123456"[1])
}
