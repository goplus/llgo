package main

type Point struct {
	x float64
	y float64
}

func (p *Point) Scale(factor float64) {
	p.x *= factor
	p.y *= factor
}

type MyPoint = Point

func (p *MyPoint) Move(dx, dy float64) {
	p.x += dx
	p.y += dy
}

func main() {
	pt := &MyPoint{1, 2}
	pt.Scale(2)
	pt.Move(3, 4)
	println(pt.x, pt.y)
}
