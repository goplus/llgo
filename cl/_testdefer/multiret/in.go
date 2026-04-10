// LITTEST
package main

func f(s string) bool {
	return len(s) > 2
}

// CHECK-LINE: {{ *}}0: always
// CHECK-NEXT: {{ *}}1: cond
// CHECK-NEXT: {{ *}}2: cond
// CHECK-NEXT: {{ *}}3: cond
func main() {
	defer func() {
		println("hi")
	}()
	if s := "hello"; f(s) {
		defer println(s)
	} else {
		defer println("world")
		return
	}
	defer println("bye")
}
