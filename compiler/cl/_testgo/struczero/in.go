package main

import "github.com/goplus/llgo/compiler/cl/_testdata/foo"

type bar struct {
	pb *byte
	f  float32
}

func Foo(v any) (ret bar, ok bool) {
	ret, ok = v.(bar)
	return
}

func Bar(v any) (ret foo.Foo, ok bool) {
	ret, ok = v.(foo.Foo)
	return
}

func main() {
	ret, ok := Foo(nil)
	println(ret.pb, ret.f, "notOk:", !ok)

	ret2, ok2 := Bar(foo.Foo{})
	println(ret2.Pb(), ret2.F, ok2)
}
