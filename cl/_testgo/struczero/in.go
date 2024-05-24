package main

type bar struct {
	pb *byte
	f  float32
}

func Foo(v any) (ret bar, ok bool) {
	ret, ok = v.(bar)
	return
}

func main() {
	ret, ok := Foo(nil)
	println(ret.pb, ret.f, ok)
}
