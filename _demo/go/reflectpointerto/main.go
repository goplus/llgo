package main

import (
	"log"
	"reflect"
)

func main() {
	PointerTo()
	AddrOnPointerField()
}

func PointerTo() {
	got := reflect.PointerTo(reflect.TypeOf((*int)(nil)))
	want := reflect.TypeOf((**int)(nil))
	if got != want {
		log.Panicf("PointerTo(*int) = %v, want %v\n", got, want)
	}
}

func AddrOnPointerField() {
	type S struct{ N *int }
	v := reflect.ValueOf(&S{}).Elem().Field(0).Addr().Type()
	want := reflect.TypeOf((**int)(nil))
	if v != want {
		log.Panicf("Addr().Type() = %v, want %v\n", v, want)
	}
}
