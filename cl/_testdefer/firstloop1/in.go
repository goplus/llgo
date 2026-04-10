// LITTEST
package foo

func f(s string) bool {
	return len(s) > 2
}

// CHECK-LINE: {{ *}}0: always
// CHECK-NEXT: {{ *}}6: cond
// CHECK-NEXT: {{ *}}1: loop
// CHECK-NEXT: {{ *}}2: loop
// CHECK-NEXT: {{ *}}4: loop
// CHECK-NEXT: {{ *}}3: cond
// CHECK-NEXT: {{ *}}5: cond
func Loop() {
	for i := 0; i < 3; i++ {
		if s := "hello"; f(s) {
			defer println(s)
		} else {
			defer println("world")
			return
		}
	}
}
