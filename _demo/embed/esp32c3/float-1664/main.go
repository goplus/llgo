package main

type point struct {
	x float64
	y float64
}

type myPoint = point

func (p *point) scale(factor float64) {
	p.x *= factor
	p.y *= factor
}

func (p *myPoint) move(dx, dy float64) {
	p.x += dx
	p.y += dy
}

func pair(f float64) (int, float64) {
	return 1, f
}

type bar struct {
	pb *byte
	f  float32
}

func toBar(v any) (ret bar, ok bool) {
	ret, ok = v.(bar)
	return
}

type foo struct {
	pb *byte
	f  float32
}

func toFoo(v any) (ret foo, ok bool) {
	ret, ok = v.(foo)
	return
}

func xadd(a, b int) int {
	return a + b
}

func double(v float64) float64 {
	return v * 2
}

func main() {
	pt := &myPoint{1, 2}
	pt.scale(2)
	pt.move(3, 4)
	println(pt.x, pt.y)

	i, f := pair(2.0)
	println(i, f)

	ret, ok := toBar(nil)
	println(ret.pb, ret.f, "notOk:", !ok)

	ret2, ok2 := toFoo(foo{})
	println(ret2.pb, ret2.f, ok2)

	println(xadd(1, 2), double(3.14))
}
