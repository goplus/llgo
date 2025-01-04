package main

import (
	"github.com/goplus/llgo/c"
)

type generator struct {
	val c.Int
}

func (g *generator) next() c.Int {
	g.val++
	return g.val
}

func genInts(n int, gen func() c.Int) []c.Int {
	a := make([]c.Int, n)
	for i := range a {
		a[i] = gen()
	}
	return a
}

func main() {
	// generate 5 random integers
	for _, v := range genInts(5, c.Rand) {
		c.Printf(c.Str("%d\n"), v)
	}

	// generate 5 integers, each is double of the previous one
	initVal := c.Int(1)
	ints := genInts(5, func() c.Int {
		initVal *= 2
		return initVal
	})
	for _, v := range ints {
		c.Printf(c.Str("%d\n"), v)
	}

	// generate 5 integers, each is incremented by 1
	g := &generator{val: 1}
	for _, v := range genInts(5, g.next) {
		c.Printf(c.Str("%d\n"), v)
	}
}

/* Posible output:
16807
282475249
1622650073
984943658
1144108930
2
4
8
16
32
2
3
4
5
6
*/
