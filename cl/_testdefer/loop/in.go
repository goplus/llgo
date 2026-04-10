// LITTEST
package main

func f(s string) bool {
	return len(s) > 2
}

// CHECK-LINE: {{ *}}0: always
// CHECK-NEXT: {{ *}}1: cond
// CHECK-NEXT: {{ *}}2: loop
// CHECK-NEXT: {{ *}}3: loop
// CHECK-NEXT: {{ *}}5: loop
// CHECK-NEXT: {{ *}}4: cond
// CHECK-NEXT: {{ *}}6: cond
func main() {
	defer func() {
		println("hi")
	}()
	for i := 0; i < 3; i++ {
		if s := "hello"; f(s) {
			defer println(s)
		} else {
			defer println("world")
			return
		}
	}
	defer println("bye")
}
