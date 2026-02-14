package main

import (
	"fmt"
	"reflect"
	"strings"
)

func expect(name string, got, want any) {
	if !reflect.DeepEqual(got, want) {
		panic(fmt.Sprintf("expect %s: got %v, want %v", name, got, want))
	}
	fmt.Println("expect", name, "ok")
}

func expectPanic(name, contains string, fn func()) {
	defer func() {
		r := recover()
		if r == nil {
			panic(fmt.Sprintf("panic %s: did not panic", name))
		}
		msg := fmt.Sprint(r)
		if contains != "" && !strings.Contains(msg, contains) {
			panic(fmt.Sprintf("panic %s: got %q, want contains %q", name, msg, contains))
		}
		fmt.Println("panic", name, "ok")
	}()
	fn()
}

func main() {
	{
		dst := []int{1, 2, 3, 4}
		src := []int{9, 8}
		n := reflect.Copy(reflect.ValueOf(dst), reflect.ValueOf(src))
		expect("slice-slice n", n, 2)
		expect("slice-slice dst", dst, []int{9, 8, 3, 4})
	}

	{
		dst := []byte("xxxx")
		n := reflect.Copy(reflect.ValueOf(dst), reflect.ValueOf("go"))
		expect("string-byte n", n, 2)
		expect("string-byte dst", dst, []byte("goxx"))
	}

	{
		arr := [3]int{0, 0, 0}
		n := reflect.Copy(reflect.ValueOf(&arr).Elem(), reflect.ValueOf([]int{7, 8, 9, 10}))
		expect("array-slice n", n, 3)
		expect("array-slice dst", arr, [3]int{7, 8, 9})
	}

	{
		src := [2]int{5, 6}
		dst := []int{0, 0, 0}
		n := reflect.Copy(reflect.ValueOf(dst), reflect.ValueOf(src))
		expect("slice-array n", n, 2)
		expect("slice-array dst", dst, []int{5, 6, 0})
	}

	expectPanic("dst-kind", "reflect: call of reflect.Copy on int Value", func() {
		reflect.Copy(reflect.ValueOf(1), reflect.ValueOf([]int{1}))
	})

	expectPanic("array-unsettable", "unaddressable value", func() {
		arr := [2]int{}
		reflect.Copy(reflect.ValueOf(arr), reflect.ValueOf([]int{1, 2}))
	})

	expectPanic("elem-mismatch", "reflect.Copy:", func() {
		reflect.Copy(reflect.ValueOf([]int{0}), reflect.ValueOf([]int32{1}))
	})

	fmt.Println("DONE")
}
